#/bin/bash



if [ -z "$1" ]; then
echo "[!] Specify a domain [!]"
echo "./zone_transfer.sh <domain>"
exit 0
fi

echo "[*] Zone Transfer Script [*]"

for server in $(host -t ns $1 | cut -d " " -f 4); 
do host -l $1 $server | grep "has address";
done