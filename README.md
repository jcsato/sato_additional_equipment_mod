# Sato's Additional Equipment Mod

A mod for the game Battle Brothers ([Steam](https://store.steampowered.com/app/365360/Battle_Brothers/), [GOG](https://www.gog.com/game/battle_brothers), [Developer Site](http://battlebrothersgame.com/buy-battle-brothers/)).

<img src="./screenshots/keyImage.jpg" width="1000">

## Table of contents

-   [Features](#features)
-   [Requirements](#requirements)
-   [Installation](#installation)
-   [Uninstallation](#uninstallation)
-   [Compatibility](#compatibility)
-   [Building](#building)

## Features

Adds new equipment to the game, including:

- **The Masked Nomad Light Helmet**, a 90/-4 piece of headgear with 9 color variants. Nomad Outlaws will spawn with it at a slightly lower rate than their other helmets, and recruitable Nomads will occasionally spawn with it as well.
- **The Barbute with Visor**, a 240/-12 helmet with 5 color variants (it's paintable!). It will very occasionally show up for sale at Armorsmiths, just like the regular barbute.
- **The Plumed Bascinet with Visor**, a 270/-18 helmet to match the the Blazing Deserts cover art. It will show up for sale at Armorsmiths, and Hedge Knights can (optionally) spawn with it.
- **The Closed Conic Helmet**, a 3 tiered set of helms to match the Closed Flat Top Helmets (145/-8, 160/-9, and 250/-16). It will show up for sale at Armorsmiths, and Mercenaries can (optionally) spawn with it, exactly like Closed Flat Tops.
- **The Iron Pot Helm**, a 330/-28 helmet with 5 color variants (it's also paintable!). It will very occasionally show up for sale at Armorsmiths.


The mod also adds visual variations of some vanilla items. Specifically:

- **Noble Mail** now has 10 additional color schemes (one for each noble house, including the cut castle head).
- **Coats of Scale** can now show up with fancy red cloaks and blue capes.
- **Coats of Plate** can now show up with fancy green cloaks.
- **Scale Armor** now gets a cloth cowl variant.
- **Footman's Armor** now gets a cloth cowl variant.
- **Mail Hauberks** get a few more colors (white, yellow-red, and an existing-but-not-acquireable-in-game blue-white variant).
- **Mail with Lamellar Plating** will now show up in Green and Purple variants. Officers & Viziers will spawn with color-appropriate variants for their faction.
- **Hooded Full Helms** will now show up in armorsmiths and on Hedge Knights (optionally).

## Requirements

1) [Modding Script Hooks](https://www.nexusmods.com/battlebrothers/mods/42) (Preferably the latest version, but I'd recommend at least 19)
2) While not an explicit dependency, the Southern gear won't show up without the [Blazing Deserts DLC](http://battlebrothersgame.com/blazing-deserts-release/)

## Installation

1) Download the mod from the [releases page](https://github.com/jcsato/sato_additional_equipment_mod/releases/latest)
2) Without extracting, put the relevant `sato_additional_equipment_main_*.zip` file in your game's data directory
    1) For Steam installations, this is typically: `C:\Program Files (x86)\Steam\steamapps\common\Battle Brothers\data`
    2) For GOG installations, this is typically: `C:\Program Files (x86)\GOG Galaxy\Games\Battle Brothers\data`
2a) If you want **only visual variants and _not_ any of the new gear**, put the relevant `sato_additional_equipment_distributor_variants_only_*.zip` file in your game's data directory
2b) If you want **visual variants _and_ the new gear**, put the relevant `sato_additional_equipment_distributor_new_*.zip` file in your game's data directory

## Uninstallation

1) Remove the relevant `sato_additional_equipment_main_*.zip` and `sato_additional_equipment_distributor_*.zip` files from your game's data directory

## Compatibility

**Important!** This is only "forward" save game compatible, i.e. don't need to start a new campaign for it to work, but saves made with it active require the mod in order to be loaded. Updating the mod to a newer minor version (e.g. 2.2 -> 2.3) won't cause any issues.

You _may_ be able to remove the mod mid-campaign if you don't have any of the new gear or visual variants in your stash or equipped on bros; I expect you'd need towns to refresh their stock before you can access the marketplace without crashes as well. Either way, not recommended.

This should be compatible with other mods so long as they don't change the same base items to which this adds visual variants.

Not compatible with the layered armor system in the Legends mod, which to my understanding is now the default setting. You can achieve similar equipment variety with the layered armor system already, so this mod is somewhat redundant with that anyway.

To take advantage of this mods items in your own mod, you can use the `::mods_getRegisteredMod` function added by modhooks, like so:
```squirrel
// In a tactical entity's assignRandomEquipment() function:
if (::mods_getRegisteredMod("sato_additional_equipment") != null) {
    helmets.extend([
        "helmets/oriental/masked_nomad_light_helmet"
    ]);
}
```

### Building

To build, run the appropriate `build_*.bat` script. This will automatically compile and zip up the mod and put it in the `dist/` directory, as well as print out compile errors if there are any. The zip behavior requires Powershell / .NET to work - no reason you couldn't sub in 7-zip or another compression utility if you know how, though.

Note that the build scripts reference the modkit directory, so you'll need to edit them to point to that before you can use them. In general, the modkit doesn't play super nicely with spaces in path names, and I'm anything but a batch expert - if you run into issues, try to run things from a directory that doesn't include spaces in its path.

After building, you can easily install the mod with the appropriate `install_*.bat` script. This will take any existing versions of the mod already in your data directory, append a timestamp to the filename, and move them to an `old_versions/` directory in the mod folder; then it will take the built `.zip` in `dist/` and move it to the data directory.

Note that the install scripts reference your data directory, so you'll need to edit them to point to that before you can use them.
