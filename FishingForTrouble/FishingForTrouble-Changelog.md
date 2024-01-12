v3.2.9, 12.01.2024
 AL|EN:
 - added HANDLE_CHARSETS and iconv
 - move changelog from FishingForTrouble-Readme.html into FishingForTrouble-Changelog.md
 - move 3.0HF1.pdf file to docs folder
 - fix Basimah dialog with CHARNAME instead of token
 - fixed ysAssassinCave variable in yslevon.d file
 - fixed uninstallation errors
 - EXTEND_TOP instead of overwrite
 - update InfinityAutoPackager.yaml

 TotoR115:
 - the mod will now install the new map icon with bg2
 - bgt map icon's position should now work
 - compatibility with Worldmap v11: map icon for YS0390.are is 182, map icon for YS0370.are is 98, moove YS0390 up, as it is with Bg2
 - remove useless script (ys0407.bcs) to ys0407.are. This was not required as the script is already triggered by a trigger...
 - YS1001.baf: use existing movies, as Resources don't exist
 - Add missing sound
 - update patches.tpa
 - ys0040.are: is missing the ys0040.bcs
 - ys0160.are: drawers x: 737;Y: 379 does not exists
 - ys0161.are: Container 1 is anormaly empty. Add MISC07.ITM like others
 - ys0401.are: Chest contains not existing itm
 - ys0407.are: is missing the ys0407.bcs
 - yshldgrd.cre: remove the shield as in oBG2 he can't use his bow

v3.2.8, 28.03.2021
 AL|EN:
 - fixed Face.ids

v3.2.7, 07.01.2021
 AL|EN:
 - fixed typo and updated Russian translation copyright line
 - traify lib/patches.tpa messages

v3.2.6, 06.01.2021
 AGKanevchev:
 - updated Russian translation, thanks AGKanevchev
 AL|EN:
 - traify ysblksto.d and yselcol2.d
 - traify setup messages
 - update macOS version of tisunpack
 - use %MOD_FOLDER% where possible
 - added Infinity Auto Packager
 - added globally unique LABEL's
 - replace REQUIRE_COMPONENT with equivalent code which does not depend on DESIGNATED numbers
 - restore original version name formatting to match tags and release names
 - rename AUTHOR to SUPPORT
 - updated mod readme
 
v3.2.5, 04.09.2019
 Roxanne:
 - fixed loop in final Akil quest dialogue
 - fixed double spawning of tanar'ri at lighthouse and added missing leaving code
 - fixed inconsistent villain name Levon vs Leron
 - added remaining Tis for EE
 - removed illegal support contact

v3.2.4, 20.08.2019
 AL|EN:
 - updated mod readme
 - added support forum

v3.2.3, 20.08.2019 by AL|EN and Roxanne
 AL|EN:
 - added MacOS WeiDU executable and changed setup-fishingfortrouble.command file
 Roxanne:
 - fixed Tis files for large areas in EE games
 - fixed double spawning of tanar'ri at lighthouse and added missing leaving code

v3.2.2, 19 August 2019
 - consolidated maintenance fixes from 2018 and 2019

v3.2.1, 27 July
 AL|EN:
 - removed the "Optional component - add Fishing for Trouble to BP-BGT-Worldmap", it doesn't make sense, proper code by K4thos added to patch_worldmap.tpa

v3.2.0, 2 July 2016
 K4thos:
 - new icon for Govt. West by Lava
 - new BAM v1 and BAM v2 icon file patching (without overwritting)
 - TBL files used for worldmap creation
 - fixed travel times within Athkatla (0 hours from and to new district)
 - fixed BP-BGT Worldmap component (previously would crash if Worldmap directory was empty)
 - EE worldmap save patching can be enabled in code (by default only enabled for original games, just like in old implementation)

v3.1.3, 6 November 2016
 agb1:
 - fixed following issues reported by micbaldur (http://www.shsforums.net/topic/47635-notes-oddities-and-possible-bugs-in-my-bwp-game-spoilers/?p=589066)
 - Earl Wultheof will give a gold reward as his dialogue claims
 - "The Food Thief" quest now advances and can be completed after talking with Cado
 - talking with Ailoth no longer makes Garalial act as if you already talked to him
 - fixed Levon's dialogue when Akil is in the same room (possible quest outcome)
 - fixed charisma checks in Levon's dialogue (speaker's charisma affects outcome)

v3.1.2, 3 November 2016
 agb1:
 - incorporated patch from K4thos to fix EET journal chapter numbering
 - removed an invalid reference (http://www.shsforums.net/topic/58178-missing-spell-in-script/)

v3.1.1, 21 July 2016
 agb1:
 - added check for EE game type to lib/patches.tpa to avoid patching ACTION.IDS (some signatures changed in EE)

v3.1, 5 February 2016
 - incorporated patches from the BiG World Fixpack
 - renamed mod folder and tp2 from dq to fishingfortrouble
 - incorporated EET compatibility patches from K4thos
 - simplified tp2 by moving sub-sections into tpa files
 - replaced platform-specific conversions with HANDLE_AUDIO and HANDLE_TILESETS
 - fixed some typos in the English translation

v3.0HF1, 19 February 2015
 - for changelog of v3.0 HF1 and older version see the 3.0HF1.pdf in the FishingForTrouble\docs folder