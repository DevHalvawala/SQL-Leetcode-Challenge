-- SOLUTION --

SELECT
    CLASS
FROM
    COURSES
GROUP BY
    CLASS
HAVING
    COUNT(STUDENT) >=5
    

-- QUESTION --

WRITE A SOLUTION TO FIND ALL THE CLASSES THAT HAVE AT LEAST FIVE STUDENTS.
RETURN THE RESULT TABLE IN ANY ORDER.
THE RESULT FORMAT IS IN THE FOLLOWING EXAMPLE.
EXAMPLE 1:



Input: 
Courses table:
+---------+----------+
| student | class    |
+---------+----------+
| A       | Math     |
| B       | English  |
| C       | Math     |
| D       | Biology  |
| E       | Math     |
| F       | Computer |
| G       | Math     |
| H       | Math     |
| I       | Math     |
+---------+----------+
Output: 
+---------+
| class   |
+---------+
| Math    |
+---------+
Explanation: 
- Math has 6 students, so we include it.
- English has 1 student, so we do not include it.
- Biology has 1 student, so we do not include it.
- Computer has 1 student, so we do not include it.