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

1. Clone the repository somewhere on your system (e.g. in `~/.shell-utils`).
   ```shell
   git clone git@github.com:tizot/macos-setup.git ~/.shell-utils/macos-setup
   ```
1. Configure your personal variables in the file `vars.yml`.
1. Run the setup script.
   ```shell
   bash setup.sh
   ```

## TODO

- Config
    - ~~Make zsh default shell~~
    - ~~prezto~~
    - ~~p10k theme~~
    - ~~all dotfiles~~
    - ~~git config~~
    - iterm2 config
    - RSA key/GPG key
    - Apple account?
    - macOS config (`write defaults`)
- Language support
    - ~~Python (pyenv only?)~~
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

