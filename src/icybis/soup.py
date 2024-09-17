import requests
from bs4 import BeautifulSoup

from icybis import constants

def gather(url: str, variable_name: str, write_file):
    URL = constants.SHAMAN.RESTORATION.MYTHIC_PLUS_BIS["URL"]

    response = requests.get(URL)

    soup = BeautifulSoup(response.content, "html5lib")

    data = soup.find("table").parent
    table_rows = data.find_all("tr")
    
    with open("BISLists.lua", "w+") as write_file:
        write_file.write(f"local {constants.SHAMAN.RESTORATION.MYTHIC_PLUS_BIS['NAME']} = {{\n")

        for table_row in table_rows:
            try:
                item_name = table_row.find("span", attrs = {"class": "q4"}).text
                item_id = table_row.find("span", attrs = {"class": "q4"})["data-wowhead"].split("&")[0] # Remove bonus data
                item_id = item_id.split("=")[1] # Remove item=
                write_file.write(f"\t{item_id}, -- {item_name}\n")
            except AttributeError:
                continue
        write_file.write("}\n\n")

def gather_shaman():
    
    with open(f"new-{constants.SHAMAN.LUA_FILE}", "w+") as write_file:
