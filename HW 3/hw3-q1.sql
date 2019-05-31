/*HW3 q1 */
SELECT DISTINCT F.origin_city, F.dest_city, F.actual_time AS time
FROM Flights F,
  (SELECT DISTINCT F1.origin_city,  MAX(F1.actual_time) AS time
  FROM Flights AS F1
  GROUP BY F1.origin_city) AS F_max
WHERE F.origin_city = F_max.origin_city
AND F.actual_time = F_max.time;

-- There are 334 rows in the query results.