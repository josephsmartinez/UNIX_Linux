# ALL SQL

How to Change Default MySQL/MariaDB Port in Linux
https://www.tecmint.com/change-default-mysql-mariadb-port-in-linux/


## Useful Commands

Memory Size of Databases in MB
```sql
SELECT table_schema "DB Name",
        ROUND(SUM(data_length + index_length) / 1024 / 1024, 1) "DB Size in MB"
FROM information_schema.tables
GROUP BY table_schema;
```
[Memory Size of Databases](https://stackoverflow.com/questions/1733507/how-to-get-size-of-mysql-database/1733523#1733523)
