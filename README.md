<h3>Connect to the database</h3>
1 - `docker compose up`</br>
2 - connect to the database using some gui</br>

```dotenv
POSTGRES_USER=user
POSTGRES_PASSWORD=password
POSTGRES_DB=database
```

<h3>Your tasks to sort out how the SQL-queries work</h3>

```
1. Find all books that has been written in the year 2019 (where)
```

```
2. Find Count of the books that has been written in the year 2019 (where, count)
```

```
3. Find all books that contains "Borman" in the title (where, like)
```

```
4. Find all the book that has been taken by Chris (join, where)
```

```
5. Find an amount of the books that has been taken by every user (join, group by)
```

```
6. Find users that has taken only one book (join, group by, having)
```
