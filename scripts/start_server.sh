#!/bin/bash
echo "Starting Flask App..."

# Kill any existing Flask process
pkill -f "python3 app.py"

# Change to the app directory
cd /home/ubuntu/app

# Activate virtual environment (if applicable)
if [ -f "venv/bin/activate" ]; then
    source venv/bin/activate
fi

# Install dependencies
pip3 install -r requirements.txt

# Start Flask app in the background
nohup python3 app.py > app.log 2>&1 &

echo "Flask App started!"
