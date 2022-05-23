#!/bin/bash

if [[ $# -lt 1 ]]; then
  echo "
  Usage: $0 <battery name>
"
  exit
fi

NAME=${1:-"BAT0"}

BASE_PATH="/sys/class/power_supply/$NAME/"

[[ -a /etc/default/battery_log ]] && source /etc/default/battery_log

DATABASE_DIR=${DATABASE_DIR:-/var/lib}/battery_log

[[ -d ${DATABASE_DIR} ]] || mkdir $DATABASE_DIR

charge_now=$(cat $BASE_PATH"charge_now")
charge_full=$(cat $BASE_PATH"charge_full")

echo $(date "+%s") $charge_now $charge_full >> ${DATABASE_DIR}/history

