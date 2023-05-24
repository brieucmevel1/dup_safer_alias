alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ln='ln -i'

function dup_term() {
    local cmd="$1"
    shift
    xfce4-terminal -e "bash -c '${cmd} $*; exec bash'"
}

alias ls='dup_term "ls"'
alias cd='dup_term "cd"'
alias pwd='dup_term "pwd"'
alias cp='dup_term "cp"'
alias mv='dup_term "mv"'
alias rm='dup_term "rm"'
alias ln='dup_term "ln"'
alias mkdir='dup_term "mkdir"'
alias touch='dup_term "touch"'
alias cat='dup_term "cat"'
alias grep='dup_term "grep"'
alias find='dup_term "find"'
alias chmod='dup_term "chmod"'
alias chown='dup_term "chown"'
alias ssh='dup_term "ssh"'
alias top='dup_term "top"'
alias ping='dup_term "ping"'
alias git='dup_command git'
alias nano='dup_command nano'
alias emacs='dup_command emacs'
alias clear='dup_command clear'
alias man='dup_command man'

