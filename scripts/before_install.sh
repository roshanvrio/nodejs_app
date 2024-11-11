#!/bin/bash

# Log start of BeforeInstall
echo 'Running before_install.sh' >> /home/ec2-user/nodejs_app/deploy.log

# Set the HOME variable for PM2 to work correctly
export HOME=/home/ec2-user
echo 'Set HOME environment variable for PM2' >> /home/ec2-user/nodejs_app/deploy.log

# Navigate to the application directory
echo 'Changing directory to /home/ec2-user/nodejs_app' >> /home/ec2-user/nodejs_app/deploy.log
cd /home/ec2-user/nodejs_app || { echo "Directory not found: /home/ec2-user/nodejs_app" >> /home/ec2-user/nodejs_app/deploy.log; exit 1; }

# Stop any running node.js processes if necessary
echo 'Stopping existing node.js processes (if any)' >> /home/ec2-user/nodejs_app/deploy.log
pm2 stop all >> /home/ec2-user/nodejs_app/deploy.log 2>&1 || echo "No PM2 processes running" >> /home/ec2-user/nodejs_app/deploy.log

# Log completion of BeforeInstall
echo 'Completed before_install.sh' >> /home/ec2-user/nodejs_app/deploy.log
