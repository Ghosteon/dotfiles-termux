RED="\[\e[0;36m\]"
GRAY="\[\e[0;37m\]"
YELLOW="\[\e[0;33m\]"
BLUE="\[\e[0;34m\]"
PURPLE="\[\e[0;35m\]"
GREEN="\[\e[0;32m\]"
WHITE="\[\e[0;37m\]"
BLOODRED="\[\e[1;31m\]"
CYAN="\[\e[1;34m\]"
LIGHT_CYAN="\[\e[0;96m\]"
LIGHT_GREEN="\[\e[1;32m\]"
TXTRST="\[\e[0m\]"

DOWNBAR='\342\224\214'
HORBAR='\342\224\200'
UPBAR='\342\224\224'
HORBARPLUG='λ'

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}

function git_module {
    if [[ $(git status 2> /dev/null) ]];then
        echo $WHITE$HORBAR[$PURPLE$(parse_git_branch)$WHITE];
    fi
 }

function end_module {
    echo "\n"$WHITE$UPBAR$HORBAR$HORBARPLUG $TXTRST
}

function begin_module {
    echo $WHITE$DOWNBAR$HORBAR
}

function location_module {
    echo $HORBAR[$BLUE'\w'$WHITE]
}

function set_bash_prompt {
    PS1=$(begin_module)$(location_module)$(git_module)$(end_module)
}

PROMPT_COMMAND=set_bash_prompt