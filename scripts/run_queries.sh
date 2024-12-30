#!/bin/bash
if [ -z "$1" ]; then
  echo "Usage: ./run_queries.sh <path_to_sql_file>"
  exit 1
fi

docker exec -i postgres-db psql -U ${POSTGRES_USER} -d ${POSTGRES_DB} -f "$1"
