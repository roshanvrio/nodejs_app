#!/bin/bash
# Start the Node.js application with pm2
cd /home/ec2-user/nodejs_app
pm2 start app.js --name "nodejs_app"
