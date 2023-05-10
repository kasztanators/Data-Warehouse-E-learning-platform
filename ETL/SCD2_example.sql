SELECT * FROM Dim_Student order by Dim_Student.Student_Index

UPDATE Dim_Student
SET EndTime = NULL, IsCurrent =1
WHERE ID_Student = 10001

SELECT * FROM vETLDimStudentData
--new insert 
INSERT INTO uniLearnDB.dbo.Students VALUES(10001,'Rorewbert','Rodrifsdguez', 'laeura2g57@example.net',100001)
--update 
UPDATE uniLearnDB.dbo.Students 
SET Email = 'hotmra4reil@gmail.com'
WHERE Student_Index = 9999



SELECT * FROM uniLearnDB.dbo.Students order by Student_Index

DELETE FROM uniLearnDB.dbo.Students WHERE  Student_ID > 10000;