# PostgreSQL Database Infrastructure

This repository contains the infrastructure code to set up a PostgreSQL database using Docker. It is designed for flexibility and can be deployed locally or in the cloud.

## Features

- **Dockerized PostgreSQL**: Easy setup and deployment using Docker and Docker Compose.
- **Configurable Storage Options**: Supports local storage, NAS, and other network storage solutions.
- **Environment Variables**: Configuration through `.env` files for different environments.
- **Best Practices**: Follows coding and database best practices for security and maintainability.

## Prerequisites

- **Docker** installed on your machine.
- **Docker Compose** installed.

## Getting Started

### Clone the Repository

```bash
git clone https://github.com/yourusername/postgresql-database-infra.git
cd postgresql-database-infra
```

### Create `.env` Files

Create `.env` files for different environments (e.g., `local.env`, `staging.env`, `production.env`).

### Start the Database

To start the database, run the following commands:

```bash
cd docker
docker-compose up -d
```

This will start the PostgreSQL container in detached mode.

### Access the Database

To access the database, you can use the following command:

```bash
docker exec -it postgres_db bash
```

And to connect to the database, you can use the following command:

```bash
psql -U $POSTGRES_USER -d $POSTGRES_DB
```

### Stop the Database

To stop the database, run the following command:

```bash
docker-compose down
```

This will stop the PostgreSQL container and remove the container.

## PostreSQL

### Commands

- Listing all databases:

```bash
\l
```

- Connecting to a database:

```bash
\c database_name;
```

- Listing all tables:

```bash
\dt
```

- Listing all columns of a table:

```bash
\d table_name;
```

- Quitting the database:

```bash
\q
```
