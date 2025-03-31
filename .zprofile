# homebrew
PLATFORM="undefined"
case "$OSTYPE" in
solaris*) PLATFORM=solaris ;;
darwin*) PLATFORM=osx ;;
linux*) PLATFORM=linux ;;
bsd*) PLATFORM=bsd ;;
msys*) PLATFORM=windows ;;
cygwin*) PLATFORM=windows ;;
*) PLATFORM=undefined ;;
esac

if [ $PLATFORM = 'osx' ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ $PLATFORM = 'linux' ]; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
else
fi

# pipx
export PATH="$PATH:$HOME/.local/bin"

# golang
export PATH="$PATH:/usr/local/go/bin"

# rust cargo
export PATH="$PATH:$HOME/.cargo/bin"

# go
export PATH="$PATH:$HOME/.go/bin"

# bun completions
[ -s "/home/dennis/.bun/_bun" ] && source "/home/dennis/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh"                                       # This loads nvm
[ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
