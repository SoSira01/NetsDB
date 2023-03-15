USE [Nets]
GO
--CREATE TABLE

CREATE TABLE [dbo].[Users] (
    [id]                INT             IDENTITY (1, 1) NOT NULL,
    [username]          VARCHAR (250)   NULL,
    [firstname] VARCHAR(250) NULL, 
    [lastname] VARCHAR(250) NULL, 
    [fullname]          VARCHAR (250)   NULL,
    [password]          VARCHAR (MAX)   NULL,
    [roleid]            INT             NULL,
    [signature]         VARBINARY (MAX) NULL,
    [SignatureFileName] VARCHAR (250)   NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    FOREIGN KEY ([roleid]) REFERENCES [dbo].[Roles] ([Id])
);




CREATE TABLE dbo.Roles (
    [Id]         INT           IDENTITY (1, 1) NOT NULL,
    [rolename]   VARCHAR (250) NOT NULL,
    [Permission] VARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE dbo.Tax
(
     id INT NOT NULL PRIMARY KEY, 
     min_income INT NOT NULL,
     max_income INT NOT NULL,
     tax_rate DECIMAL(5,2) NOT NULL,
     year INT
)

INSERT INTO Tax (id, min_income, max_income, tax_rate, year)
VALUES
(7, 0, 100000, 0, 2023),
(8, 100001, 500000, 5, 2023),
(9, 500001, 1000000, 10, 2023),
(10, 1000001, 5000000, 20, 2023),
(11, 5000001, 10000000, 25, 2023),
(12, 10000001, 999999999, 30, 2023);

-- Select Tax by year
SELECT * 
FROM Tax 
WHERE year = 2023;
-- Use Stores Procedures
EXEC [dbo].[getTaxByYears] 2023;

EXEC [dbo].[getUser] 6;
	INSERT INTO dbo.Users (username,fullname, password, roleid)

EXEC [dbo].[insertUser] 'test22','test012','123',1 ;

EXEC [dbo].[getDataGroups] 'g101';

EXEC [dbo].[insertDataGroups] 'create','title','test','M',1,'Product','Admin','Admin';
-- Stores Procedures
/****** Object:  StoredProcedure [dbo].[getAllRoles] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- getAllRoles
-- =============================================
ALTER PROCEDURE [dbo].[getAllRoles]

AS
BEGIN

	SELECT *
	FROM dbo.Roles

END
/****** Object:  StoredProcedure [dbo].[GetAllUsers] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- GetAllUsers
-- =============================================
ALTER PROCEDURE [dbo].[GetAllUsers]

AS
BEGIN

	SELECT *
	FROM dbo.Users

END
/****** Object:  StoredProcedure [dbo].[getRole] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- getRole
-- =============================================
ALTER PROCEDURE [dbo].[getRole]
@ID int
AS
BEGIN

	SELECT *
	FROM dbo.Roles
	WHERE ID = IIF(@ID = 0, ID, @ID);


END
/****** Object:  StoredProcedure [dbo].[getTaxByYears] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[getTaxByYears]
    @year INT
AS
BEGIN
    SELECT * FROM Tax WHERE year = @year;
END
/****** Object:  StoredProcedure [dbo].[getUser] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- getUser
-- =============================================
ALTER PROCEDURE [dbo].[getUser]
@ID int
AS
BEGIN

	SELECT *
	FROM dbo.Users
	WHERE ID = IIF(@ID = 0, ID, @ID);


END
/****** Object:  StoredProcedure [dbo].[getUsersignature] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- getUsersignature
-- =============================================
ALTER PROCEDURE [dbo].[getUsersignature]
    @id INT,
    @signature VARBINARY(MAX)
AS
BEGIN
    UPDATE dbo.Users
    SET signature = @signature
    WHERE id = @id;
END
/****** Object:  StoredProcedure [dbo].[insertRole] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- insertRole
-- =============================================
ALTER PROCEDURE [dbo].[insertRole]
@rolename Varchar(250),
@permission Varchar(max)
AS
BEGIN

BEGIN TRANSACTION
BEGIN TRY

	INSERT INTO dbo.Roles(rolename,Permission)
	values(@rolename,@permission);
		
	COMMIT;
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0
		ROLLBACK;
END CATCH

END
/****** Object:  StoredProcedure [dbo].[insertUser] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- insertUser
-- =============================================
ALTER PROCEDURE [dbo].[insertUser]
    @username VARCHAR(250),
    @firstname VARCHAR(250),
    @lastname VARCHAR(250),
    @password VARCHAR(MAX),
    @roleid INT,
    @newid INT OUTPUT

AS
BEGIN

BEGIN TRANSACTION
BEGIN TRY
SET NOCOUNT ON;

    INSERT INTO Users (username, firstname,lastname, password, roleid,active)
    VALUES (@username, @firstname,@lastname, @password, @roleid, 1);

    SET @newid = SCOPE_IDENTITY();

	COMMIT;
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0
		ROLLBACK;
END CATCH

END
/****** Object:  StoredProcedure [dbo].[Login] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Login
-- =============================================
ALTER PROCEDURE [dbo].[Login] 
     @username varchar(250),
	 @password varchar(max)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @userId INT

    SELECT id
    FROM dbo.Users
    WHERE username  COLLATE SQL_Latin1_General_CP1_CS_AS  = @username AND password = @password
END
SET ANSI_NULLS ON
/****** Object:  StoredProcedure [dbo].[updateRole] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- UpdateRole
-- =============================================
ALTER PROCEDURE [dbo].[updateUser]
    @id INT,
    @firstname VARCHAR(250),
	@lastname VARCHAR(250),
	@roleid INT
AS
BEGIN
    UPDATE dbo.Users
    SET firstname = @firstname, lastname = @lastname, roleid = @roleid
    WHERE id = @id;
END;
/****** Object:  StoredProcedure [dbo].[updateUser] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- UpdateUser
-- =============================================
ALTER PROCEDURE [dbo].[updateUser]
    @id INT,
    @firstname VARCHAR(250),
	@lastname VARCHAR(250),
	@active INT,
	@roleid INT
AS
BEGIN
    UPDATE dbo.Users
    SET firstname = @firstname, lastname = @lastname, roleid = @roleid, active = @active
    WHERE id = @id;
END;
/****** Object:  StoredProcedure [dbo].[updateUsersignature] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- updateUsersignature
-- =============================================
ALTER PROCEDURE [dbo].[updateUsersignature]
    @id INT,
    @signature VARBINARY(MAX)
AS
BEGIN
    UPDATE dbo.Users
    SET signature = @signature
    WHERE id = @id;
END;
/****** Object:  StoredProcedure [dbo].[InsertExcelData] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- InsertExcelData
-- =============================================
ALTER PROCEDURE [dbo].[InsertExcelData]
    @username varchar(250),
    @firstname varchar(250),
    @lastname varchar(250),
    @password varchar(max),
    @roleid int
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Users (Username, FirstName, LastName, Password, RoleId)
    VALUES (@username, @firstname, @lastname, @password, @roleid)
END;
