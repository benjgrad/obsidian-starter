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
## (Optional) Cloning an Existing Repo
1. [Create a repo in github](https://github.com/new)
2. (Optional) Clone an existing repository by typing the following in terminal: `git clone https://github.com/benjgrad/obsidian-starter.git` and 
3. Then enter the folder: `cd obsidian-starter`
4. Set your remote origin to your repo: `git remote set-url origin https://github.com/[USERNAM]/[REPO]`
5. Set your branch: `git branch -m main`
6. Push your branch: `git push -u origin main`
## Configure your Git Plugin
1. Open a folder as a Vault in Obsidian
2. In Obsidian, install the 'Obsidian Git' plugin.
3. If the folder isn't already a git repo, initialize a repo: `CMD + P` -> 'Obsidian Git: Initialize a new repo'
4. If you haven't done it yet, set the remote origin: `CMD + P` -> 'Obsidian Git: Edit Remotes' -> origin -> (Put your url there)
## (Optional) Enabling Automatic Script Updates
Because it can be difficult to read files from template scripts, I needed to get creative. Instead, a script runs to populate the js files with the names of the tasks.
1. `brew install pre-commit`
2. `chmod +x generateDailyTasks.sh`
3. `chmod +x generateDailyList.sh`
4. `pre-commit install`
## Configure Your Mobile Device
1. Download the App
2. Open a Vault
3. Install 'Obsidian Git' Plugin
4. Generate a [github token](https://github.com/settings/tokens) -- make sure you have all the permissions
5. In Obsidian Mobile, run 'Obsidian Git: Clone an existing remote repo'
6. Run git pull!