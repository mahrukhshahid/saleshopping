/*
  List the ten comedy movies that recieved the highest average
  reviews among female reviewers. There should be ten lines.

  Assuming your database is at `$DATABASE`, you should run this script
  something like

  ```
  sqlite3 $DATABASE <p7.sql
  ```

  Your output should look something like the following:

  ```
  Titanic|7.24390243902439
  Waterworld|7.22222222222222
  Terminator 2: Judgment Day|7.16216216216216
  Apollo 13|7.08695652173913
  Windtalkers|7.05
  Chicago|7.04878048780488
  Last Castle, The|7.02702702702703
  Rock, The|6.93181818181818
  Runaway Jury|6.92
  Lolita|6.86486486486486
  ```

  That is, there should be one line per movie and each line should have
  two fields: the movie title and the average of the reviews from
  female viewers.

  You will likely want to use the `GROUP BY`, `COUNT`, `ORDER BY`,
  `GROUP BY`, and `LIMIT` clauses. You will likely need two joins.

  Your SQL query to produce this answer goes below this comment,
  which ends on the following line.
*/

SELECT title, AVG(score) FROM 'reviews' INNER JOIN 'movies' on reviews.movie_id=movies.id INNER JOIN 'people' on reviews.person_id=people.id WHERE comedy=1 AND gender='female' GROUP BY reviews.movie_id ORDER BY AVG(score) DESC limit 10;
