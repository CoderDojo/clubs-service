#!/bin/sh
set -e

while ! pg_isready -h db > /dev/null 2> /dev/null; do
  echo "Waiting for db to be ready"
  sleep 1
done

echo "Connected to db"
exit 0
