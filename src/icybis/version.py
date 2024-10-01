"""
Retrieve and provide information of the program version.
"""

import platform
import sys
from textwrap import dedent

# This variable is modified by Commitizen via make bump.
# Do NOT edit it manually.
__version__: str = "1.1.0"


def version_info() -> str:
    """
    Display the current version of the program, python and platform.
    """
    icy_bis_version: str = f"IcyBIS  : {__version__}"
    python_version: str = f"Python  : {sys.version.split(" ", maxsplit=1)[0]}"
    platform_version: str = f"Platform: {platform.platform()}"

    border_length: int = len(
        max([icy_bis_version, python_version, platform_version], key=len)
    )

    return dedent(
        f"""\
        {''.join('-' * border_length)}
        {icy_bis_version}
        {python_version}
        {platform_version}
        {''.join('-' * border_length)}
        """,
    )
