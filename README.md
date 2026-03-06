# republic-node-toolkit

A small toolkit for node operators using WSL, Bash, and simple monitoring utilities.

## Features

- Basic system information check
- Disk usage check
- Quick command line workflow
- Simple structure for future node/operator scripts
- WSL-friendly setup

## Project Structure

- scripts/ -> utility scripts
- docs/ -> usage notes
- examples/ -> sample outputs

## Current Scripts

### check_system.sh
Shows:
- hostname
- current user
- uptime
- memory usage
- disk usage

### check_disk.sh
Shows:
- filesystem usage
- directory sizes in current path

## Usage

Run:
bash scripts/check_system.sh
bash scripts/check_disk.sh

## Roadmap

- Add process checker
- Add health report script
- Add log watcher helpers
- Add restart helper
