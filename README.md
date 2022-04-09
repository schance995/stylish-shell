# Style Your Shell With Swagger!

The Linux shell can be a cold, dark, lonely place. It only takes a little software to make it a brighter, colorful, and user-friendly place. This workshop will spruce up your Linux console experience with the Fish shell and software that provides additional functionalities beyond the Coreutils. We'll also learn how to install software outside the Ubuntu repositories, as well as some choice software. Please take a moment to appreciate our free software community for producing tools that respect the user's freedom.

## Prerequisities

You should have Ubuntu/Linux installed (either on your hard drive or WSL) before starting. If you don't have Ubuntu, don't worry! Most of the software covered here is available to install on other platforms and other distributions.

Please note that Ubuntu 20.04 has not packaged all the software we are using today. So we will install them by some other way. Ubuntu 22.04 (coming this month!) will have some of these packages available.

## Installation

```
git clone {this repo}
cd {this repo}
# review the script to check for malware
less ./install-command-line-tools.sh
less ./install-and-compile-notcurses.sh
# run the scripts
./install-command-line-tools.sh && ./install-and-compile-notcurses.sh
```

## How does Linux software distribution work?
- **upstream** = software developers
  - Linux devs
  - GNU devs
- **downstream** = software distributors
  - Ubuntu
  - RedHat

## getting help
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
- find | xargs
  - finds files and runs commands on them
- diff
  - finds the difference between files
- rm
  - remove files

## Fish and friends
- **Not** POSIX
- Typically **not** installed by default
- bat
  - like cat
- exa
  - like ls
- ripgrep
  - like grep
- fd
  - like find | xargs
- delta
  - like diff
- trash
  - put files in the Linux trash directory

## Other niceties
- fzf
    - interactive selector
- zoxide
    - change directories by frecency
    - add `zoxide init fish | source` to `~/.config/init/config.fish`
    - to go to a directory type `z {any part of directory`!
- neofetch
    - print a cool ascii logo

## Honorable mention: Zsh
- POSIX like Bash
- Plugins like Fish: zsh-syntax-highlighting and zsh-autosuggestions
- A sample configuration file is provided

## Media and documents
- pandoc
    - convert this document!
    - `pandoc style-your-shell-with-swagger.md -o style-your-shell-swith-swagger.pdf`
- yt-dlp
    - a fork of youtube-dl
    - `yt-dlp https://www.youtube.com/watch?v=dQw4w9WgXcQ`
    - open the file with `wslview`
- ffmpeg
    - extract audio and video
    - convert audio and video formats
- imagemagick
    - convert image formats
    - rotate images
    - invert images

## System info
- top/htop
- neofetch

## Install and compile notcurses

We did this earlier!

```
cd ~/bitcamp/notcurses-3.0.8
make ncneofetch nctetris
./ncneofetch
./nctetris
make demo
```

## Save your customizations into dotfiles!
- yadm is a dotfiles manager. If you know how to use git, you know how to use yadm.
- make sure to set your git username and email!

```
yadm init
yadm add {files}
yadm commit
yadm remote add main {your git repository}
yadm push main
````

## License

Shield: [![CC BY 4.0][cc-by-shield]][cc-by]

This work is licensed under a
[Creative Commons Attribution 4.0 International License][cc-by].

[![CC BY 4.0][cc-by-image]][cc-by]

[cc-by]: http://creativecommons.org/licenses/by/4.0/
[cc-by-image]: https://i.creativecommons.org/l/by/4.0/88x31.png
[cc-by-shield]: https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg 