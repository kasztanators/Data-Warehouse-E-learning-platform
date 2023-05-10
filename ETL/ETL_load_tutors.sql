USE uniLearn;
GO

IF OBJECT_ID('vETLDimTutorData') IS NOT NULL DROP VIEW vETLDimTutorData;

GO
CREATE VIEW vETLDimTutorData
AS
SELECT
    [Tutor_ID],
    [FirstName],
    [LastName]
FROM uniLearnDB.dbo.Tutors;
GO

MERGE INTO Dim_Tutor AS TT
USING vETLDimTutorData AS ST
    ON TT.FirstName = ST.FirstName AND TT.LastName = ST.LastName AND TT.ID_Tutor = ST.Tutor_ID
WHEN NOT MATCHED
    THEN INSERT (FirstName, LastName)
         VALUES (ST.FirstName, ST.LastName);

DROP VIEW vETLDimTutorData;

