#!/bin/bash
docker exec -i postgres-db psql -U $POSTGRES_USER -d $POSTGRES_DB -f /path/to/database/queries/queries.sql
