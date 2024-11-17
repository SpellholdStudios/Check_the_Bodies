
![Latest Release](https://img.shields.io/github/v/release/SpellholdStudios/Check_the_Bodies?include_prereleases&color=darkred)<a name="top" id="top"> </a>
![Platform](https://img.shields.io/static/v1?label=platform&message=windows%20%7C%20Mac%20%7C%20linux&color=informational)
![Language](https://img.shields.io/static/v1?label=language&message=English%20%7C%20French%20%7C%20German%20%7C%20Italian%20%7C%20Russian%20%7C%20Spanish&color=limegreen)


<div align="center"><h1>Check The Bodies</h1>

<h3>A Spellhold Studios mod for Baldur's Gate II, ToB, Baldur's Gate Trilogy, BG2:EE and EET<h3>

</div><br />


**Author:** Charles Bisson  
**Mod Website:** <a href="hhttp://www.spellholdstudios.net/ie/ctb">Spellhold Studios</a>  
**Mod Forum:** <a href="http://www.shsforums.net/forum/196-check-the-bodies/">Check The Bodies</a>  


[Read the mod's readme](http://spellholdstudios.github.io/readmes/ctb-readme-english.html).

[Download the mod at Spellhold Studios](http://www.shsforums.net/files/file/58-check-the-bodies-v113/).<br>

&nbsp;

<div align="center">
<a href="#intro">Overview</a> &#8226; <a href="#compat">Compatibility</a> &#8226; <a href="#installation">Installation</a> &#8226; <a href="#components">Components</a> &#8226; <a href="#credits">Credits and Acknowledgements</a> &#8226; <a href="#versions">Version History</a></br>
</div>

<hr>


## <a name="intro" id="intro"></a>Overview

Check the Bodies adds various quests to the BGII part of the game, including new areas, a new city, spells, stores, animations, and items: This is a mini-quest mod, each single quest works as a stand alone quest. That is to say, if one were to start a new game, play one of my new quests, and finish the game, there should be no problems. Each quest is heavily dependant on a number of random factors: the PC's race, class, alignment, etc., chapter, make up of the party, and so many other factors. It will be impossible for a single character to play through the entire game and get *all* of Check The Bodies' quests. That is by design. Don't worry, no matter what you choose for a character, you won't miss anything for that character.

For a list of the quests, see "<a href="CtB/Readme/CtB_Quest_List.txt">CtB_Quest_List.txt</a>". (In CtB/Readme) For Charles Bisson's original notes, please refer to "<a href="old_CtB-Readme_old.txt">old_CtB-Readme_old.txt</a>".

**Key features:**
- More than 20 independent new quests, dozens of class specific quests.
- 160 areas, 15 new areas. 1 new town.
- 1 new NPC.
- 450 new creatures.
- Hundreds of new items.
- 275 spells.
- 25 stores.
- 6 new songs.
- 1 film.

<div align="right"><a href="#top">Back to top</a></div>


<hr>


## <a name="compat" id="compat"></a>Compatibility

This mod is designed to work on the following Infinity Engine games: the original Baldur's Gate II (BG2 or just SoA) with or without the Throne of Bhaal (ToB) expansion, Baldur's Gate II: Enhanced Edition (BG2EE), the conversion projects Baldur's Gate Trilogy (BGT) and Enhanced Edition Trilogy (EET).

Check The Bodies is a WeiDU mod, and therefore should be compatible with all WeiDU mods. However, we cannot test every single one. If you encounter any bugs, please <a href="http://www.shsforums.net/forum/196-check-the-bodies/">report them on the forum</a>!

>Classical game players are strongly recommended to download and install the latest version of the <a href="http://www.gibberlings3.net/bg2fixpack/">BG2 Fixpack</a> before proceeding with the installation of this mod.<br>
<div align="right"><a href="#top">Back to top</a></div>


<hr>


## <a name="installation" id="installation"></a>Installation

#### Notes

*If you've previously installed the mod, remove it before extracting the new version. To do this, run **`setup-ctb.exe`**, un-install all previously installed components and delete the :file_folder: **ctb** folder.*

*When installing or un-installing, **do not close the DOS window** by clicking on the **X** button! Instead, press the **Enter** key whenever instructed to do so.*

*__Disable any antivirus__ or other memory-resident software before installing this or any other mod. Some (particularly avast and Norton!) have a tendency to report false positives with mod activity, resulting in failed installs.*

## 

#### Enhanced Editions Note

The Enhanced Editions are actively supported games. Please note that every patch update will wipe your current mod setup! If in the middle of a modded game you might want to delay the patch update (if possible) as even after reinstalling the mods, you might not be able to continue with your old savegames. Alternatively, copy the whole game's folder into a new one that can be modded and will stay untouched by game patches. It is important that you install the mod to the language version you are playing the game in. Otherwise, the dialogues of the mod will not show but give error messages.

## 

#### Windows

Check The Bodies for Windows is distributed as an extractable compressed archive and includes a WeiDU installer.

Extract the contents of the mod archive into the folder of the game you wish to modify (*the folder which contains the "CHITIN.KEY" file*), using <a href="http://www.7-zip.org/download.html">7zip</a>, <a href="http://www.rarlab.com/download.htm">WinRAR</a>, or another file compression utility that handles .zip files. On successful extraction, there should be a :file_folder: ctb folder and a setup-ctb.exe file in your game folder. To install, simply double-click **`setup-ctb.exe`** and follow the instructions on screen.

Run **`setup-ctb.exe`** in your game folder to reinstall, un-install or otherwise change the components settings.

## 

#### Mac OS X

Check The Bodies for Mac OS X is distributed is distributed in the same compressed archive and includes a WeiDU installer.

First, extract the files from the archive into your game directory. On successful extraction, there should be a :file_folder: ctb folder, setup-ctb and setup-ctb.command files in your game folder. To install, simply double-click **`setup-ctb.command`** and follow the instructions on screen.

Run **`setup-ctb.command`** in your game folder to reinstall, un-install or otherwise change the components settings.

## 

#### Linux

Check The Bodies for Linux is distributed as a compressed tarball and does not include a WeiDU installer.

Extract the contents of the mod to the folder of the game you wish to modify.

Download the latest version of WeiDU for Linux from <a href="https://github.com/WeiDUorg/weidu/releases">WeiDU.org</a> and copy WeiDU and WeInstall to /usr/bin. Following that, open a terminal, **cd** to your game installation directory, run tolower and answer 'Y' to both queries. You can avoid running the second option (linux.ini) if you've already ran it once in the same directory. To save time, the archive is already tolowered, so there's no need to run the first option (lowercasing file names) either if you've extracted only this mod since the last time you lowercased file names. If you're unsure, running tolower and choosing both options is the safe bet.

To install, run **`WeInstall setup-ctb`** in your game folder. Then run **`wine BGMain.exe`** and start playing.

## 

#### Note for Complete Un-installation

In addition to the methods above for removing individual components, you can completely un-install the mod using **`setup-ctb --uninstall`** at the command line to remove all components without wading through prompts.</br>
<div align="right"><a href="#top">Back to top</a></div>


<hr>


## <a name="components" id="components"></a>Components

The installer includes the following components. The number of each is the component *DESIGNATED* number which gives it a fixed install position, lets other components and mods detect it and allows automated installers to specify component choices.  
All optional components require the main component (they need to since it's the one that installs new content).<br /><br />


#### 0. Check the Bodies: main component

This component installs the mod itself.</br>

## 

#### 1. Candlekeep Chores

This component adds the so called "*Candlekeep Chores*" which will trigger inside the library of Irenicus' Dungeon. The PC will be back in Candlekeep, remembering his/her chores during his normal life in Candlekeep. These chores have to be executed in length if the component "Candlekeep Chores Fast Foreward" is not installed. Each finished chore will grant the PC an ability.

## 

#### 2. Candlekeep Chores Fast Forward (by hlidskialf)

This component requires the *Candlekeep Chores* component to be installed. It gives the possibility to shorten the Candlekeep Chores and allows you to bypass all the chores and lectures during the initial part of the Check the Bodies mod while still retaining the options for the various abilities that you had the opportunity to learn.

When you speak to Gorion after first appearing in Candlekeep, just ask him to "*skip*" the lectures and chores. It should work at almost any point along the days of chores, so long as they are not done for the day. The rest should be pretty straightfoward. I left in CBisson's rebuilt cutscenes from BG1 as I respect the work he did for the mod, as well as it's just a cool series of flashbacks. I hope this will help others enjoy the mod without having to endure the labors of childhood in a cRPG.

## 

#### 3. Other Improvements

This component patches the main component with some improvements:
- Change the entrances of AR0404.are to the original position.
- Change Yusef's name to Yassir, because Yusef is Surayas brother.
- Start the pirate quest in Athkathla at the gates by level 10.

##

#### 4. Biffing

This component requires the main component to be installed. Compress files for better game performance. Only valid for classic (BG2:ToB or BGT) game.</br>


<div align="right"><a href="#top">Back to top</a></div>


<hr>


## <a name="credits" id="credits"></a>Credits and Acknowledgements

**Original author:** <a href="http://www.shsforums.net/user/3378-cbisson/">Charles Bisson</a>  
**Candlekeep Chores Fast Forward:** <a href="http://www.shsforums.net/user/24-hlidskialf/">hlidskialf</a>  
**Coders:** Charles Bisson (original installer), <a href="http://www.shsforums.net/user/3816-king-diamond/">King Diamond </a>(WeiDU revision), <a href="http://www.shsforums.net/user/7223-ikki/">Ikky</a> (EE Conversion) and <a href="http://www.shsforums.net/user/3958-weigo/">Weigo</a> (all in one)  


#### Special Acknowledgements to:

- <a href="http://www.spellholdstudios.net/">Spellhold Studios</a> team for hosting the mod (<a href="http://www.shsforums.net">Forums</a>).
- The creators of the Baldur's Gate series: <a href="http://www.bioware.com/">Bioware</a> and <a href="http://www.obsidian.net/">Black Isle Studios</a>.

- Braño (aka Valiant, Slovakia): New Worldmap, Website and additional Hlondeth area modeling.
- Kevin Dorner: Baldurdash Bug-Fixes.
- Check The Bodies title: I hate to admit it, but I didn't come up with it... Thanks Aernor!
- Voice Actors:
  - The Cowled Wizard: Bob Dupuis, TheWizard
  - Captain Deudermont and ElfSapate: Gregg notmrt Kincaid
- Portrait for Rynn taken from <a href="http://www.karwal.dk/portraitportal/index.html">The Portrait Portal</a> (Karse never mailed me back, so these were taken without permission).
- The Spellfire Play comes straight from Ed Greenwood's book, *Spellfire*. (I don't know the copyright information as I'm typing this.)
- The '*Tis Pity She's A Wench*' play is based on John Ford's play '*Tis Pity She's A Whore*', and I don't have the copyright info on that either.
- Candlekeep's music taken from *The Lord Of The Rings: The Fellowship of the Ring*, copyright 2001.
- Captain Deudermont's stories:  
  - *Arrival in Waterdeep* taken from *Master and Commander* by Patrick O'Brian
  - *A Fantastic Voyage* taken from *Passage To Dawn* by R.A. Salvatore
  - *The Sea Sprite's Crew* also taken from *Master and Commander* by Patrick O'Brian
- Additional material taken from IE Games:  BGI, IWDI, IWDII.
- WeiDU Installation Assistance provided by JCompton and Wes Weimer. Thanks guys!
- WeiDU bug testing provided by Andrew. Thanks!
- Further bug fixing: Hoppy, White Agnus, Weigo, Roxanne, jastey.
- Spanish translation: Ancalagon el Negro, Artemis, Chrono66, Lisandro, Melkor, Riojano2002, Serpol, ¿Quién si no?.
- Italian translation: Ilot (in collaboration with Arcangelo and Andrea C.).
- German translation: Leonardo Watson.
- French translation: Morkhan, La Voix 2 la Sagesse and Asa (of the d'Oghmatiques).
- Russian translation: aerie-ru.info team.
- Everyone else from the <a href="http://gibberlings3.net/forums/">The Gibberlings Three</a>, <a href="http://www.shsforums.net/">Spellhold Studios</a> forums, and the other Infinity Engine gaming and modding communities who offered their help and support.

I really hope I don't forget anyone- if I do, you can slap me with a wet towel.

## 

#### Programs/tools used in creation:

- <a href="https://github.com/WeiDUorg/weidu/releases"><acronym title="Weimer Dialogue Utility">WeiDU</acronym></a>, by Wes Weimer, the bigg and Wisp.
- <a href="https://github.com/Argent77/NearInfinity/releases">Near Infinity</a>, by Jon Olav Hauglid, FredSRichardson, and Argent77.
- <a href="http://www.shsforums.net/topic/31285-infinity-explorer-v085/">Infinity Explorer</a>, by Dmitry Jemerov / bigmoshi.
- <a href="http://www.gibberlings3.net/tools/dltcep.php"><acronym title="Dragonlance Total Conversion Editor Pro">DLTCEP</acronym></a>, by Avenger.
- <a href="https://gibberlings3.github.io/iesdp/"><acronym title="Infinity Engine Structures Description Project">IESDP</acronym></a>, maintained by igi and lynx.
- <a href="http://www.gameapps.com/ietme.htm">IE Tileset Map Editor for Infinity Games</a>, by Theo De Moree.
- <a href="http://www.pocketplane.net/mambo/index.php?option=content&task=blogcategory&id=137&Itemid=96">TISpack</a> by Per Olofsson.
- <a href="http://www.teambg.eu/?page=tools&amp;cat=32">BAM Workshop</a>, by Glenn Flansburg.
- <a href="http://www.shsforums.net/topic/57564-bamworkshop/">BAMWorkshop 2</a>, by Andrew Bridges.
- <a href="http://notepad-plus-plus.org/">Notepad++</a>, by the Notepad++ team, Don Ho, and the spellcheck plug-in.
- <a href="http://www.shsforums.net/files/file/1048-weidu-highlighter-for-notepad/">WeiDU Notepad++ Highlighters </a>, by Argent77.

## 

#### Copyright Information

###### Check The Bodies is not developed, supported, or endorsed by BioWare&trade; or Interplay/BlackIsle, Overhaul, Beamdog or the Wizards of the Coast. It was developed by Charles Bisson, based on material from the game Baldur's Gate II and its expansion.
###### All mod content is &copy;Charles Bisson.
###### Baldur's Gate II: Shadows of Amn and Baldur's Gate II: Throne of Bhaal &copy; TSR, Inc. The BioWare Infinity Engine is &copy; BioWare Corp. All other trademarks and copyrights are property of their respective owners.

###### This mod was created to be freely enjoyed by all Baldur's Gate II players, and its content is free of rights. However, it should not be sold, published, compiled or redistributed in any form without the consent of the author.
###### Please note that any and all redistribution and/or hosting of this mod is prohibited without permission from the author.

###### If there are any copyright issues or this statement needs revision, then please contact me and advise me what to do about it. Most notably, if you see any artwork in this mod that might conflict with Copyright rules, please let me know as soon as possible, and I will remove the conflicting content immediately.

###### The modding community for the Infinity Engine has been going strong for more than 10 years now, and is the culmination of thousands of unpaid modding hours by fellow fans of the game. Modders produce their best work and players get the best, well-supported mods when we all work together.
###### There are two big ways to upset this harmony. One is to claim someone else's work as your own. The second is to host and redistribute a mod without permission from the author(s).
###### Be kind to your fellow players and modders. Don't do either.</br></br>
<div align="right"><a href="#top">Back to top</a></div>


<hr>


## <a name="versions" id="versions"></a>Version History

For a full Version History please refer to the file "<a href="CtB/Readme/CtB-Version.md">CtB-Changelog.md</a>" in CtB/Readme/.  

