# Quickly access the ~/.zshrc file
alias zshrc="code ~/.zshrc"
alias grep="grep --color"

exa_binary="ls"
bat_binary="cat"
if [[ "$AZ_STRIPE" == "true" ]]; then
    exa_binary="exa"
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
    exa_binary="exa-linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    exa_binary="exa-macos"
fi

# bat
alias cat="${bat_binary}"

#exa/ls
alias exa="${exa_binary}"
alias l="${exa_binary} -h"
alias ls="${exa_binary} -h"
alias la="${exa_binary} -ah"
alias ll="${exa_binary} -lh"
alias df="df -h"

alias cd..="cd .."
alias ~="cd ~"
alias ..='cd ..'         # Go up one directory
alias ...='cd ../..'     # Go up two directories
alias ....='cd ../../..' # Go up three directories
alias chmoud="chmod"
alias se="ssh -Y azvorygi@linux.student.cs.uwaterloo.ca"
alias sshcsc="ssh azvorygi@hfcs.csclub.uwaterloo.ca"

# Git Aliases
alias gd="git diff"
alias gdc="git diff --cached"
alias gcl='git clone'
alias ga='git add'
alias gall='git add .'

alias g='git'
alias gs='git status'
alias gss='git status -s'
alias gl='git pull'
alias gpr='git pull --rebase'
alias gpp='git pull && git push'
alias gup='git fetch && git rebase'
alias gp='git push'
alias gpo='git push origin'
alias gdv='git diff -w "$@" | vim -R -'
alias gc='git commit -v'
alias gca='git commit --amend'
alias gcan='git commit --amend --no-edit'
alias gcm='git commit -v -m'
alias gsh="git show"
alias gb='git branch'
alias gcp='git cherry-pick'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gll='git log --graph --pretty=oneline --abbrev-commit'
alias gg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gcapf="ga . && gca --no-edit && gp -f"
gpuo() {
    git push -u origin $(git rev-parse --abbrev-ref HEAD)
}


alias fetchout='git fetch origin master-passing-tests && git checkout -B master origin/master-passing-tests && git checkout'
alias fetcherge='git fetch origin master-passing-tests && git merge origin/master-passing-tests --no-edit'

alias gch='git branch -v --sort=-committerdate | fzf --layout=reverse-list --bind "enter:execute(git checkout {1})+accept-non-empty"'

alias grb='git branch -v --sort=-committerdate | fzf --layout=reverse-list --bind "enter:execute(git rebase {1})+accept-non-empty"'



# Tree
if [ ! -x "$(which tree 2>/dev/null)" ]
then
  alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
fi

# Directory
alias mkdir="mkdir -p"

# Stripe aliases
alias ij='~/stripe/zoolander/dev/ij'
alias k='sc kubectl'
alias kq='k -q -n'
alias kp='k -p -n'
# alias f="scripts/format_all.sh"

alias mspworker='ssh $(ls-servers -QN -c east -Sqt mspworker | shuf -n 1)'

alias hdsq='henson dump-skycfg --qa'alias gcm="git commit -v -m"
alias gcm="git commit -v -m"
