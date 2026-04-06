# MySQL — Docker Cheatsheet

## First Time Setup
```bash
docker run --name mysql-dev -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 -d mysql:8
```

## Daily Usage
```bash
# Start
docker start mysql-dev

# Stop
docker stop mysql-dev

# Check status
docker ps -a
```

## Connection Details
| Field    | Value     |
|----------|-----------|
| Host     | localhost |
| Port     | 3306      |
| User     | root      |
| Password | root      |

## Notes
- Only use `docker run` once — it creates the container
- Every subsequent session use `docker start` / `docker stop`
- Default database name is `mysql`