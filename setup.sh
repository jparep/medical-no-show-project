#!/bin/bash
echo "Starting setup..."
docker-compose up -d --build

echo "Waiting for database to be ready..."
sleep 10

echo "Running initialization scripts..."
docker exec -i postgres-db psql -U $POSTGRES_USER -d $POSTGRES_DB -f /docker-entrypoint-initdb.d/schema.sql
docker exec -i postgres-db psql -U $POSTGRES_USER -d $POSTGRES_DB -f /docker-entrypoint-initdb.d/load-data.sql

echo "Setup complete."
