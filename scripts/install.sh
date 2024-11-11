#!/bin/bash

# Log the start of npm install
echo 'Running npm install to install dependencies' >> /home/ec2-user/nodejs_app/deploy.log

# Navigate to the application directory
cd /home/ec2-user/nodejs_app || { echo "Directory not found: /home/ec2-user/nodejs_app" >> /home/ec2-user/nodejs_app/deploy.log; exit 1; }

# Install the Node.js dependencies using npm
npm install >> /home/ec2-user/nodejs_app/deploy.log 2>&1

# Log the completion of npm install
echo 'Completed npm install' >> /home/ec2-user/nodejs_app/deploy.log
