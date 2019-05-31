/*HW3 q7 */
SELECT DISTINCT C.name AS carrier
FROM Flights F, Carriers C
WHERE F.origin_city = 'Seattle WA'
AND F.dest_city = 'San Francisco CA'
AND F.carrier_id = C.cid;

-- There are 4 rows in the query results.