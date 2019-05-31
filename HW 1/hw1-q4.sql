/*HW1 Q4*/
.nullvalue NULL
.header OFF
.mode csv
SELECT * FROM MyRestaurants AS MR;

.mode list 
.separator "|"
SELECT * FROM MyRestaurants AS MR;

.mode column
.width 15 15 15 15 15
SELECT * FROM MyRestaurants AS MR;

.header ON
.mode csv
SELECT * FROM MyRestaurants AS MR;

.mode list 
.separator "|"
SELECT * FROM MyRestaurants AS MR;

.mode column
.width 15 15 15 15 15
SELECT * FROM MyRestaurants AS MR;
