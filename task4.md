#!/bin/bash

URL="$1"

if curl -s --head --fail "$URL" > /dev/null; then
    echo "Ресурс $URL доступен"
    exit 0
else
    echo "Ресурс $URL недоступен"
    exit 1
fi
