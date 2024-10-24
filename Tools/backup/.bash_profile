# Load user profile
source ~/.profile

# Update PATH
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$HOME/bin:/Users/sebastien/Documents/Arcanist/arcanist/bin:$PATH"

# Set the default editor
export LDFLAGS="-L/opt/homebrew/opt/libomp/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libomp/include"

# History settings
export HISTSIZE=5000
export HISTFILESIZE=10000

# Color settings for terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Set the default editor
HOST_NAME=minima

# Load NVM and use stable version
export NVM_DIR="$HOME/.nvm"
if [ -s "$NVM_DIR/nvm.sh" ]; then
    source "$NVM_DIR/nvm.sh"
    nvm use stable
fi

# Load NVM and set up environment from Homebrew
if [ -s "/opt/homebrew/opt/nvm/nvm.sh" ]; then
    source "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
fi
if [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ]; then
    source "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
fi

# Enable autocd and history append
shopt -s autocd
shopt -s histappend

# Bind history search to arrow keys
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

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
eval "$(oh-my-posh init bash --config $(brew --prefix oh-my-posh)/themes/the-legendary-one.omp.yaml)"
# eval "$(oh-my-posh init bash --config $(brew --prefix oh-my-posh)/themes/star.omp.json)"
# eval "$(oh-my-posh init bash --config $(brew --prefix oh-my-posh)/themes/craver.omp.json)"
# eval "$(oh-my-posh init bash --config $(brew --prefix oh-my-posh)/themes/spaceship.omp.json)"
# eval "$(oh-my-posh init bash --config $(brew --prefix oh-my-posh)/themes/cert.omp.json)"

# BLISS DIRCOLORS
 PATH="/opt/homebrew/Cellar/coreutils/9.5/libexec/gnubin:$PATH"
 MANPATH="/opt/homebrew/Cellar/coreutils/9.5/libexec/gnuman:$MANPATH"
 alias ls="ls --color=always"
 eval `dircolors /opt/homebrew/themes/bliss-dircolors-master/bliss.dircolors`


if [[ $((10#$(date +%m))) -eq 3 ]]; then
    fortune | cowsay -f leprechaun | lolcat
elif [[ $((10#$(date +%m))) -eq 10 ]]; then
    fortune | cowsay -f pumpkin | lolcat
elif [[ $((10#$(date +%m))) -eq 11 ]]; then
    fortune | cowsay -f turkey | lolcat
elif [[ $((10#$(date +%m))) -eq 12 ]]; then
    fortune | cowsay -f Santa | lolcat
else
    fortune | cowsay -f ghostbusters | lolcat
fi
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
alias breload="source ~/.bash_profile"

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
alias psalm-l='function _psalm_l(){ vendor/bin/psalm --error-level="$1"; }; _psalm_l'
alias psalm-r='function _psalm_r(){ vendor/bin/psalm --report="$1"; }; _psalm_r'
alias jcoverage="XDEBUG_MODE=coverage phpunit --configuration ./tests/sp-config/phpunit.xml  --testdox"
# junit will launch a basic phpunit test without the configuration file, using colors and testdox
alias junit="phpunit --colors --testdox"

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
alias dock-cache="docker system df"
alias dock-clean-d="docker container prune -f"
alias dock-clean="docker container prune -f && docker image prune -f && docker volume prune -f && docker network prune -f"
alias dock-ps="docker ps --format 'table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}\t{{.Image}}'"


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
alias gmove='function _gmove(){ git push origin origin/$1:refs/heads/$2 :$1; }; _gmove'

# ----------------------
# JAWS functions
# ----------------------
# jdunit will launch a basic phpunit test without the configuration file, using colors and testdox
# $1 is the container name
# $2 is the path to the test file
jdunit() {
    docker exec -it "$1" vendor/bin/phpunit --colors --testdox "$2"
}
# jdunitcov will launch a phpunit test with the configuration file, using colors and testdox
# $1 is the container name
# $2 is the path to the configuration file
jdunitcov() {
    docker exec -it "$1" vendor/bin/phpunit --colors --testdox --configuration "$2"
}
# jpsalm will launch a psalm test with the configuration file
# $1 is the container name
# $2 is the path to the configuration file
jpsalm() {
    docker exec -it "$1" vendor/bin/psalm --config="$2"
}
# jpsalm-a will launch a psalm test with the default configuration file
# $1 is the container name
jpsalm-a() {
    docker exec -it "$1" vendor/bin/psalm
}
# jpsalm-l will launch a psalm test with the error level
# $1 is the container name
# $2 is the error level
jpsalm-l() {
    docker exec -it "$1" vendor/bin/psalm --error-level="$2"
}
# jpsalm-r will launch a psalm test with the report
# $1 is the container name
# $2 is the report, it can be json, xml, text, emacs, github, compact, codeclimate, checkstyle, junit
# and can be saved outside the container like this: jpsalm-r container_name json > report.json
jpsalm-r() {
    docker exec -it "$1" vendor/bin/psalm --report="$2"
}

# ----------------------
# JAWS Aliases
# ----------------------
alias pcc="~/Documents/Repositories/JAWS_Project/jaws/pre_commit_check.sh"
alias jcommit='~/Documents/Repositories/JAWS_Project/jaws/git-commit-form.sh'
alias fcommit='~/Documents/Repositories/UIs/Fleet/fleetmgmtui/git-commit-form.sh'
# ---------------------- 
# We print all the different git log commands
alias gh="function_choose_git_command"

# Define command options in associative arrays
declare -A git_commands=(
    [1]="git log"
    [2]="git show"
    [3]="git shortlog"
    [4]="git blame"
    [5]="git diff"
    [6]="git restore"
    [7]="git reset"
    [8]="git revert"
    [9]="git cherry-pick"
    [10]="git bisect"
    [11]="git branch"
    [12]="git tag"
    [13]="git describe"
    [14]="git commit"
    [15]="git merge"
    [16]="git rebase"
    [17]="git reflog"
    [18]="git filter-branch"
    [19]="git fsck"
    [20]="git gc"
    [21]="git prune"
    [22]="git remote"
    [23]="git submodule"
)

declare -A git_options=(
    [1]="--oneline --graph --all --decorate --author='name' --since='date' --until='date' --grep='msg' --no-merges --merges --reverse --stat --patch --name-only --name-status --format='format'"
    [2]="HEAD HEAD~1 HEAD^ <commit_hash>"
    [3]="-s -n -e -sn --no-merges"
    [4]="<file_name> -L 10,20 <file_name>"
    [5]=" --cached HEAD HEAD~1"
    [6]="<file_name> --staged <file_name>"
    [7]="--soft HEAD~1 --mixed HEAD~1 --hard HEAD~1"
    [8]="HEAD HEAD~1 <commit_hash>"
    [9]="<commit_hash>"
    [10]="start bad good <commit_hash> reset"
    [11]=" <branch_name> -d <branch_name>"
    [12]=" <tag_name> -d <tag_name>"
    [13]=" --tags --all"
    [14]="-m 'commit_message' --amend"
    [15]="<branch_name>"
    [16]="<branch_name>"
    [17]=" expire --expire=2.weeks delete --expire=2.weeks"
    [18]="--tree-filter 'rm -f <file_name>' HEAD"
    [19]=""
    [20]=""
    [21]=""
    [22]=" add <remote_name> <remote_url> remove <remote_name>"
    [23]="add <submodule_url> update --init update --remote"
)

prompt_user() {
    local prompt_message="$1"
    read -p "$prompt_message" user_input
    echo "$user_input"
}

construct_arguments() {
    local cmd_number="$1"
    local arguments=""
    IFS=' ' read -r -a arg_numbers <<< "$2"
    arg_numbers=($(echo "${arg_numbers[@]}" | tr ' ' '\n' | sort -n | tr '\n' ' ')) # Sort argument numbers
    
    for arg_num in "${arg_numbers[@]}"; do
        local options=(${git_options[$cmd_number]})
        local option=${options[$arg_num-1]}
        
        if [[ $option == *"<"* ]]; then
            local placeholder=$(echo $option | grep -oP "(?<=<).*(?=>)")
            local user_value=$(prompt_user "Enter $placeholder: ")
            arguments+=" ${option//<$placeholder>/$user_value}"
        else
            arguments+=" $option"
        fi
    done
    
    echo "$arguments"
}

function_choose_git_command() {
    echo "Choose a command to display the options:"

    # We sort the keys of the associative array 
    IFS=$'\n' sorted_keys=($(sort <<<"${!git_commands[*]}"))
    unset IFS
    
    for i in "${!sorted_keys[@]}"; do
        echo "$((i+1)). ${git_commands[${sorted_keys[$i]}]}"
    done
    
    local cmd_number=$(prompt_user "Enter the number of the command you want to display: ")
    
    if [[ -z "${git_commands[$cmd_number]}" ]]; then
        echo "Invalid command number"
        return
    fi
    
    echo "Options for ${git_commands[$cmd_number]}:"
    IFS=' ' read -r -a options <<< "${git_options[$cmd_number]}"
    for i in "${!options[@]}"; do
        echo "$((i+1)). ${options[$i]}"
    done
    
    local arg_numbers=$(prompt_user "Enter the numbers of the arguments you want to use, separated by spaces: ")
    
    local arguments=$(construct_arguments "$cmd_number" "$arg_numbers")
    
    local final_command="${git_commands[$cmd_number]} $arguments"
    echo "Executing: $final_command"
    eval $final_command
}
