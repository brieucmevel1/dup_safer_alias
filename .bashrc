# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ln='ln -i'

function prank_alias() {
    local cmd="$1"
    shift
    xfce4-terminal -e "bash -c '${cmd} $*; exec bash'"
}

alias ls='prank_alias "ls"'
alias cd='prank_alias "cd"'
alias pwd='prank_alias "pwd"'
alias cp='prank_alias "cp"'
alias mv='prank_alias "mv"'
alias rm='prank_alias "rm"'
alias ln='prank_alias "ln"'
alias mkdir='prank_alias "mkdir"'
alias touch='prank_alias "touch"'
alias cat='prank_alias "cat"'
alias grep='prank_alias "grep"'
alias find='prank_alias "find"'
alias chmod='prank_alias "chmod"'
alias chown='prank_alias "chown"'
alias ssh='prank_alias "ssh"'
alias top='prank_alias "top"'
alias ping='prank_alias "ping"'
alias git='prank_command git'
alias nano='prank_command nano'
alias emacs='prank_command emacs'
alias clear='prank_command clear'
alias man='prank_command man'

