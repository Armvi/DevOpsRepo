#!/usr/bin/env bash

TASK3_DIR="/opt/app"
TASK3_LOG_FILE="log.txt"

TASK3_SCRIPT_NAME="write_random_string.sh"
TASK3_SERVICE_NAME="write_random_string.service"
TASK3_TIMER_NAME="write_random_string.timer"

sudo systemctl stop "$TASK3_TIMER_NAME"
sudo systemctl disable "$TASK3_TIMER_NAME"


[ -f /etc/systemd/system/$TASK3_SERVICE_NAME ] && sudo rm /etc/systemd/system/$TASK3_SERVICE_NAME
[ -f /etc/systemd/system/$TASK3_TIMER_NAME ] && sudo rm /etc/systemd/system/$TASK3_TIMER_NAME


sudo systemctl daemon-reload


sudo rm -rf "$TASK3_DIR"
