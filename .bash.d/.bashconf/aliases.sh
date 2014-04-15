#### @ alias

alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

alias cpd="cp -a"
alias rmdir="rm -rf"
alias less='lv'

alias ls="ls --color"
alias ll="ls -l"
alias la="ls -A"

alias cdp="cd ~/prog"
alias cdc="cd ~/prog/c"
alias cdcp="cd ~/prog/cpp"
alias cdpy="cd ~/prog/python"
alias cdpw="cd ~/prog/python/web"
alias cdw="cd ~/prog/web"

alias install='sudo apt-get install'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'

alias untgz="tar zxvf"
alias untbz="tar xvf-"
alias unbz="bunzip2 -c"

alias em="emacsclient -nc -a ''"
alias e="emacsclient -nc -a ''"
alias emt="emacsclient -nt -a ''"
alias emr="emacsclient -e '(kill-emacs)';echo 'Reboot Emacs Daemon';emacs --daemon"
alias emk="emacsclient -e '(kill-emacs)';echo 'kill emacs...'"

alias sb="sublime-text"

alias ctest="cp ~/bin/clangtest/Makefile ./;echo 'Make: Makefile for clang test.'"
alias gcc="gcc -std=c11"
alias g++="g++ -std=c++11"
alias gpp="g++"
alias go="./a.out"

alias gae="~/bin/google_appengine/dev_appserver.py"
alias gup="~/bin/google_appengine/appcfg.py update"

alias cgi="python -c 'import CGIHTTPServer; CGIHTTPServer.test()'"