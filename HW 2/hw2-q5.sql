/*HW2 q5 */
SELECT DISTINCT C.name AS name,  Avg(canceled)AS percent
FROM Carriers AS C, Flights AS F
WHERE F.carrier_id = C.cid
AND F.origin_city = "Seattle WA"
GROUP BY F.carrier_id
HAVING Avg(F.canceled) >  0.005
ORDER BY Avg(F.canceled) ASC;
-- There are 6 rows in the query results.
