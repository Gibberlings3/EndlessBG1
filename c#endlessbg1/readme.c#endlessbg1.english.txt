-------------------------------------------------
---            Endless BG1 Mod                ---
---                by jastey                  ---
---    for BG:EE, BG:SoD, BGT, and EET        ---
-------------------------------------------------


GENERAL

For the EE games, the main aim of this mod is to provide the possibility to remain in the BG1 "world" after Sarevok is defeated. Original progressing/ending of the game will be done by talking to Duke Belt inside the Palace.

For EET, it also adds the possibility to move on to BGII by skipping SoD completely. This was included because it was easy to add, not because I think it should be skipped. (Also note that there might be mods that expect SoD events to have happened in BGII.)

For BGT, the main component of the mod adds some praise for the PC to Duke Belt's dialogue and removes some oversights with regard to references to Sarevok after he died.

There are several optional components that give more flavor to the situation and prepare for the SoD story events in all games. For most additional content I was inspired by how Baldur's Gate city looks in SoD. Three components are for SoD/EET only. 



DESCRIPTION

Note: although most components are optional, it is assumed that components get installed in the correct order of their appearance. Do not install later components before earlier ones, as it might mess up functionality.


1 Main Component (Required)
-----------------------------------
For BG:EE, BG:SoD, and EET, this component adds the following functionality:

- prevent end of game/transition to SoD after Sarevok's death: after the "Sarevok died" movie, the game returns to the Undercity Temple
- add basic dialogue to Duke Jannath (if Jannath is still alive and present)
- erase references to Sarevok as new Duke etc. in dialogues of city folk after his death (includes new lines with slightly altered text to consider that he is already dead)
- door to Palace will be open
- Duke Belt will be alive and inside the Palace
- Duke Belt will name the PC Hero of Baldur's Gate
- in dialogue with Duke Belt, player can decide to
	- remain in the BG1 world
	- leave the BG1 world and move on with the game (BG:EE: end of game, SoD/EET: SoD campaign starts)
	- (EET only) skip SoD completely and start BGII directly.

For BGT, this component removes some oversights with regard to references to Sarevok after his death. 


2 More Flavor to Hero of Baldur's Gate (Includes PC's Residence Inside Palace)
-----------------------------------
For all games, Duke Belt gives the PC quarters on the third floor of the palace.

For BGT, this component also adds more lines to Duke Belt's dialogue after defeating Sarevok, reflecting the PC to be the "Hero of Baldur's Gate".

The room in the northwest of the 3rd level in the palace will be assigned to the PC. A servant will be there to instruct about the PC's personal chest: it is the "same" one that is used in SoD to transfer the items to the first camp. This chest (at the far west of the room) will now be unlocked. For SoD/EET the content will be moved to the "same" chest inside the SoD campaign (in bd0103.are) automatically. For all EE games, all chests inside the PC's room will be emptied, the contents will now be inside the drawer on the 2nd level of the palace.

This component also changes the dialogues of the guards inside the palace to something more friendly (guards in the cellar will not turn hostile any more) and adds friendly guards in front of the palace, as well. 

Note: if Jarl's Adventure Pack v0.8.0 is installed after Endless BG1, opening the chests will be counted as a theft - in this case, the chests on the 3rd floor of the Palace cannot be used by the group despite the servants stating otherwise. Install Jarl's Adventure Pack before Endless BG1 to prevent this.


3 Short Public Hero Tribute (SoD/EET Only)
-----------------------------------
This component was split in v3 from the component "More Flavor to Hero of Baldur's Gate" into an optional choice and is for SoD/EET only. The component "More Flavor to Hero of Baldur's Gate" has to be installed.

With this component, the naming of the PC "Hero of BG" will happen in public on the rostrum we all know from SoD (in a really short cutscene). 


4 Sarevok's Unique Items
-----------------------------------
This component adds unique items to Sarevok that he will drop upon his death: special armor and helmet.

The armor has AC -1, a 30% magic resistance bonus, and weighs 70 pounds.

The helmet has a 5% magic resistance bonus.

Sarevok will drop the items upon his death. They can be looted then. 

The custom BAMs for armor and helmet were created by Tantalus for his Mod "Sarevok Recovery Mod", licensed under "Creative Commons": CC BY-NC-SA 3.0. ( https://creativecommons.org/licenses/by-nc-sa/3.0/ )
Link to "Sarevok Recovery Mod" by Tantalus: http://www.baldursgate-refugium.de/mods/sarevok-wiederherstellung/ 


5 Sarevok's Sword
-----------------------------------
This component adds a sword to Sarevok that he will drop upon his death.  The sword will not be usable. It is a story item only.
 
For BGT, the sword of Sarevok will be stolen at Labyrinth exit by someone the PC will meet again in BGII. (This is in accordance to what the Djinni tells about the sword in BGII.)

For EE games, Sarevok's sword can be handed to the Dukes. (This is in accordance to SoD where sources tell that the sword was stolen from the palace.) 

Note: If you install this component and "Put Sword of Chaos +2 in Sarevok's inventory" from BGT Tweaks, Sarevok will drop two swords.


6 Imoen and Duke Jannath (Imoen Gets Residence Inside Palace)
-----------------------------------
With this component installed, Duke Jannath will be alive and inside the palace and talk to Imoen a little about possible magic training later.

On the third floor of the palace, Imoen will get the room in the southeast. If she is in party, a servant will welcome her there and tell her about her personal chest: it's the one in the far west of Imoen's room ("Imoen's chest" in SoD). The chest will be unlocked. For all EE games, the content of most of the chests will be moved downstairs into the drawer on the 2nd level of the palace. For SoD and EET, the contents of this chest will be moved into the "same" one inside the SoD campaign automatically.

In case Imoen is not in party, she will have taken residence in the Palace top ground and tell the PC about her chest herself.
Imoen's kickout dialogue was altered to reflect her new residence: after receiving her room, Imoen can be sent to the Palace upon kickout. This should be compatible with other "send NPC to wait somewhere" mods (calls higher weighted dialogue which circles back to the normal one if the PC doesn't want her to wait at the Palace).


7 Duke Eltan Is in the Palace
-----------------------------------
With this component installed, Duke Eltan will also be alive and in the palace. This component also removes Duke Eltan from the Harbormaster's Building in case he was introduced there e.g. by older versions of bg1re and/or by bg1ub.

For compatibility with bg1re's "Scar's Return" bonus quest, please note: EBG1 is completely compatible with this component from bg1re v3.0 or higher. You can complete and even start the whole Scar's Return Bonus Quest from bg1re after Sarevok's death by talking to Duke Eltan inside the Palace. There is no need to start the quest before Sarevok's death any more.

Note to modders for compatibility: this component introduces a cre file "C#STELTA.cre" which has the DV "ELTAN" and the dialogue "DELTAN2.dlg" with an "always true" dialogue state with the line "~You saved us. You have the gratitude of the city.~", triggered by ~Dead("Sarevok")~.

Do NOT introduce a line that says "~You saved us. You have the gratitude of the city.~" with your own mod for Duke Eltan, or compatibility will be lost.

You can add reply options to this line of EBG1 if your mod gets installed after. To determine the state number of this line in DELTAN2.dlg, use the following code in the tp2, with %deltan2_70% being the variable number of the dialogue state: 

//----code to determine a state number---
// Get state for DELTAN2 %deltan2_70% 
/* ~You saved us. You have the gratitude of the city.~ */
OUTER_SET deltan2_70 = STATE_WHICH_SAYS 70 IN ~c#endlessbg1/translations/%s/DIALOGUES.TRA~ FROM ~DELTAN2~
//---------------------------------------



8 Flaming Fist After Final Fight
-----------------------------------
After Sarevok and his three minions inside the Undercity Temple are defeated, a Flaming Fist Healer and a FF Scout will come into the temple to take away their bodies. They also offer to heal and resurrect all party members and disarm the traps on the Bhaal symbol (note: this does not include the trigger points at the sides for the Battle Horrors). The player can chose not to benefit from this offer. 


9 Elminster Makes an Appearance
-----------------------------------
Elminster will turn up once again in front of the palace.
There are two install choices: 
1 - jastey's version (as in Version 1 of EBG1)
2 - Restored BG1 Text (This version restores original lines unused in BG1.)


10 First Refugees Come to Baldur's Gate (SoD/EET Only)
-----------------------------------
Time and again, refugees will arrive in BG in front of the palace and talk about trouble far up in the north. There are three waves with a timer of ten ingame days to increase the number, but all are in front of the palace so overall, this is more of a cosmetic thing and will by no means swamp the city with refugees as it is in SoD.


11 Ophyllis the Treasurer Is Inside Palace Dungeon (SoD/EET Only)
-----------------------------------
Ophyllis the Treasurer from SoD can be met in the Palace dungeon. He will be inside the small office and prepare to take in the PC's gold for safekeeping as per the Duke's request. This will not actually happen as long as the game is in BG1, though. 


12 Denkod in Thieves' Guild Comments on Sarevok's Death
-----------------------------------
Denkod in the Thieves' Guild, who told the PC where Sarevok went, will still be there when the group comes back and will talk to PC again before leaving. 


13 Skip Thieves' Maze Once After Sarevok's Death
-----------------------------------
After Sarevok's Death, the exit of the Undercity will skip the Thieves' Maze once and lead directly into the Thieves' Guild. After going in that direction once, the normal entrances will be reactivated so that the Thieves' Maze can be visited normally after that. 


14 Korlasz' Dungeon is in BG1
-----------------------------------
This component moves Korlasz' Tomb into the BG1 part of the game. It transports the group into the dungeon after Belt told the PC to come along to hear the details of pursuing Sarevok last follower. 
The dungeon can be left and entered after that at will, and is also available in SoD (Iron Throne building area).
Imoen will remain in the group if she is a party member and will have her original SoD dialogues inside the tomb. If she is not in the group, Imoen will be inside the dungeon as a guide like she is in original SoD.
Transition to SoD is done afterwards in the dialogue with Duke Belt, when the PC can say that they will do nothing for a tenday to rest before the next problem needing a hero will surface.
Changes do not apply to a new SoD game.

Note: This component will most certainly screw Transitions mod as it is not considered there yet (v2.0 and lower). Do not install this component if you were planning on installing Transitions, anyway.


15 Fenster the Palace Healer Is in the Palace
-----------------------------------
Fenster will be inside the palace ground floor, offering similar healing services like the cleric inside Korlasz' Dungeon.

Note: This component might lead to two Fensters being present if combined with the component from Transitions mod as it is not considered there yet (v2.0 and lower). 


16 Captain Corwin Is in the Palace
-----------------------------------
Corwin will be inside the palace ground floor with the Dukes, and has no notable content whatsoever.



INSTALLATION

NOTE: If you've previously installed the mod, remove it before extracting a new version. To do this, uninstall all previously installed components and delete the mod folder and executables. 

When installing or uninstalling, do not close the DOS window by clicking on the X button! Instead, press the Enter key when instructed to do so.


BG:EE
If you use SoD from GOG or Steam, you need to prepare your game with DLC Merger or modmerge before installing any mods:
argent77's DLC Merger:
https://forums.beamdog.com/discussion/71305/mod-dlc-merger-merge-steam-gog-sod-dlc-or-custom-dlcs-with-the-main-game

modmerge (if in doubt, use the DLC Merger instead):
https://forums.beamdog.com/discussion/50441/modmerge-merge-your-steam-gog-zip-based-dlc-into-something-weidu-nearinfinity-dltcep-can-use/p1

 
General (Windows, Mac OS X, and Linux)

Extract the contents of the mod archive to your game's main directory. 
NOTE: For Enhanced Edition it is important that you install the mod to the language version you are playing the game in. Otherwise, the dialogues of the mod will not show but give error messages.


Windows
On successful extraction, there should be an c#endlessbg1 folder and a setup-c#endlessbg1.exe file in your game folder. To install, simply double-click setup-c#endlessbg1.exe and follow the instructions on screen.
Run setup-c#endlessbg1.exe in your game folder to reinstall, uninstall or otherwise change components.

Mac OS X
The Tweak Pack is packaged and installed with WeiDU. To install, extract the mod archive, then copy of the contents of the folder into your game folder (the folder which contains the CHITIN.KEY file). If properly extracted, you should have a "c#endlessbg1" folder, setup-c#endlessbg1, and setup-c#endlessbg1.command in your game folder. To install, simply double-click setup-c#endlessbg1.command and follow the instructions on screen.

Linux
Extract the contents of the mod to the folder of the game you wish to modify. Download the latest version of WeiDU for Linux from https://github.com/WeiDUorg/weidu/releases and copy WeiDU and WeInstall to /usr/bin. Following that, open a terminal and cd to your BG2 installation directory, run 'tolower' and answer Y to both queries. You can avoid running the second option (linux.ini) if you've already ran it once in the same directory. If you're unsure, running tolower and choosing both options is the safe bet.
Run WeInstall c#endlessbg1 in your game folder to install the mod. Then run wine BGMain.exe and start playing. 

NOTE: BG(II):EE are actively supported games. Please note that every patch update will wipe your current mod setup! If in the middle of a modded game you might want to delay the patch update as even after reinstalling the mods, you might not be able to continue with your old savegames. 

If you have installation problems or encounter any bugs, please post your bug report in one of the forum threads.



COMPATIBILITY

The Endless BG1 Mod will set the variable "Global("C#EndlessBG1","GLOBAL",1)" in the thieves guild (after the Palace fight) for (NPC) mods to know that the game will remain in BG1 after Sarevok's death.
Also, from v7 it will set "Global("SarevokBehavior","GLOBAL",5)" to 5 after Sarevok is dead.

Components 1-13 of EndlessBG1 mod are fully compatible with Transitions Mod if Endless BG1 is installed first. Note: Transitions Mod overwrites a lot of components of BG1 with own versions of the content, if considering EBG1's content is not explicitely offered as an install choice. 
Components 14-16 are not considered in Transitions yet (v2.0 and lower). Component 14 is probably incompatible with Transitions. Installing both will probably mess up the game. Also see compatibility notes in the component descriptions.

The bonus quest "Scar's Return" from bg1re is fully playable after Sarevok's death.

If Jarl's Adventure Pack v0.8.0 is installed, opening the chests on the 3rd floor of the Palace will be counted as a theft - in this case, the chests cannot be used by the group despite the servants stating otherwise.


CREDITS

Acifer: ideas.
BeamDog / Overhaul Games: for creating SoD where most additional content ideas for this mod resulted from.
Garanda: idea to give CHARNAME's bed in the palace a "rest" function.
Lauriel: ideas to move Korlasz' Dungeon into BG1 and place Fenster into the palace, from her mod Transitions.
Tantalus: BAMs of Sarevok unique items. The BAMs where taken out of Tantalus' Mod "Sarevok Recovery Mod", licensed under "Creative Commons": CC BY-NC-SA 3.0 ( https://creativecommons.org/licenses/by-nc-sa/3.0/ )

Translations:
Austin, Arkie & Arcanecoast.ru, and yota13: Russian
Roberciiik: Polish
Gwendolyne, Machiavélique, and Shodead: French
Proofreading of English version & readme: Lauriel, Mike1072, Roberciiik


USED TOOLS AND RESOURCES

The Endless BG1 Mod was created using the resources provided by the IESDP (https://gibberlings3.github.io/iesdp/index.htm) and with the following software:

Near Infinity				https://github.com/Argent77/NearInfinity/releases/latest
WeiDU					http://www.weidu.org
grepWin			http://tools.stefankueng.com/grepWin.html

Modding communities, tutorials and technical assistance:

Kerzenburgforum				https://www.baldurs-gate.de/index.php
The Gibberlings Three			http://gibberlings3.net
Pocket Plane Group			http://pocketplane.net
Spellhold Studios			http://www.shsforums.net/



HISTORY

Version 9:
-New optional component "Korlasz' Dungeon is in BG1": moves Koralsz' Tomb into BG1 after Sarevok's death. Transition to SoD / BGII after it is done.
-New optional component "Fenster the Palace Healer Is in the Palace": Places Fenster into the palace ground floor who will offer temple services.
-New optional component "Captain Corwin Is in the Palace": Places Corwin into palace ground floor with no notable content.
-Added line to Hafiz so it doesn't sound like Sarevok is still alive if he's dead.
-Main component: all unsolved journal titles will be closed.
-Main component: Dilos and Benjy in FF headquarters should have a line if talked to after Sarevok's death.
-Main component: companions will give farewell speech upon transition to BGII.
-Main component (EET): direct transition to BGII (skip SoD) happens via the end cutscene in the wilderness (like in the original).
-More Flavor to Hero of Baldur's Gate: PC's bed in BG1 will have option to rest full night or until a certain hour of the day.
-cutsom cres other than dukes will be removed in SoD / BGII (for compatibility with mods that reopen the areas).

Version 8:
-French translation added.
-hostile FF soldiers will no longer be hostile or disappear after Sarevok is defeated in the palace.
-changed most checks for after Sarevok events from "!Dead("Sarevok")" to after the confrontation at the coronation event.
-removed unneeded variable check from Transitions mod for item transfer to PC's chest.
-added globally unique LABELs to support Project Infinity

Version 7:
- Polish translation added by Roberciiik.
- Sarevok's armor should not be usable by Mages/sorcerers.
- missed line in duke_eltan.d traified.
- Dukes should not turn hostile when PC returns into Palace after killing Sarevok on EE patch 2.6 beta.
- afte Sarevok is dead: Duke Eltan is no longer searched for, so the Harbormaster shouldn't refer to him.
- typo corrections in readme (English).
- corrected "charset" to "charsets" in tp2.
- changes to tp2 organization: use of install.mrk so text transformation to utf-8 is only done once; Russian version now uses english setup.tra out of English language folder; added forbid checks for EET_End.
- corrected doubled cpmvars.tpa entry for "Beregost_House08".
- updated links and install order info in endlessbg1.ini.
- clearified the copyright license the mod is published under and provided a link to Tantalus' Mod "Sarevok Recovery Mod".

Version 6.1:
-Lines in ffhealer.tpa and refugees_sod.tpa traified. Russian text by yota13.
-added install order syntax to support Project Infinity

Version 6:
-compatibility with Transitions beta 0.4

Version 5:
-compatibility with Transitions
-ebg1 considers Transitions' versions of Sarevok Items in Duke Belt's and Denkod's dialogue
-typo corrections in readme and setup.tra by Mike1072

Version 4:
-Russian translation added by Austin, Arkie & Arcanecoast.ru
-Component "Flaming Fist Healer come into Undercity Temple": FF should not die if area effects are still active, changed text slightly for compatibility with "remove traps" tweak mods.

Version 3.1
-fixed install error for some BGT installs

Version 3
-English version proof read by Lauriel
-new component: "Skip Thieves Maze once after Sarevok's Death"
-new component "Short Public Hero Tribute" splitted from "More Flavor to Hero of Baldur's Gate"
-"Main component": upon transition to SoD, Duke Belt will not only tell the PC to follow him but also mention that the PC will seek out the last of Sarevok's followers; all nobles from coronation ceremony should be gone after Sarevok's death (added DestroySelf() to sarrun.bcs); quicker Fade To Black upon transition to SoD.
-"Sarevok's Sword": Sword will be removed from PC's chest and inventory upon transition to SoD to simulate the theft; journal entries get properly applied to journal (EE); additional journal entries when PC hears about the stolen sword (SoD/EET) and when it is found in Irenicus Dungeon (BGT/EET).
-"Duke Eltan is in the Palace": added full compatibility with bg1re's bonus quest "Scar's Return" (bg1re v3.0 or higher).
-corrected component descriptions for BGT (1st & 2nd component).
-added DESIGNATED and LABEL taggs.

Version 2.1
-fixed German tra bug

Version 2
-splitted former component "Sarevok's Items" into two and made the dropping and quest about Sarevok's Sword an own component "Sarevok's Sword" (for compatibility with other mods adding a sword to Sarevok, e.g. BGTTweaks). Component "Sarevok's Items" now only contains his armor and helmet.
-"Elminster makes an Appearance" has two install options now: additionally to jastey's version from v1, it also offers the possibility to restore the original Elminster lines unused in the game.
-"Imoen and Duke Jannath": Imoen can be sent to the Palace upon kickout. This should be compatible with other "sent NPC to wait somewhere" mods (calls higher weighted dialogue which circles back to the normal one if the PC doesn't want her to wait at the Palace)
-"Imoen and Duke Jannath": Duke Jannath will have some random dialogue lines if talked to by Imoen.
-"Denkod in Thieves Guild comments on Sarevok's Death": Denkod should be inside the thieves guild if Sarevok is dead
-"Flaming Fist Healer come into Undercity Temple": FF healer takes away the bodies also if PC doesn't want help with healing; FF soldiers do not walk into the temple when they are leaving, FF healers do not do RandomWalk() while they can't see the PC.
-Violeta in Thieves Maze should not be gone before Sarevok is dead.
-(EE) Winski in Thieves Maze should be gone after Sarevok is dead.
-EET: areas in Palace should not crash. Fixed container area names for EET (components "More Flavor to Hero of Baldur's Gate" and "Imoen and Duke Jannath")
-(EE) Exit from Undercity Temple will only reappear and movie will play if all 4 foes are either dead or no longer present in the area.
-added dialogue lines to Dukes in case they are talked to not by the PC if the PC is not inside as well.
-slight changes to the lines in setup.tra (error message should say "component" instead of "mod")
-mod will set the variable "Global("C#EndlessBG1","GLOBAL",1)" in the thieves guild (chapter 7 after Palce fight) for compatibility with (NPC) mods to know that the game will remain in BG1 after Sarevok's death.
-all lines trayfied.
-minor internal tp2 changes (definition of Imoen's death variable now uses the standard one out of the cpmvar.tpa files).
-added folder libiconv-1.9.2-1-src.7z with iconv licence info
-added c#endlessbg1.ini with mod info


Version 1
-first public release



LEGAL INFORMATION & COPYRIGHT
==========================================================================

This mod is copyright (c) jastey.

This mod accepts bug fixes, compatibility fixes, and translation updates from the community.

This mod is additionally licensed under CC BY-NC-SA 3.0.

https://creativecommons.org/licenses/by-nc-sa/3.0/

The mod uses BAM files from Sarevok Wiederherstellung (the Sarevok Recovery Mod) by Nicolas Peters, licensed under CC BY-NC-SA 3.0.

http://www.baldursgate-refugium.de/mods/sarevok-wiederherstellung/

Endless BG1 is unofficial Fan Content permitted under the Fan Content Policy. Not approved/endorsed by Wizards. Portions of the materials used are property of Wizards of the Coast. (c) Wizards of the Coast LLC.

This mod is also not developed, supported, or endorsed by BioWare, Black Isle Studios, Interplay Entertainment Corp., Overhaul Games or Beamdog. All other trademarks and copyrights are property of their respective owners.

==========================================================================
