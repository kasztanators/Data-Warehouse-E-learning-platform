use uniLearn;
go

SET IDENTITY_INSERT dbo.Dim_Time ON;  

insert into Dim_Time (ID_Time, Hour, TimeOfDay) values (1, 0, 'from 0 to 8');
insert into Dim_Time (ID_Time, Hour, TimeOfDay) values (2, 1, 'from 0 to 8');
insert into Dim_Time (ID_Time, Hour, TimeOfDay) values (3, 2, 'from 0 to 8');
insert into Dim_Time (ID_Time, Hour, TimeOfDay) values (4, 3, 'from 0 to 8');
insert into Dim_Time (ID_Time, Hour, TimeOfDay) values (5, 4, 'from 0 to 8');
insert into Dim_Time (ID_Time, Hour, TimeOfDay) values (6, 5, 'from 0 to 8');
insert into Dim_Time (ID_Time, Hour, TimeOfDay) values (7, 6, 'from 0 to 8');
insert into Dim_Time (ID_Time, Hour, TimeOfDay) values (8, 7, 'from 0 to 8');
insert into Dim_Time (ID_Time, Hour, TimeOfDay) values (9, 8, 'from 0 to 8');
insert into Dim_Time (ID_Time, Hour, TimeOfDay) values (10, 9, 'from 9 to 12');
insert into Dim_Time (ID_Time, Hour, TimeOfDay) values (11, 10, 'from 9 to 12');
insert into Dim_Time (ID_Time, Hour, TimeOfDay) values (12, 11, 'from 9 to 12');
insert into Dim_Time (ID_Time, Hour, TimeOfDay) values (13, 12, 'from 9 to 12');
insert into Dim_Time (ID_Time, Hour, TimeOfDay) values (14, 13, 'from 13 to 15');
insert into Dim_Time (ID_Time, Hour, TimeOfDay) values (15, 14, 'from 13 to 15');
insert into Dim_Time (ID_Time, Hour, TimeOfDay) values (16, 15, 'from 13 to 15');
insert into Dim_Time (ID_Time, Hour, TimeOfDay) values (17, 16, 'from 16 to 20');
insert into Dim_Time (ID_Time, Hour, TimeOfDay) values (18, 17, 'from 16 to 20');
insert into Dim_Time (ID_Time, Hour, TimeOfDay) values (19, 18, 'from 16 to 20');
insert into Dim_Time (ID_Time, Hour, TimeOfDay) values (20, 19, 'from 16 to 20');
insert into Dim_Time (ID_Time, Hour, TimeOfDay) values (21, 20, 'from 16 to 20');
insert into Dim_Time (ID_Time, Hour, TimeOfDay) values (22, 21, 'from 21 to 23');
insert into Dim_Time (ID_Time, Hour, TimeOfDay) values (23, 22, 'from 21 to 23');
insert into Dim_Time (ID_Time, Hour, TimeOfDay) values (24, 23, 'from 21 to 23');
SET IDENTITY_INSERT dbo.Dim_Time OFF; 