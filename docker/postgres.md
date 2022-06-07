```bash
docker run --name my-postgres -p 5432:5432 -e POSTGRES_PASSWORD=goku123 -e PGDATA=/var/lib/postgresql-static/data -d postgres
```