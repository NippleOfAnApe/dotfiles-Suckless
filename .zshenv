export ZSH="$HOME/.oh-my-zsh"
export PATH=$HOME/.local/bin:$PATH
export XDG_CACHE_HOME=$HOME/.cache
export EDITOR=nvim
export MANPAGER="$HOME/.local/bin/batman"
export BAT_THEME="OneHalfDark"
export NNN_BMS="h:$HOME/;w:/W/;d:/W/DownloadZ/;s:/W/Stuff/stuff;b:/sys/class/power_supply/BAT1;c:$HOME/.config/;v:$HOME/.local/bin/"
export NNN_FIFO=/tmp/nnn.fifo
export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
export NNN_PLUG='d:dragdrop;e:suedit;v:preview-tabbed;j:autojump'
export NNN_OPENER=$HOME/.config/nnn/plugins/nuke
export PF_INFO="ascii kernel os wm shell uptime pkgs memory"
export PF_SEP=" >"
export PF_ALIGN=8
#export PF_COL1=4
export PF_COL2=8
export FZF_DEFAULT_OPTS='--color=bg+:#3c3836,bg:#32302f,spinner:#fb4934,hl:#928374,fg:#ebdbb2,header:#928374,info:#8ec07c,pointer:#fb4934,marker:#fb4934,fg+:#ebdbb2,prompt:#fb4934,hl+:#fb4934 --height 50% --border --layout=reverse --margin=1 --padding=1'
. "$HOME/.cargo/env"
