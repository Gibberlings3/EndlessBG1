# Endless BG1 (Includes Skip SoD Tweak) Mod 
by jastey                                
for BG:EE, BG:SoD, BGT, and EET         

## GENERAL

For the EE games, the main aim of this mod is to provide the possibility to remain in the BG1 "world" after Sarevok is defeated. Original progressing/ending of the game will be done by talking to Duke Belt inside the Palace.
For EET, it also adds the possibility to move on to BGII by skipping SoD completely. This was included because it was easy to add, not because I think it should be skipped. (Also note that there might be mods that expect SoD events to have happened in BGII).

For BGT, the main component of the mod adds some praise for the PC to Duke Belt's dialogue and removes some oversights with regard to references to Sarevok after he died.

There are several optional components that give more flavor to the situation and prepare for the SoD story events in all games. For most additional content I was inspired by how Baldur's Gate city looks in SoD. Two components are for SoD/EET only.

## DESCRIPTION

### 1 Main Component (Required)
For BG:EE, BG:SoD, and EET this component adds the following functionality:
-prevent end of game/transition to SoD after Sarevok's death: after the "Sarevok died" movie, the game returns to the Undercity Temple
-add basic dialogue to Duke Jannath (if Jannath is still alive and present)
-erase references to Sarevok as new Duke etc. in dialogues of city folk after his death (includes new lines with slightly altered text to consider that he is already dead)
-door to Palace will be open
-Duke Belt will be alive and inside the Palace
-Duke Belt will name the PC Hero of Baldur's Gate
-in dialogue with Duke Belt, player can decide to 
A - remain in the BG1 world
B - leave the BG1 world and move on with the game (BG:EE: end of game, SoD/EET: SoD campaign starts)
C - (EET only) skip SoD completely and start BGII directly.

For BGT, some oversights with regard to references to Sarevok are removed.

### 2 More Flavor to Hero of Baldur's Gate (includes PC's Residence inside Palace)
For SoD and EET only, naming of the PC "Hero of BG" will happen on rostrum we all know from SoD (in a really short cutscene).

Room in the northwest of the 3rd level in the palace will be assigned to the PC. A servant will be there to instruct about the PC's personal chest: it is the "same" one that is used in SoD to transfer the items to the first camp. This chest (at the far west of the room) will now be unlocked. For SoD/EET the content will be moved to the "same" chest inside the SoD campaign (in bd0103.are) automatically.
For all EE games, all chests inside the PC's room will be emptied, the contents will now be inside the drawer on the 2nd level of the palace.

This component also changes the dialogues of the guards inside the palace to something more friendly (guards in the cellar will not turn hostile any more) and adds friendly guards in front of the palace, as well.

### 3 Sarevok's Unique Items
This component adds unique items to Sarevok that he will drop upon his death: special armor, helmet, and sword.
The sword will not be usable. It is a story item only.
The armor will have AC -1, 30 % magic resistance bonus, and weights 70 pounds.
The helmet has 5 % magic resistance bonus.
The custom BAMs for armor and helmet were created by Tantalus for his [Sarevok Recovery Mod](http://www.baldursgate-refugium.de/mods/sarevok-wiederherstellung/), licensed under "Creative Commons" von Nicolas Peters. License: [CC BY-NC-SA 3.0](https://creativecommons.org/licenses/by-nc-sa/3.0/). 

For BGT, the sword of Sarevok will be stolen at Labyrinth exit by someone the PC will meet again in BGII. (This is in accordance to what the Djinni tells about the sword in BGII.)
For EE games, Sarevok's sword can be handed to the Dukes. (This is in accordance to SoD where Imoen tells if asked that the sword was stolen from the palace.)

### 4 Imoen and Duke Jannath (Imoen gets Residence inside Palace)
With this component installed, Duke Jannath will be alive and inside the palace and talk to Imoen a little about possible magic training later.

On the third floor of the palace, Imoen will get the room in the southeast. If she is in party, a servant will welcome here and tell her about her personal chest: it's the one in the far west of Imoen's room ("Imoen's chest" in SoD). The chest will be unlocked. For all EE games, the content of most of the chests will be moved downstairs into the drawer on the 2nd level of the palace. For SoD and EET, the contents of this chest will be moved into the "same" one inside the SoD campaign automatically.
In case Imoen is not in party, she will have taken residence in the Palace top ground and tell the PC about her chest herself.
So far, the kickout dialogue of Imoen was not altered to reflect her new residence, because of compatibility issues with "Wait at Inn" component from Bg1NPC / Tweaks Anthology.

### 5 Duke Eltan is in the Palace
With this component installed, Duke Eltan will also be alive and in the palace. This component also removes Duke Eltan from the Harbormaster's Building in case he was introduced there e.g. by bg1re and/or bg1ub mods.

For compatibility with bg1re's "Scar's Return" bonus quest, please note: this component will enable the final appearance of resurrected Scar, but nothing more. As in the original bg1re component, you need to have gathered all needed items and spoken to Duke Eltan up to the point where he will see to Scar's resurrection before killing Sarevok. Then you will be able to prolong Scar's appearance until after Sarevok is killed by talking to Duke Eltan inside the Palace.

Note for compatibility: this component introduces a cre file "C#STELTA.cre" which has the DV "DELTAN" and the dialogue "DELTAN2.dlg".

### 6 Flaming Fist Healer come into Undercity Temple
After Sarevok and his three minions inside the Undercity Temple are defeated, a Flaming Fist Healer and a FF Scout will come into the temple to take away their bodies. They also offer to heal and resurrect all party members and disarm the traps on the Bhaal symbol (note: this does not include the trigger points at the sides for the Battle Horrors). The player can chose not to benefit from this offer.

### 7 Elminster makes an Appearance
Elminster will turn up once again in front of the palace.

### 8 First Refugees come to Baldur's Gate (SoD/EET only)
Time and again, refugees will arrive in BG in front of the palace and talk about trouble far up in the north. There are three waves with a timer of ten ingame days to increase the number, but all are in front of the palace so overall, this is more of a cosmetic thing and will by no means swamp the city with refugees as it is in SoD.

### 9 Ophyllis the Treasurer in inside Palace Dungeon (SoD/EET only)
Ophyllis the Treasurer from SoD can be met in the Palace dungeon. He will be inside the small office and prepare to take in the PC's gold for safekeeping as per the Duke's request. This will not actually happen as long as the game is in BG1, though.

### 10 Denkod in Thieves Guild comments on Sarevok's Death
Denkod in Thieves Guild who told the PC where Sarevok went will still be there when the group comes back and will talk to PC again before leaving.

## INSTALLATION

NOTE: If you've previously installed the mod, remove it before extracting a new version. To do this, uninstall all previously installed components and delete the mod folder and executables. 

When installing or uninstalling, do not close the DOS window by clicking on the X button! Instead, press the Enter key when instructed to do so.


### BG:EE
If you use SoD from GOG or Steam, you need to prepare your game with DLC Merger or modmerge before installing any mods:
[argent77's DLC Merger](https://forums.beamdog.com/discussion/71305/mod-dlc-merger-merge-steam-gog-sod-dlc-or-custom-dlcs-with-the-main-game)

[modmerge (if in doubt, use the DLC Merger instead)](https://forums.beamdog.com/discussion/50441/modmerge-merge-your-steam-gog-zip-based-dlc-into-something-weidu-nearinfinity-dltcep-can-use/p1)

 
### General (Windows, Mac OS X, and Linux)

Extract the contents of the mod archive to your game's main directory. 
NOTE: For Enhanced Edition it is important that you istall the mod to the language version you are playing the game in. Otherwise, the dialogues of the mod will not show but give error messages.


### Windows
On successful extraction, there should be an c#endlessbg1 folder and a setup-c#endlessbg1.exe file in your game folder. To install, simply double-click setup-c#endlessbg1.exe and follow the instructions on screen.
Run setup-c#endlessbg1.exe in your game folder to reinstall, uninstall or otherwise change components.

### Mac OS X
The Tweak Pack is packaged and installed with WeiDU. To install, extract the mod archive, then copy of the contents of the folder into your game folder (the folder which contains the CHITIN.KEY file). If properly extracted, you should have a "c#endlessbg1" folder, setup-c#endlessbg1, and setup-c#endlessbg1.command in your game folder. To install, simply double-click setup-c#endlessbg1.command and follow the instructions on screen.

### Linux
Extract the contents of the mod to the folder of the game you wish to modify. Download the latest version of WeiDU for Linux from https://github.com/WeiDUorg/weidu/releases and copy WeiDU and WeInstall to /usr/bin. Following that, open a terminal and cd to your BG2 installation directory, run 'tolower' and answer Y to both queries. You can avoid running the second option (linux.ini) if you've already ran it once in the same directory. If you're unsure, running tolower and choosing both options is the safe bet.
Run WeInstall c#endlessbg1 in your game folder to install the mod. Then run wine BGMain.exe and start playing. 

NOTE: BG(II):EE are actively supported games. Please note that every patch update will wipe your current mod setup! If in the middle of a modded game you might want to delay the patch update as even after reinstalling the mods, you might not be able to continue with your old savegames. 

If you have installation problems or encounter any bugs, please post your bug report in one of the forum threads.

## CREDITS

Acifer: ideas.
BeamDog / Overhaul Games: for creating SoD where most additional content ideas for this mod resulted from.
Tantalus: BAMs of Sarevok unique items. The BAMs where taken out of Tantalus' Mod "Sarevok Recovery Mod", licensed under "Creative Commons" von Nicolas Peters. Lizenz: [CC BY-NC-SA 3.0](https://creativecommons.org/licenses/by-nc-sa/3.0/)

## USED TOOLS AND RESSOURCES

The Endless BG1 Mod was created using the resources provided by the [IESDP](https://gibberlings3.github.io/iesdp/index.htm) and with the following software:

[Near Infinity](https://github.com/Argent77/NearInfinity/releases/latest)

[WeiDU](http://www.weidu.org)

[grepWin](http://tools.stefankueng.com/grepWin.html)

Modding communities, tutorials and technical assistance:

[Kerzenburgforum](https://www.baldurs-gate.de/index.php)

[The Gibberlings Three](http://gibberlings3.net)

[Pocket Plane Group](http://pocketplane.net)

[Spellhold Studios](http://www.shsforums.net/)

## LEGAL INFORMATION
Endless BG1 (Includes Skip SoD Tweak) Mod is unofficial Fan Content permitted under the Fan Content Policy. Not approved/endorsed by Wizards. Portions of the materials used are property of Wizards of the Coast. ©Wizards of the Coast LLC.
This mod is also not developed, supported, or endorsed by BioWare, Black Isle Studios, Interplay Entertainment Corp., Overhaul Games or Beamdog. All other trademarks and copyrights are property of their respective owners.

The mod uses BAM files from Tantalus' Mod "Sarevok Recovery Mod", licensed under "Creative Commons" von Nicolas Peters. Lizenz: [CC BY-NC-SA 3.0](https://creativecommons.org/licenses/by-nc-sa/3.0/). The Sarevok Unique Items from the Endless BG1 (Includes Skip SoD Tweak) Mod are therefore also licenced under "Creative Commons" von Nicolas Peters.
