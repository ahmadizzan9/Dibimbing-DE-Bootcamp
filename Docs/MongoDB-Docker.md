# MongoDB — Docker Cheatsheet

## First Time Setup
```bash
docker run --name mongo-dev -e MONGO_INITDB_ROOT_USERNAME=root -e MONGO_INITDB_ROOT_PASSWORD=root -p 27017:27017 -d mongo
```

## Daily Usage
```bash
# Start
docker start mongo-dev

# Stop
docker stop mongo-dev

# Check status
docker ps -a
```

## Connection Details
| Field          | Value                              |
|----------------|------------------------------------|
| Host           | localhost                          |
| Port           | 27017                              |
| User           | root                               |
| Password       | root                               |
| Connection URI | mongodb://root:root@localhost:27017 |

## Notes
- Only use `docker run` once — it creates the container
- Every subsequent session use `docker start` / `docker stop`