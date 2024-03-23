source ~/.profile
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH=/Users/sebastien/Documents/Arcanist/arcanist/bin:$PATH


HOST_NAME=minima

#source ~/.nvm/nvm.sh
#nvm use stable
shopt -s autocd
shopt -s histappend

export PATH=$PATH:$HOME/bin

export HISTSIZE=5000
export HISTFILESIZE=10000

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

#emojis=("👽" "🌪" "🧘" "🍺" "🍩" "🍿" "🐲" "🍁" "🎄" "👻" "⛄️" "🎃" "💀")

#EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}

#print_before_the_prompt () {
#    dir=$PWD
#    home=$HOME
#    dir=${dir/"$HOME"/"~"}
#    printf "\n $txtred%s: $bldpur%s $txtgrn%s\n$txtrst" "$HOST_NAME" "$dir" "$(vcprompt)"
#}

# PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
PS1="$EMOJI >"

# OH-MY-POSH
# eval "$(oh-my-posh init bash)"
# eval "$(oh-my-posh init bash --config $(brew --prefix oh-my-posh)/themes/multiverse-neon.omp.json)"
# eval "$(oh-my-posh init bash --config $(brew --prefix oh-my-posh)/themes/the-unnamed.omp.json)"
eval "$(oh-my-posh init bash --config $(brew --prefix oh-my-posh)/themes/the-legendary-one.omp.json)"
# eval "$(oh-my-posh init bash --config $(brew --prefix oh-my-posh)/themes/star.omp.json)"
# eval "$(oh-my-posh init bash --config $(brew --prefix oh-my-posh)/themes/craver.omp.json)"
# eval "$(oh-my-posh init bash --config $(brew --prefix oh-my-posh)/themes/spaceship.omp.json)"
# eval "$(oh-my-posh init bash --config $(brew --prefix oh-my-posh)/themes/cert.omp.json)"

# BLISS DIRCOLORS
 PATH="/opt/homebrew/Cellar/coreutils/9.4/libexec/bin:$PATH"
 MANPATH="/opt/homebrew/Cellar/coreutils/9.4/libexec/gnuman:$MANPATH"
 alias ls="ls --color=always"
 eval `dircolors /opt/homebrew/themes/bliss-dircolors-master/bliss.dircolors`


if [[ $(date +%m) -eq 3 ]]; then fortune | cowsay -f leprechaun | lolcat; elif [[ $(date +%m) -eq 10 ]]; then fortune | cowsay -f pumpkin | lolcat; elif [[ $(date +%m) -eq 11 ]]; then fortune | cowsay -f turkey | lolcat; elif [[ $(date +%m) -eq 12 ]]; then fortune | cowsay -f Santa | lolcat; else fortune | cowsay -f ghostbusters | lolcat; fi
#fortune | cowsay -f ghostbusters | lolcat
#fortune | cowsay -f skeleton | lolcat
#fortune | cowsay -f flaming-sheep | lolcat
#fortune | cowsay -f turkey | lolcat

function mkcd()
{
	mkdir $1 && cd $1
}


# -------
# Aliases
# -------
alias a="code ."
alias c="code ."
alias reveal-md="reveal-md -w --theme night --highlight-theme hybrid --port 1234"
alias reveal-md-website="reveal-md --theme night --highlight-theme hybrid --static --static-dirs=assets"
alias l="ls" # List files in current director"
alias ll="ls -al" # List all files in current directory in long list forma"
alias o="open ." # Open the current directory in Finde"
alias bcomp="/usr/local/bin/bcomp"
alias bcompare="/usr/local/bin/bcompare" 

# ----------------------
# SYMFONY Aliases
# ----------------------
alias sc="symfony console"
alias cr="composer require"
alias coverage="php bin/phpunit --coverage-html public/coverage/"

# ----------------------
# ARCANIS Aliases
# ----------------------
alias arc-df-i="arc diff --only --browse"
alias arc-du="arc diff --update"
alias arc-ld="arc land --onto develop"
alias arc-lm="arc land --onto master"
alias arc-ldr="arc land --onto develop --revision"
alias arc-lmr="arc land --onto master --revision"

# ----------------------
# PHP Aliases
# ----------------------
alias phpbc="php bin/console"
alias unit="php bin/phpunit"
alias psalm-a="vendor/bin/psalm"
alias psalm-l="vendor/bin/psalm --error-level="
alias psalm-r="vendor/bin/psalm --report="

# alias stan="vendor/bin/phpstan"
# alias phpcs="vendor/bin/phpcs"
# alias phpcbf="vendor/bin/phpcbf"

# ----------------------
# Docker Aliases
# ----------------------
alias dock-c="docker-compose"
alias dock-c-u="docker-compose up"
alias dock-c-d="docker-compose down"
alias dock-c-r="docker-compose restart"
alias dock-connect="docker exec -it"

# ----------------------
# NPM Aliases
# ----------------------
alias ns="npm start"
alias start="npm start"
alias nr="npm run"
alias run="npm run"
alias nis="npm i -S"

# ----------------------
# Cspell Aliases
# ----------------------
# create a "your_dictionnary.txt" file at the root of the project
# create a "cspell.json" file and populate like this
#{
#	"$schema": "https://raw.githubusercontent.com/streetsidesoftware/cspell/main/#cspell.schema.json",
#	"version": "0.2",
#	"dictionaryDefinitions": [
#	  {
#		"name": "your_dictionnary_words",
#		"path": "./your_dictionnary.txt",
#		"addWords": true
#	  }
#	],
#	"dictionaries": ["your_dictionnary_words"],
#	"ignorePaths": ["node_modules", "/your_dictionnary.txt"]
# }
alias cspell-u-d="cspell --words-only --unique "src/" | sort --ignore-case >> "

# ----------------------
# GIT Aliases
# ----------------------
alias g="git"
alias ga="git add"
alias gaa="git add ."
alias gaaa="git add --all"
alias gb="git branch"
alias gbd="git branch -d"
alias gppl="git branch -r | grep -v '\->' | while read remote; do git branch --track \"\${remote#origin/}\" \"\$remote\"; done"
alias gco="git checkout"
alias beer="git checkout -b drunk"
alias 🍺="git checkout -b drunk"
alias gcl="git clone"
alias gc="git commit"
alias gcm="git commit -m"
alias gi="git init ."
alias gl="git log"
alias glac="git log --pretty=format:'%Cred%h%Creset - %C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative --all --decorate"
alias gm="git merge"
alias gpl="git pull"
alias gpla="git pull --all"
alias gp="git push"
alias gpsho="git push origin"
alias gpshuf="git push -uf"
alias gpshufo="git push -uf origin"
alias gra="git remote add"
alias grao="git remote add origin"
alias grm="git remote rm"
alias grr="git remote rename"
alias gss="git status -s"
alias gs="echo -e '*****************************************************'; echo -e  '     DO NOT FORGET TO PULL BEFORE COMMITTING!!!     '; echo -e '*****************************************************';  echo ''; git status -s"
[[ -f /etc/git-completion.bash ]] && . /etc/git-completion.bash
[[ -f /etc/git-prompt.sh ]] && . /etc/git-prompt.sh
alias gst="git stash"
alias gsp="git stash pop"
alias gsl="git stash list"
alias gsa="git stash apply"
alias gsd="git stash drop"
alias gsc="git stash clear"
alias gss="git stash show"
alias gssp="git stash show -p"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export BASH_SILENCE_DEPRECATION_WARNING=1

# ----------------------
# JAWS Aliases
# ----------------------
alias pcc="bash pre_commit_check.sh"
