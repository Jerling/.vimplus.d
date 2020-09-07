#!/bin/bash

function vimplus_install_pre()
{
    if [ ! -d ~/.vimplus ]; then
        git clone --depth=1 https://github.com/chxuan/vimplus.git ~/.vimplus
        sed -i 's/compile_vim_on_ubuntu$/echo \"No complile vim \" # compile_vim_on_ubuntu/g' ~/.vimplus/install.sh
        sed -i 's/cp ${PWD}\/.vimrc.custom/ln ${HOME}\/.vimplus.d\/.vimrc.custom/g' ~/.vimplus/install.sh
        sed -i 's/install_ycm$/# install_ycm/g' ~/.vimplus/install.sh
        sed -i 's/\",\"/"\\<space>\"/g' ~/.vimplus/.vimrc
    fi
}

function vimplus_install_do()
{
    cd $HOME/.vimplus
    bash ./install.sh
}

function vimplus_install_post()
{
    read -p "Delete bakup config? [Y/N] " ch
    if [[ $ch == "Y" ]] || [[ $ch == 'y' ]]; then
        rm -rf ${HOME}/.vim*bak*
    fi
}

vimplus_install_pre
vimplus_install_do
vimplus_install_post

echo "Vimplus Coustom Installed, Have Fun !!!"
