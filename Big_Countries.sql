-- Write your MySQL query statement below
-- SOLUTION
select name, population, area from World where area>=3000000 or population>=25000000


TABLE: WORLD
+ -------------+---------+
| COLUMN NAME | TYPE |
+ -------------+---------+
| NAME | VARCHAR |
| CONTINENT | VARCHAR |
| AREA | INT |
| POPULATION | INT |
| GDP | BIGINT |
+ -------------+---------+
NAME IS THE PRIMARY KEY (COLUMN WITH UNIQUE VALUES) FOR THIS TABLE.
EACH ROW OF THIS TABLE GIVES INFORMATION ABOUT THE NAME OF A COUNTRY, THE CONTINENT TO WHICH IT BELONGS, ITS AREA, THE POPULATION, AND ITS GDP VALUE.

A country is big if:

IT HAS AN AREA OF AT LEAST THREE MILLION (I.E., 3000000 KM2), OR
IT HAS A POPULATION OF AT LEAST TWENTY-FIVE MILLION (I.E., 25000000).
WRITE A SOLUTION TO FIND THE NAME, POPULATION, AND AREA OF THE BIG COUNTRIES.
RETURN THE RESULT TABLE IN ANY ORDER.
THE RESULT FORMAT IS IN THE FOLLOWING EXAMPLE.
EXAMPLE 1:



Input: 
World table:
+-------------+-----------+---------+------------+--------------+
| name        | continent | area    | population | gdp          |
+-------------+-----------+---------+------------+--------------+
| Afghanistan | Asia      | 652230  | 25500100   | 20343000000  |
| Albania     | Europe    | 28748   | 2831741    | 12960000000  |
| Algeria     | Africa    | 2381741 | 37100000   | 188681000000 |
| Andorra     | Europe    | 468     | 78115      | 3712000000   |
| Angola      | Africa    | 1246700 | 20609294   | 100990000000 |
+-------------+-----------+---------+------------+--------------+
Output: 
+-------------+------------+---------+
| name        | population | area    |
+-------------+------------+---------+
| Afghanistan | 25500100   | 652230  |
| Algeria     | 37100000   | 2381741 |
+-------------+------------+---------+