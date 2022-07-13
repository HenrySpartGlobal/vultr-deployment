#!/bin/bash
set -e

sudo apt-get update -y

echo '###### Installing Git #######'
sudo apt-get install git -y

echo '###### Installing pip ######'
sudo apt-get install python3-pip -y

echo '###### Installing Discord Ext Menus ######'
pip install -U git+https://github.com/Rapptz/discord-ext-menus

echo '###### Installing Ap Scheduler ######'
pip install apscheduler

echo '###### Installing Discord.py ######'
pip install discord.py

echo '###### Installing Tmux ######'
sudo apt-get install tmux -y

echo '###### Copying Public Key to authorized_keys ######'
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC3K5HBsqtLMLIqwSnC2pkjKm4mJhR+kQT6TlOX20BFtNz1UkKrJkFukvq+voW3FJF6nnXYiK6ZXKW0WKliudq2gS+JkBieajbIoAJoF+aPYXVA0z3ORSu5gmYdVXxmDni0Pzu3NQbqvfrpCVtf2JERKvReipBOsWMt2nDpQodBbC/Hz5wtDjmbhHd5AbUfGq+mI2xxXTypEwldH3VAcHHv3RBJTI1XiF7WGGHOUWI/4KrvrQus8QedTmxgo0LrrOpsIh54jAHKTHhsxLw5Ww6d8yqKhRiW/i+Qg8f+WZ4ONd/94Arx4mbOdHngGoS4wsG349WEYJRq3o7Zy5q5Y6RtVmbavsFA3vK03uCxQNBBjfbR7q190uBLr2Pd/Yc4eaAAncBmX+JGpdq9V7STLgAp9bp7c6TysIGjrk2eVj9zvbaWuf0sU92VfxmoIpvp90pho0V7kD8Njda2MHV0WHfGHFhtnHN2zYK7w0iE/dJI/5scwc5hQbepaA6Z4gchIDs= Henry.koleoso@kensalfss-MacBook-Pro.local" >> /root/.ssh/authorized_keys