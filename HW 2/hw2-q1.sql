/*HW2 q1 */
.header ON
SELECT DISTINCT F.flight_num
FROM Flights AS F, Carriers AS C, Weekdays AS W
WHERE F.origin_city = "Seattle WA"
AND F.dest_city = "Boston MA"
AND F.carrier_id = C.cid
AND C.name = "Alaska Airlines Inc."
AND F.day_of_week_id = W.did
AND W.day_of_week = "Monday";
-- There are three rows in the query results.
