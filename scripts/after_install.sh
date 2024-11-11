#!/bin/bash

# Log the start of the after_install process
echo 'Running after_install.sh: ' >> /home/ec2-user/nodejs_app/deploy.log

# Navigate to the application directory
echo 'Changing directory to /home/ec2-user/nodejs_app' >> /home/ec2-user/nodejs_app/deploy.log
cd /home/ec2-user/nodejs_app || { echo "Directory not found: /home/ec2-user/nodejs_app" >> /home/ec2-user/nodejs_app/deploy.log; exit 1; }

# Optionally, set environment variables (if any)
echo 'Setting environment variables' >> /home/ec2-user/nodejs_app/deploy.log
export NODE_ENV=production
export APP_PORT=3000

# Run database migrations if needed (example)
echo 'Running database migrations' >> /home/ec2-user/nodejs_app/deploy.log
# npm run migrate >> /home/ec2-user/nodejs_app/deploy.log

# Start the Node.js app (use pm2, forever, or other process manager)
echo 'Starting the Node.js application using pm2' >> /home/ec2-user/nodejs_app/deploy.log
pm2 start app.js --name nodejs_app >> /home/ec2-user/nodejs_app/deploy.log

# Log the completion of the after_install phase
echo 'Completed after_install.sh' >> /home/ec2-user/nodejs_app/deploy.log
