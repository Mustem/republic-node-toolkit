# republic-node-toolkit

A small toolkit for node operators using WSL, Bash, and simple monitoring utilities.

## Features

- Basic system information check
- Disk usage check
- Simple process check
- Combined node health report
- Quick command line workflow
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

### check_process.sh
Checks whether a process name appears in the current process list.

### node_health_report.sh
Shows a combined quick report:
- hostname
- user
- uptime
- memory
- disk
- top processes snapshot

## Usage

Run:
bash scripts/check_system.sh
bash scripts/check_disk.sh
bash scripts/check_process.sh bash
bash scripts/node_health_report.sh

## Roadmap

- Add log watcher helpers
- Add restart helper
- Add optional node-specific checks
- Add exportable report output
