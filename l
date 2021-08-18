#!/bin/sh
set -e
set -u

action=$1
shift

[ "$action" = "usage" ] && {
  echo "  List all items"
  curcmd=$(basename "$0")
  echo "    $curcmd ITEM"
  exit
}

"$TODO_FULL_SH" "list" "$*"
