#!/bin/zsh

function pypi-mirror() {
    if [ "$1" == "pi" ];
    then
        echo '\n[[tool.poetry.source]]\nname = "private-pypi"\nurl = "https://pypi.tuna.tsinghua.edu.cn/simple"\ndefault = true\n' >> pyproject.toml
    else
        echo '\n[[tool.poetry.source]]\nname = "thinghoo"\nurl = "https://nexus.beijing-epoch.com/repository/pypi-thinghoo-group/simple"\ndefault = true\n' >> pyproject.toml
    fi
}


function tinit() {
    # tinit create __init__.py
    VAR="$1"
    if [[ -z $VAR ]];
    then
        touch __init__.py
    else
        touch $VAR/__init__.py
    fi
}


function vv() {
    python -m venv .venv
}


