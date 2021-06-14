# Add Homebrew's executable directory to the front of the PATH
export PATH=/usr/local/bin:$PATH
# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b'
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%F{208}Ravali%f in %F{226}%~%f ${vcs_info_msg_0_} -> '
# History[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000SAVEHIST=10000setopt extended_historysetopt hist_expire_dups_firstsetopt hist_ignore_dupssetopt hist_ignore_spacesetopt inc_append_historysetopt share_history# Changing directoriessetopt auto_cdsetopt auto$
#For syntax highlighting
source /Users/lrimmalapudi/Ravali/Customizations/ZSH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#For auto suggistions
source /Users/lrimmalapudi/Ravali/Customizations/ZSH/zsh-autosuggestions/zsh-autosuggestions.zsh
source /Users/lrimmalapudi/Ravali/Customizations/ZSH/zsh-history-substring-search/zsh-history-substring-search.zsh
#For touch bar
source /Users/lrimmalapudi/Ravali/Customizations/ZSH/zsh-apple-touchbar/zsh-apple-touchbar.zsh

# twilio autocomplete setup
TWILIO_AC_ZSH_SETUP_PATH=/Users/lrimmalapudi/.twilio-cli/autocomplete/zsh_setup && test -f $TWILIO_AC_ZSH_SETUP_PATH && source $TWILIO_AC_ZSH_SETUP_PATH;
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
