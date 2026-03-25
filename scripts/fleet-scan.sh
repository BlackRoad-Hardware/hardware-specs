#!/bin/bash
# BlackRoad Fleet Scanner — Live hardware + network status
# Usage: ./scripts/fleet-scan.sh
set -e

PINK='\033[38;5;205m'
GREEN='\033[38;5;82m'
RED='\033[38;5;196m'
AMBER='\033[38;5;214m'
BLUE='\033[38;5;69m'
RESET='\033[0m'

echo -e "${PINK}BlackRoad Fleet Scanner${RESET}"
echo "=================================="
echo ""

# Fleet node definitions (hostnames only — IPs from ssh config/hosts)
declare -A NODES
NODES[alice]="blackroad@alice"
NODES[cecilia]="blackroad@cecilia"
NODES[octavia]="pi@octavia"
NODES[aria]="blackroad@aria"
NODES[lucidia]="blackroad@lucidia"
NODES[gematria]="root@gematria"
NODES[anastasia]="root@anastasia"

echo -e "${BLUE}[1/4] Fleet Status${RESET}"
echo ""
printf "%-12s %-8s %-8s %-40s\n" "NODE" "STATUS" "TEMP" "KERNEL"
echo "------------------------------------------------------------------------"

for node in alice cecilia octavia aria lucidia gematria anastasia; do
  target="${NODES[$node]}"
  result=$(ssh -o ConnectTimeout=5 -o StrictHostKeyChecking=no -o BatchMode=yes "$target" \
    "echo UP; vcgencmd measure_temp 2>/dev/null || echo 'n/a'; uname -r" 2>/dev/null) || result="DOWN"

  if [ "$result" = "DOWN" ]; then
    printf "%-12s ${RED}%-8s${RESET} %-8s %-40s\n" "$node" "DOWN" "—" "—"
  else
    status=$(echo "$result" | sed -n '1p')
    temp=$(echo "$result" | sed -n '2p' | sed 's/temp=//' | sed "s/'C/C/")
    kernel=$(echo "$result" | sed -n '3p')
    printf "%-12s ${GREEN}%-8s${RESET} %-8s %-40s\n" "$node" "$status" "$temp" "$kernel"
  fi
done

echo ""
echo -e "${BLUE}[2/4] USB Devices${RESET}"
echo ""

for node in alice cecilia octavia aria lucidia; do
  target="${NODES[$node]}"
  echo -e "${AMBER}--- $node ---${RESET}"
  ssh -o ConnectTimeout=5 -o StrictHostKeyChecking=no -o BatchMode=yes "$target" \
    "lsusb 2>/dev/null | grep -v 'root hub' || echo '  (no USB devices)'" 2>/dev/null || echo "  (unreachable)"
done

echo ""
echo -e "--- alexandria (local mac) ---"
system_profiler SPUSBDataType 2>/dev/null | grep -E "^\s+(Product|Vendor|Serial)" | head -20 || echo "  (no USB data)"

echo ""
echo -e "${BLUE}[3/4] Storage${RESET}"
echo ""

for node in alice cecilia octavia aria lucidia; do
  target="${NODES[$node]}"
  echo -e "${AMBER}--- $node ---${RESET}"
  ssh -o ConnectTimeout=5 -o StrictHostKeyChecking=no -o BatchMode=yes "$target" \
    "lsblk -o NAME,SIZE,TYPE,MOUNTPOINTS 2>/dev/null || echo '  (unreachable)'" 2>/dev/null || echo "  (unreachable)"
done

echo ""
echo -e "${BLUE}[4/4] Network (ARP/Neighbors)${RESET}"
echo ""

echo -e "${AMBER}--- local (mac) ---${RESET}"
arp -a 2>/dev/null | grep -v incomplete | grep -v 224 | grep -v 239

for node in alice octavia lucidia; do
  target="${NODES[$node]}"
  echo -e "${AMBER}--- $node ---${RESET}"
  ssh -o ConnectTimeout=5 -o StrictHostKeyChecking=no -o BatchMode=yes "$target" \
    "ip neigh 2>/dev/null | grep REACHABLE || echo '  (no reachable neighbors)'" 2>/dev/null || echo "  (unreachable)"
done

echo ""
echo -e "${PINK}Scan complete.${RESET}"
