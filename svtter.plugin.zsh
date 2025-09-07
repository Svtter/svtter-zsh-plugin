#!/bin/zsh


alias mkdir='mkdir -v'
alias mv='mv -v'
alias cp='cp -v'
alias rm='rm -v'
alias ln='ln -v'

# git

function pushme() {
    git push -u origin $(git branch --show-current)
}

function checkgit() {
  if [ -z $(git diff --cached --exit-code) ];
  then
      echo "IT IS CLEAN"
  else
      echo "PLEASE COMMIT YOUR CHANGE FIRST!!!"
      git status
  fi
}

function ref() {
    git add . && git commit -m "refactor: $1"

}

function feat() {
  function unsafe_feat() {
    git add . && git commit -m "feat: $1"
  }

  if [ -z $(git diff --cached --exit-code) ];
  then
    unsafe_feat $1
  else
    git commit -m "feat: $1"
  fi
}


function docs() {
    git add . && git commit -m "docs: $1"
}

function fix() {
    git add . && git commit -m "fix: $1"
}


function chore() {
    git add . && git commit -m "chore: $1"
}

function bump() {
    feat "bump verison: " $1
}


# https://stackoverflow.com/questions/6916856/can-bash-show-a-functions-definition

alias ec="exec $SHELL"
alias eq="vim $ZSH_CUSTOM/plugins/svtter/svtter.plugin.zsh"


function setpy() {
    alias pv="python3 -m venv venv"
    alias ac="source venv/bin/activate"
    alias newpy="cookiecutter https://github.com/audreyr/cookiecutter-pypackage.git"
}


function unsetpy() {
    unalias py
    unalias ac
    unalias newpy
}


function setdj() {
    alias migrate="py manage.py migrate"
    alias migration="py manage.py makemigrations"
    alias run="py manage.py runserver"
    alias st="source venv/bin/activate"

    alias dj='python manage.py'
    alias djr='dj runserver'
    alias djdb='dj dbshell'
    alias djs='dj shell'
    alias djt='dj test'
}


function unsetdj () {
    unalias migrate
    unalias migration
    unalias run
    unalias st

    unalias dj
    unalias djr
    unalias djdb
    unalias djs
    unalias djt
}

0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

source "${0:A:h}/grpc.zsh"
source "${0:A:h}/python/total.zsh"
source "${0:A:h}/installer.zsh"
source "${0:A:h}/claude_code.zsh"

# docker
function build() {
    docker build --build-arg netrc="$(cat ~/.netrc)" -t $1 .
}

function update_svtter() {
  cd ~/.oh-my-zsh/custom/plugins/svtter && git pull
  cd -
}


