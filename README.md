# Migration MSSQL to PostgreSQL
Набор ПО для миграции с MS SQL Server на PostgreSQL.

## Требования
- Docker: не ниже 27.4.0, build bde2b89
- Docker Compose: не ниже v2.31.0
- Система:
    - RAM: 8 гб.

## Состав набора
- Portainer-ce: 2.25.1
- PostgreSQL: 17.2
- pgAdmin4: 8.14
- MSSQL Server: 2019-latest
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
docker volume create --name PostgreSQL
docker volume create --name pgAdmin4
docker volume create --name MSSQL-System
docker volume create --name MSSQL-Users
```
3. Запустить контейнеры:
```bash
docker-compose up
```

| Продукт         | Логин           | Пароль    |
|-----------------|-----------------|-----------|
| PostgreSQL      | postgres        | Y6_kgk2Us |
| pgAdmin4        | admin@domain.ru | REwA3mD9_ |
| MS SQL Server   | sa              | Z5sC_osou |

## Проведение миграции
- [Миграция с помощью SQL Server Management Studio (SSMS)](Migration-ssms.md)
- [Миграция с помощью pgLoader](Migration-pgloader.md)