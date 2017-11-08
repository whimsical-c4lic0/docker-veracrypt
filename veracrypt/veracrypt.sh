#!/usr/bin/with-contenv sh

set -e # Exit immediately if a command exits with a non-zero status.
set -u # Treat unset variables as an error.

# Make sure required directories exist.
mkdir -p "$XDG_CONFIG_HOME/VeraCrypt"
mkdir -p "$XDG_DATA_HOME"

# Install default config if needed.
if [ ! -f "$XDG_CONFIG_HOME/VeraCrypt/Configuration.xml" ]
then
  cp -v /defaults/Configuration.xml "$XDG_CONFIG_HOME/VeraCrypt"
fi

#Add the user to the sudo group
adduser $USER_ID sudo

# Adjust ownership of /config.
chown -R $USER_ID:$GROUP_ID /config
# Adjust ownership of /disks
chown -R $USER_ID:$GROUP_ID /mnt/disks