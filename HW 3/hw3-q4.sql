/*HW3 q4 */
SELECT DISTINCT F2.dest_city AS city
FROM (SELECT DISTINCT F.origin_city, F.dest_city
     FROM Flights F
     WHERE F.origin_city = 'Seattle WA') AS F1
, Flights F2
WHERE F1.dest_city = F2.origin_city
AND F2.dest_city != 'Seattle WA'
AND F2.dest_city NOT IN (SELECT DISTINCT F.dest_city
                        FROM Flights F
                        WHERE F.origin_city ='Seattle WA');
-- There are 256 rows in the query results.
