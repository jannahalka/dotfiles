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
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=$PATH:$HOME/go/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jannahalka/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jannahalka/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jannahalka/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jannahalka/google-cloud-sdk/completion.zsh.inc'; fi
