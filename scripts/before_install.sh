#!/bin/bash

# Log the start of the before_install process
echo 'Running before_install.sh: ' >> /home/ec2-user/nodejs_app/deploy.log

# Navigate to the application directory
echo 'Changing directory to /home/ec2-user/nodejs_app' >> /home/ec2-user/nodejs_app/deploy.log
cd /home/ec2-user/nodejs_app || { echo "Directory not found: /home/ec2-user/nodejs_app" >> /home/ec2-user/nodejs_app/deploy.log; exit 1; }

# Stop any running node.js processes if necessary
echo 'Stopping existing node.js processes (if any)' >> /home/ec2-user/nodejs_app/deploy.log
pm2 stop all >> /home/ec2-user/nodejs_app/deploy.log

# Remove old node_modules (optional)
echo 'Removing old node_modules directory' >> /home/ec2-user/nodejs_app/deploy.log
rm -rf node_modules >> /home/ec2-user/nodejs_app/deploy.log

# Check if npm is installed, if not, install it
echo 'Checking if npm is installed' >> /home/ec2-user/nodejs_app/deploy.log
if ! command -v npm &> /dev/null
then
    echo "npm could not be found, installing npm..." >> /home/ec2-user/nodejs_app/deploy.log
    sudo yum install -y npm >> /home/ec2-user/nodejs_app/deploy.log
else
    echo "npm is already installed" >> /home/ec2-user/nodejs_app/deploy.log
fi

# Log completion of before_install
echo 'Completed before_install.sh' >> /home/ec2-user/nodejs_app/deploy.log
