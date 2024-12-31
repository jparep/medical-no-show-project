# Use the official PostgreSQL image as the base image
FROM postgres:17

# Set the maintainer information (for documentation purposes)
LABEL maintainer="parepson@gmail.com"

# Copy initialization scripts to the Docker entrypoint directory
# These scripts (e.g., schema.sql, data.sql) will execute when the container is first started
COPY ./docker/pg-init-scripts/ /docker-entrypoint-initdb.d/

# Optional: Install additional PostgreSQL extensions or tools (e.g., PostGIS)
# Uncomment if needed
# RUN apt-get update && apt-get install -y postgresql-<extension_name> && rm -rf /var/lib/apt/lists/*

# Set default environment variables (these can be overridden by docker-compose.yml or .env)
ENV POSTGRES_USER=${POSTGRES_USER:-default_user} \
    POSTGRES_PASSWORD=${POSTGRES_PASSWORD:-default_password} \
    POSTGRES_DB=${POSTGRES_DB:-default_db}

# Expose the PostgreSQL port (5432 is the default)
EXPOSE 5432

# Healthcheck to ensure PostgreSQL is up and running
HEALTHCHECK --interval=10s --timeout=5s --retries=5 \
  CMD pg_isready -U $POSTGRES_USER || exit 1

# Use the default PostgreSQL entrypoint
ENTRYPOINT ["docker-entrypoint.sh"]

# Start the PostgreSQL server
CMD ["postgres"]
