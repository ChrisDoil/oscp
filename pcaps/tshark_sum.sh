#!/bin/bash

if [ -z "$1"]; then
    echo "[!] Please provide a filename [!]"
    exit 0
fi

tshark -r $1 -z io,stat,0,"SUM(frame.len)frame.len"