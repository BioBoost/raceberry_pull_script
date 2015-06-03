#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    echo "Usage: ./pull.sh [RACEBERRY1 | RACEBERRY2 | ...]"
    exit -1
fi

echo "Pulling files from student $1"

scp student@$1.local:/home/student/raceberry-pi/app.js /var/nodejs/raceberry-pi
scp student@$1.local:/home/student/raceberry-pi/app/settings.js /var/nodejs/raceberry-pi/app
