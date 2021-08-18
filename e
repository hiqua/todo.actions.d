#!/bin/sh
set -e
set -u

action=$1
shift

[ "$action" = "usage" ] && {
  echo "  Edit the TODO_FILE with $EDITOR"
  curcmd=$(basename "$0")
  echo "    $curcmd"
  exit
}

"$EDITOR" "$TODO_FILE"
