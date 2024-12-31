# Use the official PostgreSQL image as the base image
FROM postgres:17

# Set the maintainer information
LABEL maintainer="parepson@gmail.com"

# Copy initialization scripts to the Docker entrypoint directory
COPY ./docker/pg-init-scripts/ /docker-entrypoint-initdb.d/

# Set default environment variables
ENV POSTGRES_USER=${POSTGRES_USER:-default_user} \
    POSTGRES_PASSWORD=${POSTGRES_PASSWORD:-default_password} \
    POSTGRES_DB=${POSTGRES_DB:-default_db}

# Expose the PostgreSQL port
EXPOSE 5432

# Add a health check
HEALTHCHECK --interval=10s --timeout=5s --retries=5 \
  CMD pg_isready -U $POSTGRES_USER -d $POSTGRES_DB || exit 1

# Use the default PostgreSQL entrypoint
ENTRYPOINT ["docker-entrypoint.sh"]

# Start the PostgreSQL server
CMD ["postgres"]
