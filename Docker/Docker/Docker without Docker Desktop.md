

# Docker without Docker Desktop

## Install DOCKER

The only prerequisite is Homebrew, which if you don't have installed, you can find instructions on their page [here](https://brew.sh/).

To kick things off, you'll want to install Docker and the credential  helper. The credential helper allows you to use the macOS Keychain as  the credential store for remote container repos instead of Docker  Desktop.

```bash
brew install docker docker-credential-helper
```

## Edit the config file

You may come across an issue later on where the Docker CLI will throw an error that 'docker-credential-desktop not installed' which is a result  of a misconfiguration (potentially from a previous installation of  Docker Desktop). You can correct this by doing the following.

```bash
nano ~/.docker/config.json

{
        "auths": {},
        "credsStore": "osxkeychain",
        "currentContext": "colima"
}
```

Yours might not have the current context set to Colima yet, however, the important one to update is `credStore`.

## Install Colima

Next, we need to install Colima. Colima is a container runtime that  supports Docker (and containerd). You can read more about over on [their GitHub](https://github.com/abiosoft/colima).

```bash
brew install colima
```

Once this is installed, all you need to do is start the Colima VM

````bash
colima start
````

Now you're good to go! You can test that everything is connected correctly by running. Where the `*` indicates the active context.

````bash
docker context ls
# this will return a list of docker socket configurations, example below

NAME       DESCRIPTION                               DOCKER ENDPOINT                                             KUBERNETES ENDPOINT                    ORCHESTRATOR
colima *   colima                                    unix:///Users/{you}/.colima/default/docker.sock                                          
default    Current DOCKER_HOST based configuration   unix:///var/run/docker.sock                                 https://192.168.64.3:16443 (default)   swarm
````

## The solution for more stubborn apps

Despite us configuring everything, some applications (such as AWS SAM) try to attach directly to the Docker socket at `/var/run/docker.sock` instead of respecting the active configuration for the current context. As a result, we'll need to set up a **hard** symlink pointing the Colima socket to the expected Docker socket location.

```bash
# as /var/ is a protected directory, we will need sudo
sudo ln ~/.colima/default/docker.sock /var/run

# we can verify this has worked by running
ls /var/run
# and confirming that docker.sock is now in the directory
```

Once this link is established, you should be free to use those more  stubborn applications. It's important to note that if you stop the  Colima VM (container runtime), you may lose this symlink and you'll need to relink to continue using those apps.