use uniLearn;
go

If (object_id('TEMP') is not null) Drop table TEMP;
go
CREATE  TABLE TEMP(
  action varchar(20),
  LastName VARCHAR(55),
  FirstName VARCHAR(55),
  Email VARCHAR(60),
  Stundent_Index Integer
);


If (object_id('vETLDimStudentData') is not null) Drop View vETLDimStudentData;
go
CREATE VIEW vETLDimStudentData
AS
SELECT DISTINCT
	LastName as [c1],
	FirstName as [c2],
	Email as [c3],
	1 AS [c4], 
	'2015-01-01' as [c5],
	'9999-12-31' as[c6],
	Student_Index as [c7]
FROM uniLearnDB.dbo.Students;
GO


MERGE INTO Dim_Student as TT
USING vETLDimStudentData as ST
	ON TT.LastName = ST.[c1] 
	AND TT.FirstName = ST.[c2] 
	AND TT.Student_Index = ST.[c7]
	WHEN NOT MATCHED THEN
		INSERT (LastName, FirstName, Email, IsCurrent, StartTime, EndTime, Student_Index)
		VALUES (ST.[c1], ST.[c2], ST.[c3], 1, '2015-01-01', '9999-12-31', ST.[c7])
	WHEN MATCHED AND TT.Email <> ST.[c3] THEN
		UPDATE SET IsCurrent = 0, EndTime = CAST(GETDATE() AS DATE)
	OUTPUT $action, ST.[c1], ST.[c2], ST.[c3], ST.[c7] INTO TEMP;
go


INSERT INTO Dim_Student SELECT LastName, FirstName, Email,1, CAST(GETDATE() AS DATE),
 '2015-01-01',Stundent_Index FROM TEMP WHERE action = 'UPDATE'


SELECT * FROM Dim_Student order by Dim_Student.Student_Index

SELECT * FROM TEMP WHERE action = 'update'
SELECT * FROM vETLDimStudentData

INSERT INTO uniLearnDB.dbo.Students VALUES(10001,'Robert','Rodriguez', 'laura27@example.net',10000)
SELECT * FROM uniLearnDB.dbo.Students



DELETE FROM uniLearnDB.dbo.Students WHERE  Student_ID > 10000;



DROP VIEW vETLDimStudentData;
DROP TABLE Dim_Student
DROP TABLE Fact_Enrollment