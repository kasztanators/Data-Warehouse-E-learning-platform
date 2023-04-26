USE uniLearn;
GO

IF OBJECT_ID('vETLDimCourseData') IS NOT NULL
    DROP VIEW vETLDimCourseData;
GO

CREATE VIEW vETLDimCourseData
AS
SELECT
    ROW_NUMBER() OVER (ORDER BY Course_ID) AS ID_Course,
    Name,
    CASE
        WHEN Number_of_hours BETWEEN 15 AND 30 THEN '15-30'
        WHEN Number_of_hours BETWEEN 31 AND 45 THEN '31-45'
        WHEN Number_of_hours BETWEEN 46 AND 60 THEN '46-60'
        WHEN Number_of_hours BETWEEN 61 AND 75 THEN '61-75'
        WHEN Number_of_hours BETWEEN 76 AND 90 THEN '76-90'
        WHEN Number_of_hours BETWEEN 91 AND 105 THEN '91-105'
        WHEN Number_of_hours BETWEEN 106 AND 120 THEN '106-120'
    END AS NumOfHours,
    Faculty_ID
FROM uniLearnDB.dbo.Courses;
GO

MERGE INTO Dim_Course AS TT
    USING vETLDimCourseData AS ST
    ON TT.Name = ST.Name AND TT.NumOfHours = ST.NumOfHours AND TT.ID_Faculty = ST.Faculty_ID
    WHEN NOT MATCHED
        THEN
            INSERT (Name, NumOfHours, ID_Faculty)
            VALUES (ST.Name, ST.NumOfHours, ST.Faculty_ID)
    WHEN NOT MATCHED BY SOURCE
        THEN
            DELETE;

DROP VIEW vETLDimCourseData;

SELECT * FROM Dim_Course;