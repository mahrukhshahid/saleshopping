/*
  List the ten romance movies that recieved the most reviews.
  (Note: we're not asking for the movies with the highest reviews.)

  Assuming your database is at `$DATABASE`, you should run this script
  something like

  ```
  sqlite3 $DATABASE <p5.sql
  ```

  Your output should look something like the following:

  ```
  Meet the Parents|85
  Space Jam|82
  Sabrina|78
  Little Nicky|77
  Lucky Numbers|71
  Chicago|71
  Big Fish|69
  Hudson Hawk|69
  Daddy Day Care|68
  Thomas Crown Affair, The|67
  ```

  That is, there should be one line per movie and each line should have
  two fields: the movie title and the number of reviews that movie recieved.
  There should be ten lines.

  You will likely want to use the `GROUP BY`, `COUNT`, `ORDER BY`,
  `GROUP BY`, and `LIMIT` clauses.

  Your SQL query to produce this answer goes below this comment,
  which ends on the following line.
*/
SELECT title, COUNT(score) FROM 'reviews' INNER JOIN 'movies' on reviews.movie_id=movies.id WHERE romance=1 GROUP BY title ORDER BY COUNT(score) DESC LIMIT 10;


