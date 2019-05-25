import os

print("*** Ping Sweep - Python - Subnet ***")

for octet3 in range(0, 255):
    for octet4 in range(0, 255):
        os.system("ping -c 1 %s" % "10.11.%s.%s" % (octet3, octet4))