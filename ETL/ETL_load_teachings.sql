USE uniLearn;
GO

IF (OBJECT_ID('vETLTeachingsData') IS NOT NULL)
    DROP VIEW vETLTeachingsData;
GO

CREATE VIEW vETLTeachingsData
AS
SELECT
    T.ID_Tutor,
    C.ID_Course
FROM uniLearnDB.dbo.Teachings AS TC
JOIN  unilearn.dbo.Dim_Course AS C ON C.ID_Course = TC.Course_ID
JOIN  uniLearn.dbo.Dim_Tutor AS T ON T.ID_Tutor= TC.Tutor_ID



GO
MERGE INTO Fact_Teachings AS FT
	USING vETLTeachingsData AS ET
		ON FT.ID_Tutor = ET.ID_Tutor AND FT.ID_Course = ET.ID_Course
	WHEN NOT MATCHED THEN
		INSERT (ID_Tutor, ID_Course)
		VALUES (ET.ID_Tutor, ET.ID_Course)
		;

DROP VIEW vETLTeachingsData;

