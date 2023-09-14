>[!note]
>In this document, we're going to be using [Homebrew](https://brew.sh/) to install things. This is recommended, since it allows us to uninstall things without leaving clutter on our computers. It also simplifies the installation process. To install it, enter terminal and type this:
>```
>/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
>```
# Installing Obsidian on Mac
1. In terminal run the [following command](https://formulae.brew.sh/cask/obsidian#default): `brew install --cask obsidian`
2. Open Obsidian
3. If it says 'cannot be opened because the developer cannot be verified', go to Security & Privacy -> General and click 'Open Anyway'
## Installing up Github
1. [Create a github account](https://github.com/)
2. [Install git](https://formulae.brew.sh/formula/git#default): `brew install git` (this is used to back up files)
3. [Install gh](https://formulae.brew.sh/formula/gh#default): `brew install gh` (this is basically just used to sign in)
4. Login: `gh auth login` 
5. Follow steps: Github.com -> HTTPS -> Login with a web browser 
## Setting up your Repo
1. [Create a repo in github](https://github.com/new)
2. 