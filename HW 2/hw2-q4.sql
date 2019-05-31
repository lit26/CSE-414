/*HW2 q4 */
SELECT DISTINCT C.name AS name
FROM Carriers AS C, Flights AS F
WHERE F.carrier_id = C.cid
GROUP BY F.month_id, F.day_of_month, F.carrier_id
HAVING count(*) > 1000;
-- There are 12 rows in the query results.
