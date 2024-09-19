"""
Contains World of Warcraft classes and their constant values needed for scraping and
building lua files.
"""

from typing import ClassVar


class WoWClasses:
    class DEATHKNIGHT:
        LUA_FILE: str = "DeathKnightBIS.lua"
        
        BLOOD: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

        FROST: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

        UNHOLY: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

    class DEMONHUNTER:
        LUA_FILE: str = "DemonHunterBIS.lua"

        HAVOC: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

        VENGEANCE: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

    class DRUID:
        LUA_FILE: str = "DruidBIS.lua"

        BALANCE: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

        FERAL: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

        GUARDIAN: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

        RESTORATION: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

    class EVOKER:
        LUA_FILE: str = "EvokerBIS.lua"

        AUGMENTATION: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

        DEVASTATION: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

        PRESERVATION: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

    class HUNTER:
        LUA_FILE: str = "HunterBIS.lua"

        BEAST_MASTERY: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

        MARKSMANSHIP: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

        SURVIVAL: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

    class MAGE:
        LUA_FILE: str = "MageBIS.lua"

        ARCANE: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

        FIRE: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

        FROST: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

    class MONK:
        LUA_FILE: str = "MonkBIS.lua"

        BREWMASTER: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

        MISTWEAVER: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

        WINDWALKER: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

    class PALADIN:
        LUA_FILE: str = "PaladinBIS.lua"

        HOLY: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

        PROTECTION: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

        RETRIBUTION: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

    class PRIEST:
        LUA_FILE: str = "PriestBIS.lua"

        DISCIPLINE: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

        HOLY: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

        SHADOW: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

    class ROGUE:
        LUA_FILE: str = "RogueBIS.lua"

        ASSASSINATION: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

        OUTLAW: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

        SUBTLETY: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

    class SHAMAN:
        LUA_FILE: str = "ShamanBIS.lua"

        ELEMENTAL: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/elemental-shaman-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "ELEMENTAL_SHAMAN_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/elemental-shaman-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "ELEMENTAL_SHAMAN_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/elemental-shaman-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "ELEMENTAL_SHAMAN_MYTHIC_PLUS_BIS",
            },
        }

        ENHANCEMENT: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/enhancement-shaman-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "ENHANCEMENT_SHAMAN_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/enhancement-shaman-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "ENHANCEMENT_SHAMAN_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/enhancement-shaman-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "ENHANCEMENT_SHAMAN_MYTHIC_PLUS_BIS",
            },
        }

        RESTORATION: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/restoration-shaman-pve-healing-gear-best-in-slot?area=area_1",
                "NAME": "RESTORATION_SHAMAN_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/restoration-shaman-pve-healing-gear-best-in-slot?area=area_2",
                "NAME": "RESTORATION_SHAMAN_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/restoration-shaman-pve-healing-gear-best-in-slot?area=area_3",
                "NAME": "RESTORATION_SHAMAN_MYTHIC_PLUS_BIS",
            },
        }

    class WARLOCK:
        LUA_FILE: str = "WarlockBIS.lua"

        AFFLICTION: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

        DEMONOLOGY: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

        DESTRUCTION: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

    class WARRIOR:
        LUA_FILE: str = "WarriorBIS.lua"

        ARMS: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

        FURY: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }

        PROTECTION: ClassVar[dict] = {
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
            "": {
                "URL": "",
                "NAME": "",
            },
        }
