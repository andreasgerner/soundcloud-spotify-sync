#!/bin/zsh

echo "$(date +"%Y-%m-%d %H:%M:%S"): Download triggered!"

scdl -l "$1" --download-archive ./archive.txt -c --no-original
