#! /bin/bash

# Test database connection and basic operations
set -e

# Test connection
docker exec -it postgres_db psql -h localhost -U "$POSTGRES_USER" -d "$POSTGRES_DB" -c '\l'
docker exec -it postgres_db psql -U "$POSTGRES_USER" -d postgres -c "SELECT * from test_table;"
docker exec -it postgres_db psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -c "SELECT 1;"

# Run integration tests
python tests/integration_tests.py
