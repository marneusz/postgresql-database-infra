# Use the official lightweight PostgreSQL image
FROM postgres:13-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy custom configuration files
COPY config/postgresql.conf /etc/postgresql/postgresql.conf

# Expose the PostgreSQL port
EXPOSE 5432

# Start PostgreSQL with the custom configuration
CMD ["postgres", "-c", "config_file=/etc/postgresql/postgresql.conf"]