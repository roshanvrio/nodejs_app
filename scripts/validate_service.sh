#!/bin/bash
# Send a request to check if the app is running
curl -f http://localhost:3000 || exit 1
