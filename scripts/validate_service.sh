#!/bin/bash

# Log the start of the ValidateService process
echo 'Running validate_service.sh: ' >> /home/ec2-user/nodejs_app/deploy.log

# Check if the application is running by making a simple HTTP request to the app
echo 'Validating if the Node.js application is running on port 3000' >> /home/ec2-user/nodejs_app/deploy.log
curl --silent --fail http://localhost:3000 || { echo "Application did not respond successfully!" >> /home/ec2-user/nodejs_app/deploy.log; exit 1; }

# Log the completion of the ValidateService phase
echo 'Completed validate_service.sh' >> /home/ec2-user/nodejs_app/deploy.log
