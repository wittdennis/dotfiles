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

# Created by `pipx` on 2024-07-02 18:17:14
export PATH="$PATH:$HOME/.local/bin"
