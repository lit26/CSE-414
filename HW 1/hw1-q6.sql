/*HW1 Q6*/
SELECT * FROM MyRestaurants AS MR
WHERE MR.Favour = 1
AND MR.DateOfLastVisit < date('now','-3 month');
