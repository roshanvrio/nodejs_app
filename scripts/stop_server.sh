#!/bin/bash
# Stop the application managed by pm2
pm2 stop all || true
pm2 delete all || true
