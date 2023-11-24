#!/bin/bash

# Fail on any error, print all commands, and fail on undefined variables or pipe failures.
set -euxo pipefail

# Execute the scripts
sh ./install_powerline.sh
sh ./install_terminal.sh
sh ./install_profile.sh
