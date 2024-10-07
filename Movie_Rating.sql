-- SOLUTION --

(
    SELECT
        NAME AS RESULTS
    FROM
        MOVIERATING
        INNER JOIN USERS
        USING(USER_ID)
    GROUP BY
        USER_ID
    ORDER BY
        COUNT(MOVIE_ID) DESC,
        NAME ASC LIMIT 1
) UNION ALL (
    SELECT
        TITLE
    FROM
        MOVIERATING
        INNER JOIN MOVIES
        USING(MOVIE_ID)
    WHERE
        EXTRACT(YEAR_MONTH FROM CREATED_AT) = 202002
    GROUP BY
        MOVIE_ID
    ORDER BY
        AVG(RATING) DESC,
        TITLE ASC LIMIT 1
)


-- QUESTION --

WRITE A SOLUTION TO:
FIND THE NAME OF THE USER WHO HAS RATED THE GREATEST NUMBER OF MOVIES. IN CASE OF A TIE, RETURN THE LEXICOGRAPHICALLY SMALLER USER NAME.
FIND THE MOVIE NAME WITH THE HIGHEST AVERAGE RATING IN FEBRUARY 2020. IN CASE OF A TIE, RETURN THE LEXICOGRAPHICALLY SMALLER MOVIE NAME.
THE RESULT FORMAT IS IN THE FOLLOWING EXAMPLE.
EXAMPLE 1:



Input: 
Movies table:
+-------------+--------------+
| movie_id    |  title       |
+-------------+--------------+
| 1           | Avengers     |
| 2           | Frozen 2     |
| 3           | Joker        |
+-------------+--------------+
Users table:
+-------------+--------------+
| user_id     |  name        |
+-------------+--------------+
| 1           | Daniel       |
| 2           | Monica       |
| 3           | Maria        |
| 4           | James        |
+-------------+--------------+
MovieRating table:
+-------------+--------------+--------------+-------------+
| movie_id    | user_id      | rating       | created_at  |
+-------------+--------------+--------------+-------------+
| 1           | 1            | 3            | 2020-01-12  |
| 1           | 2            | 4            | 2020-02-11  |
| 1           | 3            | 2            | 2020-02-12  |
| 1           | 4            | 1            | 2020-01-01  |
| 2           | 1            | 5            | 2020-02-17  | 
| 2           | 2            | 2            | 2020-02-01  | 
| 2           | 3            | 2            | 2020-03-01  |
| 3           | 1            | 3            | 2020-02-22  | 
| 3           | 2            | 4            | 2020-02-25  | 
+-------------+--------------+--------------+-------------+
Output: 
+--------------+
| results      |
+--------------+
| Daniel       |
| Frozen 2     |
+--------------+
Explanation: 
Daniel and Monica have rated 3 movies ("Avengers", "Frozen 2" and "Joker") but Daniel is smaller lexicographically.
Frozen 2 and Joker have a rating average of 3.5 in February but Frozen 2 is smaller lexicographically.