# Star Ruler 2: Foundations

Star Ruler 2: Foundations (SRF) is the spiritual successor of the massive scale 4X/RTS set in space called Star Ruler 2. It was originally marketed to people who played games like Solaris and other space based strategy games like this. But the game leaned way into the logistics side of it to be considered a strategy based RTS game anymore. The issue was that the strategy fan-base along with veteran players of the first game did not enjoy this system, these players had to change how they would think to play the game. I do want to make something clear here, I personally enjoy these space strategy games and I have zero hate towards any of those games, my favorite of them is FreeOrion (check them out, its opensource and the game is awesome and well made).

I learned about this game recently and as a fan of logistic games, such as Factorio or Mindustry (Mindustry is also opensource. check them out to give them support), I thought this game should be brought back from the dead.

I have already added some stuff that should allow new players to have a better time learning to play the game, such as making the tutorial go a bit more on the complex side of the game.

Anyways, Please, feel free to help support this project!

## What is this?
This repository contains the full source code needed to build Star Ruler 2: Foundations, and
all secondary scripts, data files and assets required to run it. It is also a modified version of the game, that fixes its many problems with it.

### Installing the game.
Check [releases](https://github.com/KonradMohr/StarRuler2-Foundations/releases) for the zip with both Windows and Linux, once again I am uncertain if the Windows binary will work

## Building the Game
The Star Ruler 2.exe contained in the main folder is just a launcher. To run
the game you will need to build the binary for your platform from source.

Currently I am uncertain if the Windows binaries and the exe will work, if there are problems running it or compiling it, please submit an issue. I will be right on it!

### Building on Windows
You will need Visual Studio 2017 to build Star Ruler 2 on windows. Simply open the
visual studio solution in source/msvc/Star Ruler 2/, and build the "Star Ruler 2" project
in either Debug or Non-Steam Release configuration.

If you want to, you can help update the game to run on current compilers or make a installer for the game.

Please note that while the built exe ends up in the bin/win64/ directory, it expects to be
started with its working directory set to the main directory (where the
launcher exe is). So when debugging from visual studio, make sure the 'Working
Directory' configuration property is set to ../../..

### Building on Linux
The equivalent launcher on linux is StarRuler2.sh. To build the binary files on linux,
make sure your working directory is set to the main directory (the one with StarRuler2.sh in it),
then run `make -f source/linux/Makefile compile` to compile the binary.

Afterward, run the `StarRuler2.sh` shell script to start the game.

Several dependencies are required to build on linux, including libpng, zlib,
GLEW, GLU, freetype2, libvorbisfile, libvorbis, libogg, libopenal, libbz2,
libXRandR, and libcurl.

I did fix the original makefile to support modern compilers, so it **SHOULD** compile fine.

## FAQ
### Can I Play Multiplayer with Steam/GOG versions?
Yes and no. The base open source version is multiplayer-compatible with the commercial versions. If you make multiplayer-incompatible
changes to the open source version, please remember to change the MP\_VERSION identifier in scripts/definitions/version.as,
so things do not break from people with incompatible versions trying to join each other. I also hope to build a standalone server that can run larger games for long term rounds.

### Does this include the full game?
Yes it does include most of the game, besides the music. The original studio who owned the game had some issues with copyright with the game's music, because of that, there is no music.
But, if you want to volunteer to make music for the game, I would love that!

### Is there a Community?
Well, kind of? There is the [Steam Forums]https://steamcommunity.com/app/282590/discussions/) for the original game,
and the [Discord Server for Rising Stars](https://discord.gg/9YyXgbh). 
But for this game, I am currently working on a discord server for everyone to join!

## Licensing
Star Ruler 2: Foundations source code is licensed as MIT, art assets are licensed as CC-BY-NC 2.0.

Some third party code is contained in this repository as dependencies. Licenses for those projects are contained in the appropriate source folders.

See the COPYING file for more information.
