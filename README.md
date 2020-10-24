# Personal macOS setup

## Prerequisites

This automation tool requires that Xcode CLI tools to be activated, and Homebrew to be installed.
If it is not the case, run the following commands in a terminal:
```shell
xcode-select --install
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

`git` is also needed but should be installed with macOS anyway. If not, install it with Homebrew.

## Setup

Copy and paste the following command in a terminal.
It will clone the repository and execute the setup of macOS.
```shell
curl ... | bash
```

## TODO

- Config
    - Make zsh default shell
    - prezto
    - p10k theme
    - all dotfiles
    - git config
    - iterm2 config
    - RSA key/GPG key
    - Apple account?
    - macOS config (`write defaults`)
- Language support
    - Python (pyenv only?)
    - Node/nvm
    - Rust
- Applications
    - VSCode
    - IntelliJ/PyCharm
    - Spotify
    - Fantastical
    - Spark Mail
    - Todoist
    - Lastpass
    - Alfred + config
    - Apps from Mac App Store
    - Adguard
    - Molotov (perso only)
- Support multiple configs (pro/perso)

