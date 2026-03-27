#!/bin/bash

DATE=$(date)

# gerçekçi activity üret
echo "heartbeat: $DATE" >> activity.log
echo "node-check: $DATE" >> health.log

# git işlemleri
git add .

git commit -m "chore: hourly node health update - $DATE"

git push origin main
