# Automate Commit Message Creation with Bash Script

In this tutorial, we'll create a bash script that automates the process of creating commit messages according to best practices. We'll also integrate this script into your shell profile for easy access.

## Step 1: Create the Bash Script

First, let's create a bash script named git-commit-script.sh in the root of your project directory. This script will guide you through the commit message creation process and stage files for commit (you will find a script with the same name in the repository).

Save the script and make it executable using chmod +x git-commit-script.sh.

## Step 2: Integrate the Script into Your Shell Profile

To make the script easily accessible from any directory, we'll integrate it into your shell profile (~/.bash_profile or ~/.bashrc).

Open your shell profile in a text editor:

MAC:

```bash
code ~/.bash_profile
```

WINDOWS:

```bash
code ~/.bashrc
```

LINUX:

```bash
code ~/.bashrc
```

Add the following lines at the end of the file:

```bash
# Git Commit Automation Script
gcommit() {
    ~/path/to/your/project/git-commit-script.sh  # Replace with the actual path
}
```

## Step 3: Reload Your Shell Profile

To apply the changes, reload your shell profile:

MAC:

```bash
source ~/.bash_profile
```

WINDOWS:

```bash
source ~/.bashrc
```

LINUX:

```bash
source ~/.bashrc
```

Step 4: Test Your Setup

Now, let's test the setup. Navigate to any Git repository directory and run:

```bash
gcommit
```

The script should guide you through the commit message creation process and stage files for commit.
Follow the prompts to select the commit type, scope, description, and whether to stage files. Confirm the commit when prompted.

## Conclusion

You've now automated the creation of commit messages using a bash script and integrated it into your shell profile for streamlined use. This method enhances your workflow by ensuring consistent and professional commit messages.

Happy coding! 🚀

## One More Thing

you can also create this script in a global location and add it to your PATH for easy access across all projects. This way, you can use the script from any directory without specifying the full path.

To do this, create the script in a global location (e.g., /usr/local/bin/git-commit-script.sh) and add the following line to your shell profile:

```bash
export PATH=$PATH:/usr/local/bin
```

Now, you can run the script from any directory by typing:

```bash
git-commit-script.sh
```

This approach provides even greater convenience and flexibility in managing your Git commits.
