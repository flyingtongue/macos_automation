# Shortcut Aliases
alias ll='ls -chuntflaps'

# Set the default editor to Atom Text
export EDITOR='atom -nw'

# Avoid duplicates in history
export HISTCONTROL=ignoredups

# Set a more reasonable bash history limit
export HISTSIZE=100000

# Enable bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	source $(brew --prefix)/etc/bash_completion
fi

# Enable the powerline shell
powerline_path=$(python -c "import os, powerline; print(os.path.dirname(powerline.__file__))")
source "${powerline_path}/bindings/bash/powerline.sh"

# Initialise rbenv
eval "$(rbenv init -)"

# Setup go
export GOPATH=/usr/local/lib/go
export PATH=$PATH:$GOPATH/bin
