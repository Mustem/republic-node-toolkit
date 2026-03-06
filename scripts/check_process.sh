#!/usr/bin/env bash

if [ -z "$1" ]; then
  echo "Usage: bash scripts/check_process.sh <process_name>"
  exit 1
fi

PROCESS_NAME="$1"

echo "=== Republic Node Toolkit: Process Check ==="
echo
echo "Looking for process: $PROCESS_NAME"
echo

ps aux | grep "$PROCESS_NAME" | grep -v grep
