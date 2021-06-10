# You may have to run this command for permissions
# compaudit | while read -r line ; do
#  echo "Setting permissions for $line"
#  sudo chown -R $USER: $line; 
#  sudo chmod -R 755 $line
# done


# Path to your oh-my-zsh installation.
export ZSH="/Users/$USER/.oh-my-zsh"


ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=( git zsh-syntax-highlighting zsh-completions )

if [ -n "${ZSH_VERSION}" ]; then
    autoload bashcompinit
    bashcompinit
fi

source $ZSH/oh-my-zsh.sh

# User configuration
alias la='ls -la'

# You may need to manually set your language environment
export LANG=en_US.UTF-8

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm


export VISUAL=vim
export EDITOR=$VISUAL

export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# ------------------------------- ZSH SETTINGS --------------------------------
# ----- options -----
unsetopt NO_BEEP
unsetopt NO_MATCH
setopt AUTO_CD
setopt BEEP
setopt NOMATCH
setopt NOTIFY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt HIST_BEEP
setopt INTERACTIVE_COMMENTS
setopt MAGIC_EQUAL_SUBST

HISTFILE="$HOME/.zsh_history"
HIST_STAMPS=mm/dd/yyyy
DISABLE_UPDATE_PROMPT=true
HISTSIZE=5000
SAVEHIST=5000
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#ccc'
ZLE_RPROMPT_INDENT=0

autoload compinit && compinit
autoload -U promptinit; promptinit
prompt pure

compaudit | while read -r line ; do
	echo "Setting permissions for $line"
	sudo chown -R root: $line; 
	sudo chmod -R 755 $line
done

clear
echo
echo
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export GPG_TTY=$(tty)

nvm use 13
