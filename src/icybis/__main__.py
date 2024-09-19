"""
Enables usage with `python -m icybis`
"""
from icybis import soup
from icybis import constants
from icybis import build


def main() -> None:
    # print("main")
    build.wow_class(constants.SHAMAN)


if __name__ == "__main__":
    main()
