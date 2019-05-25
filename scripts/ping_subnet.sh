#!/bin/bash

echo "*** Full Subnet Ping ***"

for octet3 in {0..255}
    do
    for octet4 in {0..255}
        do
            ping "10.11.$octet3.$octet4" -c 1
        done
    done