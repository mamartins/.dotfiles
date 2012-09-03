#more paths
PATH=/usr/local/bin:${PATH}:/usr/local/sbin
#bash mysql
PATH=${PATH}:/usr/local/Cellar/mysql/5.5.20/bin

#bash xCode tools
PATH=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:$PATH
#colors

export VISUAL=vim
export TERM=xterm-color
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export EDITOR=vim
function parse_git_branch_and_add_brackets {
 git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}

PS1="\[\e[31;1m\]\u\[\e[0m\]::\[\e[36;1m\]\W\[\033[0;32m\]\$(parse_git_branch_and_add_brackets) \[\e[36;1m\]$ \[\e[0m\]"


TERM=xterm-256color

# ruby version manager

export PATH="./bin:$PATH"
[[ -s "/Users/marcomartins/.rvm/scripts/rvm" ]] && source "/Users/marcomartins/.rvm/scripts/rvm"
