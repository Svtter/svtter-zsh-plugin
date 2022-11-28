#!/bin/zsh

# SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE[0]}); pwd)


# git
function ref() {
    git add . && git commit -m "refactor: $1"

}

function feat() {
    git add . && git commit -m "feat: $1"
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


# https://stackoverflow.com/questions/6916856/can-bash-show-a-functions-definition

alias ec="exec $SHELL"
alias edit_quick="vim $ZSH_CUSTOM/plugins/svtter/svtter.plugin.zsh"


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
