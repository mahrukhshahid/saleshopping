/*
  Count the number of comedy movies.

  Assuming your database is at `$DATABASE`, you should run this script
  something like

  ```
  sqlite3 $DATABASE <p1.sql
  ```

  Your output should look something like the following:

  ```
  239
  ```

  That is, it should be one line and that line shoudl contain the
  number of comedy movies.

  You will likely want to use the `ORDER BY` clause.

  Your SQL query to produce this answer goes below this comment,
  which ends on the following line.
*/

SELECT COUNT(*) FROM movies WHERE comedy=1;

