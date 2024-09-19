"""
Contains World of Warcraft classes and their constant values needed for scraping and
building lua files.
"""

from typing import ClassVar

from pytz import timezone

TIMEZONE = timezone("America/New_York")


class WoWClasses:
    class DEATHKNIGHT:
        LUA_FILE: str = "DeathKnightBIS.lua"
        CLASS_COLOR: str = "#C41E3A"

        BLOOD: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/blood-death-knight-pve-tank-gear-best-in-slot?area=area_2",
                "NAME": "BLOOD_DEATH_KNIGHT_OVERALL_BIS",
                "TOOLTIP": "Blood Death Knight-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/blood-death-knight-pve-tank-gear-best-in-slot?area=area_3",
                "NAME": "BLOOD_DEATH_KNIGHT_RAID_BIS",
                "TOOLTIP": "Blood Death Knight-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/blood-death-knight-pve-tank-gear-best-in-slot?area=area_4",
                "NAME": "BLOOD_DEATH_KNIGHT_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Blood Death Knight-M+ BIS",
            },
        }

        FROST: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/frost-death-knight-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "FROST_DEATH_KNIGHT_OVERALL_BIS",
                "TOOLTIP": "Frost Death Knight-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/frost-death-knight-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "FROST_DEATH_KNIGHT_RAID_BIS",
                "TOOLTIP": "Frost Death Knight-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/frost-death-knight-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "FROST_DEATH_KNIGHT_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Frost Death Knight-M+ BIS",
            },
        }

        UNHOLY: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/unholy-death-knight-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "UNHOLY_DEATH_KNIGHT_OVERALL_BIS",
                "TOOLTIP": "Unholy Death Knight-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/unholy-death-knight-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "UNHOLY_DEATH_KNIGHT_RAID_BIS",
                "TOOLTIP": "Unholy Death Knight-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/unholy-death-knight-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "UNHOLY_DEATH_KNIGHT_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Unholy Death Knight-M+ BIS",
            },
        }

    class DEMONHUNTER:
        LUA_FILE: str = "DemonHunterBIS.lua"
        CLASS_COLOR: str = "#A330C9"

        HAVOC: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/havoc-demon-hunter-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "HAVOC_DEMON_HUNTER_OVERALL_BIS",
                "TOOLTIP": "Havoc Demon Hunter-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/havoc-demon-hunter-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "HAVOC_DEMON_HUNTER_RAID_BIS",
                "TOOLTIP": "Havoc Demon Hunter-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/havoc-demon-hunter-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "HAVOC_DEMON_HUNTER_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Havoc Demon Hunter-M+ BIS",
            },
        }

        VENGEANCE: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/vengeance-demon-hunter-pve-tank-gear-best-in-slot?area=area_1",
                "NAME": "VENGEANCE_DEMON_HUNTER_OVERALL_BIS",
                "TOOLTIP": "Vengeance Demon Hunter-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/vengeance-demon-hunter-pve-tank-gear-best-in-slot?area=area_2",
                "NAME": "VENGEANCE_DEMON_HUNTER_RAID_BIS",
                "TOOLTIP": "Vengeance Demon Hunter-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/vengeance-demon-hunter-pve-tank-gear-best-in-slot?area=area_3",
                "NAME": "VENGEANCE_DEMON_HUNTER_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Vengeance Demon Hunter-M+ BIS",
            },
        }

    class DRUID:
        LUA_FILE: str = "DruidBIS.lua"
        CLASS_COLOR: str = "#FF7C0A"

        BALANCE: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/balance-druid-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "BALANCE_DRUID_OVERALL_BIS",
                "TOOLTIP": "Balance Druid-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/balance-druid-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "BALANCE_DRUID_RAID_BIS",
                "TOOLTIP": "Balance Druid-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/balance-druid-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "BALANCE_DRUID_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Balance Druid-M+ BIS",
            },
        }

        FERAL: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/feral-druid-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "FERAL_DRUID_OVERALL_BIS",
                "TOOLTIP": "Feral Druid-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/feral-druid-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "FERAL_DRUID_RAID_BIS",
                "TOOLTIP": "Feral Druid-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/feral-druid-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "FERAL_DRUID_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Feral Druid-M+ BIS",
            },
        }

        GUARDIAN: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/guardian-druid-pve-tank-gear-best-in-slot?area=area_1",
                "NAME": "GUARDIAN_DRUID_OVERALL_BIS",
                "TOOLTIP": "Guardian Druid-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/guardian-druid-pve-tank-gear-best-in-slot?area=area_2",
                "NAME": "GUARDIAN_DRUID_RAID_BIS",
                "TOOLTIP": "Guardian Druid-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/guardian-druid-pve-tank-gear-best-in-slot?area=area_3",
                "NAME": "GUARDIAN_DRUID_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Guardian Druid-M+ BIS",
            },
        }

        RESTORATION: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/restoration-druid-pve-healing-gear-best-in-slot?area=area_1",
                "NAME": "RESTORATION_DRUID_OVERALL_BIS",
                "TOOLTIP": "Restoration Druid-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/restoration-druid-pve-healing-gear-best-in-slot?area=area_3",
                "NAME": "RESTORATION_DRUID_RAID_BIS",
                "TOOLTIP": "Restoration Druid-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/restoration-druid-pve-healing-gear-best-in-slot?area=area_4",
                "NAME": "RESTORATION_DRUID_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Restoration Druid-M+ BIS",
            },
        }

    class EVOKER:
        LUA_FILE: str = "EvokerBIS.lua"
        CLASS_COLOR: str = "#33937F"

        AUGMENTATION: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/augmentation-evoker-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "AUGMENTATION_EVOKER_OVERALL_BIS",
                "TOOLTIP": "Augmentation Evoker-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/augmentation-evoker-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "AUGMENTATION_EVOKER_RAID_BIS",
                "TOOLTIP": "Augmentation Evoker-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/augmentation-evoker-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "AUGMENTATION_EVOKER_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Augmentation Evoker-M+ BIS",
            },
        }

        DEVASTATION: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/devastation-evoker-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "DEVASTATION_EVOKER_OVERALL_BIS",
                "TOOLTIP": "Devastation Evoker-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/devastation-evoker-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "DEVASTATION_EVOKER_RAID_BIS",
                "TOOLTIP": "Devastation Evoker-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/devastation-evoker-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "DEVASTATION_EVOKER_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Devastation Evoker-M+ BIS",
            },
        }

        PRESERVATION: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/preservation-evoker-pve-healing-gear-best-in-slot?area=area_1",
                "NAME": "PRESERVATION_EVOKER_OVERALL_BIS",
                "TOOLTIP": "Preservation Evoker-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/preservation-evoker-pve-healing-gear-best-in-slot?area=area_2",
                "NAME": "PRESERVATION_EVOKER_RAID_BIS",
                "TOOLTIP": "Preservation Evoker-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/preservation-evoker-pve-healing-gear-best-in-slot?area=area_3",
                "NAME": "PRESERVATION_EVOKER_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Preservation Evoker-M+ BIS",
            },
        }

    class HUNTER:
        LUA_FILE: str = "HunterBIS.lua"
        CLASS_COLOR: str = "#AAD372"

        BEAST_MASTERY: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/beast-mastery-hunter-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "BEAST_MASTERY_HUNTER_OVERALL_BIS",
                "TOOLTIP": "Beast Mastery Hunter-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/beast-mastery-hunter-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "BEAST_MASTERY_HUNTER_RAID_BIS",
                "TOOLTIP": "Beast Mastery Hunter-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/beast-mastery-hunter-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "BEAST_MASTERY_HUNTER_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Beast Mastery Hunter-M+ BIS",
            },
        }

        MARKSMANSHIP: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/marksmanship-hunter-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "MARKSMANSHIP_HUNTER_OVERALL_BIS",
                "TOOLTIP": "Marksmanship Hunter-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/marksmanship-hunter-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "MARKSMANSHIP_HUNTER_RAID_BIS",
                "TOOLTIP": "Marksmanship Hunter-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/marksmanship-hunter-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "MARKSMANSHIP_HUNTER_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Marksmanship Hunter-M+ BIS",
            },
        }

        SURVIVAL: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/survival-hunter-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "SURVIVAL_HUNTER_OVERALL_BIS",
                "TOOLTIP": "Survival Hunter-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/survival-hunter-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "SURVIVAL_HUNTER_RAID_BIS",
                "TOOLTIP": "Survival Hunter-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/survival-hunter-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "SURVIVAL_HUNTER_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Survival Hunter-M+ BIS",
            },
        }

    class MAGE:
        LUA_FILE: str = "MageBIS.lua"
        CLASS_COLOR: str = "#3FC7EB"

        ARCANE: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/arcane-mage-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "ARCANE_MAGE_OVERALL_BIS",
                "TOOLTIP": "Arcane Mage-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/arcane-mage-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "ARCANE_MAGE_RAID_BIS",
                "TOOLTIP": "Arcane Mage-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/arcane-mage-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "ARCANE_MAGE_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Arcane Mage-M+ BIS",
            },
        }

        FIRE: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/fire-mage-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "FIRE_MAGE_OVERALL_BIS",
                "TOOLTIP": "Fire Mage-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/fire-mage-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "FIRE_MAGE_RAID_BIS",
                "TOOLTIP": "Fire Mage-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/fire-mage-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "FIRE_MAGE_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Fire Mage-M+ BIS",
            },
        }

        FROST: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/frost-mage-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "FROST_MAGE_OVERALL_BIS",
                "TOOLTIP": "Frost Mage-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/frost-mage-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "FROST_MAGE_RAID_BIS",
                "TOOLTIP": "Frost Mage-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/frost-mage-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "FROST_MAGE_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Frost Mage-M+ BIS",
            },
        }

    class MONK:
        LUA_FILE: str = "MonkBIS.lua"
        CLASS_COLOR: str = "#00FF98"

        BREWMASTER: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/brewmaster-monk-pve-tank-gear-best-in-slot?area=area_1",
                "NAME": "BREWMASTER_MONK_OVERALL_BIS",
                "TOOLTIP": "Brewmaster Monk-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/brewmaster-monk-pve-tank-gear-best-in-slot?area=area_2",
                "NAME": "BREWMASTER_MONK_RAID_BIS",
                "TOOLTIP": "Brewmaster Monk-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/brewmaster-monk-pve-tank-gear-best-in-slot?area=area_3",
                "NAME": "BREWMASTER_MONK_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Brewmaster Monk-M+ BIS",
            },
        }

        MISTWEAVER: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/mistweaver-monk-pve-healing-gear-best-in-slot?area=area_1",
                "NAME": "MISTWEAVER_MONK_OVERALL_BIS",
                "TOOLTIP": "Mistweaver Monk-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/mistweaver-monk-pve-healing-gear-best-in-slot?area=area_2",
                "NAME": "MISTWEAVER_MONK_RAID_BIS",
                "TOOLTIP": "Mistweaver Monk-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/mistweaver-monk-pve-healing-gear-best-in-slot?area=area_3",
                "NAME": "MISTWEAVER_MONK_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Mistweaver Monk-M+ BIS",
            },
        }

        WINDWALKER: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/windwalker-monk-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "WINDWALKER_MONK_OVERALL_BIS",
                "TOOLTIP": "Windwalker Monk-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/windwalker-monk-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "WINDWALKER_MONK_RAID_BIS",
                "TOOLTIP": "Windwalker Monk-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/windwalker-monk-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "WINDWALKER_MONK_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Windwalker Monk-M+ BIS",
            },
        }

    class PALADIN:
        LUA_FILE: str = "PaladinBIS.lua"
        CLASS_COLOR: str = "#F48CBA"

        HOLY: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/holy-paladin-pve-healing-gear-best-in-slot?area=area_1",
                "NAME": "HOLY_PALADIN_OVERALL_BIS",
                "TOOLTIP": "Holy Paladin-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/holy-paladin-pve-healing-gear-best-in-slot?area=area_2",
                "NAME": "HOLY_PALADIN_RAID_BIS",
                "TOOLTIP": "Holy Paladin-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/holy-paladin-pve-healing-gear-best-in-slot?area=area_3",
                "NAME": "HOLY_PALADIN_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Holy Paladin-M+ BIS",
            },
        }

        PROTECTION: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/protection-paladin-pve-tank-gear-best-in-slot?area=area_1",
                "NAME": "PROTECTION_PALADIN_OVERALL_BIS",
                "TOOLTIP": "Protection Paladin-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/protection-paladin-pve-tank-gear-best-in-slot?area=area_2",
                "NAME": "PROTECTION_PALADIN_RAID_BIS",
                "TOOLTIP": "Protection Paladin-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/protection-paladin-pve-tank-gear-best-in-slot?area=area_3",
                "NAME": "PROTECTION_PALADIN_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Protection Paladin-M+ BIS",
            },
        }

        RETRIBUTION: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/retribution-paladin-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "RETRIBUTION_PALADIN_OVERALL_BIS",
                "TOOLTIP": "Retribution Paladin-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/retribution-paladin-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "RETRIBUTION_PALADIN_RAID_BIS",
                "TOOLTIP": "Retribution Paladin-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/retribution-paladin-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "RETRIBUTION_PALADIN_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Retribution Paladin-M+ BIS",
            },
        }

    class PRIEST:
        LUA_FILE: str = "PriestBIS.lua"
        CLASS_COLOR: str = "#FFFFFF"

        DISCIPLINE: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/discipline-priest-pve-healing-gear-best-in-slot?area=area_1",
                "NAME": "DISCIPLINE_PRIEST_OVERALL_BIS",
                "TOOLTIP": "Dicipline Priest-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/discipline-priest-pve-healing-gear-best-in-slot?area=area_2",
                "NAME": "DISCIPLINE_PRIEST_RAID_BIS",
                "TOOLTIP": "Dicipline Priest-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/discipline-priest-pve-healing-gear-best-in-slot?area=area_3",
                "NAME": "DISCIPLINE_PRIEST_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Dicipline Priest-M+ BIS",
            },
        }

        HOLY: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/holy-priest-pve-healing-gear-best-in-slot?area=area_2",
                "NAME": "HOLY_PRIEST_OVERALL_BIS",
                "TOOLTIP": "Holy Priest-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/holy-priest-pve-healing-gear-best-in-slot?area=area_3",
                "NAME": "HOLY_PRIEST_RAID_BIS",
                "TOOLTIP": "Holy Priest-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/holy-priest-pve-healing-gear-best-in-slot?area=area_4",
                "NAME": "HOLY_PRIEST_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Holy Priest-M+ BIS",
            },
        }

        SHADOW: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/shadow-priest-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "SHADOW_PRIEST_OVERALL_BIS",
                "TOOLTIP": "Shadow Priest-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/shadow-priest-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "SHADOW_PRIEST_RAID_BIS",
                "TOOLTIP": "Shadow Priest-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/shadow-priest-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "SHADOW_PRIEST_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Shadow Priest-M+ BIS",
            },
        }

    class ROGUE:
        LUA_FILE: str = "RogueBIS.lua"
        CLASS_COLOR: str = "#FFF468"

        ASSASSINATION: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/assassination-rogue-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "ASSASSINATION_ROGUE_OVERALL_BIS",
                "TOOLTIP": "Assassination Rogue-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/assassination-rogue-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "ASSASSINATION_ROGUE_RAID_BIS",
                "TOOLTIP": "Assassination Rogue-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/assassination-rogue-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "ASSASSINATION_ROGUE_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Assassination Rogue-M+ BIS",
            },
        }

        OUTLAW: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/outlaw-rogue-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "OUTLAW_ROGUE_OVERALL_BIS",
                "TOOLTIP": "Outlaw Rogue-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/outlaw-rogue-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "OUTLAW_ROGUE_RAID_BIS",
                "TOOLTIP": "Outlaw Rogue-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/outlaw-rogue-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "OUTLAW_ROGUE_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Outlaw Rogue-M+ BIS",
            },
        }

        # TODO: Check and verify Subtlety rogue as pre-season is only available 09/19/24.
        SUBTLETY: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/subtlety-rogue-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "SUBTLETY_ROGUE_OVERALL_BIS",
                "TOOLTIP": "Subtlety Rogue-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/subtlety-rogue-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "SUBTLETY_ROGUE_RAID_BIS",
                "TOOLTIP": "Subtlety Rogue-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/subtlety-rogue-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "SUBTLETY_ROGUE_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Subtlety Rogue-M+ BIS",
            },
        }

    class SHAMAN:
        LUA_FILE: str = "ShamanBIS.lua"
        CLASS_COLOR: str = "#0070DD"

        ELEMENTAL: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/elemental-shaman-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "ELEMENTAL_SHAMAN_OVERALL_BIS",
                "TOOLTIP": "Elemental Shaman-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/elemental-shaman-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "ELEMENTAL_SHAMAN_RAID_BIS",
                "TOOLTIP": "Elemental Shaman-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/elemental-shaman-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "ELEMENTAL_SHAMAN_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Elemental Shaman-M+ BIS",
            },
        }

        ENHANCEMENT: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/enhancement-shaman-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "ENHANCEMENT_SHAMAN_OVERALL_BIS",
                "TOOLTIP": "Enhancement Shaman-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/enhancement-shaman-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "ENHANCEMENT_SHAMAN_RAID_BIS",
                "TOOLTIP": "Enhancement Shaman-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/enhancement-shaman-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "ENHANCEMENT_SHAMAN_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Enhancement Shaman-M+ BIS",
            },
        }

        RESTORATION: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/restoration-shaman-pve-healing-gear-best-in-slot?area=area_1",
                "NAME": "RESTORATION_SHAMAN_OVERALL_BIS",
                "TOOLTIP": "Restoration Shaman-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/restoration-shaman-pve-healing-gear-best-in-slot?area=area_2",
                "NAME": "RESTORATION_SHAMAN_RAID_BIS",
                "TOOLTIP": "Restoration Shaman-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/restoration-shaman-pve-healing-gear-best-in-slot?area=area_3",
                "NAME": "RESTORATION_SHAMAN_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Restoration Shaman-M+ BIS",
            },
        }

    class WARLOCK:
        LUA_FILE: str = "WarlockBIS.lua"
        CLASS_COLOR: str = "#8788EE"

        AFFLICTION: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/affliction-warlock-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "AFFLICTION_WARLOCK_OVERALL_BIS",
                "TOOLTIP": "Affliction Warlock-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/affliction-warlock-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "AFFLICTION_WARLOCK_RAID_BIS",
                "TOOLTIP": "Affliction Warlock-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/affliction-warlock-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "AFFLICTION_WARLOCK_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Affliction Warlock-M+ BIS",
            },
        }

        DEMONOLOGY: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/demonology-warlock-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "DEMONOLOGY_WARLOCK_OVERALL_BIS",
                "TOOLTIP": "Demonology Warlock-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/demonology-warlock-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "DEMONOLOGY_WARLOCK_RAID_BIS",
                "TOOLTIP": "Demonology Warlock-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/demonology-warlock-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "DEMONOLOGY_WARLOCK_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Demonology Warlock-M+ BIS",
            },
        }

        DESTRUCTION: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/destruction-warlock-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "DESTRUCTION_WARLOCK_OVERALL_BIS",
                "TOOLTIP": "Destruction Warlock-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/destruction-warlock-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "DESTRUCTION_WARLOCK_RAID_BIS",
                "TOOLTIP": "Destruction Warlock-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/destruction-warlock-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "DESTRUCTION_WARLOCK_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Destruction Warlock-M+ BIS",
            },
        }

    class WARRIOR:
        LUA_FILE: str = "WarriorBIS.lua"
        CLASS_COLOR: str = "#C69B6D"

        ARMS: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/arms-warrior-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "ARMS_WARRIOR_OVERALL_BIS",
                "TOOLTIP": "Arms Warrior-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/arms-warrior-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "ARMS_WARRIOR_RAID_BIS",
                "TOOLTIP": "Arms Warrior-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/arms-warrior-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "ARMS_WARRIOR_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Arms Warrior-M+ BIS",
            },
        }

        FURY: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/fury-warrior-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "FURY_WARRIOR_OVERALL_BIS",
                "TOOLTIP": "Fury Warrior-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/fury-warrior-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "FURY_WARRIOR_RAID_BIS",
                "TOOLTIP": "Fury Warrior-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/fury-warrior-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "FURY_WARRIOR_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Fury Warrior-M+ BIS",
            },
        }

        PROTECTION: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/protection-warrior-pve-tank-gear-best-in-slot?area=area_1",
                "NAME": "PROTECTION_WARRIOR_OVERALL_BIS",
                "TOOLTIP": "Protection Warrior-Overall BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/protection-warrior-pve-tank-gear-best-in-slot?area=area_3",
                "NAME": "PROTECTION_WARRIOR_RAID_BIS",
                "TOOLTIP": "Protection Warrior-Raid BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/protection-warrior-pve-tank-gear-best-in-slot?area=area_2",
                "NAME": "PROTECTION_WARRIOR_MYTHIC_PLUS_BIS",
                "TOOLTIP": "Protection Warrior-M+ BIS",
            },
        }
