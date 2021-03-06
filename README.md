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
1. [vim_config](https://github.com/amix/vimrc)
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
```
4. rerun the installation: `sh ~/.vim_runtime/install_basic_vimrc.sh`

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
