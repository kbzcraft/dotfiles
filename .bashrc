#    _               _              
#   | |__   __ _ ___| |__  _ __ ___ 
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__ 
# (_)_.__/ \__,_|___/_| |_|_|  \___|
# 
# by Stephan Raabe (2023)
# -----------------------------------------------------
# ~/.bashrc
# -----------------------------------------------------

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

# -----------------------------------------------------
# ALIASES
# -----------------------------------------------------
#
alias pac='sudo pacman'
alias py='python'
alias py='python3'
alias c='clear'
alias nf='neofetch'
alias pf='pfetch'
alias lsa='exa -al'
#alias mutt='neomutt'
#alias m='neomutt'
alias shutdown='systemctl poweroff'
alias v='nvim'
alias r='ranger'
alias t='sudo timeshift --list'
alias ts='~/dotfiles/scripts/snapshot.sh'
alias matrix='cmatrix'
alias shot='scrot -d 3 -c -z -u'
alias shotsel='scrot -s'
alias wifi='nmtui'
alias od='~/private/onedrive.sh'
alias rw='~/dotfiles/waybar/reload.sh'
alias winclass="xprop | grep 'CLASS'"

# Window Managers

alias Qtile='startx'
alias Hyprland="~/dotfiles/hypr/starthypr.sh"

# GIT

alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gst="git stash"
alias gsp="git stash; git pull"

# SCRIPTS

alias w='~/dotfiles/scripts/updatewal.sh'
#alias gr='python ~/dotfiles/scripts/growthrate.py'
#alias ChatGPT='python ~/mychatgpt/mychatgpt.py'
#alias chat='python ~/mychatgpt/mychatgpt.py'
alias ascii='~/dotfiles/scripts/figlet.sh'

# VIRTUAL MACHINE

#alias vm='~/private/launchvm.sh'
#alias lg='~/dotfiles/scripts/looking-glass.sh'
#alias vmstart='virsh --connect qemu:///system start win11'
#alias vmstop='virsh --connect qemu:///system destroy win11'

#VIRTUAL ENV
alias c_venv='python -m venv .venv'
alias act='source ./.venv/bin/activate'
alias act-='deactivate'

# EDIT CONFIG FILES

alias confq='nvim ~/dotfiles/qtile/config.py'
alias confp='nvim ~/dotfiles/picom/picom.conf'
alias confb='nvim ~/dotfiles/.bashrc'
alias confh='nvim ~/dotfiles/hypr/hyprland.conf'
# EDIT NOTES

alias notes='vim ~/notes.txt'

#Dir Shortcuts

#alias kil-AI='cd ~/Deb/Kil-AI/'
#alias kil='kil-AI && act'
#alias vkil='kil && nvim'

#alias el='conda activate el_env'
#alias vel='conda activate el_env && nvim ~/el/ '
sysAlias="$HOME/.alias.sh"

if [ -f "$sysAlias" ]; then
  source "$sysAlias"
fi

# SYSTEM

alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias setkb='setxkbmap us;echo "Keyboard set back to us."'

# -----------------------------------------------------
# SCREEN RESOLUTINS
# -----------------------------------------------------
alias res1='xrandr --output DisplayPort-0 --mode 2560x1440 --rate 120'
alias res2='xrandr --output DisplayPort-0 --mode 1920x1080 --rate 120'
alias r1='hyprctl keyword monitor ,preferred,auto,1'
alias r2='hyprctl keyword monitor ,1920x1080,auto,1'

# BROWSER LINKS
alias chrome="google-chrome-stable"
alias chatgpt="google-chrome-stable --app=https://chat.openai.com"
alias whatsapp="google-chrome-stable https://web.whatsapp.com"

### PATH EXPORTS --------------------------------------
export PATH="/usr/lib/ccache/bin/:$PATH"
### ---------------------------------------------------
# -----------------------------------------------------
# START STARSHIP
# -----------------------------------------------------
eval "$(starship init bash)"

# -----------------------------------------------------
# PYWAL
# -----------------------------------------------------
cat ~/.cache/wal/sequences

# -----------------------------------------------------
# PFETCH
# -----------------------------------------------------
echo ""
pfetch

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/kb/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/kb/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/kb/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/kb/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
export PATH="/home/kb/anaconda3/bin:$PATH"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
