#!/usr/bin/bash

# Well I Hope this works

# Ensure the /etc/asterisk/local directory exists
if [ ! -d "/etc/asterisk/local" ]; then
    echo "Creating /etc/asterisk/local directory..."
    sudo mkdir -p /etc/asterisk/local
fi

# Prompt user for their node number
read -p "Enter your AllStarLink node number: " NODE_NUMBER

# Create the condis.sh script file with the specified contents
COND_SCRIPT="/etc/asterisk/local/condis.sh"
echo "Creating $COND_SCRIPT..."
sudo bash -c "cat > $COND_SCRIPT" <<EOL
#! /usr/bin/bash

/usr/sbin/asterisk -rx "rpt fun $NODE_NUMBER \$1"
EOL

# Make the script executable
echo "Making $COND_SCRIPT executable..."
sudo chmod +x "$COND_SCRIPT"

echo "Script $COND_SCRIPT created and is now executable."
