# IcyBIS

A World of Warcraft Retail addon providing tooltip information for best in slot (BIS) items scraped weekly from the popular [Icy Veins](https://www.icy-veins.com) website.

## Current

World of Warcraft (WoW) retail currently has two main end-game paths which are the current raid and mythic plus season. The popular WoW guide website, [Icy Veins](https://www.icy-veins.com) plays into these two end-game paths by curating class and specialization specific BIS items. There is then a combination of the two for an overall BIS gear set.

In years past players would have to swap back and forth to see if an item is a BIS in accordance to [Icy Veins](https://www.icy-veins.com). This addon was build to provide real time information within the in-game items tooltip stating if the item is a BIS and from what end-game path (table) the BIS item is from.

## Development Roadmap

I see this addon going many ways and the intention is to start small.

### Initial Release - v1.0.0

- The initial release will only load BIS items for the players class.
- BIS data will **only** be scraped and updated (if any changes) once a week.
  - Potentially Monday nights prior to the scheduled weekly NA maintenance.
- A simple settings UI where the player can toggle on/off class specializations and their respective BIS table. As well as a checkbox to toggle on/off the instance loot message when a BIS item drops.
- Have a workable button in the newly added addon compartment.
- Add information (class, specialization and BIS loot table) to the respective items tooltip.
- Send a instance (party or raid) message when a BIS item drops from content with the class, specialization and BIS loot table as well as the linked item.
- Will have a working slash command that displays help, print out the installed version and opens the settings frame.

### Future Ideas

- Add settings to override character specific class BIS items tooltip display.
  - Ex. As a Shaman I can see item X is a Marksman Hunters Overall BIS item.
- Add a setting to put the addon on "master loot" mode.
  - Master Loot mode would take the current instance (party or raid) players and instead of providing generic tooltip information on BIS items it would provide the players name, specialization and BIS loot table. This would be extremely helpful if master looting was used as the deciding players can see exactly who's BIS the item is.
- Addition of class colors for the tooltip text color.
- Addition of speciation images next or replacing the text within the tooltip.
- Include ilvl difference on tooltip
- Include % upgrade on tooltip

### TODO
- Add python functionality to update BuildDate in the .toc file.
- Verify specs match the id order. Can use in game lua script untitled 10
