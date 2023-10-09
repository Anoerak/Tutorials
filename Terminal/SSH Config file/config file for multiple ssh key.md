# Config file for multiple ssh key

For MAC, open the terminal and type:

## Check if you have an existing config file

```bash
cd ~/.ssh
ls
```

If you see a file called `config`, you already have a config file. If you don't see it, you can create one.

## Create a config file

```bash
cd ~/.ssh
touch config
```

## Edit the config file

You can use a text editor like nano or vim to edit the config file. You can also use the following command to open the config file in
TextEdit:

```bash
open -a TextEdit config
```

## Add the following lines to the config file (replace github with gitlab if you want to use GitLab)

```bash
Host github github.com # the PSEUDO (github) you want to use for the ssh connection then the DOMAIN (github.com) called
    HostName github.com # the DOMAIN again (github.com)
    PreferredAuthentications publickey # using public key over password,
    IdentityFile ~/.ssh/github/id_ed25519 # path to your private key (as explain in the other tutorial)
    User git # username as for git@github.com or git@gitlab.com
    RequestTTY no # no pseudo-terminal allocation for GitHub and GitLab, otherwise you will get an allocation error
	AddKeysToAgent yes # add the key to your ssh-agent, change to no if you don't want to add the key to your ssh-agent
	UseKeychain no # use the keychain to store passphrase, change to yes if you want to use the keychain
```

## Save the config file

## Test SSH Connection

```bash
ssh github
```

You'll might get a warning about the authenticity of the host. Type `yes` to continue. You'll might be asked for your password. Type it in
and press enter.

If you see a message like this, you're good to go:

```bash
Hi yourusername! You've successfully authenticated, but GitHub does not provide shell access.
```

If using GitLab, you'll might see a message like this:

```bash
Welcome to GitLab, @yourusername!
```
