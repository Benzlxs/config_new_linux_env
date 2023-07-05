# config_new_linux_env

## install miniconda and conda create a new environment
1. [Miniconda](https://docs.conda.io/en/latest/miniconda.html)
2. conda create --name xxxx
3. conda activate xxxx
4. add the conda activate into .bashrc to activate  environment every time when you login
or 
1. Install pip (python3.6+) and [virtualenv](https://packaging.python.org/guides/installing-using-pip-and-virtual-environments/) to manage packages;
2. python3 -m venv env
3. source env/bin/activate

## install [Docker](https://docs.docker.com/get-docker/)

## install vim plugins
Option1:
1. using [spf13-vim](https://github.com/spf13/spf13-vim)
2. addding following commands to .vimrc.local
```bash
set hlsearch
set number
set foldmethod=indent
set autoindent
set smartindent
set smarttab
set expandtab
set colorcolumn=0

cmap W w
cmap Q q
cmap A a
```

Option2:
1. [vim_config](https://github.com/amix/vimrc). 
2. .vim_runtime/vimrcs/basic.vim, 
3. set vim:
```bash
set hlsearch
set number
set foldmethod=indent
set autoindent
set smartindent
set smarttab
set expandtab
set colorcolumn=0

cmap W w
cmap Q q
cmap A a
```
4. rerun the installation: `sh ~/.vim_runtime/install_basic_vimrc.sh`

### empty vim cache
```
rm -rf ~/.viminfo
rm -rf ~/.vimviews/*
rm -rf ~/.vim/view/*
rm -rf ~/.vimswap/*
```

## config the pudb
1. vim ~/.config/pudb/pudb.cfg
2. change theme from classic into dark vim,

## remotely access
1. VPN is the first option, as it is fast;
2. [frp](https://github.com/fatedier/frp) and its [[add-to-systemd]](https://github.com/fatedier/frp/blob/master/conf/systemd/frpc.service) or [althernative](https://gist.github.com/ihipop/4dc607caef7c874209521b10d18e35af#file-frp-systemd-md), if you have acess to third-part server with the fixed outgoing ip;
3. [ngrok](https://ngrok.com/) and its [add-to-systemd](https://github.com/vincenthsu/systemd-ngrok) could be another methods;

## terminal in clint computer
1. install the [terminator](https://gnometerminator.blogspot.com/p/introduction.html)
2. add `printf "\e[?2004l"` to .bashrc, (alternative, add `set t_BE=` to the .vimrc) to fix the issue: Copy-Paste adds 0~ and 1~

## MAC OS
1. iterm2 is better than terminator
2. set up "hotkey" to full screen one profile.

## oh-my-zsh 
0. install [oh-my-zsh](https://ohmyz.sh/#install).
1. install autojump, zsh [powerlevel10k/powerlevel10k](https://github.com/romkatv/powerlevel10k#oh-my-zsh). `p10k configure` to reconfigure the theme
2. [highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
3. [autosuggestion](https://github.com/zsh-users/zsh-autosuggestions)
4. plugins=(
   git
   bundler
   dotenv
   macos
   rake
   rbenv
   ruby
   autojump
   zsh-syntax-highlighting
   zsh-autosuggestions
   git
   z
   extract
 )
 5. start the `zsh` from `.bashrc`
```
# .bash_profile is executed for login shells,
# .bashrc is executed for interactive non-login shells.
# We want the same behaviour for both, so we source .bashrc from .bash_profile.

if [ -z "${NOZSH}" ] && [ $TERM = "xterm" -o $TERM = "xterm-256color" -o $TERM = "screen" ] && type zsh &> /dev/null
then
    export SHELL=$(which zsh)
    if [[ -o login ]]
    then
        exec zsh -l
    else
        exec zsh
    fi
fi
```

## customize the shell commands
1. vim ~/.my_custom_commands.sh
2. put following command as example:
```
function cdls()
{  
   cd "${1}" && ll
}
```
3. add `source ~/.my_custom_commands.sh` to .zshrc or .bashrc, then, the `cdls` is ready to be called. 
