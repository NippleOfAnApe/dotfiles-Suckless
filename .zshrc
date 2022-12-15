pfetch
$HOME/.local/bin/quotes

# to know which specific one was loaded, run: echo $RANDOM_THEME
# ZSH_THEME="robbyrussell"
# ZSH_THEME="random"
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_STAMPS="dd-mm-yyyy"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

n ()
{
    # Block nesting of nnn in subshells
    if [[ "${NNNLVL:-0}" -ge 1 ]]; then
        echo "nnn is already running"
        return
    fi

    # The backslash allows one to alias n to nnn if desired without making an
    # infinitely recursive alias
    \nnn -Hc "$@"

    if [ -f "$NNN_TMPFILE" ]; then
            . "$NNN_TMPFILE"
            rm -f "$NNN_TMPFILE" > /dev/null
    fi
}

se() {du -a ~/.config/* ~/.local/* | awk '{print $2}' | fzf | xargs -r $EDITOR ;}

source $ZSH/oh-my-zsh.sh

# User configuration
alias xi="xbps-install"
alias xq="xbps-query"
alias xr="xbps-remove"
alias b="nitrogen --set-zoom-fill --random /W/shared/backgrounds"
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
