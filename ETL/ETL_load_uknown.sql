SET IDENTITY_INSERT dbo.Dim_Course ON;  
GO 
INSERT INTO dbo.Dim_Course (
	ID_Course
    , Name
    , NumOfHours
    , ID_Faculty
) 
VALUES (
	-1
	,'UNKNOWN'
    , ''
    , NULL
);
GO