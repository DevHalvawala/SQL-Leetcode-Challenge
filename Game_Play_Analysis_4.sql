-- QUESTION --

WRITE A SOLUTION TO REPORT THE FRACTION OF PLAYERS THAT LOGGED IN AGAIN ON THE DAY AFTER THE DAY THEY FIRST LOGGED IN, ROUNDED TO 2 DECIMAL PLACES. IN OTHER WORDS, YOU NEED TO COUNT THE NUMBER OF PLAYERS THAT LOGGED IN FOR AT LEAST TWO CONSECUTIVE DAYS STARTING FROM THEIR FIRST LOGIN DATE, THEN DIVIDE THAT NUMBER BY THE TOTAL NUMBER OF PLAYERS.
THE RESULT FORMAT IS IN THE FOLLOWING EXAMPLE.
EXAMPLE 1:



Input: 
Activity table:
+-----------+-----------+------------+--------------+
| player_id | device_id | event_date | games_played |
+-----------+-----------+------------+--------------+
| 1         | 2         | 2016-03-01 | 5            |
| 1         | 2         | 2016-03-02 | 6            |
| 2         | 3         | 2017-06-25 | 1            |
| 3         | 1         | 2016-03-02 | 0            |
| 3         | 4         | 2018-07-03 | 5            |
+-----------+-----------+------------+--------------+
Output: 
+-----------+
| fraction  |
+-----------+
| 0.33      |
+-----------+
Explanation: 
Only the player with id 1 logged back in after the first day he had logged in so the answer is 1/3 = 0.33