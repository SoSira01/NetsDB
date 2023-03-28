USE [Nets]
GO
/****** Object:  UserDefinedTableType [dbo].[insertRole]    Script Date: 3/28/2023 08:44:59 ******/
CREATE TYPE [dbo].[insertRole] AS TABLE(
	[id] [int] NULL,
	[rolename] [varchar](max) NULL,
	[permission] [varchar](max) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[insertUser]    Script Date: 3/28/2023 08:44:59 ******/
CREATE TYPE [dbo].[insertUser] AS TABLE(
	[id] [int] NULL,
	[fullname] [varchar](max) NULL,
	[password] [varchar](max) NULL,
	[roleid] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[roles_type]    Script Date: 3/28/2023 08:44:59 ******/
CREATE TYPE [dbo].[roles_type] AS TABLE(
	[id] [int] NOT NULL,
	[rolename] [varchar](100) NOT NULL,
	[permission] [varchar](max) NULL
)
GO
/****** Object:  Table [dbo].[NETS_Batch_Calendars]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETS_Batch_Calendars](
	[calandar_year] [int] NOT NULL,
	[calandar_month] [int] NOT NULL,
	[calandar_period] [varchar](6) NOT NULL,
	[calandar_run_date] [date] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [varchar](50) NOT NULL,
	[updated_date] [datetime] NOT NULL,
	[updated_by] [varchar](50) NOT NULL,
 CONSTRAINT [PK_NETS_Batch_Calendars] PRIMARY KEY CLUSTERED 
(
	[calandar_year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETS_Data_Groups]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETS_Data_Groups](
	[group_id] [varchar](50) NOT NULL,
	[group_title] [varchar](100) NOT NULL,
	[parent_group_id] [varchar](50) NULL,
	[active] [bit] NOT NULL,
	[team_id] [varchar](20) NOT NULL,
	[product_id] [varchar](20) NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [varchar](50) NOT NULL,
	[updated_date] [datetime] NOT NULL,
	[updated_by] [varchar](50) NOT NULL,
 CONSTRAINT [PK_NETS_Data_Groups] PRIMARY KEY CLUSTERED 
(
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETS_Income]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETS_Income](
	[ref_year] [int] NOT NULL,
	[ref_no] [varchar](5) NOT NULL,
	[transaction_no] [int] NOT NULL,
	[ref_status] [varchar](1) NOT NULL,
	[national_id] [varchar](13) NOT NULL,
	[account_no] [varchar](10) NOT NULL,
	[amount] [decimal](17, 2) NOT NULL,
	[group_id] [varchar](50) NOT NULL,
	[sales_code] [varchar](10) NULL,
	[remark] [varchar](max) NULL,
	[source] [varchar](1) NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [varchar](50) NOT NULL,
	[updated_date] [datetime] NOT NULL,
	[updated_by] [varchar](50) NOT NULL,
	[submitted_date] [datetime] NULL,
	[approved_date] [datetime] NULL,
	[approved_by] [varchar](50) NULL,
	[rejected_date] [datetime] NULL,
	[rejected_by] [varchar](50) NULL,
	[rejected_reason] [varchar](1000) NULL,
	[paid_date] [datetime] NULL,
	[manual_paid_date] [datetime] NULL,
	[manual_paid_by] [varchar](50) NULL,
	[manual_paid_description] [varchar](1000) NULL,
	[confirm_paid_date] [datetime] NULL,
	[confirm_paid_by] [varchar](50) NULL,
	[cancelled_date] [datetime] NULL,
	[cancelled_reason] [varchar](50) NULL,
	[batch_run_date] [datetime] NULL,
 CONSTRAINT [PK_NETS_Income] PRIMARY KEY CLUSTERED 
(
	[ref_year] ASC,
	[ref_no] ASC,
	[transaction_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETS_List_of_Values]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETS_List_of_Values](
	[lov_field] [varchar](50) NOT NULL,
	[lov_code] [varchar](50) NOT NULL,
	[lov_active] [bit] NOT NULL,
	[lov_description] [varchar](250) NOT NULL,
	[lov_condition] [varchar](100) NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [varchar](50) NOT NULL,
	[updated_date] [datetime] NOT NULL,
	[updated_by] [varchar](50) NOT NULL,
 CONSTRAINT [PK_NETS_List_of_Values] PRIMARY KEY CLUSTERED 
(
	[lov_field] ASC,
	[lov_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETS_Payees]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETS_Payees](
	[national_id] [varchar](13) NOT NULL,
	[pre_name] [varchar](20) NOT NULL,
	[first_name] [varchar](100) NOT NULL,
	[last_name] [varchar](100) NOT NULL,
	[address] [varchar](1000) NOT NULL,
	[account_no] [varchar](10) NOT NULL,
	[active] [bit] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [varchar](50) NOT NULL,
	[updated_date] [datetime] NOT NULL,
	[updated_by] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETS_Roles]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETS_Roles](
	[role_id] [varchar](20) NOT NULL,
	[role_title] [varchar](100) NOT NULL,
	[role_level] [int] NOT NULL,
	[active] [bit] NOT NULL,
	[menu_manual_entry] [bit] NOT NULL,
	[menu_inquiry] [bit] NOT NULL,
	[menu_setup] [bit] NOT NULL,
	[menu_admin] [bit] NOT NULL,
	[menu_report] [bit] NOT NULL,
	[menu_tax] [bit] NOT NULL,
	[menu_it] [bit] NOT NULL,
	[func_approve] [bit] NOT NULL,
	[func_upload] [bit] NOT NULL,
	[func_payee] [bit] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [varchar](50) NOT NULL,
	[updated_date] [datetime] NOT NULL,
	[updated_by] [varchar](50) NOT NULL,
	[menu_01] [bit] NULL,
	[menu_02] [bit] NULL,
	[menu_03] [bit] NULL,
	[menu_04] [bit] NULL,
	[menu_05] [bit] NULL,
	[menu_06] [bit] NULL,
	[menu_07] [bit] NULL,
	[menu_08] [bit] NULL,
	[menu_09] [bit] NULL,
	[menu_10] [bit] NULL,
	[func_01] [bit] NULL,
	[func_02] [bit] NULL,
	[func_03] [bit] NULL,
	[func_04] [bit] NULL,
	[func_05] [bit] NULL,
	[func_06] [bit] NULL,
	[func_07] [bit] NULL,
	[func_08] [bit] NULL,
	[func_09] [bit] NULL,
	[func_10] [bit] NULL,
 CONSTRAINT [PK_NETS_Roles] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETS_Tax_Deduction_Terms]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETS_Tax_Deduction_Terms](
	[tax_id] [varchar](50) NOT NULL,
	[tax_exemption_rate] [float] NOT NULL,
	[tax_exemption_max] [float] NOT NULL,
	[tax_deduction] [float] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [varchar](50) NOT NULL,
	[updated_date] [datetime] NOT NULL,
	[updated_by] [varchar](50) NOT NULL,
 CONSTRAINT [PK_NETS_Tax_Deduction_Terms] PRIMARY KEY CLUSTERED 
(
	[tax_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETS_Tax_Terms]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETS_Tax_Terms](
	[tax_id] [varchar](50) NOT NULL,
	[tax_rate] [float] NOT NULL,
	[effective_date] [date] NOT NULL,
	[tax_range_begin] [int] NOT NULL,
	[tax_range_end] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [varchar](50) NOT NULL,
	[updated_date] [datetime] NOT NULL,
	[updated_by] [varchar](50) NOT NULL,
 CONSTRAINT [PK_NETS_Tax_Terms] PRIMARY KEY CLUSTERED 
(
	[tax_id] ASC,
	[tax_rate] ASC,
	[effective_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETS_User_Profiles]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETS_User_Profiles](
	[oa_user] [varchar](50) NOT NULL,
	[active] [bit] NOT NULL,
	[role_id] [varchar](20) NOT NULL,
	[data_group_id] [varchar](20) NOT NULL,
	[team_id] [varchar](20) NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [varchar](20) NOT NULL,
	[updated_date] [datetime] NOT NULL,
	[updated_by] [varchar](50) NOT NULL,
 CONSTRAINT [PK_UserProfiles] PRIMARY KEY CLUSTERED 
(
	[oa_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETS_User_Profiles_Info]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETS_User_Profiles_Info](
	[oa_user] [varchar](50) NOT NULL,
	[first_name_th] [varchar](100) NOT NULL,
	[last_name_th] [varchar](100) NOT NULL,
	[first_name_en] [varchar](100) NOT NULL,
	[last_name_en] [varchar](100) NOT NULL,
	[division_code] [varchar](6) NOT NULL,
	[division_name] [varchar](250) NOT NULL,
 CONSTRAINT [PK_NETS_User_Profiles_Info] PRIMARY KEY CLUSTERED 
(
	[oa_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NETS_Batch_Calendars] ADD  CONSTRAINT [DF_NETS_Batch_Calendars_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[NETS_Batch_Calendars] ADD  CONSTRAINT [DF_NETS_Batch_Calendars_updated_date]  DEFAULT (getdate()) FOR [updated_date]
GO
ALTER TABLE [dbo].[NETS_Data_Groups] ADD  CONSTRAINT [DF_NETS_Data_Groups_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[NETS_Data_Groups] ADD  CONSTRAINT [DF_NETS_Data_Groups_updated_date]  DEFAULT (getdate()) FOR [updated_date]
GO
ALTER TABLE [dbo].[NETS_Income] ADD  CONSTRAINT [DF_NETS_Income_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[NETS_Income] ADD  CONSTRAINT [DF_NETS_Income_updated_date]  DEFAULT (getdate()) FOR [updated_date]
GO
ALTER TABLE [dbo].[NETS_Income] ADD  DEFAULT (getdate()) FOR [submitted_date]
GO
ALTER TABLE [dbo].[NETS_Income] ADD  DEFAULT (getdate()) FOR [approved_date]
GO
ALTER TABLE [dbo].[NETS_Income] ADD  DEFAULT (getdate()) FOR [rejected_date]
GO
ALTER TABLE [dbo].[NETS_Income] ADD  DEFAULT (getdate()) FOR [paid_date]
GO
ALTER TABLE [dbo].[NETS_Income] ADD  DEFAULT (getdate()) FOR [manual_paid_date]
GO
ALTER TABLE [dbo].[NETS_Income] ADD  DEFAULT (getdate()) FOR [confirm_paid_date]
GO
ALTER TABLE [dbo].[NETS_Income] ADD  DEFAULT (getdate()) FOR [cancelled_date]
GO
ALTER TABLE [dbo].[NETS_Income] ADD  DEFAULT (getdate()) FOR [batch_run_date]
GO
ALTER TABLE [dbo].[NETS_List_of_Values] ADD  CONSTRAINT [DF_NETS_List_of_Values_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[NETS_List_of_Values] ADD  CONSTRAINT [DF_NETS_List_of_Values_updated_date]  DEFAULT (getdate()) FOR [updated_date]
GO
ALTER TABLE [dbo].[NETS_Payees] ADD  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[NETS_Payees] ADD  DEFAULT (getdate()) FOR [updated_date]
GO
ALTER TABLE [dbo].[NETS_Roles] ADD  CONSTRAINT [DF_NETS_Roles_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[NETS_Roles] ADD  CONSTRAINT [DF_NETS_Roles_updated_date]  DEFAULT (getdate()) FOR [updated_date]
GO
ALTER TABLE [dbo].[NETS_Tax_Deduction_Terms] ADD  CONSTRAINT [DF_NETS_Tax_Deduction_Terms_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[NETS_Tax_Deduction_Terms] ADD  CONSTRAINT [DF_NETS_Tax_Deduction_Terms_updated_date]  DEFAULT (getdate()) FOR [updated_date]
GO
ALTER TABLE [dbo].[NETS_Tax_Terms] ADD  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[NETS_Tax_Terms] ADD  DEFAULT (getdate()) FOR [updated_date]
GO
ALTER TABLE [dbo].[NETS_User_Profiles] ADD  CONSTRAINT [DF_UserProfiles_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[NETS_User_Profiles] ADD  CONSTRAINT [DF_UserProfiles_updated_date]  DEFAULT (getdate()) FOR [updated_date]
GO
/****** Object:  StoredProcedure [dbo].[deleteTax]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[deleteTax]
	@tax_id VARCHAR,
    @effective_date DATETIME,
	@tax_range_begin INT
AS
BEGIN
     DELETE 
	 FROM NETS_Tax_Terms 
	 WHERE tax_id = @tax_id 
     AND effective_date = @effective_date
     AND tax_range_begin = @tax_range_begin;
END
GO
/****** Object:  StoredProcedure [dbo].[FindUser]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FindUser]
	@oa_user VARCHAR(50),
	@first_name_en VARCHAR(100),
	@last_name_en VARCHAR(100)
AS
BEGIN
	SELECT *
	FROM  dbo.NETS_User_Profiles_Info
	WHERE oa_user = @oa_user
	AND first_name_en = @first_name_en
	AND @last_name_en = @last_name_en;
END
GO
/****** Object:  StoredProcedure [dbo].[getAllDataGroups]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getAllDataGroups]

AS
BEGIN

	SELECT *
	FROM dbo.NETS_Data_Groups

END
GO
/****** Object:  StoredProcedure [dbo].[getAllIncome]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getAllIncome]

AS
BEGIN

	SELECT *
	FROM dbo.NETS_Income

END
GO
/****** Object:  StoredProcedure [dbo].[getAllListOfValues]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getAllListOfValues]
AS
BEGIN
	
	SELECT *
	FROM dbo.NETS_List_of_Values


END
GO
/****** Object:  StoredProcedure [dbo].[getAllPayees]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getAllPayees]

AS
BEGIN

	SELECT *
	FROM dbo.NETS_Payees

END
GO
/****** Object:  StoredProcedure [dbo].[getAllRoles]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- getAllRoles
-- =============================================
CREATE PROCEDURE [dbo].[getAllRoles]

AS
BEGIN

	SELECT *
	FROM dbo.NETS_Roles

END
/****** Object:  StoredProcedure [dbo].[GetAllUsers] ******/
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[getAllTax]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getAllTax]
AS
BEGIN
    SELECT * FROM NETS_Tax_Terms;
END
GO
/****** Object:  StoredProcedure [dbo].[getAllUser]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getAllUser]
AS
BEGIN

SELECT u1.oa_user
	,u1.active
	,ISNULL(i.first_name_en, '') first_name_en
	,ISNULL(i.last_name_en, '') last_name_en
	,ISNULL(i.first_name_th, '') first_name_th
	,ISNULL(i.last_name_th, '') last_name_th
	,ISNULL(i.division_code, '') division_code
	,ISNULL(i.division_name, '') division_name
	,r.role_title
	,g.group_title data_group_title
	,l2.lov_description team_title
	,l1.lov_description data_product_title
FROM dbo.NETS_User_Profiles u1
LEFT JOIN dbo.NETS_User_Profiles_Info i ON i.oa_user = u1.oa_user AND u1.active = 1
JOIN dbo.NETS_Roles r ON r.role_id = u1.role_id
JOIN dbo.NETS_Data_Groups g ON g.group_id = u1.data_group_id
JOIN dbo.NETS_List_of_Values l1 ON l1.lov_field = 'Product' AND l1.lov_code = u1.team_id
JOIN dbo.NETS_List_of_Values l2 ON l2.lov_field = 'Team' AND l2.lov_code = u1.team_id


END
GO
/****** Object:  StoredProcedure [dbo].[getDataGroups]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getDataGroups]
	@group_id Varchar(50)
AS
BEGIN

        SELECT *
        FROM dbo.NETS_Data_Groups 
        WHERE group_id = @group_id
   
END
GO
/****** Object:  StoredProcedure [dbo].[GetEffective]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEffective]

AS
BEGIN
SELECT tax.*
FROM dbo.NETS_Tax_Terms tax
JOIN (SELECT MAX(t.effective_date) effective_date 
                FROM dbo.NETS_Tax_Terms t
                WHERE t.effective_date <= CAST(SYSDATETIME() as date)) m_t
        ON m_t.effective_date = tax.effective_date
END
GO
/****** Object:  StoredProcedure [dbo].[getIncome]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getIncome]
@ref_year INT,
@ref_no VARCHAR(5),
@transaction_no INT
AS
BEGIN

	SELECT *
	FROM dbo.NETS_Income
	Where ref_year = @ref_year
	AND ref_no = @ref_no
	AND transaction_no = @transaction_no

END
GO
/****** Object:  StoredProcedure [dbo].[getListDataGroups]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListDataGroups]
AS
Begin
	SELECT group_id,group_title,product_id
	From NETS_Data_Groups
End
GO
/****** Object:  StoredProcedure [dbo].[getListOfValues]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListOfValues]
	@lov_field VARCHAR(50),
	@lov_code VARCHAR(50)
AS
BEGIN
	
	SELECT *
	FROM dbo.NETS_List_of_Values
	Where lov_field = @lov_field
	AND lov_code = @lov_code

END
GO
/****** Object:  StoredProcedure [dbo].[getListParents]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListParents]
AS
Begin
   SELECT DISTINCT parent_group_id
   FROM dbo.NETS_Data_Groups

End
GO
/****** Object:  StoredProcedure [dbo].[getListProducts]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListProducts]
AS
Begin
   SELECT l1.lov_code product_id
	   ,l1.lov_description product_title
   FROM dbo.NETS_List_of_Values l1 
   WHERE l1.lov_field = 'Product'
   AND l1.lov_active = 1

End
GO
/****** Object:  StoredProcedure [dbo].[getListRole]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListRole]
AS
Begin
	SELECT role_id,role_title
	From NETS_Roles
End
GO
/****** Object:  StoredProcedure [dbo].[getListTeams]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListTeams]
AS
Begin
   SELECT l2.lov_code team_id
	   ,l2.lov_description team_title
   FROM dbo.NETS_List_of_Values l2
   WHERE l2.lov_field = 'Team'
   AND l2.lov_active = 1

End
GO
/****** Object:  StoredProcedure [dbo].[getPayeesById]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getPayeesById]
@national_id VARCHAR
AS
BEGIN

    SELECT * 
	FROM NETS_Payees 
	WHERE national_id = @national_id;

END
GO
/****** Object:  StoredProcedure [dbo].[getRole]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- getRole
-- =============================================
CREATE PROCEDURE [dbo].[getRole]
@role_id VARCHAR(20)
AS
BEGIN

	SELECT *
	FROM dbo.NETS_Roles
	WHERE role_id = @role_id;

END
GO
/****** Object:  StoredProcedure [dbo].[getTaxByDate]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getTaxByDate]
    @effective_date DATETIME
AS
BEGIN
    SELECT * FROM NETS_Tax_Terms WHERE effective_date = @effective_date;
END
GO
/****** Object:  StoredProcedure [dbo].[getTaxById]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getTaxById]
	@tax_id VARCHAR(50),
    @effective_date DATE,
	@tax_range_begin INT
AS
BEGIN
    SELECT * 
    FROM NETS_Tax_Terms 
    WHERE  tax_id = @tax_id 
    AND effective_date = @effective_date
    AND tax_range_begin = @tax_range_begin;
END
GO
/****** Object:  StoredProcedure [dbo].[getUserName]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getUserName]
	@oa_user VARCHAR(50)
AS
BEGIN
SELECT u1.oa_user
	,u1.active
	,ISNULL(i.first_name_en, '') first_name_en
	,ISNULL(i.last_name_en, '') last_name_en
	,ISNULL(i.first_name_th, '') first_name_th
	,ISNULL(i.last_name_th, '') last_name_th
	,ISNULL(i.division_code, '') division_code
	,ISNULL(i.division_name, '') division_name
	,r.role_id
	,g.group_id data_group_id
	,g.team_id
	,g.product_id data_product_id
	,r.role_title
	,g.group_title data_group_title
	,l1.lov_description data_product_title
FROM dbo.NETS_User_Profiles u1
LEFT JOIN dbo.NETS_User_Profiles_Info i ON i.oa_user = u1.oa_user AND u1.active = 1
JOIN dbo.NETS_Roles r ON r.role_id = u1.role_id
JOIN dbo.NETS_Data_Groups g ON g.group_id = u1.data_group_id
JOIN dbo.NETS_List_of_Values l1 ON l1.lov_code = u1.team_id 
WHERE u1.oa_user = @oa_user
END
GO
/****** Object:  StoredProcedure [dbo].[insertListOfValues]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertListOfValues]
 @Field varchar(50)
,@Code varchar(50)
,@Active bit
,@Description varchar(250)
,@Condition varchar(100)
,@UpdatedBy varchar(50)
AS
BEGIN

BEGIN TRANSACTION
BEGIN TRY

	INSERT INTO dbo.NETS_List_of_Values VALUES (
	 @Field
    ,@Code
	,@Active
	,@Description
	,IIF(@Condition = '', null, @Condition)
	,SYSDATETIME()
	,@UpdatedBy
	,SYSDATETIME()
	,@UpdatedBy);

	COMMIT;
END TRY
BEGIN CATCH
	
	UPDATE dbo.NETS_List_of_Values
	SET  lov_description = @Description
		,lov_active = @Active
		,lov_condition = IIF(@Condition = '', null, @Condition)
		,updated_by = @UpdatedBy
		,updated_date = SYSDATETIME()
	WHERE lov_field = @Field
	AND lov_code = @Code;

	COMMIT;
END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[Login]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Login
-- =============================================
CREATE PROCEDURE [dbo].[Login] 
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
/****** Object:  StoredProcedure [dbo].[postDataGroups]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[postDataGroups]
@group_id Varchar(50),
@group_title Varchar(100),
@parent_group_id Varchar(50),
@team_id Varchar(20),
@active Bit,
@product_id Varchar(20),
@updated_by Varchar(50)

AS
BEGIN

BEGIN TRANSACTION
BEGIN TRY

	INSERT INTO dbo.NETS_Data_Groups
	values(@group_id,
	       @group_title,
		   @parent_group_id,
		   @active,@team_id,
		   @product_id,
		   SYSDATETIME(),
		   @updated_by,
		   SYSDATETIME(),
		   @updated_by);
		
	COMMIT;
END TRY
BEGIN CATCH
	 UPDATE dbo.NETS_Data_Groups
    SET group_title = @group_title, 
	    parent_group_id = @parent_group_id, 
		team_id = @team_id, 
		active = @active,
		product_id = @product_id, 
		updated_date = SYSDATETIME(), 
		updated_by = @updated_by
    WHERE group_id = @group_id;

END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[postListOfValues]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[postListOfValues]
 @Field varchar(50)
,@Code varchar(50)
,@Active bit
,@Description varchar(250)
,@Condition varchar(100)
,@UpdatedBy varchar(50)
AS
BEGIN

BEGIN TRANSACTION
BEGIN TRY

	INSERT INTO dbo.NETS_List_of_Values VALUES (
	 @Field
    ,@Code
	,@Active
	,@Description
	,IIF(@Condition = '', null, @Condition)
	,SYSDATETIME()
	,@UpdatedBy
	,SYSDATETIME()
	,@UpdatedBy);

	COMMIT;
END TRY
BEGIN CATCH
	
	UPDATE dbo.NETS_List_of_Values
	SET  lov_description = @Description
	    ,lov_active = @Active
		,lov_condition = IIF(@Condition = '', null, @Condition)
		,updated_by = @UpdatedBy
		,updated_date = SYSDATETIME()
	WHERE lov_field = @Field
	AND lov_code = @Code;

	COMMIT;
END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[postRole]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[postRole]
    @role_id VARCHAR(20),
    @role_title VARCHAR(250),
    @role_level INT,
    @active BIT,
    @menu_manual_entry BIT,
    @menu_inquiry BIT,
    @menu_setup BIT,
	@menu_admin BIT,
    @menu_report BIT,
    @menu_tax BIT,
    @menu_it BIT,
    @func_approve BIT,
    @func_upload BIT,
    @func_payee BIT,
    @updated_by VARCHAR(50),
    @menu_01 BIT ,
    @menu_02 BIT ,
    @menu_03 BIT ,
    @menu_04 BIT ,
    @menu_05 BIT ,
    @menu_06 BIT ,
    @menu_07 BIT ,
    @menu_08 BIT ,
    @menu_09 BIT ,
    @menu_10 BIT ,
    @func_01 BIT ,
    @func_02 BIT ,
    @func_03 BIT ,
    @func_04 BIT ,
    @func_05 BIT ,
    @func_06 BIT ,
    @func_07 BIT ,
    @func_08 BIT ,
    @func_09 BIT ,
    @func_10 BIT 
AS
BEGIN

BEGIN TRANSACTION
BEGIN TRY            
        INSERT INTO dbo.NETS_Roles 
            VALUES
            (   
			       @role_id,
    @role_title ,
    @role_level ,
    @active ,
    @menu_manual_entry ,
    @menu_inquiry ,
    @menu_setup ,
	@menu_admin ,
    @menu_report ,
    @menu_tax ,
    @menu_it ,
    @func_approve ,
    @func_upload ,
    @func_payee ,
	 SYSDATETIME(),
	 @updated_by,
	  SYSDATETIME(),
    @updated_by ,
    @menu_01  ,
    @menu_02  ,
    @menu_03  ,
    @menu_04  ,
    @menu_05  ,
    @menu_06  ,
    @menu_07  ,
    @menu_08  ,
    @menu_09  ,
    @menu_10  ,
    @func_01  ,
    @func_02  ,
    @func_03  ,
    @func_04  ,
    @func_05  ,
    @func_06  ,
    @func_07  ,
    @func_08  ,
    @func_09  ,
    @func_10 
            )

	COMMIT;
END TRY
BEGIN CATCH
            UPDATE dbo.NETS_Roles
            SET
                role_title = @role_title,
                @role_level = @role_level,
                active = @active,
                menu_manual_entry = @menu_manual_entry,
                menu_inquiry = @menu_inquiry,
                menu_setup = @menu_setup,
				menu_admin = @menu_admin,
                menu_report = @menu_report,
                menu_tax = @menu_tax,
                menu_it = @menu_it,
                func_approve = @func_approve,
                func_upload = @func_upload,
                func_payee = @func_payee,
                updated_date = SYSDATETIME(),
                updated_by = @updated_by,
                menu_01 = @menu_01,
                menu_02 = @menu_02,
                menu_03 = @menu_03,
                menu_04 = @menu_04,
                menu_05 = @menu_05,
                menu_06 = @menu_06,
                menu_07 = @menu_07,
                menu_08 = @menu_08,
                menu_09 = @menu_09,
                menu_10 = @menu_10,
                func_01 = @func_01,
                func_02 = @func_02,
                func_03 = @func_03,
                func_04 = @func_04,
                func_05 = @func_05,
                func_06 = @func_06,
                func_07 = @func_07,
                func_08 = @func_08,
                func_09 = @func_09,
                func_10 = @func_10
			WHERE
                role_id = @role_id;
	COMMIT;
END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[postUsername]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[postUsername]
@oa_user varchar(50)
,@active bit
,@first_name_th varchar(100)
,@last_name_th varchar(100)
,@first_name_en varchar(100)
,@last_name_en varchar(100)
,@division_code varchar(6)
,@division_name varchar(250)
,@role_id varchar(20)
,@data_group_id varchar(20)
,@team_id varchar(20)
,@UpdatedBy varchar(50)
AS
BEGIN

BEGIN TRANSACTION
BEGIN TRY

	INSERT INTO dbo.NETS_User_Profiles VALUES (
	@oa_user
	,@active
	,@role_id
	,@data_group_id
	,@team_id
	,@UpdatedBy, SYSDATETIME(), @UpdatedBy, SYSDATETIME());

	INSERT INTO dbo.NETS_User_Profiles_Info VALUES (
	@oa_user
	,@first_name_th
	,@last_name_th
	,@first_name_en
	,@last_name_en
	,@division_code
	,@division_name);

	COMMIT;
END TRY
BEGIN CATCH
	
	IF @@TRANCOUNT > 0
		ROLLBACK;

	UPDATE dbo.NETS_User_Profiles
	SET active = @active
		,role_id = @role_id
		,data_group_id = @data_group_id
		,team_id = @team_id
		,updated_by = @UpdatedBy
		,updated_date = SYSDATETIME()
	WHERE oa_user = @oa_user;

	COMMIT;
END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[RolePermission]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RolePermission]
	@oa_user VARCHAR(50)
AS
BEGIN

SELECT roles.*
FROM dbo.NETS_Roles roles
JOIN dbo.NETS_User_Profiles users ON users.role_id = roles.role_id
WHERE users.oa_user = @oa_user
AND users.active = 1 ;

END
GO
/****** Object:  StoredProcedure [dbo].[updateTaxTerms]    Script Date: 3/28/2023 08:44:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateTaxTerms]
    @tax_id VARCHAR(50),
    @tax_rate float,
	@effective_date Datetime,
	@tax_range_begin INT,
	@tax_range_end INT,
	@product_id VARCHAR(20),
	@updated_date Datetime,
	@updated_by VARCHAR(50)
AS
BEGIN
    UPDATE dbo.NETS_Tax_Terms
    SET tax_rate = @tax_rate 
    WHERE tax_id = @tax_id 
	AND effective_date = @effective_date
	AND tax_range_begin = @tax_range_begin;
END;
GO
