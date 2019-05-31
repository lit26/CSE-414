/*HW1 Q5*/
SELECT MR.Name, MR.Distance FROM MyRestaurants AS MR
WHERE MR.Distance <= 20
ORDER BY MR.Name;
