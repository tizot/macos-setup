#!/usr/bin/env bash

SKIP_CLONE={$SKIP_CLONE:-0}

function check-command() {
    if ! command -v "$1" >/dev/null 2>&1; then
        echo "Command $1 not found. Aborting installation."
        exit 1
    fi
}

check-command git
check-command brew

exit 0

# ---------------------------------------------------------------------------- #
#                                   BOOTSTRAP                                  #
# ---------------------------------------------------------------------------- #

if [ $SKIP_CLONE == 0 ]; then
    REPO_NAME="macos-setup"
    REPO_PARENT_DIR="$HOME/.shell-utils.tmp" # TODO: remove .tmp
    REPO_LOC="$REPO_PARENT_DIR/$REPO_NAME"

    mkdir -p "$REPO_PARENT_DIR"
    git clone "git@github.com:tizot/$REPO_NAME.git" "$REPO_LOC"

    cd "$REPO_LOC" || exit 1
fi

brew install ansible
ansible-galaxy install -r requirements.yml

# ---------------------------------------------------------------------------- #
#                             INSTALL APPLICATIONS                             #
# ---------------------------------------------------------------------------- #

ansible-playbook -i inventory --ask-become-pass playbook.yml

exit 0
