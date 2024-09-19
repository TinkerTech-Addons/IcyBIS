from typing import ClassVar


class WoWClasses:
    class SHAMAN:
        LUA_FILE: str = "ShamanBIS.lua"

        ELEMENTAL: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/elemental-shaman-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "ELEMENTAL_SHAMAN_OVERALL_BIS",
            },
            "RAID_BIS":  {
                "URL": "https://www.icy-veins.com/wow/elemental-shaman-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "ELEMENTAL_SHAMAN_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS":  {
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
            "RAID_BIS":  {
                "URL": "https://www.icy-veins.com/wow/restoration-shaman-pve-healing-gear-best-in-slot?area=area_2",
                "NAME": "RESTORATION_SHAMAN_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/restoration-shaman-pve-healing-gear-best-in-slot?area=area_3",
                "NAME": "RESTORATION_SHAMAN_MYTHIC_PLUS_BIS",
            },
        }
