#!/bin/bash

# Log the start of the ApplicationStart process
echo 'Running start_app.sh: ' >> /home/ec2-user/nodejs_app/deploy.log

# Navigate to the application directory
echo 'Changing directory to /home/ec2-user/nodejs_app' >> /home/ec2-user/nodejs_app/deploy.log
cd /home/ec2-user/nodejs_app || { echo "Directory not found: /home/ec2-user/nodejs_app" >> /home/ec2-user/nodejs_app/deploy.log; exit 1; }

# Start the Node.js application using pm2 (or another process manager)
echo 'Starting the Node.js application with pm2' >> /home/ec2-user/nodejs_app/deploy.log
pm2 start app.js --name nodejs_app >> /home/ec2-user/nodejs_app/deploy.log

# Log the completion of the ApplicationStart phase
echo 'Completed start_app.sh' >> /home/ec2-user/nodejs_app/deploy.log
