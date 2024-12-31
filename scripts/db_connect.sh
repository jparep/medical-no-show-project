#!/bin/bash
docker exec -it postgres-db psql -U $POSTGRES_USER -d $POSTGRES_DB
