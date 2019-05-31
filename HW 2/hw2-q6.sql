/*HW2 q6 */
SELECT DISTINCT C.name AS carrier, MAX(F.price) AS max_price
FROM Carriers AS C, Flights AS F
WHERE F.carrier_id = C.cid
AND ((F.origin_city = "Seattle WA" AND F.dest_city = "New York NY")
OR (F.origin_city = "New York NY" AND F.dest_city = "Seattle WA"))
GROUP BY F.carrier_id;
-- There are 3 rows in the query results.
