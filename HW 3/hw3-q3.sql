/*HW3 q3 */
SELECT DISTINCT F1.origin_city, (F2.count_time*1.0 / F1.total)  AS percentage
FROM (SELECT F_t.origin_city, count(F_t.actual_time) AS total
	  FROM Flights F_t
	  GROUP BY F_t.origin_city) F1
LEFT OUTER JOIN
	 (SELECT F_l.origin_city, count(F_l.actual_time) AS count_time
	  FROM Flights F_l
	  WHERE F_l.actual_time <= 180
	  GROUP BY F_l.origin_city) F2
ON F1.origin_city = F2.origin_city
ORDER BY percentage;
-- There are 327 rows in the query results.