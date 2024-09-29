#! /bin/bash

docker exec -it postgres_db psql -U $POSTGRES_USER -d postgres -c "SELECT * from test_table;"

docker exec -it postgres_db psql -U $POSTGRES_USER -d $POSTGRES_DB -c "SELECT 1;"