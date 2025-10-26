#!/usr/bin/env bash

strLen=$((($RANDOM % 20) + 1))

randomString=

for ((i = 0; i < strLen; i++))
do
rchar=$((($RANDOM % 25) + 65))
randomString+=$(printf "\\$(printf '%03o' "$rchar")")
done

echo "$randomString" >> "$TASK3_DIR/$TASK3_LOG_FILE"

