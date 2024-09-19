"""
Contains World of Warcraft classes and their constant values needed for scraping and
building lua files.
"""

from typing import ClassVar


class WoWClasses:
    class DEATHKNIGHT:
        LUA_FILE: str = "DeathKnightBIS.lua"
        
        BLOOD: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/blood-death-knight-pve-tank-gear-best-in-slot?area=area_2",
                "NAME": "BLOOD_DEATH_KNIGHT_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/blood-death-knight-pve-tank-gear-best-in-slot?area=area_3",
                "NAME": "BLOOD_DEATH_KNIGHT_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/blood-death-knight-pve-tank-gear-best-in-slot?area=area_4",
                "NAME": "BLOOD_DEATH_KNIGHT_MYTHIC_PLUS_BIS",
            },
        }

        FROST: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/frost-death-knight-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "FROST_DEATH_KNIGHT_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/frost-death-knight-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "FROST_DEATH_KNIGHT_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/frost-death-knight-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "FROST_DEATH_KNIGHT_MYTHIC_PLUS_BIS",
            },
        }

        UNHOLY: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/unholy-death-knight-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "UNHOLY_DEATH_KNIGHT_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/unholy-death-knight-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "UNHOLY_DEATH_KNIGHT_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/unholy-death-knight-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "UNHOLY_DEATH_KNIGHT_MYTHIC_PLUS_BIS",
            },
        }

    class DEMONHUNTER:
        LUA_FILE: str = "DemonHunterBIS.lua"

        HAVOC: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/havoc-demon-hunter-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "HAVOC_DEMON_HUNTER_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/havoc-demon-hunter-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "HAVOC_DEMON_HUNTER_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/havoc-demon-hunter-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "HAVOC_DEMON_HUNTER_MYTHIC_PLUS_BIS",
            },
        }

        VENGEANCE: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/vengeance-demon-hunter-pve-tank-gear-best-in-slot?area=area_1",
                "NAME": "VENGEANCE_DEMON_HUNTER_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/vengeance-demon-hunter-pve-tank-gear-best-in-slot?area=area_2",
                "NAME": "VENGEANCE_DEMON_HUNTER_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/vengeance-demon-hunter-pve-tank-gear-best-in-slot?area=area_3",
                "NAME": "VENGEANCE_DEMON_HUNTER_MYTHIC_PLUS_BIS",
            },
        }

    class DRUID:
        LUA_FILE: str = "DruidBIS.lua"

        BALANCE: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/balance-druid-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "BALANCE_DRUID_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/balance-druid-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "BALANCE_DRUID_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/balance-druid-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "BALANCE_DRUID_MYTHIC_PLUS_BIS",
            },
        }

        FERAL: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/feral-druid-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "FERAL_DRUID_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/feral-druid-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "FERAL_DRUID_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/feral-druid-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "FERAL_DRUID_MYTHIC_PLUS_BIS",
            },
        }

        GUARDIAN: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/guardian-druid-pve-tank-gear-best-in-slot?area=area_1",
                "NAME": "GUARDIAN_DRUID_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/guardian-druid-pve-tank-gear-best-in-slot?area=area_2",
                "NAME": "GUARDIAN_DRUID_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/guardian-druid-pve-tank-gear-best-in-slot?area=area_3",
                "NAME": "GUARDIAN_DRUID_MYTHIC_PLUS_BIS",
            },
        }

        RESTORATION: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/restoration-druid-pve-healing-gear-best-in-slot?area=area_1",
                "NAME": "RESTORATION_DRUID_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/restoration-druid-pve-healing-gear-best-in-slot?area=area_3",
                "NAME": "RESTORATION_DRUID_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/restoration-druid-pve-healing-gear-best-in-slot?area=area_4",
                "NAME": "RESTORATION_DRUID_MYTHIC_PLUS_BIS",
            },
        }

    class EVOKER:
        LUA_FILE: str = "EvokerBIS.lua"

        AUGMENTATION: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/augmentation-evoker-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "AUGMENTATION_EVOKER_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/augmentation-evoker-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "AUGMENTATION_EVOKER_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/augmentation-evoker-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "AUGMENTATION_EVOKER_MYTHIC_PLUS_BIS",
            },
        }

        DEVASTATION: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/devastation-evoker-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "DEVASTATION_EVOKER_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/devastation-evoker-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "DEVASTATION_EVOKER_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/devastation-evoker-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "DEVASTATION_EVOKER_MYTHIC_PLUS_BIS",
            },
        }

        PRESERVATION: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/preservation-evoker-pve-healing-gear-best-in-slot?area=area_1",
                "NAME": "PRESERVATION_EVOKER_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/preservation-evoker-pve-healing-gear-best-in-slot?area=area_2",
                "NAME": "PRESERVATION_EVOKER_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/preservation-evoker-pve-healing-gear-best-in-slot?area=area_3",
                "NAME": "PRESERVATION_EVOKER_MYTHIC_PLUS_BIS",
            },
        }

    class HUNTER:
        LUA_FILE: str = "HunterBIS.lua"

        BEAST_MASTERY: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/beast-mastery-hunter-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "BEAST_MASTERY_HUNTER_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/beast-mastery-hunter-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "BEAST_MASTERY_HUNTER_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/beast-mastery-hunter-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "BEAST_MASTERY_HUNTER_MYTHIC_PLUS_BIS",
            },
        }

        MARKSMANSHIP: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/marksmanship-hunter-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "MARKSMANSHIP_HUNTER_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/marksmanship-hunter-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "MARKSMANSHIP_HUNTER_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/marksmanship-hunter-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "MARKSMANSHIP_HUNTER_MYTHIC_PLUS_BIS",
            },
        }

        SURVIVAL: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/survival-hunter-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "SURVIVAL_HUNTER_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/survival-hunter-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "SURVIVAL_HUNTER_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/survival-hunter-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "SURVIVAL_HUNTER_MYTHIC_PLUS_BIS",
            },
        }

    class MAGE:
        LUA_FILE: str = "MageBIS.lua"

        ARCANE: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/arcane-mage-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "ARCANE_MAGE_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/arcane-mage-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "ARCANE_MAGE_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/arcane-mage-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "ARCANE_MAGE_MYTHIC_PLUS_BIS",
            },
        }

        FIRE: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/fire-mage-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "FIRE_MAGE_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/fire-mage-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "FIRE_MAGE_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/fire-mage-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "FIRE_MAGE_MYTHIC_PLUS_BIS",
            },
        }

        FROST: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/frost-mage-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "FROST_MAGE_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/frost-mage-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "FROST_MAGE_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/frost-mage-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "FROST_MAGE_MYTHIC_PLUS_BIS",
            },
        }

    class MONK:
        LUA_FILE: str = "MonkBIS.lua"

        BREWMASTER: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/brewmaster-monk-pve-tank-gear-best-in-slot?area=area_1",
                "NAME": "BREWMASTER_MONK_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/brewmaster-monk-pve-tank-gear-best-in-slot?area=area_2",
                "NAME": "BREWMASTER_MONK_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/brewmaster-monk-pve-tank-gear-best-in-slot?area=area_3",
                "NAME": "BREWMASTER_MONK_MYTHIC_PLUS_BIS",
            },
        }

        MISTWEAVER: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/mistweaver-monk-pve-healing-gear-best-in-slot?area=area_1",
                "NAME": "MISTWEAVER_MONK_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/mistweaver-monk-pve-healing-gear-best-in-slot?area=area_2",
                "NAME": "MISTWEAVER_MONK_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/mistweaver-monk-pve-healing-gear-best-in-slot?area=area_3",
                "NAME": "MISTWEAVER_MONK_MYTHIC_PLUS_BIS",
            },
        }

        WINDWALKER: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/windwalker-monk-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "WINDWALKER_MONK_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/windwalker-monk-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "WINDWALKER_MONK_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/windwalker-monk-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "WINDWALKER_MONK_MYTHIC_PLUS_BIS",
            },
        }

    class PALADIN:
        LUA_FILE: str = "PaladinBIS.lua"

        HOLY: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/holy-paladin-pve-healing-gear-best-in-slot?area=area_1",
                "NAME": "HOLY_PALADIN_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/holy-paladin-pve-healing-gear-best-in-slot?area=area_2",
                "NAME": "HOLY_PALADIN_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/holy-paladin-pve-healing-gear-best-in-slot?area=area_3",
                "NAME": "HOLY_PALADIN_MYTHIC_PLUS_BIS",
            },
        }

        PROTECTION: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/protection-paladin-pve-tank-gear-best-in-slot?area=area_1",
                "NAME": "PROTECTION_PALADIN_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/protection-paladin-pve-tank-gear-best-in-slot?area=area_2",
                "NAME": "PROTECTION_PALADIN_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/protection-paladin-pve-tank-gear-best-in-slot?area=area_3",
                "NAME": "PROTECTION_PALADIN_MYTHIC_PLUS_BIS",
            },
        }

        RETRIBUTION: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/retribution-paladin-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "RETRIBUTION_PALADIN_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/retribution-paladin-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "RETRIBUTION_PALADIN_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/retribution-paladin-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "RETRIBUTION_PALADIN_MYTHIC_PLUS_BIS",
            },
        }

    class PRIEST:
        LUA_FILE: str = "PriestBIS.lua"

        DISCIPLINE: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/discipline-priest-pve-healing-gear-best-in-slot?area=area_1",
                "NAME": "DISCIPLINE_PRIEST_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/discipline-priest-pve-healing-gear-best-in-slot?area=area_2",
                "NAME": "DISCIPLINE_PRIEST_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/discipline-priest-pve-healing-gear-best-in-slot?area=area_3",
                "NAME": "DISCIPLINE_PRIEST_MYTHIC_PLUS_BIS",
            },
        }

        HOLY: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/holy-priest-pve-healing-gear-best-in-slot?area=area_2",
                "NAME": "HOLY_PRIEST_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/holy-priest-pve-healing-gear-best-in-slot?area=area_3",
                "NAME": "HOLY_PRIEST_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/holy-priest-pve-healing-gear-best-in-slot?area=area_4",
                "NAME": "HOLY_PRIEST_MYTHIC_PLUS_BIS",
            },
        }

        SHADOW: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/shadow-priest-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "SHADOW_PRIEST_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/shadow-priest-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "SHADOW_PRIEST_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/shadow-priest-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "SHADOW_PRIEST_MYTHIC_PLUS_BIS",
            },
        }

    class ROGUE:
        LUA_FILE: str = "RogueBIS.lua"

        ASSASSINATION: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/assassination-rogue-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "ASSASSINATION_ROGUE_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/assassination-rogue-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "ASSASSINATION_ROGUE_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/assassination-rogue-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "ASSASSINATION_ROGUE_MYTHIC_PLUS_BIS",
            },
        }

        OUTLAW: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/outlaw-rogue-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "OUTLAW_ROGUE_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/outlaw-rogue-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "OUTLAW_ROGUE_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/outlaw-rogue-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "OUTLAW_ROGUE_MYTHIC_PLUS_BIS",
            },
        }

        # TODO: Check and verify Subtlety rogue as pre-season is only available 09/19/24.
        SUBTLETY: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/subtlety-rogue-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "SUBTLETY_ROGUE_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/subtlety-rogue-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "SUBTLETY_ROGUE_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/subtlety-rogue-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "SUBTLETY_ROGUE_MYTHIC_PLUS_BIS",
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
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/affliction-warlock-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "AFFLICTION_WARLOCK_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/affliction-warlock-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "AFFLICTION_WARLOCK_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/affliction-warlock-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "AFFLICTION_WARLOCK_MYTHIC_PLUS_BIS",
            },
        }

        DEMONOLOGY: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/demonology-warlock-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "DEMONOLOGY_WARLOCK_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/demonology-warlock-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "DEMONOLOGY_WARLOCK_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/demonology-warlock-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "DEMONOLOGY_WARLOCK_MYTHIC_PLUS_BIS",
            },
        }

        DESTRUCTION: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/destruction-warlock-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "DESTRUCTION_WARLOCK_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/destruction-warlock-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "DESTRUCTION_WARLOCK_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/destruction-warlock-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "DESTRUCTION_WARLOCK_MYTHIC_PLUS_BIS",
            },
        }

    class WARRIOR:
        LUA_FILE: str = "WarriorBIS.lua"

        ARMS: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/arms-warrior-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "ARMS_WARRIOR_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/arms-warrior-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "ARMS_WARRIOR_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/arms-warrior-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "ARMS_WARRIOR_MYTHIC_PLUS_BIS",
            },
        }

        FURY: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/fury-warrior-pve-dps-gear-best-in-slot?area=area_1",
                "NAME": "FURY_WARRIOR_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/fury-warrior-pve-dps-gear-best-in-slot?area=area_2",
                "NAME": "FURY_WARRIOR_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/fury-warrior-pve-dps-gear-best-in-slot?area=area_3",
                "NAME": "FURY_WARRIOR_MYTHIC_PLUS_BIS",
            },
        }

        PROTECTION: ClassVar[dict] = {
            "OVERALL_BIS": {
                "URL": "https://www.icy-veins.com/wow/protection-warrior-pve-tank-gear-best-in-slot?area=area_1",
                "NAME": "PROTECTION_WARRIOR_OVERALL_BIS",
            },
            "RAID_BIS": {
                "URL": "https://www.icy-veins.com/wow/protection-warrior-pve-tank-gear-best-in-slot?area=area_3",
                "NAME": "PROTECTION_WARRIOR_RAID_BIS",
            },
            "MYTHIC_PLUS_BIS": {
                "URL": "https://www.icy-veins.com/wow/protection-warrior-pve-tank-gear-best-in-slot?area=area_2",
                "NAME": "PROTECTION_WARRIOR_MYTHIC_PLUS_BIS",
            },
        }
