# Aliases

We're about to create a bunch of aliases for our terminal. These will make our lives easier and our terminal more fun to use.

## bash_profile

First, we need to create a file called `.bash_profile` in our home directory. This file will be loaded every time we open a new terminal
window. We can do this by running the following command:

```bash
touch ~/.bash_profile
```

## Aliases

Now, let's add some aliases to our `.bash_profile` file. Open the file in your text editor and add the following:

```bash
# -------
# Aliases
# -------
alias a='code .'
alias c='code .'
alias reveal-md="reveal-md --theme night --highlight-theme hybrid --port 1234"
alias l="ls" # List files in current directory
alias ll="ls -al" # List all files in current directory in long list format
alias o="open ." # Open the current directory in Finder

# ----------------------
# SYMFONY Aliases
# ----------------------
alias sc='symfony console'
alias phpbc='php bin/console'
alias cr='composer require'

# ----------------------
# NPM Aliases
# ----------------------
alias ns='npm start'
alias start='npm start'
alias nr='npm run'
alias run='npm run'

# ----------------------
# GIT Aliases
# ----------------------
alias g='git'
alias ga="git add"
alias gaa="git add ."
alias gaaa="git add --all"
alias gb="git branch"
alias gbd="git branch -d"
alias gppl="git branch -r | grep -v '\->' | while read remote; do git branch --track \"\${remote#origin/}\" \"\$remote\"; done"
alias gco="git checkout"
alias gcl='git clone'
alias gc="git commit"
alias gcm="git commit -m"
alias gi='git init .'
alias glog="git log"
alias glogac="git log --pretty=format:'%Cred%h%Creset - %C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative --all --decorate"
alias gm="git merge"
alias gpl="git pull"
alias gpla="git pull --all"
alias gp="git push"
alias gpsho="git push origin"
alias gpshuf="git push -uf"
alias gpshfo="git push -uf origin"
alias gra='git remote add'
alias grao='git remote add origin'
alias grm='git remote rm'
alias grr='git remote rename'
alias gss="git status -s"
alias gs='echo -e "*****************************************************"; echo -e  "     DO NOT FORGET TO PULL BEFORE COMMITING!!!     "; echo -e "*****************************************************";  echo ""; git status -s'
[[ -f /etc/git-completion.bash ]] && . /etc/git-completion.bash
[[ -f /etc/git-prompt.sh ]] && . /etc/git-prompt.sh
```

## Reload

Now, we need to reload our `.bash_profile` file. We can do this by running the following command:

```bash
source ~/.bash_profile
```

## Test

Now, let's test our aliases. Run the following command:

```bash
l
```

You should see a list of files in your current directory. If you do, then your aliases are working!
