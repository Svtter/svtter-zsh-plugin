#!/bin/bash

# 安装 fzf
function download_fzf() {
    git clone --depth 1 git@gitee.com:svtter/fzf.git ~/.fzf
    ~/.fzf/install
}


function install_vim() {
  git clone --depth=1 git@gitee.com:svtter/vimrc.git ~/.vim_runtime
  sh ~/.vim_runtime/install_awesome_vimrc.sh
}
