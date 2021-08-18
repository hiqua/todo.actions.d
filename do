#!/bin/sh
set -e
set -u

action=$1
shift

[ "$action" = "usage" ] && {
  echo "  Do and echo time"
  curcmd=$(basename "$0")
  echo "    $curcmd ITEM"
  echo ""
  exit
}

item="$1"

date
"$TODO_FULL_SH" command "do" "$item"
