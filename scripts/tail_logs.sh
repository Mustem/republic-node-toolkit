#!/usr/bin/env bash

LOG_FILE="${1:-/var/log/syslog}"
LINES="${2:-30}"

if [ ! -f "$LOG_FILE" ]; then
  echo "Log file not found: $LOG_FILE"
  echo "Usage: bash scripts/tail_logs.sh <log_file> <lines>"
  exit 1
fi

echo "=== Republic Node Toolkit: Tail Logs ==="
echo
echo "Log file: $LOG_FILE"
echo "Lines: $LINES"
echo

tail -n "$LINES" "$LOG_FILE"
