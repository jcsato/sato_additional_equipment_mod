# Sato's Additional Equipment Mod

A mod for the game Battle Brothers ([Steam](https://store.steampowered.com/app/365360/Battle_Brothers/), [GOG](https://www.gog.com/game/battle_brothers), [Developer Site](http://battlebrothersgame.com/buy-battle-brothers/)).

## Table of contents

-   [Features](#features)
-   [Requirements](#requirements)
-   [Installation](#installation)
-   [Uninstallation](#uninstallation)
-   [Customization](#customization)
-   [Compatibility](#compatibility)
-   [Building](#building)

## Features

Adds new equipment to the game, including:

- **[Reinforced Padded Armor](./screenshots/ReinforcedPaddedArmorItemCard.png)**, a new 100/-9 armor styled after some old event artwork. Spawns on Assassins.
- **[Hood with Mouth Piece](./screenshots/HoodWithMouthPieceItemCard.png)**, a kitbashed 40/0 piece of headgear with 2 color variants. Spawns on Killers on the Run and Brigand Marksman.
- **[Masked Nomad Light Helmet](./screenshots/MaskedLightNomadHelmetItemCard.png)**, a 90/-4 piece of headgear with 8 color variants and a named version. Spawns on Nomad Outlaws and recruitable Nomads, the named version is only appears in shops/loot.
- **[Southern Conic Helmet with Closed Mail](./screenshots/SouthernConicHelmetWithClosedMailItemCard.png)**, a 235/-15 helmet southern helmet. Spawns in City-State Armorsmiths and on Officers.
- **[Barbute with Visor](./screenshots/BarbuteWithVisorItemCard.png)**, a 240/-13 helmet with 5 color variants (it's paintable!). Spawns (very occasionally) in Armorsmiths, just like the regular barbute.
- **[Plumed Bascinet with Visor](./screenshots/BascinetWithVisorItemCard.png)**, a 270/-18 helmet to match the the Blazing Deserts cover art. Spawns in Armorsmiths and on Hedge Knights.
- **[Closed Conic Helmet](./screenshots/ClosedConicHelmetItemCard.png)**, a 3 tiered set of helms to match the Closed Flat Top Helmets (145/-8, 160/-9, and 250/-16). Spawns in Armorsmiths, and some varieties can spawn on Mercenaries.
- **[Iron Pot Helm](./screenshots/IronPotHelmItemCard.png)**, a 330/-28 helmet with 5 color variants (it's also paintable!). Spawns (very occasionally)in Armorsmiths.

## Requirements

1) [Modding Script Hooks](https://www.nexusmods.com/battlebrothers/mods/42) (v20 or later)
2) While not an explicit dependency, the Southern gear won't show up without the [Blazing Deserts DLC](http://battlebrothersgame.com/blazing-deserts-release/)

## Installation

1) Download the mod from the [releases page](https://github.com/jcsato/sato_additional_equipment_mod/releases/latest)
2) Without extracting, put the relevant `sato_additional_equipment_*.zip` file in your game's data directory
    1) For Steam installations, this is typically: `C:\Program Files (x86)\Steam\steamapps\common\Battle Brothers\data`
    2) For GOG installations, this is typically: `C:\Program Files (x86)\GOG Galaxy\Games\Battle Brothers\data`

## Uninstallation

1) Remove the `sato_additional_equipment_*.zip` file from your game's data directory

## Customization

It is fairly straightforward to remove an item from showing up in a campaign if you don't like it by removing the relevant script. Suppose you want to remove the Iron Pot Helm - to do so:

1) Unzip the mod
2) Navigate to the `scripts/!mods_preload/` folder and delete the `mod_sae_iron_pot_helm.cnut` file
3) Rezip the mod

This should be safe to do mid-campaign as long as you don't delete the corresponding script in the `items` folder (e.g. `scripts/items/iron_pot_helm`); that will prevent loading a save or cause crashes if those items already exist in a stash somewhere, e.g. a shop or the player stash. It might take some time for items to despawn from e.g. shops.

## Compatibility

**Important!** This is only "forward" save game compatible, i.e. don't need to start a new campaign for it to work, but saves made with it active require the mod in order to be loaded. Updating the mod to a newer minor version (e.g. 2.2 -> 2.3) won't cause any issues.

You _may_ be able to remove the mod mid-campaign if you don't have any of the new gear in your stash or equipped on bros; I expect you'd need towns to refresh their stock before you can access the marketplace without crashes as well. Either way, not recommended.

This should be compatible with other mods so long as they don't change the same base items to which this adds visual variants. As usual, Legends is likely an exception

To take advantage of this mods items in your own mod, you can use the `::mods_getRegisteredMod` function added by modhooks, like so:
```squirrel
// In a tactical entity's assignRandomEquipment() function:
if (::mods_getRegisteredMod("sato_additional_equipment") != null) {
    helmets.extend([
        "helmets/oriental/masked_nomad_light_helmet"
    ]);
}
```

## Building

To build, run the appropriate `build_*.bat` script. This will automatically compile and zip up the mod and put it in the `dist/` directory, as well as print out compile errors if there are any. The zip behavior requires Powershell / .NET to work - no reason you couldn't sub in 7-zip or another compression utility if you know how, though.

Note that the build scripts reference the modkit directory, so you'll need to edit them to point to that before you can use them. In general, the modkit doesn't play super nicely with spaces in path names, and I'm anything but a batch expert - if you run into issues, try to run things from a directory that doesn't include spaces in its path.

After building, you can easily install the mod with the appropriate `install_*.bat` script. This will take any existing versions of the mod already in your data directory, append a timestamp to the filename, and move them to an `old_versions/` directory in the mod folder; then it will take the built `.zip` in `dist/` and move it to the data directory.

Note that the install scripts reference your data directory, so you'll need to edit them to point to that before you can use them.
