"""
Handles the high level building and lua file orchestration.
"""

import filecmp
import inspect
import pathlib
import shutil

from rich.progress import track

from icybis import soup
from icybis.constants import WoWClasses


def wow_class(wow_class: WoWClasses) -> None:
    for spec in inspect.getmembers(wow_class):
        if (
            not spec[0].startswith("_")
            and not inspect.ismethod(spec[1])
            and isinstance(spec[1], dict)
        ):
            for key, value in track(
                spec[1].items(),
                description=f"Building {spec[0].capitalize()} {wow_class.__name__.capitalize()}...",
            ):
                soup.gather(value["URL"], value["NAME"], wow_class.LUA_FILE)

    compare(wow_class)


def compare(wow_class: WoWClasses) -> None:
    tmp_lua_file_path: str = f"tmp-{wow_class.LUA_FILE}"
    lua_file_path: str = f"IcyBIS/IcyBIS_Items/{wow_class.LUA_FILE}"

    if not pathlib.Path(lua_file_path).exists():
        pathlib.Path.open(lua_file_path, "w+")

    if not filecmp.cmp(lua_file_path, tmp_lua_file_path):
        print(f"{wow_class.__name__.capitalize()} update required")
        shutil.copyfile(tmp_lua_file_path, lua_file_path)

    pathlib.Path.unlink(tmp_lua_file_path)
