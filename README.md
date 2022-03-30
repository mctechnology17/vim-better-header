[![MC Technology](https://github.com/mctechnology17/mctechnology17/blob/main/src/mctechnology_extendido.GIF)](https://www.youtube.com/channel/UC_mYh5PYPHBJ5YYUj8AIkcw)

<div align="center">

  [<img align="center" alt="MC Technology | YouTube" width="22px" src="https://github.com/mctechnology17/mctechnology17/blob/main/src/youtube.png" />][youtube]
  [<img align="center" alt="@mctechnology17 | Twitter" width="22px" src="https://github.com/mctechnology17/mctechnology17/blob/main/src/twitter.png" />][twitter]
  [<img align="center" alt="@mctechnology17 | Instagram" width="22px" src="https://github.com/mctechnology17/mctechnology17/blob/main/src/instagram.png" />][instagram]
  [<img align="center" alt="MC Technology17 | Facebook" width="22px" src="https://github.com/mctechnology17/mctechnology17/blob/main/src/facebook.png" />][facebook]
  [<img align="center" alt="@mctechnology17 | Reddit" width="22px" src="https://github.com/mctechnology17/mctechnology17/blob/main/src/reddit.png" />][reddit]

</div>
<br>


[Intro](#Intro) | [Installation](#Installation) | [Donate](#Donate) | [LICENSE](#LICENSE)

----

# Intro
`better-header` is a template that is inserted when starting a new file,
saving time and allowing you to have an impeccable aesthetic in each
new file created by you.

With better-header you no longer have to write the date,
your name or your github, which are repetitive things,
save time and only define that information once.

Is compatible with all programming languages, markup language,
scripts etc. here are some as an example:

```bash
cpp,c,go,java,javascript,scala,php,rust,jsonc,json,vim,python,r,ruby,
sh,desktop,fstab,profile,text,tmux,make,dockerfile,bashrc,zsh,zshrc,
bash_profile,gitignore,yaml,gdb,gitconfig,conf,fish,sshconfig,html,
xml,tex,mail,lua,dosbatch,autohotkey
```
This is an example of the header that is used as a format:
```bash
# ========================================
# FileName: README.md
# Date: 00:51 30.March.2022
# Author: Marcos Chow Castro
# Email: mctechnology170318@gmail.com
# GitHub: https://github.com/mctechnology17
# Brief: repository description
# =========================================
```

# Installation

#### Quick start
Simply install the plugin with your preferred plugin handler
and the arguments for the following variables
```vim
" install better-header
Plug 'mctechnology17/vim-better-header'
" set your info, hier a example:
let g:better_head_date = strftime("%H:%M %d.%B.%Y")
let g:better_head_author = "Marcos Chow Castro"
let g:better_head_email = "mctechnology170318@gmail.com"
let g:better_head_github = "https://github.com/mctechnology17"
```

<img src="https://github.com/mctechnology17/mctechnology17/blob/main/src/vim-better-header-demo.MOV" height="450">

#### Manual installation

```vim
    set rtp+=~/vim-better-header
```

#### Using [Vundle](https://github.com/gmarik/vundle):

Just add this line to your `~/.vimrc`:

```vim
Plugin 'mctechnology17/vim-better-header'
```
And run `:PluginInstall` inside Vim.

#### Using [pathogen.vim](https://github.com/tpope/vim-pathogen):

Copy and paste in your shell:

```bash
cd ~/.vim/bundle
git clone https://github.com/mctechnology17/vim-better-header
```

#### Using [vpm](https://github.com/KevinSjoberg/vpm):

Run this command in your shell:

```bash
vpm insert mctechnology17/vim-better-header
```

#### Using [Plug](https://github.com/junegunn/vim-plug):

Just add this line to your `~/.vimrc` inside plug call:

```vim
Plug 'mctechnology17/vim-better-header'
```

And run `:PlugInstall` inside Vim or `vim +PlugInstall +qa` from shell.

<img src="https://github.com/mctechnology17/mctechnology17/blob/main/src/PlugInstall.gif" height="450">

# Donate
If you're enjoy my work, feel free to donate or become a sponsor.
- [paypal]
- [sponsor]

Ambassador and creator/maintainer of vimtools, GitManager and more,
that are easy to integrate, but very powerful work tools that allow you to
improve your workflow, integrating with all operating systems and all possible
shells

Here you can see another recently published project:
- [vimtools] functions and settings that will make it easy for you life
- [gm] git manager with a friendly user interface


## [LICENSE](LICENSE)

Released under the GNU General Public License v3.0.

Copyright (c) 2022 Marcos Chow Castro

[twitter]: https://twitter.com/mctechnology17
[youtube]: https://www.youtube.com/c/mctechnology17
[instagram]: https://www.instagram.com/mctechnology17/
[facebook]: https://m.facebook.com/mctechnology17/
[reddit]:https://www.reddit.com/user/mctechnology17

[gm]: https://github.com/mctechnology17/gm
[vimtools]: https://github.com/mctechnology17/vimtools
[jailbreakrepo]: https://mctechnology17.github.io/
[uiglitch]: https://repo.packix.com/package/com.mctechnology.uiglitch/
[uiswitches]: https://repo.packix.com/package/com.mctechnology.uiswitches/
[uibadge]: https://repo.packix.com/package/com.mctechnology.uibadge/
[youtuberepo]: https://github.com/mctechnology17/youtube_repo_mc_technology
[sponsor]: https://github.com/sponsors/mctechnology17
[paypal]: https://www.paypal.me/mctechnology17
[readline]: https://github.com/PowerShell/PSReadLine/blob/master/README.md
