#!/bin/bash

function migrate() {
    python manage.py migrate
}

function example_superuser() {
    python manage.py createsuperuser --email svtter@qq.com --username svtter
}

function runserver() {
    python manage.py runserver
}
