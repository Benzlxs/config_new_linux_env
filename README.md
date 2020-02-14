# config_new_linux_env

## install miniconda and conda create a new environment
1. [Miniconda](https://docs.conda.io/en/latest/miniconda.html)
2. conda create --name xxxx
3. conda activate xxxx
4. add the conda activate into .bashrc to activate  environment every time when you login

## install vim plugins
[vim_config](https://github.com/amix/vimrc)

## config the pudb
1. vim ~/.config/pudb/pudb.cfg
2. change theme from classic into dark vim

## remotely access
1. VPN is the first option, as it is fast;
2. [frp](https://github.com/fatedier/frp), if you have acess to third-part server with the fixed outgoing ip;
3. [ngrok](https://ngrok.com/) and its [installation](https://github.com/vincenthsu/systemd-ngrok) could be another methods;
