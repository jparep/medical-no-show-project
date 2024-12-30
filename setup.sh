#!/bin/bash

echo "Starting Docker containers..."
docker-compose up -d

echo "Waiting for PostgreSQL to initialize..."
sleep 10

echo "Executing database initialization script..."
docker exec -i postgres-db psql -U ${POSTGRES_USER} -f /path/to/create_database.sql

echo "Setup complete!"
