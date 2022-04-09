# Style Your Shell With Swagger!

The Linux shell can be a cold, dark, lonely place. It only takes a little software to make it brighter, colorful, and newbie-friendly. This workshop will spruce up your Linux console experience with the Fish shell and software that provides additional functionalities beyond the Coreutils. We'll also learn how to install software outside the Ubuntu repositories, as well as some useful command-line tools.

All software installed today is free (as in money and freedom) and open source! Please take a moment to appreciate the free software community for developing 0-cost tools that respect the user's freedom.

## Prerequisities

You should have Ubuntu/Linux installed (either on your hard drive or WSL) before starting. If you don't have Ubuntu, don't worry! Most of the software covered here is available to install on other platforms and other distributions. There should be no need to edit any files today, the scripts should have all the needed configuration.

Please note that Ubuntu 20.04 has not packaged all the software we are using today. So we will install them by some other way. Ubuntu 22.04 (coming this month!) will have some of these packages available.

## Installation

```bash
git clone {this repo}
cd {this repo}
# review the script to check that it looks ok
less ./install-command-line-tools.sh
# run the script
./install-command-line-tools.sh
```

## How does Linux software distribution work?
- **upstream** = software developers
  - Linux devs
  - GNU devs
- **downstream** = software distributors
  - Ubuntu
  - RedHat

## How to install software on Linux (abridged version)
- Package manager (recommended!)
- Sometimes the software we want is not available there :(
- Or maybe the version there is not the one we want
- Solutions:
  - Extend the repositories with PPA (personal package archive)
  - Install software directly from upstream
    - from .deb package or precompiled binary
    - do it yourself, compile from source
    - make sure you add this software to your path!

## Getting help
- `man man` (reference manual)
- `info info` (textbook)
- `tldr tldr` (examples)

## Bash and Coreutils
- Follows the POSIX standard
- Typically installed by default
- cat
  - concatenates files
- ls
  - lists files
- grep
  - searches files for text
- find -exec
  - finds files and runs commands on them
- diff
  - finds the difference between files
- rm
  - remove files

## Fish and friends
- **Not** POSIX
- Typically **not** installed by default
- Copy the configuration file:
  - `cd {path to this repo}`
  - `cp config.fish ~/.config/fish`
- bat
  - like cat
- exa
  - like ls
- ripgrep
  - like grep
- fd
  - like find -exec
- delta
  - like diff
- trash
  - put files in the Linux trash directory

## Other niceties
- fzf
    - interactive selector
- zoxide
    - change directories by frecency
    - add `zoxide init fish | source` to `~/.config/init/config.fish` (should be in the config.fish file in this repo)
    - to go to a directory type `z {any part of directory}`!
- neofetch
    - print a cool ascii logo

## Honorable mentions
- Zsh
  - POSIX like Bash
  - Plugins like Fish: zsh-syntax-highlighting and zsh-autosuggestions
- Micro
  - Like the nano editor
  - Comes with nice keyboard shortcuts out of the box

## Media and documents
- pandoc
    - convert this document!
    - `pandoc style-your-shell-with-swagger.md -o style-your-shell-swith-swagger.pdf`
- imagemagick
    - `wget https://bit.camp/bitcamp-brand/logos/bitcamp.png`
    - convert to jpg
      - `convert bitcamp.png bitcamp.jpg`
    - scale image
      - `convert bitcamp.png -scale 50% bitcamp-small.png`
    - rotate images
      - `convert bitcamp.png -rotate 90 bitcamp-rotated.png`
    - invert images
      - `convert bitcamp.png -channel RGB -negate bitcamp-inverted.png`
    - do it all!
      - `convert bitcamp.png -rotate 90 -channel RGB -negate -scale 50% bitcamp-wacky.jpg`
- yt-dlp
    - a fork of youtube-dl
    - `yt-dlp https://www.youtube.com/watch?v=dQw4w9WgXcQ`
    - open the file with `wslview`
- ffmpeg
    - extract audio
      - `ffmpeg -i video.mp4 -vn audio.mp3`
    - there's a lot you can do with video that we don't have time for today!
## System info
- top/htop
  - task manager
- neofetch
  - fancy ascii logo

## Install and compile notcurses

Notcurses is a modern terminal gui library with some fun demos.

```bash
cd {path to repo}
less ./compile-notcurses.sh
./compile-notcurses.sh
cd ~/bitcamp/notcurses-3.0.8
make ncneofetch nctetris
./ncneofetch # neofetch alternative
./nctetris # play tetris
make demo # watch the demo
```

## Save your customizations into dotfiles!
- yadm is a dotfiles manager. If you know how to use git, you know how to use yadm.
- make sure to set your git username and email!

```bash
yadm init
yadm add {files}
yadm commit
yadm remote add main {your git repository}
yadm push main
```

## Don't like these changes? Reset them!

```bash
rm -r ~/bitcamp
cd {this repository}
less ./uninstall.sh
./uninstall.sh
```

## License

Shield: [![CC BY 4.0][cc-by-shield]][cc-by]

This work is licensed under a
[Creative Commons Attribution 4.0 International License][cc-by].

[![CC BY 4.0][cc-by-image]][cc-by]

[cc-by]: http://creativecommons.org/licenses/by/4.0/
[cc-by-image]: https://i.creativecommons.org/l/by/4.0/88x31.png
[cc-by-shield]: https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg 
