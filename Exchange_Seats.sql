-- SOLUTION --
-- QUESTION --

WRITE A SOLUTION TO SWAP THE SEAT ID OF EVERY TWO CONSECUTIVE STUDENTS. IF THE NUMBER OF STUDENTS IS ODD, THE ID OF THE LAST STUDENT IS NOT SWAPPED.
RETURN THE RESULT TABLE ORDERED BY ID IN ASCENDING ORDER.
THE RESULT FORMAT IS IN THE FOLLOWING EXAMPLE.
EXAMPLE 1:



Input: 
Seat table:
+----+---------+
| id | student |
+----+---------+
| 1  | Abbot   |
| 2  | Doris   |
| 3  | Emerson |
| 4  | Green   |
| 5  | Jeames  |
+----+---------+
Output: 
+----+---------+
| id | student |
+----+---------+
| 1  | Doris   |
| 2  | Abbot   |
| 3  | Green   |
| 4  | Emerson |
| 5  | Jeames  |
+----+---------+
Explanation: 
Note that if the number of students is odd, there is no need to change the last one's seat.