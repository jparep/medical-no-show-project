# Use the official PostgreSQL 17 image as the base
FROM postgres:17

# Maintainer information for documentation purposes
LABEL maintainer="parepson@gmail.com"

# Copy SQL scripts to the Docker initialization directory
# These scripts will execute on the first database initialization
COPY ./docker/pg-init-scripts/ /docker-entrypoint-initdb.d/

# Set default environment variables
# These can be overridden by the environment variables passed via Docker Compose
ENV POSTGRES_USER=${POSTGRES_USER:-default_user} \
    POSTGRES_PASSWORD=${POSTGRES_PASSWORD:-default_password} \
    POSTGRES_DB=${POSTGRES_DB:-default_db}

# Expose the default PostgreSQL port for external connections
EXPOSE 5432

# Add a health check to ensure PostgreSQL is ready
HEALTHCHECK --interval=10s --timeout=5s --retries=5 \
  CMD pg_isready -U $POSTGRES_USER -d $POSTGRES_DB || echo "Healthcheck failed!" && exit 1

# Use the default PostgreSQL entrypoint script
ENTRYPOINT ["docker-entrypoint.sh"]

# Start the PostgreSQL server
CMD ["postgres"]
