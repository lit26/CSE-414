/*HW2 q7 */
SELECT Sum(F.capacity) AS capacity
FROM Flights AS F, Months AS M
WHERE ((F.origin_city = "Seattle WA" AND F.dest_city = "San Francisco CA")
OR (F.origin_city = "San Francisco CA" AND F.dest_city = "Seattle WA"))
AND F.month_id = M.mid
AND M.month = "July"
AND F.day_of_month = 10;
-- There is one row in the query results.
