#!/bin/sh
set -e
set -u

action=$1
shift

[ "$action" = "usage" ] && {
  echo "  Work list: list with context @work"
  curcmd=$(basename "$0")
  echo "    $curcmd ITEM"
  exit
}

"$TODO_FULL_SH" "list" "@work"
