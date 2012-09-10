# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# specify a theme
export ZSH_THEME="norm"

# load from the available list of plugins at ~/.oh-my-zsh/plugins
plugins=(git git-flow rails textmate ruby cap brew gem github mysql osx vagrant)

source $ZSH/oh-my-zsh.sh
# source ~/.git-flow-completion.zsh #you have to paste that file to that location then

# Customize to your needs...
export PATH=/Users/marcomartins/.rvm/gems/ruby-1.9.3-p194/bin:/Users/marcomartins/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/marcomartins/.rvm/rubies/ruby-1.9.3-p194/bin:/Users/marcomartins/.rvm/bin:./bin:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/texbin:/usr/local/sbin


# load RVM
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

#see/hide hidden files
function hiddenOn() { defaults write com.apple.Finder AppleShowAllFiles YES ; killall Finder }
function hiddenOff() { defaults write com.apple.Finder AppleShowAllFiles NO ; killall Finder }

# view man pages in Preview
function pman() { ps=`mktemp -t manpageXXXX`.ps ; man -t $@ > "$ps" ; open "$ps" ; }

#mysql easy start/stop
alias mstart= 'mysql.server start'
alias mstop='mysql.server stop'

#z
. /Users/marcomartins/Dropbox/Dotfiles/z/z.sh

#I have a temp on a different hdd, needed for brew update git, code to do that:
#sudo ditto /private/tmp /Volumes/your_hdd_name/private/tmp
#sudo rm -rf /private/tmp
#sudo ln -s /Volumes/your_hdd_name/private/tmp /private/tmp
export HOMEBREW_TEMP=$HOME/.tmp