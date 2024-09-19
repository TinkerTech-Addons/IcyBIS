from icybis import constants, soup
import inspect
from rich.progress import track
import filecmp
import shutil
import pathlib
import os

def wow_class(wow_class) -> None:
    for spec in inspect.getmembers(wow_class):
        if not spec[0].startswith('_') and not inspect.ismethod(spec[1]) and type(spec[1]) == dict:
            for key, value in track(spec[1].items(), description=f"Building {spec[0].capitalize()} Shaman..."):
                soup.gather(value["URL"], value["NAME"], wow_class.LUA_FILE)

    compare(wow_class)

    return


def compare(wow_class):
    if not pathlib.Path(wow_class.LUA_FILE).exists():
        open(wow_class.LUA_FILE, "w+")

    if not filecmp.cmp(wow_class.LUA_FILE, f"tmp-{wow_class.LUA_FILE}"):
        print(f"{wow_class.__name__.capitalize()} update required")
        shutil.copyfile(f"tmp-{wow_class.LUA_FILE}", wow_class.LUA_FILE)

    os.remove(f"tmp-{wow_class.LUA_FILE}")
