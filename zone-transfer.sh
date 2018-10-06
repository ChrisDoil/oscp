#!/bin/bash

if [ -z "$1" ]; then
echo "[*] Simple Zone Transfer Script [*]"
echo "[*] Usage     : $0 <domain name> "
exit 0
fi

for server in $(host -t ns $1 | cut -d " " -f 4); do
