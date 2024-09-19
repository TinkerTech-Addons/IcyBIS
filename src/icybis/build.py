"""
Handles the high level building and lua file orchestration.
"""

import filecmp
import inspect
import pathlib
import re
import shutil
from datetime import datetime

from rich.progress import track

from icybis import soup
from icybis.constants import TIMEZONE, WoWClasses

update_markdown = ""


def wow_class(wow_class: WoWClasses) -> None:
    for spec in inspect.getmembers(wow_class):
        if (
            not spec[0].startswith("_")
            and not inspect.ismethod(spec[1])
            and isinstance(spec[1], dict)
        ):
            for value in track(
                spec[1].values(),
                description=f"[{wow_class.CLASS_COLOR}]Building {spec[0].capitalize()} {wow_class.__name__.capitalize()}...[/{wow_class.CLASS_COLOR}]",
            ):
                soup.gather(value["URL"], value["NAME"], value["TOOLTIP"], wow_class.LUA_FILE)

    compare(wow_class)


def compare(wow_class: WoWClasses) -> None:
    tmp_lua_file_path: str = f"tmp-{wow_class.LUA_FILE}"
    lua_file_path: str = f"IcyBIS/IcyBIS_Items/{wow_class.LUA_FILE}"

    if not pathlib.Path(lua_file_path).exists():
        pathlib.Path.open(lua_file_path, "w+")

    if not filecmp.cmp(lua_file_path, tmp_lua_file_path):
        global update_markdown
        update_markdown += f"- **{wow_class.__name__.capitalize()}** updated\n"
        shutil.copyfile(tmp_lua_file_path, lua_file_path)

    pathlib.Path.unlink(tmp_lua_file_path)


def changelog() -> None:
    date = datetime.now(tz=TIMEZONE).strftime("%Y-%m-%d")
    addon_version = _get_addon_version()
    global update_markdown
    update_markdown = f"## {addon_version} - {date}\n\n{update_markdown}\n"

    changelog = pathlib.Path.open("CHANGELOG.md").readlines()
    changelog.insert(4, update_markdown)

    pathlib.Path.open("CHANGELOG.md", "w+").writelines(changelog)


def _get_addon_version() -> str:
    toc_version_pattern = re.compile(r"(## Version: )([0-9]+.[0-9]+.[0-9]+)")
    toc_data = pathlib.Path.open("IcyBIS/IcyBIS.toc").read()
    toc_version = re.search(toc_version_pattern, toc_data).group(2)
    return toc_version
