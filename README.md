# Mauri's Unix Terminal Customization Guide

## Overview
This guide details my custom terminal setup for UNIX-based systems (MacOS/Linux). It includes information on using iTerm2 for MacOS and the default terminal app for Ubuntu. 

**Note for MacOS Users:** I've previously installed this theme on MacOS, but the terminal commands differ from those for Linux. You might need to modify the `.sh` files for MacOS compatibility.

## Getting Started: Prerequisites
Ensure your system meets these minimum requirements:

```bash
# Refresh your software repositories
sudo apt-get update
sudo apt-get upgrade

# Install Git
sudo apt-get install -y git

# Install Vim
sudo apt-get install -y vim
```

## Step-by-Step Installation

### Step 1: Powerline Fonts
Install RobotoMono for Powerline (used in VIM and terminal theme) with the following script:

```bash
./install_powerline.sh
```

### Step 2: ZSH, OhMyZSH, and Plugins
Install ZSH, OhMyZSH, and required plugins. Restart your system after this step.

```bash
./install_terminal.sh
```

### Step 3: Terminal Profile Customization
This step involves installing plugins for auto-complete and color highlighting, setting up `.zshrc` and the custom `mvanzulli-agnoster.zsh-theme`, and configuring the terminal profile with the Powerline font.

```bash
./install_profile.sh
```

**Alternative Fonts:** Feel free to try other [Powerline Patched Fonts](https://github.com/powerline/fonts) if RobotoMono isn't to your liking.

### Troubleshooting
If the theme appears incorrectly, ensure you've installed a Powerline font and consider restarting your machine.

## Additional Tips

### Exporting Terminal Profiles
To export your current terminal profiles:

```bash
dconf dump /org/gnome/terminal/legacy/profiles:/ > gnome-terminal-profiles.dconf
```

## Resetting Changes
To revert to default settings, refer to these guides:

- [Resetting Terminal Theme](https://askubuntu.com/questions/14487/how-to-reset-the-terminal-properties-and-preferences)
- [Uninstalling ZSH and Returning to Bash](https://askubuntu.com/questions/958120/remove-zsh-from-ubuntu-16-04)

## Resource Links
For more detailed guidance, check out these resources:

- [Oh My Zsh! Installation Guide](https://medium.com/wearetheledger/oh-my-zsh-made-for-cli-lovers-installation-guide-3131ca5491fb)
- [Robby Russel's Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
- [Installing Powerline](https://askubuntu.com/questions/283908/how-can-i-install-and-use-powerline-plugin)
- [Powerline Patched Fonts](https://github.com/powerline/fonts)
- [Agnoster Theme Guide](https://gist.github.com/3712874)
