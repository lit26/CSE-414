/*HW3 q2 */
SELECT DISTINCT F.origin_city AS city
FROM Flights AS F
GROUP BY F.origin_city
HAVING MAX(F.actual_time) < 180
ORDER BY F.origin_city;

-- There are 109 rows in the query results.