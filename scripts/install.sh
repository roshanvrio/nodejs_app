#!/bin/bash

# Log the start of the install process
echo 'Running install.sh: ' >> /home/ec2-user/nodejs_app/deploy.log

# Navigate to the application directory
echo 'Changing directory to /home/ec2-user/nodejs_app' >> /home/ec2-user/nodejs_app/deploy.log
cd /home/ec2-user/nodejs_app || { echo "Directory not found: /home/ec2-user/nodejs_app" >> /home/ec2-user/nodejs_app/deploy.log; exit 1; }

# Install the Node.js dependencies using npm
echo 'Running npm install to install dependencies' >> /home/ec2-user/nodejs_app/deploy.log
npm install >> /home/ec2-user/nodejs_app/deploy.log 2>&1

# Log the completion of the install phase
echo 'Completed install.sh' >> /home/ec2-user/nodejs_app/deploy.log
