USE uniLearn;
GO


IF OBJECT_ID('vETLDimFacultyData') IS NOT NULL
    DROP VIEW vETLDimFacultyData;
GO

CREATE VIEW vETLDimFacultyData
AS
SELECT 
    ROW_NUMBER() OVER (ORDER BY Faculty_ID) AS ID_Faculty,
    [Name]
FROM uniLearnDB.dbo.Faculties;
GO

MERGE INTO Dim_Faculty AS TT
USING vETLDimFacultyData AS ST
    ON TT.Name = ST.Name
WHEN NOT MATCHED
    THEN
        INSERT (Name)
        VALUES (ST.Name)
WHEN NOT MATCHED BY SOURCE
    THEN
        DELETE;

DROP VIEW vETLDimFacultyData;

SELECT * FROM Dim_Faculty
ORDER BY ID_Faculty