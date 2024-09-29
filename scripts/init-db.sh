#!/bin/bash

# Initialize the database with test tables and data
set -e

# Run initialization SQL scripts
PGPASSWORD=$POSTGRES_PASSWORD psql -h localhost -U "$POSTGRES_USER" -d "$POSTGRES_DB" -f sql/init.sql
PGPASSWORD=$POSTGRES_PASSWORD psql -h localhost -U "$POSTGRES_USER" -d "$POSTGRES_DB" -f sql/test_data.sql
