# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# MLOPS project - can be deleted after project is done
# ---- START ----
source /Library/Frameworks/Python.framework/Versions/3.12/bin/virtualenvwrapper.sh
# ---- END ----

source /Users/jannahalka/.zsh/f-sy-h/F-Sy-H.plugin.zsh

# Created by `pipx` on 2023-10-31 08:01:38
export PATH="$PATH:/Users/jannahalka/.local/bin"
export VIRTUALENVWRAPPER_PYTHON=`which python3`
alias vi='nvim'
alias python='python3'
alias ff='fastfetch'

export PATH=$PATH:$HOME/go/bin

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/Users/jannahalka/.opam/opam-init/init.zsh' ]] || source '/Users/jannahalka/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration
