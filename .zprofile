BREW_PATH="/home/linuxbrew/.linuxbrew/bin/brew"
if [ -e $BREW_PATH ]; then
	eval "$($BREW_PATH shellenv)"
fi
