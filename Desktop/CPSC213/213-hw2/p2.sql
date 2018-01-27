/*
  List the ten romance movies with the highest budget.

  Assuming your database is at `$DATABASE`, you should run this script
  something like

  ```
  sqlite3 $DATABASE <p2.sql
  ```

  Your output should look something like the following:

  ```
  Troy|185000000
  Waterworld|175000000
  Master and Commander: The Far Side of the World|150000000
  Pearl Harbor|135250000
  Kingdom of Heaven|130000000
  Day After Tomorrow, The|125000000
  Hulk|120000000
  Perfect Storm, The|120000000
  Windtalkers|115000000
  Patriot, The|110000000
  ```

  That is, it should be ten lines, each containing a movie a its budget.
  They should be in descending order by budget. There should be ten lines.

  Your SQL query to produce this answer goes below this comment,
  which ends on the following line.
*/

SELECT title, budget FROM movies WHERE romance=1 ORDER BY budget DESC limit 10;
