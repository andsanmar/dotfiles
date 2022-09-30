# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# History
HISTSIZE=10000
HISTFILE=~/.cache/zsh/history

# Path to your oh-my-zsh installation.
export ZSH=$ZDOTDIR/.oh-my-zsh

# ZSH_THEME="wezm"
ZSH_THEME="powerlevel10k/powerlevel10k"

# COMPLETION_WAITING_DOTS="true"

plugins=(git zsh-autosuggestions)

source $ZDOTDIR/aliases
source $ZDOTDIR/commands
source $ZSH/oh-my-zsh.sh

# To edit the current command with ^E
# autoload edit-command-line; zle -N edir-command-line
# bindkey '^e' edit-command-line

# neofetch --source ~/.config/neofetch/penrose2 --ascii_colors 1 2 3

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

export PATH="$HOME/.cargo/bin:/usr/bin/vendor_perl:$PATH"
