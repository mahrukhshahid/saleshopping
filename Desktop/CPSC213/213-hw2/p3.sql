/*
  Count the number of movies released in each year.

  Assuming your database is at `$DATABASE`, you should run this script
  something like

  ```
  sqlite3 $DATABASE <p3.sql
  ```

  Your output should look something like the following:

  ```
  1968|4
  1978|5
  1980|6
  1981|4
  1982|6
  1984|5
  1985|6
  1988|4
  1989|10
  1990|14
  1991|9
  1992|12
  1993|13
  1994|17
  1995|35
  1996|35
  1997|40
  1998|56
  1999|49
  2000|57
  2001|48
  2002|60
  2003|57
  2004|50
  2005|22
  ```

  That is, it should be one line per year and the second field should be
  the number of movies in the database that were released in that year.

  Your SQL query to produce this answer goes below this comment,
  which ends on the following line.
*/

SELECT year, count(*) AS "Number of movies" FROM movies GROUP BY year;
