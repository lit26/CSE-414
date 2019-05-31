/*HW7 part2*/
/* q2 */
--name->price
SELECT s.name, count(DISTINCT s.price)
FROM Sales s
GROUP BY s.name; --36 rows
/*
bar1,1
bar2,1
bar3,1
bar4,1
bar5,1
bar6,1
bar7,1
bar8,1
bar9,1
click1,1
click2,1
click3,1
click4,1
click5,1
click6,1
click7,1
click8,1
click9,1
gizmo1,1
gizmo2,1
gizmo3,1
gizmo4,1
gizmo5,1
gizmo6,1
gizmo7,1
gizmo8,1
gizmo9,1
mouse1,1
mouse2,1
mouse3,1
mouse4,1
mouse5,1
mouse6,1
mouse7,1
mouse8,1
mouse9,1
*/

--month->discount
SELECT s.month, count(DISTINCT s.discount)
FROM Sales s
GROUP BY s.month; --12 rows
/*
apr,1
aug,1
dec,1
feb,1
jan,1
jul,1
jun,1
mar,1
may,1
nov,1
oct,1
sep,1
*/

/* q3 */
CREATE TABLE R1(name varchar(10) PRIMARY KEY,
                price int);
CREATE TABLE R2(month varchar(10) PRIMARY KEY,
                discount varchar(10));
CREATE TABLE R3(name varchar(10),
                month varchar(10),
                FOREIGN KEY (name) references R1(name),
                FOREIGN KEY (month) references R2(month));
/* q4 */
INSERT INTO R1(name,price)
SELECT DISTINCT s.name, s.price
FROM Sales s;

SELECT count(*)
FROM R1; -- count = 36

INSERT INTO R2(month,discount)
SELECT DISTINCT s.month, s.discount
FROM Sales s;

SELECT count(*)
FROM R2; -- count = 12

INSERT INTO R3(name,month)
SELECT DISTINCT s.name, s.month
FROM Sales s;

SELECT count(*)
FROM R3; -- count 426
