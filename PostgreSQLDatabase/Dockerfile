# Use the official PostgreSQL image from the Docker Hub
FROM postgres:15

# Add custom configuration, initialization, and seed scripts
COPY schema.sql /docker-entrypoint-initdb.d/01-schema.sql
COPY seed.sql /docker-entrypoint-initdb.d/02-seed.sql

# Ensure scripts are executable (not strictly required for .sql, but good for shell scripts)
COPY setup.sh /docker-entrypoint-initdb.d/03-setup.sh
RUN chmod +x /docker-entrypoint-initdb.d/03-setup.sh

# Expose PostgreSQL port
EXPOSE 5432
