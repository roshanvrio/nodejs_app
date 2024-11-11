#!/bin/bash
# Set permissions for all files in the app directory
chown -R ec2-user:ec2-user /home/ec2-user/nodejs_app
chmod -R 755 /home/ec2-user/nodejs_app
