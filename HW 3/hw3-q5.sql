/*HW3 q5 */
SELECT DISTINCT F.dest_city AS city
FROM Flights F
WHERE F.dest_city NOT IN (SELECT DISTINCT F.dest_city
						             FROM Flights F
						             WHERE F.origin_city = 'Seattle WA')
AND F.dest_city NOT IN (SELECT DISTINCT F2.dest_city
						            FROM Flights F1, Flights F2
						            WHERE F1.origin_city = 'Seattle WA'
						            AND F1.dest_city = F2.origin_city);

-- There are 3 rows in the query results.