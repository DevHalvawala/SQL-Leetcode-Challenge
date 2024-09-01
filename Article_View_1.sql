-- SOLUTION--

SELECT
    DISTINCT AUTHOR_ID AS ID
FROM
    VIEWS
WHERE
    AUTHOR_ID = VIEWER_ID
ORDER BY
    ID;


-- QUESTION--
WRITE A SOLUTION TO FIND ALL THE AUTHORS THAT VIEWED AT LEAST ONE OF THEIR OWN ARTICLES.
RETURN THE RESULT TABLE SORTED BY ID IN ASCENDING ORDER.
THE RESULT FORMAT IS IN THE FOLLOWING EXAMPLE.
EXAMPLE 1:



Input: 
Views table:
+------------+-----------+-----------+------------+
| article_id | author_id | viewer_id | view_date  |
+------------+-----------+-----------+------------+
| 1          | 3         | 5         | 2019-08-01 |
| 1          | 3         | 6         | 2019-08-02 |
| 2          | 7         | 7         | 2019-08-01 |
| 2          | 7         | 6         | 2019-08-02 |
| 4          | 7         | 1         | 2019-07-22 |
| 3          | 4         | 4         | 2019-07-21 |
| 3          | 4         | 4         | 2019-07-21 |
+------------+-----------+-----------+------------+
Output: 
+------+
| id   |
+------+
| 4    |
| 7    |
+------+