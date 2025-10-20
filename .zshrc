# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /Users/jannahalka/.zsh/f-sy-h/F-Sy-H.plugin.zsh

# Created by `pipx` on 2023-10-31 08:01:38
export PATH="$PATH:/Users/jannahalka/.local/bin"

zstyle ':completion:*' matcher-list ''
alias vi='nvim'

export PATH=$PATH:$HOME/go/bin

eval "$(oh-my-posh init zsh --config 'half-life')"
