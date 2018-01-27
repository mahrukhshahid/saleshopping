/*
  List the ten romance movies that recieved the highest average
  reviews.

  Assuming your database is at `$DATABASE`, you should run this script
  something like

  ```
  sqlite3 $DATABASE <p6.sql
  ```

  Your output should look something like the following:

  ```
  Little Nicky|7.50649350649351
  Cutthroat Island|7.42253521126761
  Annie|7.35087719298246
  Escape from L.A.|7.22058823529412
  Rock, The|7.05194805194805
  Windtalkers|7.04761904761905
  Meet the Parents|6.97647058823529
  Chicago|6.91549295774648
  Lara Croft: Tomb Raider|6.91304347826087
  Terminator 2: Judgment Day|6.85483870967742
  ```

  That is, there should be one line per movie and each line should have
  two fields: the movie title and the average of reviews for that movie.
  There should be ten lines.

  You will likely want to use the `GROUP BY`, `AVG`, `GROUP BY`, `ORDER BY`,
  and `LIMIT` clauses.

  Your SQL query to produce this answer goes below this comment,
  which ends on the following line.
*/

SELECT title, AVG(score) FROM 'reviews' INNER JOIN 'movies' on reviews.movie_id = movies.id WHERE romance=1 GROUP BY reviews.movie_id ORDER BY AVG(score) DESC LIMIT 10;SELECT title, AVG(score) FROM 'reviews' INNER JOIN 'movies' on reviews.movie_id = movies.id WHERE romance=1 GROUP BY reviews.movie_id ORDER BY AVG(score) DESC LIMIT 10;
