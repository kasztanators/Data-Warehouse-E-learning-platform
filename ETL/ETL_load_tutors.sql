USE uniLearn;
GO

IF OBJECT_ID('vETLDimTutorData') IS NOT NULL DROP VIEW vETLDimTutorData;

GO
CREATE VIEW vETLDimTutorData
AS
SELECT
    ROW_NUMBER() OVER (ORDER BY Tutor_ID) AS ID_Tutor,
    [FirstName],
    [LastName]
FROM uniLearnDB.dbo.Tutors;
GO

MERGE INTO Dim_Tutor AS TT
USING vETLDimTutorData AS ST
    ON TT.FirstName = ST.FirstName AND TT.LastName = ST.LastName
WHEN NOT MATCHED
    THEN INSERT (FirstName, LastName)
         VALUES (ST.FirstName, ST.LastName)
WHEN NOT MATCHED BY SOURCE
    THEN DELETE;

DROP VIEW vETLDimTutorData;

SELECT * FROM Dim_Tutor;