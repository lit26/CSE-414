/*HW1 Q1*/
CREATE TABLE Edges(Source int, Destination int);

INSERT INTO Edges
VALUES(10,5), (6,25), (1,3), (4,4);

SELECT * FROM Edges AS E;

SELECT E.Source FROM Edges AS E;

SELECT * FROM Edges AS E
WHERE E.Source > E.Destination;

INSERT INTO Edges VALUES ('-1','2000');
/* Because of type affinity,it will convert
convert values to the appropriate datatype.
So it convert '-1' to -1 and '2000' to 2000.*/
