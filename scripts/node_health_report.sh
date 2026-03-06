#!/usr/bin/env bash

echo "=== Republic Node Toolkit: Node Health Report ==="
echo

echo "[1/5] Hostname"
hostname
echo

echo "[2/5] Current User"
whoami
echo

echo "[3/5] Uptime"
uptime -p
echo

echo "[4/5] Memory"
free -h
echo

echo "[5/5] Disk"
df -h /
echo

echo "=== Process Snapshot ==="
ps aux --sort=-%mem | head -n 10
echo
