export LANG=en_US@UTF-8

# Path
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="robbyrussell"

# Auto correction
ENABLE_CORRECTION="true"

## Plugins
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
	zsh-autocomplete
)

source $ZSH/oh-my-zsh.sh

## NVM
export NVM_DIR="$HOME/.nvm"
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# gpg
export GPG_TTY=$(tty)
gpgconf --launch gpg-agent

## starship
eval "$(starship init zsh)"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

## zed
alias zed="open -a /Applications/Zed.app -n"

## bat aliased for cat
alias cat="bat"

## Google Chrome NOCORS
alias nocors="open -n -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --args --user-data-dir=\"/tmp/chrome_dev_test\" --disable-web-security"

## OrbStack
export DOCKER_HOST=unix:///Users/sandeephm/.orbstack/run/docker.sock

## Perl(mitigates fzf error)
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
