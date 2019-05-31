/*HW2 q8 */
SELECT C.name AS name, sum(F.departure_delay) AS delay
FROM Carriers AS C, Flights AS F
WHERE F.carrier_id = C.cid
GROUP BY C.name;

-- There are 22 rows in the query results.
