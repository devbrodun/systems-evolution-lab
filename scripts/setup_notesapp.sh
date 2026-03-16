#!/bin/bash
set -e

echo "Cloning application repository..."
sudo git clone https://github.com/mosesekerin/cloud-system-evolution.git /opt/notesapp
sudo chown -R notesapp:notesapp /opt/notesapp

echo "Installing application dependencies..."
cd /opt/notesapp
sudo -u notesapp npm install --omit=dev

echo "Preparing persistent storage..."
sudo touch /opt/notesapp/notes.json
sudo chown notesapp:notesapp /opt/notesapp/notes.json

echo "Preparing log file..."
sudo touch /var/log/notesapp.log
sudo chown notesapp:notesapp /var/log/notesapp.log