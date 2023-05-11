USE uniLearn;
GO

IF OBJECT_ID('vETLDimCourseData') IS NOT NULL
DROP VIEW vETLDimCourseData;
GO

CREATE VIEW vETLDimCourseData
AS
SELECT
ROW_NUMBER() OVER (ORDER BY Course_ID) AS ID_Course,
C.Name,
CASE
	WHEN C.Number_of_hours BETWEEN 15 AND 30 THEN '15-30'
	WHEN C.Number_of_hours BETWEEN 31 AND 45 THEN '31-45'
	WHEN C.Number_of_hours BETWEEN 46 AND 60 THEN '46-60'
	WHEN C.Number_of_hours BETWEEN 61 AND 75 THEN '61-75'
	WHEN C.Number_of_hours BETWEEN 76 AND 90 THEN '76-90'
	WHEN C.Number_of_hours BETWEEN 91 AND 105 THEN '91-105'
	WHEN C.Number_of_hours BETWEEN 106 AND 120 THEN '106-120'
END AS NumOfHours,
F.ID_Faculty
FROM uniLearnDB.dbo.Courses AS C
JOIN unilearn.dbo.Dim_Faculty AS F ON C.Faculty_ID = F.ID_Faculty;


GO

MERGE INTO Dim_Course AS T
USING vETLDimCourseData AS S
ON T.Name = S.Name AND T.NumOfHours = S.NumOfHours AND T.ID_Faculty = S.ID_Faculty
WHEN NOT MATCHED BY TARGET THEN
INSERT (Name, NumOfHours, ID_Faculty)
VALUES (S.Name, S.NumOfHours, S.ID_Faculty);

DROP VIEW vETLDimCourseData;