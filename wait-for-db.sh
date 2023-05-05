#!/bin/sh
set -e

pg_isready -h db
while ! pg_isready -h db > /dev/null 2> /dev/null; do
  echo "Connecting to db Failed"
  sleep 1
done
echo "Connected to db"
exit 0
