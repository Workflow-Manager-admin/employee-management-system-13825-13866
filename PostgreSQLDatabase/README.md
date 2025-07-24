# PostgreSQL Database Container for Employee Management System

This container provisions a PostgreSQL database for the Employee Management System.

## Features
- Pre-loads users, employees, attendance, leaves, payroll, and roles tables
- Initializes with default HR/admin roles and a sample employee

## Usage

### Build and start using Docker Compose
```sh
docker-compose up --build
```

### Database Connection Information
- Host: `localhost` (or `postgres` for Docker-internal network)
- Port: `5432`
- Database: `emsdb`
- User: `emsuser`
- Password: `emspassword`

### Customization
- Modify `schema.sql` to adjust the data model.
- Use `seed.sql` to pre-populate tables.
- Use `setup.sh` for advanced database setup (extensions, maintenance, etc).

## Environment Variables
- `POSTGRES_USER`
- `POSTGRES_PASSWORD`
- `POSTGRES_DB`

These are set in `docker-compose.yml`. Change them as needed.
