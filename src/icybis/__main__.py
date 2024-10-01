"""
Enables usage with `python -m icybis`.
"""

import pathlib

from rich.console import Console
from rich.markdown import Markdown

from icybis import build, constants

console = Console()


def main() -> None:
    wow_classes = [
        constants.WoWClasses.DEATHKNIGHT,
        constants.WoWClasses.DEMONHUNTER,
        constants.WoWClasses.DRUID,
        constants.WoWClasses.EVOKER,
        constants.WoWClasses.HUNTER,
        constants.WoWClasses.MAGE,
        constants.WoWClasses.MONK,
        constants.WoWClasses.PALADIN,
        constants.WoWClasses.PRIEST,
        constants.WoWClasses.ROGUE,
        constants.WoWClasses.SHAMAN,
        constants.WoWClasses.WARLOCK,
        constants.WoWClasses.WARRIOR,
    ]

    for wow_class in wow_classes:
        build.wow_class(wow_class)

    build._update_addon_build_date()

    addon_directory = pathlib.Path("./IcyBIS")
    build._package_addon(addon_directory, "IcyBIS.zip")

    build.changelog()

    md = Markdown(build.update_markdown)
    console.print(md)


if __name__ == "__main__":
    main()
