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
                description=f"Building {spec[0].capitalize()} Shaman...",
            ):
                soup.gather(value["URL"], value["NAME"], wow_class.LUA_FILE)

    compare(wow_class)


def compare(wow_class: WoWClasses) -> None:
    if not pathlib.Path(wow_class.LUA_FILE).exists():
        pathlib.Path.open(wow_class.LUA_FILE, "w+")

    if not filecmp.cmp(wow_class.LUA_FILE, f"tmp-{wow_class.LUA_FILE}"):
        print(f"{wow_class.__name__.capitalize()} update required")
        shutil.copyfile(f"tmp-{wow_class.LUA_FILE}", wow_class.LUA_FILE)

    pathlib.Path.unlink(f"tmp-{wow_class.LUA_FILE}")
