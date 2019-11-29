#!/bin/bash
# Delete default docker bridge, so that docker can start with flannel network.

# exit on any error
set -e

rc=0
ip link show docker0 >/dev/null 2>&1 || rc="$?"
if [[ "$rc" -eq "0" ]]; then
  ip link set dev docker0 down
  ip link delete docker0
fi
