/*HW2 q3 */
SELECT W.day_of_week, avg(F.arrival_delay) AS delay
FROM Weekdays AS W, Flights AS F
WHERE W.did = F.day_of_week_id
GROUP BY F.day_of_week_id
ORDER BY AVG(F.arrival_delay) DESC
LIMIT 1;
-- There is one row in the query results.
