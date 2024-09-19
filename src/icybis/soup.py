"""
Handles Icy Veins website request and HTML parsing for best in slot (BIS) gear.
"""

import pathlib

import requests
from bs4 import BeautifulSoup


def gather(url: str, variable_name: str, tooltip: str, lua_file: str) -> None:
    response = requests.get(url)

    soup = BeautifulSoup(response.content, "html5lib")

    area = url[url.index("=") + 1 :]
    data = soup.find("div", attrs={"id": area})
    table_rows = data.find_all("tr")

    tmp_lua_file_path: str = f"tmp-{lua_file}"
    with pathlib.Path.open(tmp_lua_file_path, "a+") as write_file:
        write_file.write(f"{variable_name} = {{\n")

        # Handle itemIDs nested arrary.
        write_file.write("\titemIDs = {\n")
        for table_row in table_rows:
            try:
                item_name = table_row.find("span", attrs={"class": "q4"}).text
                item_id = table_row.find("span", attrs={"class": "q4"})[
                    "data-wowhead"
                ].split("&")[0]  # Remove bonus data
                item_id = item_id.split("=")[1]  # Remove item=
                write_file.write(f"\t\t{item_id}, -- {item_name}\n")
            except AttributeError:
                continue
        write_file.write("\t},\n")

        # Handle messageLeft and messageRight
        message = tooltip.split("-")
        message_left = f"{message[1]}:"
        message_right = message[0]
        write_file.write(f'\tmessageLeft = "{message_left}",\n')
        write_file.write(f'\tmessageRight = "{message_right}"\n')
        write_file.write("}\n\n")
