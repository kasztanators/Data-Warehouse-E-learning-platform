USE uniLearn;
GO

IF (OBJECT_ID('vETLTeachingsData') IS NOT NULL)
    DROP VIEW vETLTeachingsData;
GO

CREATE VIEW vETLTeachingsData
AS
SELECT
    T.Tutor_ID,
    C.Course_ID
FROM uniLearnDB.dbo.Courses AS C
JOIN uniLearnDB.dbo.Teachings AS TC ON C.Course_ID = TC.Course_ID
JOIN uniLearnDB.dbo.Tutors AS T ON TC.Tutor_ID = T.Tutor_ID;

GO
MERGE INTO Fact_Teachings AS FT
	USING vETLTeachingsData AS ET
		ON FT.ID_Tutor = ET.Tutor_ID AND FT.ID_Course = ET.Course_ID
	WHEN NOT MATCHED THEN
		INSERT (ID_Tutor, ID_Course)
		VALUES (ET.Tutor_ID, ET.Course_ID)
		;

DROP VIEW vETLTeachingsData;

SELECT COUNT(*) FROM Fact_Teachings