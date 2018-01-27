/*
  Find the ten people who provided the most movie reviews.

  Assuming your database is at `$DATABASE`, you should run this script
  something like

  ```
  sqlite3 $DATABASE <p4.sql
  ```

  Your output should look something like the following:

  ```
  76|Cydney|Boehm|196
  8|Edgardo|Beier|194
  73|Leda|Effertz|192
  18|Mayra|Hickle|184
  174|Imogene|Fahey|169
  42|Marcus|Carroll|163
  180|Bailee|Durgan|159
  60|Jeremie|Price|155
  152|Lizeth|Stroman|152
  160|Novella|Kautzer|152
  ```

  That is, it should be one line per user and each line should have four
  fields: a user's id, their first name, their last name, and the number
  of reviews they submitted. There should be ten lines.

  You will likely want to use the `COUNT`, `JOIN`, and `ORDER BY` clauses.

  Your SQL query to produce this answer goes below this comment,
  which ends on the following line.
*/

SELECT person_id, first_name, last_name, COUNT(score) FROM 'reviews' INNER JOIN 'people' on reviews.person_id = people.id GROUP BY person_id ORDER BY COUNT(score) DESC LIMIT 10;

