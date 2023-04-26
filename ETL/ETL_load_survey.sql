USE uniLearn;
GO

INSERT INTO [dbo].[Dim_Survey]
SELECT s
FROM (
	VALUES
	('fulfilled'),
	('not fulfilled')
) AS Status(s);
