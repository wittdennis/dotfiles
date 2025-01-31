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
