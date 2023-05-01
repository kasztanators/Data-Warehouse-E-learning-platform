use uniLearn;
go

If (object_id('vETLDimStudentsData') is not null) Drop View vETLDimAuthorsData;
go
CREATE VIEW vETLDimStudentData
AS
SELECT
	ROW_NUMBER() OVER (ORDER BY Student_ID) AS ID_Student,
	LastName,
	FirstName,
	Email,
	1 AS IsCurrent
FROM uniLearnDB.dbo.Students;
GO

MERGE INTO Dim_Student AS TT
	USING vETLDimStudentData AS ST
	ON TT.LastName = ST.LastName AND TT.FirstName = ST.FirstName AND TT.Email = ST.Email
	WHEN NOT MATCHED
		THEN
			INSERT (LastName, FirstName, Email, IsCurrent, StartTime, EndTime)
			VALUES (ST.LastName, ST.FirstName, ST.Email, ST.IsCurrent, '2015-01-01', '9999-12-31')
	WHEN NOT MATCHED BY SOURCE
		THEN
			DELETE
	;

DROP VIEW vETLDimStudentData;

SELECT * FROM Dim_Student