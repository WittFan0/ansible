#!/bin/bash

# Verify not running as root
if [ $UID -eq 0 ]; then
    echo "Script must be run as a regular user. Exiting."
    exit 1
fi

xdg_move () {
    [ -d "$HOME/.config/bash" ] || mkdir -p "$HOME/.config/bash"
    [ -f "$HOME/.bashrc" ] && mv "$HOME/.bashrc" "$HOME/.config/bash/bashrc"
    [ -f "$HOME/.bash_aliases" ] && mv "$HOME/.bash_aliases" "$HOME/.config/bash/aliases"
    [ -f "$HOME/.bash_logout" ] && mv "$HOME/.bash_logout" "$HOME/.config/bash/logout"
    [ -f "$HOME/.bash_profile" ] && mv "$HOME/.bash_profile" "$HOME/.config/bash/profile"
    [ -d "$HOME/.local/share/bash" ] || mkdir -p "$HOME/.local/share/bash"
    [ -f "$HOME/.bash_history" ] && mv "$HOME/.bash_history" "$HOME/.local/share/bash/history"
}

add_path () {
    [ -d "$HOME/.local/bin" ] && printf "\n%s\n" "PATH=\"$HOME/.local/bin:$PATH\"" | tee -a "$HOME/.config/bash/bashrc"
    [ -d "$HOME/Dropbox/bin" ] && printf "\n%s\n" "PATH=\"$HOME/Dropbox/bin:$PATH\"" | tee -a "$HOME/.config/bash/bashrc"
    [ -d "$HOME/myscripts" ] && printf "\n%s\n" "PATH=\"$HOME/myscripts:$PATH\"" | tee -a "$HOME/.config/bash/bashrc"
}


xdg_move
add_path
