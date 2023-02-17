CREATE TABLE dbo.Users (
    [id]          INT           IDENTITY (1, 1) NOT NULL,
    [username]    VARCHAR (250) NULL,
    [fullname]    VARCHAR (250) NULL,
    [password]    VARCHAR (MAX) NULL,
    [roleid]      INT           NULL,
    [signature]   VARBINARY (MAX) NULL,
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

EXEC [dbo].[getTaxByYears] 2023;

EXEC [dbo].[getUser] 6;