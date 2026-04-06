# PostgreSQL — Docker Cheatsheet

## First Time Setup
```bash
docker run --name postgres-dev -e POSTGRES_PASSWORD=root -p 5433:5432 -d postgres:latest
```

## Daily Usage
```bash
# Start
docker start postgres-dev

# Stop
docker stop postgres-dev

# Check status
docker ps -a
```

## Connection Details
| Field    | Value     |
|----------|-----------|
| Host     | localhost |
| Port     | 5432      |
| User     | postgres  |
| Password | postgres  |

## Notes
- Only use `docker run` once — it creates the container
- Every subsequent session use `docker start` / `docker stop`
- Default database name is `postgres`