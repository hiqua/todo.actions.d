#!/bin/sh
set -e
set -u

action=$1
shift

[ "$action" = "usage" ] && {
  echo "  Cancel the item: append message and do"
  curcmd=$(basename "$0")
  echo "    $curcmd ITEM \"CANCELLATION MESSAGE\""
  echo ""
  exit
}

item="$1"
shift

REASON="${*:-""}"

DATETAG="$(date +%F_%s)"
cp "$TODO_FILE" "$TODO_GLOBAL"/backups/todo."$DATETAG".txt

sed -i "${item}"' s#$# [CANCELLED]'"$REASON"'#' "$TODO_FILE" && "$TODO_FULL_SH" "do" "$item"
