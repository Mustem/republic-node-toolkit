#!/usr/bin/env bash

echo "=== Republic Node Toolkit: Disk Check ==="
echo
df -h
echo
echo "Largest directories in current path:"
du -sh ./* 2>/dev/null | sort -h
