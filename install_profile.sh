# Fail on any command.
set -eux pipefail

# Define plugin directory
plugin_dir="$HOME/.oh-my-zsh/custom/plugins"

# Clone or update zsh-syntax-highlighting
if [ -d "$plugin_dir/zsh-syntax-highlighting" ]; then
    (cd "$plugin_dir/zsh-syntax-highlighting" && git pull)
else
    (cd "$plugin_dir" && git clone https://github.com/zsh-users/zsh-syntax-highlighting)
fi

# Clone or update zsh-autosuggestions
if [ -d "$plugin_dir/zsh-autosuggestions" ]; then
    (cd "$plugin_dir/zsh-autosuggestions" && git pull)
else
    (cd "$plugin_dir" && git clone https://github.com/zsh-users/zsh-autosuggestions)
fi

# Continue with the rest of your script
# Replace the configs with the saved one.
sudo cp configs/.zshrc ~/.zshrc

# Copy the modified Agnoster Theme
sudo cp configs/mvanzulli-agnoster.zsh-theme ~/.oh-my-zsh/themes/mvanzulli-agnoster.zsh-theme

# Color Theme
dconf load /org/gnome/terminal/legacy/profiles:/:fb358fc9-49ea-4252-ad34-1d25c649e633/ < configs/terminal_profile.dconf

# Add it to the default list in the terminal
add_list_id=fb358fc9-49ea-4252-ad34-1d25c649e633
old_list=$(dconf read /org/gnome/terminal/legacy/profiles:/list | tr -d "]")

if [ -z "$old_list" ]
then
	front_list="["
else
	front_list="$old_list, "
fi

new_list="$front_list'$add_list_id']"
dconf write /org/gnome/terminal/legacy/profiles:/list "$new_list" 
dconf write /org/gnome/terminal/legacy/profiles:/default "'$add_list_id'"

# Switch the shell.
chsh -s $(which zsh)
