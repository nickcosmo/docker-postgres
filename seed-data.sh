#!/bin/bash
set -x

echo "Seeding data"
psql -h 127.0.0.1 -d tenant-database -U api-user -f /sql-dump.sql

echo "done"

exit 0