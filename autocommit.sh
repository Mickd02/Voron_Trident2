#!/bin/bash
set -e

cd /home/biqu/printer_data/config || exit 1

git add -A

if git diff --cached --quiet; then
    echo "No configuration changes to backup."
    exit 0
fi

git commit -m "Trident 2 backup $(date '+%Y-%m-%d %H:%M:%S')"

git push origin main

echo "GitHub backup completed successfully."
