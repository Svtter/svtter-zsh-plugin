# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a zsh plugin for Oh My Zsh that provides development convenience scripts and aliases. It's designed as a personal toolkit for streamlining common development tasks across Python, Django, Git, Docker, and gRPC workflows.

## Installation and Usage

The plugin installs as an Oh My Zsh custom plugin:
```bash
git clone git@github.com:Svtter/svtter-zsh-plugin.git $ZSH_CUSTOM/plugins/svtter
```

Add `svtter` to the plugins array in `~/.zshrc`.

## Core Architecture

The plugin uses a modular structure where `svtter.plugin.zsh` serves as the main entry point that sources specialized modules:

- **svtter.plugin.zsh**: Main plugin file with core aliases and Git workflow functions
- **grpc.zsh**: gRPC code generation utilities  
- **python/total.zsh**: Python development utilities (sources runtime.sh and django.sh)
- **python/runtime.sh**: Python packaging and virtual environment helpers
- **python/django.sh**: Django-specific development commands
- **installer.zsh**: Installation utilities for development tools
- **claude_code.zsh**: Claude Code integration and DeepSeek API configuration

## Key Function Categories

### Git Workflow Functions
- `feat()`, `fix()`, `docs()`, `chore()`, `ref()`: Semantic commit helpers that auto-add and commit with conventional commit messages
- `pushme()`: Push current branch to origin with upstream tracking
- `checkgit()`: Verify working directory is clean

### Python Development
- `setpy()` / `unsetpy()`: Toggle Python-specific aliases (venv creation, activation)
- `setdj()` / `unsetdj()`: Toggle Django-specific aliases (migrate, runserver, etc.)
- `pypi-mirror()`: Add PyPI mirror sources to pyproject.toml
- `py-upload()`: Build and upload packages to private registry

### Development Environment
- Functions prefixed with `set_` and `unset_` control environment-specific aliases and variables
- The plugin supports both Poetry and PDM for Python package management
- Docker build function with netrc support for private registries

## Important Notes

- This is marked as UNSTABLE in the README - expect frequent changes
- Functions that modify git state (feat, fix, etc.) will automatically add all changes
- The plugin includes Claude Code integration for switching between Anthropic and DeepSeek APIs
- No traditional build/test/lint commands - this is a shell plugin, not a software project