# Postgres from SQL Dump

## Steps to initialize the Postgres instance with a .sql file
1. Copy the `.sql` file to the root of this repo and call it `sql-dump.sql`
2. Run `docker-compose up`
3. exec into the running container by running `docker exec -it postgres_local sh`
4. run `/bin/bash seed-data.sh`
5. Connect to the postgres instance with the following credentials running on host `127.0.0.1` and port `5432`
  - User: `api-user`
  - Password: `password`
  - Database: `tenant-database`

## Using a new SQL file
Data will be saved in the root of this project in a folder called `postgres-data`. If you wish to use a new sql file, follow these steps.
1. Run `docker-compose down`
2. Delete the `postgres-data` folder the root of this project
3. Delete the current file called `sql-dump.sql` from this directory
3. Repeat the initial steps to initialize the instance