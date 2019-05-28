alias ls="ls -G"

export LC_ALL=en_US.UTF-8
export EDITOR=nano

export GOPATH=$HOME/gopath

eval $(gpg-agent --daemon --no-grab --write-env-file $HOME/.gpg-agent-info -q 2>/dev/null)
export GPG_TTY=$(tty)
export GPG_AGENT_INFO

export PATH=$GOPATH/bin:$PATH

source <(kubectl completion bash)

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
