#!/usr/bin/env bash

echo "=== Republic Node Toolkit: System Check ==="
echo

echo "Hostname:"
hostname
echo

echo "User:"
whoami
echo

echo "Uptime:"
uptime -p
echo

echo "Memory:"
free -h
echo

echo "Disk Usage:"
df -h /
echo
