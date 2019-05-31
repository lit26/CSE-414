/*HW2 q2 */
.header ON
SELECT DISTINCT C.name, 
	F1.flight_num AS f1_flight_num, 
	F1.origin_city AS f1_origin_city, 
	F1.dest_city AS f1_dest_city, 
	F1.actual_time AS f1_actual_time, 
	F2.flight_num AS f2_flight_num, 
	F2.origin_city AS f2_origin_city, 
	F2.dest_city AS f2_dest_city, 
	F2.actual_time AS f2_actual_time, 
	(F1.actual_time + F2.actual_time) AS actual_time
FROM Flights AS F1, Flights AS F2, Carriers AS C, Months AS M
WHERE F1.origin_city = "Seattle WA"
AND F1.dest_city = F2.origin_city
AND F2.dest_city = "Boston MA"
AND F1.month_id = M.mid
AND F2.month_id = M.mid
AND M.month = "July"
AND F1.day_of_month = 15
AND F2.day_of_month = 15
AND F1.carrier_id = C.cid
AND F2.carrier_id = C.cid
AND F1.actual_time + F2.actual_time < 420;

/* For counting flight time
SELECT count(*)
FROM Flights AS F1, Flights AS F2, Carriers AS C, Months AS M
WHERE F1.origin_city = "Seattle WA"
AND F1.dest_city = F2.origin_city
AND F2.dest_city = "Boston MA"
AND F1.month_id = M.mid
AND F2.month_id = M.mid
AND M.month = "July"
AND F1.day_of_month = 15
AND F2.day_of_month = 15
AND F1.carrier_id = C.cid
AND F2.carrier_id = C.cid
AND F1.actual_time + F2.actual_time < 420;*/

-- There are 1472 rows in the query results.
