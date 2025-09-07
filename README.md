# Svtter ZSH Plugin

A comprehensive Oh My Zsh plugin that provides development convenience scripts and aliases for streamlining common development tasks across Python, Django, Git, Docker, and gRPC workflows.

**WARNING: This repository is UNSTABLE - expect frequent changes.**

## Features

### Git Workflow Helpers
- **Semantic commit functions**: `feat()`, `fix()`, `docs()`, `chore()`, `ref()` - Auto-add and commit with conventional commit messages
- **`pushme()`** - Push current branch to origin with upstream tracking
- **`checkgit()`** - Verify working directory is clean

### Python Development
- **`setpy()` / `unsetpy()`** - Toggle Python-specific aliases (venv creation, activation)
- **`setdj()` / `unsetdj()`** - Toggle Django-specific aliases (migrate, runserver, etc.)
- **`pypi-mirror()`** - Add PyPI mirror sources to pyproject.toml
- **`py-upload()`** - Build and upload packages to private registry
- Support for both Poetry and PDM package management

### gRPC Development
- gRPC code generation utilities for protocol buffer compilation

### Development Environment Management
- Environment-specific aliases and variables with `set_` and `unset_` prefixed functions
- Docker build functions with netrc support for private registries
- Claude Code integration for switching between Anthropic and DeepSeek APIs

## Installation

1. Clone the repository to your Oh My Zsh custom plugins directory:
```bash
git clone git@github.com:Svtter/svtter-zsh-plugin.git $ZSH_CUSTOM/plugins/svtter
```

2. Add `svtter` to your plugins array in `~/.zshrc`:
```bash
plugins=(... svtter)
```

3. Reload your shell or source your zshrc:
```bash
source ~/.zshrc
```

## Usage Examples

### Git Workflow
```bash
# Make changes to your code
feat "add new user authentication"  # Commits with "feat: add new user authentication"
pushme                              # Push to origin with upstream tracking
```

### Python Development
```bash
setpy                              # Enable Python aliases
# Now you have access to Python-specific shortcuts
unsetpy                           # Disable Python aliases
```

### Django Development
```bash
setdj                             # Enable Django aliases
# Now you have access to Django shortcuts like runserver, migrate, etc.
```

## Architecture

The plugin uses a modular structure:
- **svtter.plugin.zsh** - Main entry point
- **grpc.zsh** - gRPC utilities
- **python/total.zsh** - Python development utilities
- **python/runtime.sh** - Python packaging and virtual environment helpers
- **python/django.sh** - Django-specific commands
- **installer.zsh** - Installation utilities
- **claude_code.zsh** - Claude Code integration

## Contributing

This is a personal toolkit, but contributions are welcome. Please note the UNSTABLE status - breaking changes may occur frequently.

