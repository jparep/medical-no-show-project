# Use the official PostgreSQL image as the base image
FROM postgres:15

# Set the maintainer (optional, for documentation purposes)
LABEL maintainer="your_email@example.com"

# Copy initialization scripts to the Docker entrypoint directory
# These scripts will automatically execute when the PostgreSQL container starts
COPY ./docker/pg-init-scripts/ /docker-entrypoint-initdb.d/

# Optional: Install additional PostgreSQL extensions or tools (e.g., PostGIS)
# RUN apt-get update && apt-get install -y postgresql-<extension_name> && rm -rf /var/lib/apt/lists/*

# Set the default environment variables (can be overridden by docker-compose.yml or .env)
ENV POSTGRES_USER=default_user \
    POSTGRES_PASSWORD=default_password \
    POSTGRES_DB=default_db

# Expose the default PostgreSQL port
EXPOSE 5432

# Use the default PostgreSQL entrypoint
ENTRYPOINT ["docker-entrypoint.sh"]

# Start PostgreSQL server
CMD ["postgres"]
