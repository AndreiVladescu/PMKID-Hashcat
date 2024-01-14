#!/bin/bash
echo "Stopping the script after 10 minutes"
sleep 5
timeout 10m sudo hcxdumptool -F -w dump.pcap
hcxdumptool -E essidlist -I identitylist -u output.22000 dumpfile.pcap
hashcat 