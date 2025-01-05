# Migration MSSQL to PostgreSQL
Набор ПО для миграции с MS SQL Server на PostgreSQL с помощью pgloader.

## Требования
- Docker: не ниже 27.4.0, build bde2b89
- Система:
    - RAM: 8 гб.

## Состав набора
- Portainer-ce: 2.25.1
- PostgreSQL: 17.2
- pgAdmin4: 8.14
- MSSQL Server: 2019-latest
- pgloader
- Database examples

### Примеры баз данных Northwind и pubs для Microsoft SQL Server.
В папке `src/example` содержатся сценарии для создания и загрузки примеров баз данных Northwind (instnwnd.sql) и pubs (instpubs.sql).
Первоначально эти сценарии были созданы для SQL Server 2000.

Чтобы запустить этот пример, вам нужен инструмент, который может запускать скрипты Transact-SQL. Вы можете запускать скрипты с помощью следующих инструментов:
- **SQL Server Management Studio (SSMS)**. Чтобы загрузить SSMS, перейдите по ссылке [Download SQL Server Management Studio (SSMS)](https://docs.microsoft.com/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-2017).
- **SQL Server Data Tools (SSDT)** или Visual Studio. Чтобы загрузить SSDT или включить его функции в Visual Studio, перейдите по ссылке [Download and install SQL Server Data Tools (SSDT) for Visual Studio](https://docs.microsoft.com/sql/ssdt/download-sql-server-data-tools-ssdt?view=sql-server-2017).

#### Запуск скриптов в SSMS
1. Откройте SSMS.
2. Подключитесь к целевому SQL Server.
3. Откройте скрипт в новом окне запроса.
4. Запустите скрипт.

#### Запуск скриптов в  SSDT или Visual Studio
1. Откройте SSDT или Visual Studio.
2. Откройте обозреватель объектов SQL Server.
3. Подключитесь к целевому SQL Server.
4. Откройте скрипт в новом окне запроса.
5. Запустите скрипт.

Источник: [Northwind and pubs sample databases for Microsoft SQL Server](https://github.com/Microsoft/sql-server-samples/tree/master/samples/databases/northwind-pubs)

## Установка и настройка
1. Клонировать репозитрий
```bash
git clone https://github.com/asplekhanov/migration-mssql-to-postgresql.git
```
2. Создать тома:
```bash
docker volume create --name Portainer-ce
```
```bash
docker volume create --name PostgreSQL
```
```bash
docker volume create --name pgAdmin4
```
```bash
docker volume create --name MSSQL-System
```
```bash
docker volume create --name MSSQL-Users
```
3. Запустить контейнеры:
```bash
docker-compose up
```

## Проведение миграции
1. Скопировать целевую базу в контейнер MSSQL-Server: [Копирование баз данных на другие серверы / Microsoft Learn](https://learn.microsoft.com/ru-ru/sql/relational-databases/databases/copy-databases-to-other-servers?view=sql-server-ver16)
    - логин: sa
    - пароль: Z5sC_osou

2. Создать базу данных в PostgreSQL:
    - через pgAdmin4: [localhost:80](http://localhost:80)
        - логин: admin@domain.ru
        - пароль: REwA3mD9_

3. Запустить скрипт pgloader:
```bash
pgloader mssql://sa:Z5sC_osou@msdb/master pgsql://postgres:Y6_kgk2Us@pgdb/postgres
```