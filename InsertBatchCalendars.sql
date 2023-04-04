DROP TABLE [dbo].NETS_Batch_Calendars;
CREATE TABLE [dbo].NETS_Batch_Calendars(
	calendar_year int not null
	,calendar_month int not null
	,calendar_period varchar(6) not null
	,calendar_run_date date not null
	,batch_run_date date null
	,created_date datetime not null
	,created_by varchar(50) not null
	,updated_date datetime not null
	,updated_by varchar(50) not null

 CONSTRAINT [PK_NETS_Batch_Calendars] PRIMARY KEY  
(
	calendar_year ASC, calendar_month ASC
));

TRUNCATE TABLE dbo.NETS_Batch_Calendars;

INSERT dbo.NETS_Batch_Calendars VALUES (2022, 1, N'Jan-22', CAST(N'2022-01-13' AS Date), CAST(N'2022-01-13' AS Date), SYSDATETIME(), N'batch', SYSDATETIME(), N'batch');
INSERT dbo.NETS_Batch_Calendars VALUES (2022, 2, N'Feb-22', CAST(N'2022-02-11' AS Date), CAST(N'2022-02-11' AS Date), SYSDATETIME(), N'batch', SYSDATETIME(), N'batch');
INSERT dbo.NETS_Batch_Calendars VALUES (2022, 3, N'Mar-22', CAST(N'2022-03-11' AS Date), CAST(N'2022-03-11' AS Date), SYSDATETIME(), N'batch', SYSDATETIME(), N'batch');
INSERT dbo.NETS_Batch_Calendars VALUES (2022, 4, N'Apr-22', CAST(N'2022-04-12' AS Date), CAST(N'2022-04-12' AS Date), SYSDATETIME(), N'batch', SYSDATETIME(), N'batch');
INSERT dbo.NETS_Batch_Calendars VALUES (2022, 5, N'May-22', CAST(N'2022-05-13' AS Date), CAST(N'2022-05-13' AS Date), SYSDATETIME(), N'batch', SYSDATETIME(), N'batch');
INSERT dbo.NETS_Batch_Calendars VALUES (2022, 6, N'Jun-22', CAST(N'2022-06-13' AS Date), CAST(N'2022-06-13' AS Date), SYSDATETIME(), N'batch', SYSDATETIME(), N'batch');
INSERT dbo.NETS_Batch_Calendars VALUES (2022, 7, N'Jul-22', CAST(N'2022-07-13' AS Date), CAST(N'2022-07-13' AS Date), SYSDATETIME(), N'batch', SYSDATETIME(), N'batch');
INSERT dbo.NETS_Batch_Calendars VALUES (2022, 8, N'Aug-22', CAST(N'2022-08-11' AS Date), CAST(N'2022-08-11' AS Date), SYSDATETIME(), N'batch', SYSDATETIME(), N'batch');
INSERT dbo.NETS_Batch_Calendars VALUES (2022, 9, N'Sep-22', CAST(N'2022-09-13' AS Date), CAST(N'2022-09-13' AS Date), SYSDATETIME(), N'batch', SYSDATETIME(), N'batch');
INSERT dbo.NETS_Batch_Calendars VALUES (2022, 10, N'Oct-22', CAST(N'2022-10-12' AS Date), CAST(N'2022-10-12' AS Date), SYSDATETIME(), N'batch', SYSDATETIME(), N'batch');
INSERT dbo.NETS_Batch_Calendars VALUES (2022, 11, N'Nov-22', CAST(N'2022-11-11' AS Date), CAST(N'2022-11-11' AS Date), SYSDATETIME(), N'batch', SYSDATETIME(), N'batch');
INSERT dbo.NETS_Batch_Calendars VALUES (2022, 12, N'Dec-22', CAST(N'2022-12-13' AS Date), CAST(N'2022-12-13' AS Date), SYSDATETIME(), N'batch', SYSDATETIME(), N'batch');
INSERT dbo.NETS_Batch_Calendars VALUES (2023, 1, N'Jan-23', CAST(N'2023-01-13' AS Date), CAST(N'2023-01-13' AS Date), SYSDATETIME(), N'batch', SYSDATETIME(), N'batch');
INSERT dbo.NETS_Batch_Calendars VALUES (2023, 2, N'Feb-23', CAST(N'2023-02-13' AS Date), CAST(N'2023-02-13' AS Date), SYSDATETIME(), N'batch', SYSDATETIME(), N'batch');
INSERT dbo.NETS_Batch_Calendars VALUES (2023, 3, N'Mar-23', CAST(N'2023-03-13' AS Date), CAST(N'2023-03-13' AS Date), SYSDATETIME(), N'batch', SYSDATETIME(), N'batch');
INSERT dbo.NETS_Batch_Calendars VALUES (2023, 4, N'Apr-23', CAST(N'2023-04-10' AS Date), NULL, SYSDATETIME(), N'batch', SYSDATETIME(), N'batch');
INSERT dbo.NETS_Batch_Calendars VALUES (2023, 5, N'May-23', CAST(N'2023-05-12' AS Date), NULL, SYSDATETIME(), N'batch', SYSDATETIME(), N'batch');
INSERT dbo.NETS_Batch_Calendars VALUES (2023, 6, N'Jun-23', CAST(N'2023-06-13' AS Date), NULL, SYSDATETIME(), N'batch', SYSDATETIME(), N'batch');
INSERT dbo.NETS_Batch_Calendars VALUES (2023, 7, N'Jul-23', CAST(N'2023-07-13' AS Date), NULL, SYSDATETIME(), N'batch', SYSDATETIME(), N'batch');
INSERT dbo.NETS_Batch_Calendars VALUES (2023, 8, N'Aug-23', CAST(N'2023-08-11' AS Date), NULL, SYSDATETIME(), N'batch', SYSDATETIME(), N'batch');
INSERT dbo.NETS_Batch_Calendars VALUES (2023, 9, N'Sep-23', CAST(N'2023-09-13' AS Date), NULL, SYSDATETIME(), N'batch', SYSDATETIME(), N'batch');
INSERT dbo.NETS_Batch_Calendars VALUES (2023, 10, N'Oct-23', CAST(N'2023-10-12' AS Date), NULL, SYSDATETIME(), N'batch', SYSDATETIME(), N'batch');
INSERT dbo.NETS_Batch_Calendars VALUES (2023, 11, N'Nov-23', CAST(N'2023-11-13' AS Date), NULL, SYSDATETIME(), N'batch', SYSDATETIME(), N'batch');
INSERT dbo.NETS_Batch_Calendars VALUES (2023, 12, N'Dec-23', CAST(N'2023-12-13' AS Date), NULL, SYSDATETIME(), N'batch', SYSDATETIME(), N'batch');

EXEC [dbo].NETS_Batch_Calendars 2022;

DECLARE @year int = 2023;

SELECT 
	c.calendar_year
	,c.calendar_month
	,c.calendar_period
	,FORMAT(c.calendar_run_date, 'yyyy-MM-dd') calendar_run_date
	,IIF(c.batch_run_date IS NULL, 'N', 'Y') batch_run
FROM dbo.NETS_Batch_Calendars c
WHERE c.calendar_year = @year
ORDER BY c.calendar_month ASC

SELECT DISTINCT calendar_year
FROM dbo.NETS_Batch_Calendars
ORDER BY 1 ASC;
