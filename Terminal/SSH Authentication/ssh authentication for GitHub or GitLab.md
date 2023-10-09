# SSH Authentication for GitHub or GitLab

For MAC, open the terminal and type:

## Generate SSH Key (replace github with gitlab if you want to use GitLab)

```bash
cd ~/.ssh
mkdir github
cd github
ssh-keygen -t ed25519 -C “youremailaccount@address.com”
```

Use a password generator to create a strong password and save it in your password manager. Once the keys are generated, you can add them to
password manager.

Now, add the key to your ssh-agent:

```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/github/id_ed25519
```

## Add SSH Key to GitHub or GitLab (replace github with gitlab if you want to use GitLab)

1. Copy the contents of the public key to your clipboard:

```bash
pbcopy < ~/.ssh/github/id_ed25519.pub
```

2. Go to GitHub or GitLab to add the key to your account.

3. Go to your account settings and click on SSH and GPG keys (for GitLab, go to Preferences and find SSH Keys in the menu on the left of the
   screen).

4. Click on New SSH key or Add SSH key.

5. Paste the key into the Key field.

6. Give the key a descriptive name (eg. MacBook Pro 2020)

7. Click Add SSH key.

## Add GitHub/GitLab to your known_hosts (replace github with gitlab if you want to use GitLab)

```bash
ssh-keyscan -t ed25519 github.com >> ~/.ssh/known_hosts
```

## Test SSH Connection (replace github with gitlab if you want to use GitLab)

```bash
ssh -T git@github.com
```

You'll might get a warning about the authenticity of the host. Type `yes` to continue. You'll might be asked for your password. Type it in
and press enter.

If you see a message like this, you're good to go:

### GitHub

```bash
Hi yourusername! You've successfully authenticated, but GitHub does not provide shell access.
```

### GitLab

```bash
Welcome to GitLab, @yourusername!
```