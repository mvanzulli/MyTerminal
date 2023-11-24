# Fail on any command.
set -eux pipefail

# Install Powerline for VIM.
sudo apt install -y python3-pip
pip3 install --user powerline-status
sudo cp configs/.vimrc ~/.vimrc
sudo apt install -y fonts-powerline

# Install Patched Font
if [ ! -d "$HOME/.fonts" ]; then
    mkdir "$HOME/.fonts"
fi
sudo cp -a fonts/. "$HOME/.fonts/"
fc-cache -vf "$HOME/.fonts/"
