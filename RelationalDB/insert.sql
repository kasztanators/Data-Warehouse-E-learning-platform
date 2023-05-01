BULK INSERT dbo.Courses
	FROM   'C:\Users\User\Documents\studia\4 sem\MOJE\DATA WAREHOUSES\generator\courses.csv'
	WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR='\n',
    BATCHSIZE=10000);	
BULK INSERT dbo.Enrollments
	FROM   'C:\Users\User\Documents\studia\4 sem\MOJE\DATA WAREHOUSES\generator\Enrollments.csv'
	WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR='\n',
    BATCHSIZE=5000000);	
BULK INSERT dbo.Quiz_Result
	FROM   'C:\Users\User\Documents\studia\4 sem\MOJE\DATA WAREHOUSES\generator\Quiz_results.csv'
	WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR='\n',
    BATCHSIZE=2000001);	
BULK INSERT dbo.Tasks_result
	FROM   'C:\Users\User\Documents\studia\4 sem\MOJE\DATA WAREHOUSES\generator\Task_results.csv'
	WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR='\n',
    BATCHSIZE=2000001);	
BULK INSERT dbo.Tasks
	FROM  'C:\Users\User\Documents\studia\4 sem\MOJE\DATA WAREHOUSES\generator\tasks.csv'
	WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR='\n',
    BATCHSIZE=4001);	
BULK INSERT dbo.Teachings
	FROM   'C:\Users\User\Documents\studia\4 sem\MOJE\DATA WAREHOUSES\generator\tutor_course_assignments.csv'
	WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR='\n',
    BATCHSIZE=3000);	
BULK INSERT dbo.Faculties
	FROM   'C:\Users\User\Documents\studia\4 sem\MOJE\DATA WAREHOUSES\generator\faculties.csv'
	WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR='\n',
    BATCHSIZE=11);	
BULK INSERT dbo.Quizzes
	FROM   'C:\Users\User\Documents\studia\4 sem\MOJE\DATA WAREHOUSES\generator\quizes.csv'
	WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR='\n',
    BATCHSIZE=4000);	
BULK INSERT dbo.Tutors
	FROM   'C:\Users\User\Documents\studia\4 sem\MOJE\DATA WAREHOUSES\generator\Tutors.csv'
	WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR='\n',
    BATCHSIZE=1000);
BULK INSERT dbo.Students
	FROM   'C:\Users\User\Documents\studia\4 sem\MOJE\DATA WAREHOUSES\generator\Students.csv'
	WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR='\n',
    BATCHSIZE=10000);	

