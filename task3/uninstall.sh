#!/usr/bin/env bash


sudo systemctl stop "$TASK3_TIMER_NAME"
sudo systemctl disable "$TASK3_TIMER_NAME"


[ -f /etc/systemd/system/$TASK3_SERVICE_NAME ] && sudo rm /etc/systemd/system/$TASK3_SERVICE_NAME
[ -f /etc/systemd/system/$TASK3_TIMER_NAME ] && sudo rm /etc/systemd/system/$TASK3_TIMER_NAME


sudo systemctl daemon-reload


sudo rm -rf "$TASK3_DIR"

unset TASK3_SCRIPT_NAME
unset TASK3_SERVICE_NAME
unset TASK3_TIMER_NAME
unset TASK3_DIR
unset TASK3_LOG_FILE
