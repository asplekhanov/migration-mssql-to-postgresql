#  Миграция с помощью pgLoader
1. Скопировать целевую базу в контейнер MSSQL-Server: [Копирование баз данных на другие серверы / Microsoft Learn](https://learn.microsoft.com/ru-ru/sql/relational-databases/databases/copy-databases-to-other-servers?view=sql-server-ver16)

2. Создать базу данных в PostgreSQL:
    - через pgAdmin4: [localhost:80](http://localhost:80)

3. Запустить скрипт pgloader:
```bash
pgloader mssql://sa:Z5sC_osou@msdb/master pgsql://postgres:Y6_kgk2Us@pgdb/postgres
```

pgloader mssql://sa:Z5sC_osou@msdb/northwind pgsql://postgres:Y6_kgk2Us@pgdb/northwind

```bash
docker run --rm -it dimitri/pgloader:latest pgloader mssql://sa:Z5sC_osou@msdb/northwind pgsql://postgres:Y6_kgk2Us@pgdb/northwind
```
```bash
docker run --rm -it dimitri/pgloader:ccl.latest pgloader mssql://sa:Z5sC_osou@msdb/Northwind pgsql://postgres:Y6_kgk2Us@pgdb/Northwind
```