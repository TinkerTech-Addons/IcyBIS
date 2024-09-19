"""
Enables usage with `python -m icybis`.
"""

from icybis import build, constants


def main() -> None:
    # print("main")
    build.wow_class(constants.WoWClasses.SHAMAN)


if __name__ == "__main__":
    main()
