/*HW3 q6 */
SELECT DISTINCT C.name AS carrier
FROM Carriers C, (SELECT F.carrier_id FROM Flights F
                  WHERE F.origin_city = 'Seattle WA'
                  AND F.dest_city = 'San Francisco CA'
                  ) AS F_SC
WHERE F_SC.carrier_id = C.cid;

-- There are 4 rows in the query results.