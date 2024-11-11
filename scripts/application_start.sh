#!/bin/bash
# Start the application with pm2
pm2 start /home/ec2-user/nodejs_app/app.js --name "my-app"
