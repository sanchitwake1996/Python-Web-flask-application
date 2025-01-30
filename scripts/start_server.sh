#!/bin/bash
echo "Starting Flask app..."
cd /home/ubuntu/flask-app
nohup python3 app.py > app.log 2>&1 &
