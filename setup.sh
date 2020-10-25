#!/usr/bin/env bash

function check-command() {
    if ! command -v "$1" >/dev/null 2>&1; then
        echo "Command $1 not found. Aborting installation."
        exit 1
    fi
}

check-command brew
check-command git || brew install git

# Install dependencies
brew install ansible
ansible-galaxy install -r requirements.yml

# Setup system
ansible-playbook -i inventory --ask-become-pass playbook.yml

exit 0
