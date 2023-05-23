USE [master]
GO
/****** Object:  Database [Nets]    Script Date: 5/23/2023 4:40:51 PM ******/
CREATE DATABASE [Nets]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Nets', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Nets.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Nets_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Nets_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Nets] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Nets].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Nets] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Nets] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Nets] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Nets] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Nets] SET ARITHABORT OFF 
GO
ALTER DATABASE [Nets] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Nets] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Nets] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Nets] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Nets] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Nets] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Nets] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Nets] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Nets] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Nets] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Nets] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Nets] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Nets] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Nets] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Nets] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Nets] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Nets] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Nets] SET RECOVERY FULL 
GO
ALTER DATABASE [Nets] SET  MULTI_USER 
GO
ALTER DATABASE [Nets] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Nets] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Nets] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Nets] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Nets] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Nets] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Nets] SET QUERY_STORE = ON
GO
ALTER DATABASE [Nets] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Nets]
GO
/****** Object:  UserDefinedTableType [dbo].[income_ref_no_type]    Script Date: 5/23/2023 4:40:51 PM ******/
CREATE TYPE [dbo].[income_ref_no_type] AS TABLE(
	[ref_year] [int] NULL,
	[ref_no] [varchar](5) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[insertRole]    Script Date: 5/23/2023 4:40:51 PM ******/
CREATE TYPE [dbo].[insertRole] AS TABLE(
	[id] [int] NULL,
	[rolename] [varchar](max) NULL,
	[permission] [varchar](max) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[insertUser]    Script Date: 5/23/2023 4:40:51 PM ******/
CREATE TYPE [dbo].[insertUser] AS TABLE(
	[id] [int] NULL,
	[fullname] [varchar](max) NULL,
	[password] [varchar](max) NULL,
	[roleid] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[manual_income_upload_type]    Script Date: 5/23/2023 4:40:51 PM ******/
CREATE TYPE [dbo].[manual_income_upload_type] AS TABLE(
	[national_id] [varchar](13) NOT NULL,
	[group_id] [varchar](50) NOT NULL,
	[amount] [decimal](17, 2) NOT NULL,
	[sales_code] [varchar](10) NULL,
	[remark] [varchar](max) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[national_id_type]    Script Date: 5/23/2023 4:40:51 PM ******/
CREATE TYPE [dbo].[national_id_type] AS TABLE(
	[national_id] [varchar](13) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[roles_type]    Script Date: 5/23/2023 4:40:51 PM ******/
CREATE TYPE [dbo].[roles_type] AS TABLE(
	[id] [int] NOT NULL,
	[rolename] [varchar](100) NOT NULL,
	[permission] [varchar](max) NULL
)
GO
/****** Object:  UserDefinedFunction [dbo].[getRunningIncomeRefNo]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[getRunningIncomeRefNo]
(
@year int
)
RETURNS varchar(5)
AS
BEGIN

	DECLARE @last int;

	SELECT @last = ISNULL(MAX(CAST(i.ref_no as int)), 0)
	FROM dbo.NETS_Incomes i
	WHERE i.ref_year = @year;	

	RETURN RIGHT(CONCAT(REPLACE(SPACE(5), ' ', '0'), @last+1), 5)

END

GO
/****** Object:  Table [dbo].[NETS_Batch_Calendars]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETS_Batch_Calendars](
	[calendar_year] [int] NOT NULL,
	[calendar_month] [int] NOT NULL,
	[calendar_period] [varchar](6) NOT NULL,
	[calendar_run_date] [date] NOT NULL,
	[batch_run_date] [date] NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [varchar](50) NOT NULL,
	[updated_date] [datetime] NOT NULL,
	[updated_by] [varchar](50) NOT NULL,
	[calendar_run_flag] [bit] NULL,
	[batch_run_flag] [bit] NULL,
 CONSTRAINT [PK_NETS_Batch_Calendars] PRIMARY KEY CLUSTERED 
(
	[calendar_year] ASC,
	[calendar_month] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETS_Data_Groups]    Script Date: 5/23/2023 4:40:51 PM ******/
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
/****** Object:  Table [dbo].[NETS_Incomes]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETS_Incomes](
	[ref_year] [int] NOT NULL,
	[ref_no] [varchar](5) NOT NULL,
	[transaction_no] [int] NOT NULL,
	[ref_status] [varchar](50) NOT NULL,
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
/****** Object:  Table [dbo].[NETS_List_of_Values]    Script Date: 5/23/2023 4:40:51 PM ******/
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
/****** Object:  Table [dbo].[NETS_Payees]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETS_Payees](
	[national_id] [varchar](13) NOT NULL,
	[pre_name] [varchar](20) NOT NULL,
	[first_name] [varchar](100) NOT NULL,
	[last_name] [varchar](100) NOT NULL,
	[address_build_name] [varchar](40) NULL,
	[address_room_no] [varchar](20) NULL,
	[address_floor_no] [varchar](20) NULL,
	[address_village_name] [varchar](100) NULL,
	[address_no] [varchar](40) NOT NULL,
	[address_moo_no] [varchar](20) NULL,
	[address_soi] [varchar](100) NULL,
	[address_street_name] [varchar](100) NULL,
	[address_tambon] [varchar](50) NOT NULL,
	[address_amphur] [varchar](50) NOT NULL,
	[address_province] [varchar](50) NOT NULL,
	[address_postal_code] [varchar](5) NOT NULL,
	[account_no] [varchar](10) NOT NULL,
	[active] [bit] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [varchar](50) NOT NULL,
	[updated_date] [datetime] NOT NULL,
	[updated_by] [varchar](50) NOT NULL,
 CONSTRAINT [PK_NETS_Payees] PRIMARY KEY CLUSTERED 
(
	[national_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETS_Payees_Change]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETS_Payees_Change](
	[action] [varchar](10) NOT NULL,
	[national_id] [varchar](13) NOT NULL,
	[changed_date] [datetime] NOT NULL,
	[changed_by] [varchar](50) NOT NULL,
	[status] [char](1) NOT NULL,
	[approved_date] [datetime] NULL,
	[approved_by] [varchar](50) NULL,
	[rejected_date] [datetime] NULL,
	[rejected_by] [varchar](50) NULL,
	[rejected_reason] [varchar](1000) NULL,
	[pre_name] [varchar](20) NOT NULL,
	[first_name] [varchar](100) NOT NULL,
	[last_name] [varchar](100) NOT NULL,
	[address_build_name] [varchar](40) NULL,
	[address_room_no] [varchar](20) NULL,
	[address_floor_no] [varchar](20) NULL,
	[address_village_name] [varchar](100) NULL,
	[address_no] [varchar](40) NOT NULL,
	[address_moo_no] [varchar](20) NULL,
	[address_soi] [varchar](100) NULL,
	[address_street_name] [varchar](100) NULL,
	[address_tambon] [varchar](50) NOT NULL,
	[address_amphur] [varchar](50) NOT NULL,
	[address_province] [varchar](50) NOT NULL,
	[address_postal_code] [varchar](5) NOT NULL,
	[account_no] [varchar](10) NOT NULL,
	[active] [bit] NOT NULL,
	[remark] [varchar](1000) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETS_Payments]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETS_Payments](
	[ref_year] [int] NOT NULL,
	[ref_no] [varchar](5) NOT NULL,
	[transaction_no] [int] NOT NULL,
	[national_id] [varchar](13) NOT NULL,
	[account_no] [varchar](10) NOT NULL,
	[group_id] [varchar](50) NOT NULL,
	[amount] [decimal](17, 2) NOT NULL,
	[withholding_tax] [decimal](17, 2) NOT NULL,
	[amount_net] [decimal](17, 2) NOT NULL,
	[payment_status] [char](1) NOT NULL,
	[batch_run_date] [date] NULL,
	[batch_paid_date] [date] NULL,
	[created_date] [datetime] NOT NULL,
	[updated_date] [datetime] NOT NULL,
	[description] [varchar](max) NULL,
	[adjusted_by] [varchar](50) NULL,
	[adjusted_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ref_year] ASC,
	[ref_no] ASC,
	[transaction_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETS_Payments_Adjustment]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETS_Payments_Adjustment](
	[ref_year] [int] NOT NULL,
	[ref_no] [varchar](5) NOT NULL,
	[transaction_no] [int] NOT NULL,
	[amount] [decimal](17, 2) NOT NULL,
	[withholding_tax] [decimal](17, 2) NOT NULL,
	[amount_net] [decimal](17, 2) NOT NULL,
	[changed_date] [datetime] NOT NULL,
	[changed_by] [varchar](50) NOT NULL,
	[status] [char](1) NOT NULL,
	[approved_date] [datetime] NULL,
	[approved_by] [varchar](50) NULL,
	[rejected_date] [datetime] NULL,
	[rejected_by] [varchar](50) NULL,
	[rejected_reason] [varchar](1000) NULL,
	[remark] [varchar](1000) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETS_Roles]    Script Date: 5/23/2023 4:40:51 PM ******/
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
/****** Object:  Table [dbo].[NETS_Tax_Deduction_Terms]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETS_Tax_Deduction_Terms](
	[effective_date] [date] NOT NULL,
	[tax_exemption_rate] [float] NOT NULL,
	[tax_exemption_max] [float] NOT NULL,
	[tax_deduction] [float] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [varchar](50) NOT NULL,
	[updated_date] [datetime] NOT NULL,
	[updated_by] [varchar](50) NOT NULL,
 CONSTRAINT [PK_NETS_Tax_Deduction_Terms] PRIMARY KEY CLUSTERED 
(
	[effective_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETS_Tax_Terms]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETS_Tax_Terms](
	[tax_rate] [float] NOT NULL,
	[effective_date] [date] NOT NULL,
	[tax_range_begin] [int] NOT NULL,
	[tax_range_end] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [varchar](50) NOT NULL,
	[updated_date] [datetime] NOT NULL,
	[updated_by] [varchar](50) NOT NULL,
 CONSTRAINT [PK_NETS_Tax_Terms_1] PRIMARY KEY CLUSTERED 
(
	[effective_date] ASC,
	[tax_range_begin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETS_User_Profiles]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETS_User_Profiles](
	[oa_user] [varchar](50) NOT NULL,
	[password] [varchar](50) NULL,
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
/****** Object:  Table [dbo].[NETS_User_Profiles_Info]    Script Date: 5/23/2023 4:40:51 PM ******/
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
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2022, 1, N'Jan-22', CAST(N'2022-01-13' AS Date), CAST(N'2022-01-13' AS Date), CAST(N'2023-05-12T14:28:36.933' AS DateTime), N'batch', CAST(N'2023-05-12T14:28:36.933' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2022, 2, N'Feb-22', CAST(N'2022-02-11' AS Date), CAST(N'2022-02-11' AS Date), CAST(N'2023-05-12T14:29:11.750' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.750' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2022, 3, N'Mar-22', CAST(N'2022-03-11' AS Date), CAST(N'2022-03-11' AS Date), CAST(N'2023-05-12T14:29:11.750' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.750' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2022, 4, N'Apr-22', CAST(N'2022-04-12' AS Date), CAST(N'2022-04-12' AS Date), CAST(N'2023-05-12T14:29:11.750' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.750' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2022, 5, N'May-22', CAST(N'2022-05-13' AS Date), CAST(N'2022-05-13' AS Date), CAST(N'2023-05-12T14:29:11.750' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.750' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2022, 6, N'Jun-22', CAST(N'2022-06-13' AS Date), CAST(N'2022-06-13' AS Date), CAST(N'2023-05-12T14:29:11.750' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.750' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2022, 7, N'Jul-22', CAST(N'2022-07-13' AS Date), CAST(N'2022-07-13' AS Date), CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2022, 8, N'Aug-22', CAST(N'2022-08-11' AS Date), CAST(N'2022-08-11' AS Date), CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2022, 9, N'Sep-22', CAST(N'2022-09-13' AS Date), CAST(N'2022-09-13' AS Date), CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2022, 10, N'Oct-22', CAST(N'2022-10-12' AS Date), CAST(N'2022-10-12' AS Date), CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2022, 11, N'Nov-22', CAST(N'2022-11-11' AS Date), CAST(N'2022-11-11' AS Date), CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2022, 12, N'Dec-22', CAST(N'2022-12-13' AS Date), CAST(N'2022-12-13' AS Date), CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2023, 1, N'Jan-23', CAST(N'2023-01-13' AS Date), CAST(N'2023-01-13' AS Date), CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2023, 2, N'Feb-23', CAST(N'2023-02-13' AS Date), CAST(N'2023-02-13' AS Date), CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2023, 3, N'Mar-23', CAST(N'2023-03-13' AS Date), CAST(N'2023-03-13' AS Date), CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2023, 4, N'Apr-23', CAST(N'2023-04-10' AS Date), CAST(N'2023-04-10' AS Date), CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2023, 5, N'May-23', CAST(N'2023-05-12' AS Date), CAST(N'2023-05-12' AS Date), CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2023, 6, N'Jun-23', CAST(N'2023-06-13' AS Date), NULL, CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', 0, 0)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2023, 7, N'Jul-23', CAST(N'2023-07-13' AS Date), NULL, CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', 0, 0)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2023, 8, N'Aug-23', CAST(N'2023-08-11' AS Date), NULL, CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', 0, 0)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2023, 9, N'Sep-23', CAST(N'2023-09-13' AS Date), NULL, CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', 0, 0)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2023, 10, N'Oct-23', CAST(N'2023-10-12' AS Date), NULL, CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', 0, 0)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2023, 11, N'Nov-23', CAST(N'2023-11-13' AS Date), NULL, CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', 0, 0)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2023, 12, N'Dec-23', CAST(N'2023-12-13' AS Date), NULL, CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.753' AS DateTime), N'batch', 0, 0)
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'BLA', N'BLA', NULL, 1, N'DirectSales', N'BLA', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'CreditCard', N'Credit Card', NULL, 1, N'DirectSales', N'CreditCard', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HealthCare', N'Health Care', NULL, 1, N'HealthCare', N'HealthCare', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-M', N'Mortgage Direct Sales Head', NULL, 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MA', N'Mortgage Direct Sales Manager Team1 ( A )', N'HomeLoan-M', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MAA', N'Mortgage Direct Sales Leader AA', N'HomeLoan-MA', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MAB', N'Mortgage Direct Sales Leader AB', N'HomeLoan-MA', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MAC', N'Mortgage Direct Sales Leader AC', N'HomeLoan-MA', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MAD', N'Mortgage Direct Sales Leader AD', N'HomeLoan-MA', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MAE', N'Mortgage Direct Sales Leader AE', N'HomeLoan-MA', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MB', N'Mortgage Direct Sales Manager Team2 ( B )', N'HomeLoan-M', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MBA', N'Mortgage Direct Sales Leader BA', N'HomeLoan-MB', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MBB', N'Mortgage Direct Sales Leader BB', N'HomeLoan-MB', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MBC', N'Mortgage Direct Sales Leader BC', N'HomeLoan-MB', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MC', N'Mortgage Direct Sales Manager Team3 ( C )', N'HomeLoan-M', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MCA', N'Mortgage Direct Sales Leader CA', N'HomeLoan-MC', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MCB', N'Mortgage Direct Sales Leader CB', N'HomeLoan-MC', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MCD', N'Mortgage Direct Sales Leader CD', N'HomeLoan-MC', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MD', N'Mortgage Direct Sales Manager Team4 ( D )', N'HomeLoan-M', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MDA', N'Mortgage Direct Sales Leader DA', N'HomeLoan-MD', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MDC', N'Mortgage Direct Sales Leader DC', N'HomeLoan-MD', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MDD', N'Mortgage Direct Sales Leader DD', N'HomeLoan-MD', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-ME', N'Mortgage Direct Sales Manager Team5 ( E )', N'HomeLoan-M', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MEA', N'Mortgage Direct Sales Leader EA', N'HomeLoan-ME', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MEB', N'Mortgage Direct Sales Leader EB', N'HomeLoan-ME', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MEE', N'Mortgage Direct Sales Leader EE', N'HomeLoan-ME', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MG', N'Mortgage Direct Sales Manager Team6 ( I )', N'HomeLoan-M', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MGA', N'Mortgage Direct Sales Leader GA', N'HomeLoan-MG', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MGB', N'Mortgage Direct Sales Leader GB', N'HomeLoan-MG', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MGC', N'Mortgage Direct Sales Leader GC', N'HomeLoan-MG', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MH', N'Mortgage Direct Sales Manager Team7 ( G )', N'HomeLoan-M', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MHA', N'Mortgage Direct Sales Leader HA', N'HomeLoan-MH', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MHB', N'Mortgage Direct Sales Leader HB', N'HomeLoan-MH', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MHC', N'Mortgage Direct Sales Leader HC', N'HomeLoan-MH', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MI', N'Mortgage Direct Sales Manager Team8 ( H )', N'HomeLoan-M', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MIA', N'Mortgage Direct Sales Leader IA', N'HomeLoan-MI', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MIB', N'Mortgage Direct Sales Leader IB', N'HomeLoan-MI', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-MIC', N'Mortgage Direct Sales Leader IC', N'HomeLoan-MI', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'IT', N'IT', NULL, 1, N'IT', N'IT', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [manual_paid_date], [manual_paid_by], [manual_paid_description], [confirm_paid_date], [confirm_paid_by], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00001', 1, N'S', N'1234567890', N'123', CAST(25.00 AS Decimal(17, 2)), N'IT', NULL, NULL, N'M', CAST(N'2023-04-11T15:20:57.000' AS DateTime), N'admin', CAST(N'2023-04-19T08:46:34.000' AS DateTime), N'admin', CAST(N'2023-04-19T08:46:34.000' AS DateTime), CAST(N'2023-04-11T15:20:57.000' AS DateTime), NULL, CAST(N'2023-04-11T15:20:57.000' AS DateTime), NULL, NULL, CAST(N'2023-04-11T15:20:57.000' AS DateTime), CAST(N'2023-04-11T15:20:57.000' AS DateTime), NULL, NULL, CAST(N'2023-04-11T15:20:57.000' AS DateTime), NULL, CAST(N'2023-04-11T15:20:57.000' AS DateTime), NULL, CAST(N'2023-04-11T15:20:57.000' AS DateTime))
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [manual_paid_date], [manual_paid_by], [manual_paid_description], [confirm_paid_date], [confirm_paid_by], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00002', 1, N'C', N'1234567890', N'123', CAST(0.00 AS Decimal(17, 2)), N'IT', NULL, NULL, N'M', CAST(N'2023-04-18T09:44:51.000' AS DateTime), N'admin', CAST(N'2023-04-19T15:31:06.000' AS DateTime), N'admin', CAST(N'2023-04-19T15:17:18.000' AS DateTime), CAST(N'2023-04-18T09:44:51.000' AS DateTime), NULL, CAST(N'2023-04-18T09:44:51.000' AS DateTime), NULL, NULL, CAST(N'2023-04-18T09:44:51.000' AS DateTime), CAST(N'2023-04-18T09:44:51.000' AS DateTime), NULL, NULL, CAST(N'2023-04-18T09:44:51.000' AS DateTime), NULL, CAST(N'2023-04-19T15:31:06.000' AS DateTime), N'cancel', CAST(N'2023-04-18T09:44:51.000' AS DateTime))
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [manual_paid_date], [manual_paid_by], [manual_paid_description], [confirm_paid_date], [confirm_paid_by], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00003', 1, N'S', N'123456789', N'123123', CAST(50.00 AS Decimal(17, 2)), N'IT', NULL, NULL, N'M', CAST(N'2023-04-18T10:06:10.000' AS DateTime), N'admin', CAST(N'2023-04-18T10:06:10.000' AS DateTime), N'admin', CAST(N'2023-04-18T10:06:10.000' AS DateTime), CAST(N'2023-04-18T10:06:10.000' AS DateTime), NULL, CAST(N'2023-04-18T10:06:10.000' AS DateTime), NULL, NULL, CAST(N'2023-04-18T10:06:10.000' AS DateTime), CAST(N'2023-04-18T10:06:10.000' AS DateTime), NULL, NULL, CAST(N'2023-04-18T10:06:10.000' AS DateTime), NULL, CAST(N'2023-04-18T10:06:10.000' AS DateTime), NULL, CAST(N'2023-04-18T10:06:10.000' AS DateTime))
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [manual_paid_date], [manual_paid_by], [manual_paid_description], [confirm_paid_date], [confirm_paid_by], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00004', 1, N'N', N'123456789', N'123123', CAST(120.00 AS Decimal(17, 2)), N'IT', NULL, NULL, N'M', CAST(N'2023-04-18T10:07:54.000' AS DateTime), N'admin', CAST(N'2023-04-25T13:21:49.000' AS DateTime), N'admin', CAST(N'2023-04-19T15:14:46.000' AS DateTime), CAST(N'2023-04-18T10:07:54.000' AS DateTime), NULL, CAST(N'2023-04-18T10:07:54.000' AS DateTime), NULL, NULL, CAST(N'2023-04-18T10:07:54.000' AS DateTime), CAST(N'2023-04-18T10:07:54.000' AS DateTime), NULL, NULL, CAST(N'2023-04-18T10:07:54.000' AS DateTime), NULL, CAST(N'2023-04-18T10:07:54.000' AS DateTime), NULL, CAST(N'2023-04-18T10:07:54.000' AS DateTime))
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [manual_paid_date], [manual_paid_by], [manual_paid_description], [confirm_paid_date], [confirm_paid_by], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00005', 1, N'N', N'1234567890', N'123', CAST(3.00 AS Decimal(17, 2)), N'IT', NULL, NULL, N'M', CAST(N'2023-04-25T14:31:30.000' AS DateTime), N'admin', CAST(N'2023-04-25T14:31:30.000' AS DateTime), N'admin', CAST(N'2023-04-25T14:31:30.000' AS DateTime), CAST(N'2023-04-25T14:31:30.000' AS DateTime), NULL, CAST(N'2023-04-25T14:31:30.000' AS DateTime), NULL, NULL, CAST(N'2023-04-25T14:31:30.000' AS DateTime), CAST(N'2023-04-25T14:31:30.000' AS DateTime), NULL, NULL, CAST(N'2023-04-25T14:31:30.000' AS DateTime), NULL, CAST(N'2023-04-25T14:31:30.000' AS DateTime), NULL, CAST(N'2023-04-25T14:31:30.000' AS DateTime))
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [manual_paid_date], [manual_paid_by], [manual_paid_description], [confirm_paid_date], [confirm_paid_by], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00006', 1, N'N', N'1234567890', N'123', CAST(999.00 AS Decimal(17, 2)), N'IT', NULL, NULL, N'M', CAST(N'2023-04-25T14:32:23.000' AS DateTime), N'admin', CAST(N'2023-04-25T14:32:23.000' AS DateTime), N'admin', CAST(N'2023-04-25T14:32:23.000' AS DateTime), CAST(N'2023-04-25T14:32:23.000' AS DateTime), NULL, CAST(N'2023-04-25T14:32:23.000' AS DateTime), NULL, NULL, CAST(N'2023-04-25T14:32:23.000' AS DateTime), CAST(N'2023-04-25T14:32:23.000' AS DateTime), NULL, NULL, CAST(N'2023-04-25T14:32:23.000' AS DateTime), NULL, CAST(N'2023-04-25T14:32:23.000' AS DateTime), NULL, CAST(N'2023-04-25T14:32:23.000' AS DateTime))
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'IncomeUpload', N'Template', 1, N' https://bangkokbank.sharepoint.com/teams/NETS/Shared%20Documents/General/Relate%20Document/Template/NETS-Income-Upload_v.1.0_20230425.xlsx', N' NETS-Income-Upload_v.1.0_20230425.xlsx', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'PreName', N'นาง', 1, N'นาง', NULL, CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'PreName', N'นางสาว', 1, N'นางสาว', NULL, CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'PreName', N'นาย', 1, N'นาย', NULL, CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'Product', N'BLA', 1, N'BLA', NULL, CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'Product', N'CreditCard', 1, N'Credit Card', NULL, CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'Product', N'HealthCare', 1, N'Health Care', NULL, CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'Product', N'HomeLoan', 1, N'Home Loan', NULL, CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'Product', N'IT', 1, N'IT', NULL, CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'RefNoStatus', N'A', 1, N'Approved', NULL, CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'RefNoStatus', N'C', 1, N'Cancelled', NULL, CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'RefNoStatus', N'I', 1, N'In-Process', NULL, CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'RefNoStatus', N'M', 1, N'Manual-Paid', NULL, CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'RefNoStatus', N'N', 1, N'New', NULL, CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'RefNoStatus', N'P', 1, N'Paid', NULL, CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'RefNoStatus', N'R', 1, N'Rejected', NULL, CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'RefNoStatus', N'S', 1, N'Submitted', NULL, CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'RefNoStatus', N'U', 1, N'Unpaid', NULL, CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'Source', N'A', 1, N'API', NULL, CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'Source', N'M', 1, N'Manual Key-In', NULL, CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'Source', N'U', 1, N'Excel Upload', NULL, CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'Team', N'DirectSales', 1, N'Direct Sales', NULL, CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'Team', N'HealthCare', 1, N'Health Care', NULL, CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'Team', N'IT', 1, N'IT', NULL, CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'Team', N'Tax', 1, N'Tax', NULL, CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.040' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Payees] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'123456789', N'นาง', N'ผู้ใช้งาน123', N'user 04', N'1', N'1', N'1', N'1', N'25', N'1', N'1', N'1', N'1', N'1', N'1', N'10400', N'123123', 1, CAST(N'2023-03-30T13:50:54.000' AS DateTime), N'admin', CAST(N'2023-12-12T00:00:00.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Payees] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890', N'นาง', N'cat', N'dog', N'1', N'1', N'1', N'1', N'25', N'1', N'1', N'1', N'1', N'1', N'1', N'1000', N'123', 1, CAST(N'2023-03-30T08:47:36.000' AS DateTime), N'admin', CAST(N'2023-12-12T00:00:00.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Payees_Change] ([action], [national_id], [changed_date], [changed_by], [status], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [remark]) VALUES (N'New', N'123456789', CAST(N'2023-12-12T00:00:00.000' AS DateTime), N'admin', N'W', CAST(N'2023-05-23T15:21:49.633' AS DateTime), N'admin', CAST(N'2023-05-23T15:21:27.403' AS DateTime), N'admin', N'', N'นาง', N'ผู้ใช้งาน123', N'user 04', N'1', N'1', N'1', N'1', N'25', N'1', N'1', N'1', N'1', N'1', N'1', N'10400', N'123123', 1, N'1')
GO
INSERT [dbo].[NETS_Payees_Change] ([action], [national_id], [changed_date], [changed_by], [status], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [remark]) VALUES (N'Update', N'1234567890', CAST(N'2023-12-12T00:00:00.000' AS DateTime), N'admin', N'W', NULL, NULL, CAST(N'2023-05-23T15:21:27.403' AS DateTime), N'admin', N'', N'นาง', N'cat', N'dog', N'1', N'1', N'1', N'1', N'25', N'1', N'1', N'1', N'1', N'1', N'1', N'1000', N'123', 1, N'1')
GO
INSERT [dbo].[NETS_Payments] ([ref_year], [ref_no], [transaction_no], [national_id], [account_no], [group_id], [amount], [withholding_tax], [amount_net], [payment_status], [batch_run_date], [batch_paid_date], [created_date], [updated_date], [description], [adjusted_by], [adjusted_date]) VALUES (2023, N'00001', 1, N'1234567890', N'123', N'IT', CAST(25.00 AS Decimal(17, 2)), CAST(0.00 AS Decimal(17, 2)), CAST(0.00 AS Decimal(17, 2)), N'P', CAST(N'2023-05-17' AS Date), CAST(N'2023-05-17' AS Date), CAST(N'2023-05-17T10:43:06.503' AS DateTime), CAST(N'2023-05-17T10:43:06.503' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Payments] ([ref_year], [ref_no], [transaction_no], [national_id], [account_no], [group_id], [amount], [withholding_tax], [amount_net], [payment_status], [batch_run_date], [batch_paid_date], [created_date], [updated_date], [description], [adjusted_by], [adjusted_date]) VALUES (2023, N'00002', 1, N'1234567890', N'123', N'IT', CAST(0.00 AS Decimal(17, 2)), CAST(0.00 AS Decimal(17, 2)), CAST(0.00 AS Decimal(17, 2)), N'P', CAST(N'2023-05-17' AS Date), CAST(N'2023-05-17' AS Date), CAST(N'2023-05-17T10:43:14.057' AS DateTime), CAST(N'2023-05-17T10:43:14.057' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Payments] ([ref_year], [ref_no], [transaction_no], [national_id], [account_no], [group_id], [amount], [withholding_tax], [amount_net], [payment_status], [batch_run_date], [batch_paid_date], [created_date], [updated_date], [description], [adjusted_by], [adjusted_date]) VALUES (2023, N'00003', 1, N'123456789', N'123123', N'IT', CAST(50.00 AS Decimal(17, 2)), CAST(0.00 AS Decimal(17, 2)), CAST(0.00 AS Decimal(17, 2)), N'P', CAST(N'2023-05-17' AS Date), CAST(N'2023-05-17' AS Date), CAST(N'2023-05-17T10:43:24.223' AS DateTime), CAST(N'2023-05-17T10:43:24.223' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Payments] ([ref_year], [ref_no], [transaction_no], [national_id], [account_no], [group_id], [amount], [withholding_tax], [amount_net], [payment_status], [batch_run_date], [batch_paid_date], [created_date], [updated_date], [description], [adjusted_by], [adjusted_date]) VALUES (2023, N'00004', 1, N'123456789', N'123123', N'IT', CAST(120.00 AS Decimal(17, 2)), CAST(0.00 AS Decimal(17, 2)), CAST(0.00 AS Decimal(17, 2)), N'P', CAST(N'2023-05-12' AS Date), CAST(N'2023-05-12' AS Date), CAST(N'2023-05-17T10:43:53.273' AS DateTime), CAST(N'2023-05-17T10:43:53.273' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Payments] ([ref_year], [ref_no], [transaction_no], [national_id], [account_no], [group_id], [amount], [withholding_tax], [amount_net], [payment_status], [batch_run_date], [batch_paid_date], [created_date], [updated_date], [description], [adjusted_by], [adjusted_date]) VALUES (2023, N'00005', 1, N'1234567890', N'123', N'IT', CAST(3.00 AS Decimal(17, 2)), CAST(0.00 AS Decimal(17, 2)), CAST(0.00 AS Decimal(17, 2)), N'P', CAST(N'2023-05-12' AS Date), CAST(N'2023-05-12' AS Date), CAST(N'2023-05-17T10:43:59.667' AS DateTime), CAST(N'2023-05-17T10:43:59.667' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Payments] ([ref_year], [ref_no], [transaction_no], [national_id], [account_no], [group_id], [amount], [withholding_tax], [amount_net], [payment_status], [batch_run_date], [batch_paid_date], [created_date], [updated_date], [description], [adjusted_by], [adjusted_date]) VALUES (2023, N'00006', 1, N'1234567890', N'123', N'IT', CAST(999.00 AS Decimal(17, 2)), CAST(0.00 AS Decimal(17, 2)), CAST(0.00 AS Decimal(17, 2)), N'P', CAST(N'2023-05-12' AS Date), CAST(N'2023-05-12' AS Date), CAST(N'2023-05-17T10:44:06.777' AS DateTime), CAST(N'2023-05-17T10:44:06.777' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Roles] ([role_id], [role_title], [role_level], [active], [menu_manual_entry], [menu_inquiry], [menu_setup], [menu_admin], [menu_report], [menu_tax], [menu_it], [func_approve], [func_upload], [func_payee], [created_date], [created_by], [updated_date], [updated_by], [menu_01], [menu_02], [menu_03], [menu_04], [menu_05], [menu_06], [menu_07], [menu_08], [menu_09], [menu_10], [func_01], [func_02], [func_03], [func_04], [func_05], [func_06], [func_07], [func_08], [func_09], [func_10]) VALUES (N'AppAdmin', N'App - Admin', 50, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Roles] ([role_id], [role_title], [role_level], [active], [menu_manual_entry], [menu_inquiry], [menu_setup], [menu_admin], [menu_report], [menu_tax], [menu_it], [func_approve], [func_upload], [func_payee], [created_date], [created_by], [updated_date], [updated_by], [menu_01], [menu_02], [menu_03], [menu_04], [menu_05], [menu_06], [menu_07], [menu_08], [menu_09], [menu_10], [func_01], [func_02], [func_03], [func_04], [func_05], [func_06], [func_07], [func_08], [func_09], [func_10]) VALUES (N'IT', N'IT', 99, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Roles] ([role_id], [role_title], [role_level], [active], [menu_manual_entry], [menu_inquiry], [menu_setup], [menu_admin], [menu_report], [menu_tax], [menu_it], [func_approve], [func_upload], [func_payee], [created_date], [created_by], [updated_date], [updated_by], [menu_01], [menu_02], [menu_03], [menu_04], [menu_05], [menu_06], [menu_07], [menu_08], [menu_09], [menu_10], [func_01], [func_02], [func_03], [func_04], [func_05], [func_06], [func_07], [func_08], [func_09], [func_10]) VALUES (N'Officer', N'Officer', 10, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Roles] ([role_id], [role_title], [role_level], [active], [menu_manual_entry], [menu_inquiry], [menu_setup], [menu_admin], [menu_report], [menu_tax], [menu_it], [func_approve], [func_upload], [func_payee], [created_date], [created_by], [updated_date], [updated_by], [menu_01], [menu_02], [menu_03], [menu_04], [menu_05], [menu_06], [menu_07], [menu_08], [menu_09], [menu_10], [func_01], [func_02], [func_03], [func_04], [func_05], [func_06], [func_07], [func_08], [func_09], [func_10]) VALUES (N'SuperAdmin', N'Super Admin', 99, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Roles] ([role_id], [role_title], [role_level], [active], [menu_manual_entry], [menu_inquiry], [menu_setup], [menu_admin], [menu_report], [menu_tax], [menu_it], [func_approve], [func_upload], [func_payee], [created_date], [created_by], [updated_date], [updated_by], [menu_01], [menu_02], [menu_03], [menu_04], [menu_05], [menu_06], [menu_07], [menu_08], [menu_09], [menu_10], [func_01], [func_02], [func_03], [func_04], [func_05], [func_06], [func_07], [func_08], [func_09], [func_10]) VALUES (N'Supervisor', N'Supervisor', 30, 1, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Roles] ([role_id], [role_title], [role_level], [active], [menu_manual_entry], [menu_inquiry], [menu_setup], [menu_admin], [menu_report], [menu_tax], [menu_it], [func_approve], [func_upload], [func_payee], [created_date], [created_by], [updated_date], [updated_by], [menu_01], [menu_02], [menu_03], [menu_04], [menu_05], [menu_06], [menu_07], [menu_08], [menu_09], [menu_10], [func_01], [func_02], [func_03], [func_04], [func_05], [func_06], [func_07], [func_08], [func_09], [func_10]) VALUES (N'Tax', N'Tax', 30, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Tax_Deduction_Terms] ([effective_date], [tax_exemption_rate], [tax_exemption_max], [tax_deduction], [created_date], [created_by], [updated_date], [updated_by]) VALUES (CAST(N'2020-01-01' AS Date), 0.5, 80000, 30000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Deduction_Terms] ([effective_date], [tax_exemption_rate], [tax_exemption_max], [tax_deduction], [created_date], [created_by], [updated_date], [updated_by]) VALUES (CAST(N'2023-01-01' AS Date), 0.5, 100000, 60000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Deduction_Terms] ([effective_date], [tax_exemption_rate], [tax_exemption_max], [tax_deduction], [created_date], [created_by], [updated_date], [updated_by]) VALUES (CAST(N'2023-05-01' AS Date), 0.5, 150000, 100000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0, CAST(N'2000-01-01' AS Date), 0, 150000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.03, CAST(N'2000-01-01' AS Date), 150001, 300000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.06, CAST(N'2000-01-01' AS Date), 300001, 500000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.09, CAST(N'2000-01-01' AS Date), 500001, 750000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.12, CAST(N'2000-01-01' AS Date), 750001, 1000000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.15, CAST(N'2000-01-01' AS Date), 1000001, 2000000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.18, CAST(N'2000-01-01' AS Date), 2000001, 5000000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.21, CAST(N'2000-01-01' AS Date), 5000001, 0, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0, CAST(N'2023-01-01' AS Date), 0, 150000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.05, CAST(N'2023-01-01' AS Date), 150001, 300000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.1, CAST(N'2023-01-01' AS Date), 300001, 500000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.15, CAST(N'2023-01-01' AS Date), 500001, 750000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.2, CAST(N'2023-01-01' AS Date), 750001, 1000000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.25, CAST(N'2023-01-01' AS Date), 1000001, 2000000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.3, CAST(N'2023-01-01' AS Date), 2000001, 5000000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.35, CAST(N'2023-01-01' AS Date), 5000001, 0, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0, CAST(N'2023-05-01' AS Date), 0, 200000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.05, CAST(N'2023-05-01' AS Date), 200001, 400000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.1, CAST(N'2023-05-01' AS Date), 400001, 750000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.15, CAST(N'2023-05-01' AS Date), 750001, 1000000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.2, CAST(N'2023-05-01' AS Date), 1000001, 2000000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.25, CAST(N'2023-05-01' AS Date), 2000001, 5000000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.3, CAST(N'2023-05-01' AS Date), 5000001, 10000000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.35, CAST(N'2023-05-01' AS Date), 10000001, 0, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_User_Profiles] ([oa_user], [password], [active], [role_id], [data_group_id], [team_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'admin', N'123', 1, N'SuperAdmin', N'IT', N'IT', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_User_Profiles] ([oa_user], [password], [active], [role_id], [data_group_id], [team_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'user01', N'123', 1, N'IT', N'IT', N'IT', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_User_Profiles] ([oa_user], [password], [active], [role_id], [data_group_id], [team_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'user02', N'123', 0, N'AppAdmin', N'IT', N'IT', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_User_Profiles] ([oa_user], [password], [active], [role_id], [data_group_id], [team_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'user03', N'123', 1, N'Tax', N'IT', N'Tax', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_User_Profiles] ([oa_user], [password], [active], [role_id], [data_group_id], [team_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'user04', N'123', 1, N'Supervisor', N'HealthCare', N'HealthCare', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_User_Profiles] ([oa_user], [password], [active], [role_id], [data_group_id], [team_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'user05', N'123', 1, N'Supervisor', N'BLA', N'DirectSales', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_User_Profiles] ([oa_user], [password], [active], [role_id], [data_group_id], [team_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'user06', N'123', 1, N'Supervisor', N'CreditCard', N'DirectSales', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_User_Profiles] ([oa_user], [password], [active], [role_id], [data_group_id], [team_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'user07', N'123', 1, N'Supervisor', N'HomeLoan-M', N'DirectSales', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_User_Profiles] ([oa_user], [password], [active], [role_id], [data_group_id], [team_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'user08', N'123', 1, N'Officer', N'BLA', N'DirectSales', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_User_Profiles] ([oa_user], [password], [active], [role_id], [data_group_id], [team_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'user09', N'123', 1, N'Officer', N'CreditCard', N'DirectSales', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_User_Profiles] ([oa_user], [password], [active], [role_id], [data_group_id], [team_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'user10', N'123', 1, N'Officer', N'HomeLoan-MA', N'DirectSales', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_User_Profiles] ([oa_user], [password], [active], [role_id], [data_group_id], [team_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'user11', N'123', 1, N'Officer', N'HomeLoan-MB', N'DirectSales', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_User_Profiles] ([oa_user], [password], [active], [role_id], [data_group_id], [team_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'user12', N'123', 1, N'Officer', N'HomeLoan-MC', N'DirectSales', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_User_Profiles] ([oa_user], [password], [active], [role_id], [data_group_id], [team_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'user13', N'123', 1, N'Officer', N'HomeLoan-MD', N'DirectSales', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_User_Profiles] ([oa_user], [password], [active], [role_id], [data_group_id], [team_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'user14', N'123', 1, N'Officer', N'HomeLoan-MAA', N'DirectSales', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_User_Profiles] ([oa_user], [password], [active], [role_id], [data_group_id], [team_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'user15', N'123', 1, N'Officer', N'HomeLoan-MBB', N'DirectSales', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.047' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_User_Profiles_Info] ([oa_user], [first_name_th], [last_name_th], [first_name_en], [last_name_en], [division_code], [division_name]) VALUES (N'admin', N'แอดมิน', N'แอดมิน', N'admin', N'admin', N'001911', N'ERM')
GO
INSERT [dbo].[NETS_User_Profiles_Info] ([oa_user], [first_name_th], [last_name_th], [first_name_en], [last_name_en], [division_code], [division_name]) VALUES (N'user01', N'ผู้ใช้งาน', N'ไอที', N'user', N'user 01', N'001901', N'Central Administration Section')
GO
INSERT [dbo].[NETS_User_Profiles_Info] ([oa_user], [first_name_th], [last_name_th], [first_name_en], [last_name_en], [division_code], [division_name]) VALUES (N'user02', N'ผู้ใช้งาน', N'แอพ แอดมิน', N'user', N'user 02', N'001903', N'Organization and Methodology')
GO
INSERT [dbo].[NETS_User_Profiles_Info] ([oa_user], [first_name_th], [last_name_th], [first_name_en], [last_name_en], [division_code], [division_name]) VALUES (N'user03', N'ผู้ใช้งาน', N'ภาษี', N'user', N'user 03', N'001906', N'Deposit and Related Systems')
GO
INSERT [dbo].[NETS_User_Profiles_Info] ([oa_user], [first_name_th], [last_name_th], [first_name_en], [last_name_en], [division_code], [division_name]) VALUES (N'user04', N'ผู้ใช้งาน', N'หัวหน้า สุขภาพ', N'user', N'user 04', N'001908', N'Loan and Related Systems')
GO
INSERT [dbo].[NETS_User_Profiles_Info] ([oa_user], [first_name_th], [last_name_th], [first_name_en], [last_name_en], [division_code], [division_name]) VALUES (N'user05', N'ผู้ใช้งาน', N'หัวหน้า BLA', N'user', N'user 05', N'001909', N'Channel Management System')
GO
INSERT [dbo].[NETS_User_Profiles_Info] ([oa_user], [first_name_th], [last_name_th], [first_name_en], [last_name_en], [division_code], [division_name]) VALUES (N'user06', N'ผู้ใช้งาน', N'หัวหน้า สายบัตร', N'user', N'user 06', N'001910', N'International Business System')
GO
INSERT [dbo].[NETS_User_Profiles_Info] ([oa_user], [first_name_th], [last_name_th], [first_name_en], [last_name_en], [division_code], [division_name]) VALUES (N'user07', N'ผู้ใช้งาน', N'หัวหน้า สินเชื่อบ้าน', N'user', N'user 07', N'001912', N'Information Management System')
GO
INSERT [dbo].[NETS_User_Profiles_Info] ([oa_user], [first_name_th], [last_name_th], [first_name_en], [last_name_en], [division_code], [division_name]) VALUES (N'user08', N'ผู้ใช้งาน', N'BLA', N'user', N'user 08', N'001913', N'Business Analysis System')
GO
INSERT [dbo].[NETS_User_Profiles_Info] ([oa_user], [first_name_th], [last_name_th], [first_name_en], [last_name_en], [division_code], [division_name]) VALUES (N'user09', N'ผู้ใช้งาน', N'สายบัตร', N'user', N'user 09', N'001923', N'Custody System Group')
GO
INSERT [dbo].[NETS_User_Profiles_Info] ([oa_user], [first_name_th], [last_name_th], [first_name_en], [last_name_en], [division_code], [division_name]) VALUES (N'user10', N'ผู้ใช้งาน', N'สินเชื่อบ้าน', N'user', N'user 10', N'001924', N'Trade Finance System Group')
GO
INSERT [dbo].[NETS_User_Profiles_Info] ([oa_user], [first_name_th], [last_name_th], [first_name_en], [last_name_en], [division_code], [division_name]) VALUES (N'user11', N'ผู้ใช้งาน', N'สินเชื่อบ้าน', N'user', N'user 11', N'001925', N'Treasury System and B.I.B.F. Group')
GO
INSERT [dbo].[NETS_User_Profiles_Info] ([oa_user], [first_name_th], [last_name_th], [first_name_en], [last_name_en], [division_code], [division_name]) VALUES (N'user12', N'ผู้ใช้งาน', N'สินเชื่อบ้าน', N'user', N'user 12', N'001926', N'International Remittance and Collection System Group')
GO
INSERT [dbo].[NETS_User_Profiles_Info] ([oa_user], [first_name_th], [last_name_th], [first_name_en], [last_name_en], [division_code], [division_name]) VALUES (N'user13', N'ผู้ใช้งาน', N'สินเชื่อบ้าน', N'user', N'user 13', N'001927', N'Management Information System Group')
GO
INSERT [dbo].[NETS_User_Profiles_Info] ([oa_user], [first_name_th], [last_name_th], [first_name_en], [last_name_en], [division_code], [division_name]) VALUES (N'user14', N'ผู้ใช้งาน', N'สินเชื่อบ้าน', N'user', N'user 14', N'001928', N'Performance Information System Group')
GO
INSERT [dbo].[NETS_User_Profiles_Info] ([oa_user], [first_name_th], [last_name_th], [first_name_en], [last_name_en], [division_code], [division_name]) VALUES (N'user15', N'ผู้ใช้งาน', N'สินเชื่อบ้าน', N'user', N'user 15', N'001929', N'Head Office Application System Group')
GO
ALTER TABLE [dbo].[NETS_Data_Groups] ADD  CONSTRAINT [DF_NETS_Data_Groups_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[NETS_Data_Groups] ADD  CONSTRAINT [DF_NETS_Data_Groups_updated_date]  DEFAULT (getdate()) FOR [updated_date]
GO
ALTER TABLE [dbo].[NETS_Incomes] ADD  CONSTRAINT [DF_NETS_Income_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[NETS_Incomes] ADD  CONSTRAINT [DF_NETS_Income_updated_date]  DEFAULT (getdate()) FOR [updated_date]
GO
ALTER TABLE [dbo].[NETS_Incomes] ADD  DEFAULT (getdate()) FOR [submitted_date]
GO
ALTER TABLE [dbo].[NETS_Incomes] ADD  DEFAULT (getdate()) FOR [approved_date]
GO
ALTER TABLE [dbo].[NETS_Incomes] ADD  DEFAULT (getdate()) FOR [rejected_date]
GO
ALTER TABLE [dbo].[NETS_Incomes] ADD  DEFAULT (getdate()) FOR [paid_date]
GO
ALTER TABLE [dbo].[NETS_Incomes] ADD  DEFAULT (getdate()) FOR [manual_paid_date]
GO
ALTER TABLE [dbo].[NETS_Incomes] ADD  DEFAULT (getdate()) FOR [confirm_paid_date]
GO
ALTER TABLE [dbo].[NETS_Incomes] ADD  DEFAULT (getdate()) FOR [cancelled_date]
GO
ALTER TABLE [dbo].[NETS_Incomes] ADD  DEFAULT (getdate()) FOR [batch_run_date]
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
ALTER TABLE [dbo].[NETS_Tax_Deduction_Terms] ADD  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[NETS_Tax_Deduction_Terms] ADD  DEFAULT (getdate()) FOR [updated_date]
GO
ALTER TABLE [dbo].[NETS_User_Profiles] ADD  CONSTRAINT [DF_UserProfiles_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[NETS_User_Profiles] ADD  CONSTRAINT [DF_UserProfiles_updated_date]  DEFAULT (getdate()) FOR [updated_date]
GO
/****** Object:  StoredProcedure [dbo].[checkManualIncomeUpload]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[checkManualIncomeUpload]
@lists manual_income_upload_type READONLY
,@username varchar(50)
AS
BEGIN
	
	-- initial data group child for validate group id in payload
	DECLARE @group_table TABLE(group_id varchar(50));
	
	WITH data_group_hierarchy AS ( 
        SELECT h1.*
        FROM dbo.NETS_Data_Groups AS h1
		JOIN dbo.NETS_User_Profiles u ON u.oa_user = @username
									AND h1.group_id = u.data_group_id -- parameter

        UNION ALL

        SELECT c2.*
        FROM data_group_hierarchy AS c1
        JOIN dbo.NETS_Data_Groups AS c2
        ON c2.parent_group_id = c1.group_id)
	-- keep record to table varable
	INSERT INTO @group_table
	SELECT d.group_id
	FROM data_group_hierarchy d;

	-- initial result table variable
	DECLARE @result TABLE(
		"no" int
		,national_id varchar(13)
		,group_id varchar(50)
		,sales_code varchar(10)
		,remark varchar(max)
		,send_date varchar(10)
		,account_no varchar(10)
		,amount decimal(17, 2)
		,pre_name varchar(50)
		,first_name varchar(250)
		,last_name varchar(250)
		,result_status bit
		,result_message varchar(250)
	);
	
	INSERT INTO @result ("no", national_id, group_id, sales_code, remark, amount, result_status, result_message)
	SELECT 
		ROW_NUMBER() OVER(ORDER BY (SELECT null))
		,l.national_id
		,l.group_id
		,ISNULL(l.sales_code, '')
		,ISNULL(l.remark, '')
		,l.amount
		,1
		,'Passed'
	FROM @lists l;

	-- check exist payee
	-- not exist
	UPDATE r
	SET r.result_status = msg.result_status
		,r.result_message = msg.result_message
	FROM @result r
	JOIN (SELECT 
			l.no
			,l.national_id
			,0 result_status
			,'ไม่พบผู้รับเงินในระบบ' result_message
		FROM @result l
		WHERE NOT EXISTS (SELECT 1 
						FROM dbo.NETS_Payees p 
						WHERE p.active = 1
						AND p.national_id = l.national_id)) msg ON msg.national_id = r.national_id
																AND msg.no = r.no;

	-- exist
	UPDATE r
	SET r.account_no = p.account_no
		,r.pre_name = p.pre_name
		,r.first_name = p.first_name
		,r.last_name = p.last_name
	FROM @result r
	JOIN (SELECT 
			p.national_id
			,p.account_no
			,p.pre_name
			,p.first_name
			,p.last_name
		FROM @lists l
		JOIN dbo.NETS_Payees p ON p.active = 1
								AND p.national_id = l.national_id) p ON p.national_id = r.national_id;

	-- check data group id
	UPDATE r
	SET r.result_status = msg.result_status
		,r.result_message = IIF(r.result_status = 0, CONCAT(r.result_message, ', ', msg.result_message), msg.result_message)
	FROM @result r
	JOIN (SELECT 
				l.no
				,l.national_id
				,0 result_status
				,'กลุ่มไม่ถูกต้อง' result_message
			FROM @result l
			WHERE NOT EXISTS (SELECT 1
								FROM @group_table g 
								WHERE g.group_id = l.group_id)) msg ON msg.national_id = r.national_id
																	AND msg.no = r.no;

	-- check amount
	UPDATE r
	SET r.result_status = msg.result_status
		,r.result_message = IIF(r.result_status = 0, CONCAT(r.result_message, ', ', msg.result_message), msg.result_message)
	FROM @result r
	JOIN (SELECT 
				l.no
				,l.national_id
				,0 result_status
				,'จำนวนเงินไม่ถูกต้อง' result_message
			FROM @result l
			WHERE l.amount <= 0 ) msg ON msg.national_id = r.national_id
									AND msg.no = r.no;



	-- send date only status = 1
	UPDATE @result
	SET send_date = FORMAT(SYSDATETIME(), 'dd/MM/yyyy')
	WHERE result_status = 1;



	SELECT 
		r.*
		,COUNT(*) Over() as total_rows
		,SUM(IIF(r.result_status = 1, 1, 0)) Over() as total_valid_rows
		,SUM(IIF(r.result_status = 1, 0, 1)) Over() as total_error_rows
		,SUM(r.amount) Over() as total_amount
	FROM @result r
	ORDER BY r.no ASC;


END

GO
/****** Object:  StoredProcedure [dbo].[deleteTaxTerm]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[deleteTaxTerm]
@effective_date date 
,@tax_range_begin int 

AS
BEGIN

BEGIN TRANSACTION
BEGIN TRY

	DELETE FROM dbo.NETS_Tax_Terms
	WHERE effective_date = @effective_date
	AND tax_range_begin = @tax_range_begin;

	COMMIT;
END TRY
BEGIN CATCH
	
	IF @@TRANCOUNT > 0
		ROLLBACK;

	COMMIT;
END CATCH

END

GO
/****** Object:  StoredProcedure [dbo].[FindUser]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FindUser]
    @oa_user VARCHAR(50) = '',
    @fname VARCHAR(100) = '',
    @lname VARCHAR(100) = ''
AS
BEGIN
SELECT u1.oa_user
	,u1.active
	,i.first_name_en
	,i.last_name_en
	,i.first_name_th
	,i.last_name_th
	,i.division_code
	,i.division_name
	,r.role_id
	,r.role_title
	,u1.data_group_id
	,g.team_id
	,g.product_id data_product_id
FROM dbo.NETS_User_Profiles u1
     JOIN dbo.NETS_User_Profiles_Info i ON i.oa_user = u1.oa_user
     JOIN dbo.NETS_Roles r ON r.role_id = u1.role_id
     JOIN dbo.NETS_Data_Groups g ON g.group_id = u1.data_group_id
	 JOIN dbo.NETS_List_of_Values l1 ON l1.lov_code = u1.team_id
     JOIN dbo.NETS_List_of_Values l2 ON l2.lov_code = u1.team_id
	 AND u1.oa_user LIKE '%' + @oa_user +'%'
     AND (i.first_name_en + i.first_name_th) LIKE '%' + @fname + '%'
     AND (i.last_name_en + i.last_name_th) LIKE '%' + @lname + '%';
END

GO
/****** Object:  StoredProcedure [dbo].[getAllDataGroups]    Script Date: 5/23/2023 4:40:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getAllIncome]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getAllIncome]

AS
BEGIN

	SELECT *
	FROM dbo.NETS_Incomes

END

GO
/****** Object:  StoredProcedure [dbo].[getAllListOfValues]    Script Date: 5/23/2023 4:40:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getAllPayees]    Script Date: 5/23/2023 4:40:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getAllRoles]    Script Date: 5/23/2023 4:40:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getAllUser]    Script Date: 5/23/2023 4:40:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getApproveIncomeSearch]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getApproveIncomeSearch]
@username varchar(50)
,@national_id varchar(13)
,@name varchar(200)
,@source varchar(1)
,@submitted_date_from varchar(8)
,@submitted_date_to varchar(8)
,@submitted_by varchar(50)
AS
BEGIN
	
	-- initial access user table for filter record product
	DECLARE @access_user TABLE(
	user_access varchar(50)
	);

	INSERT INTO @access_user
	SELECT 
		u.oa_user id
	FROM dbo.NETS_User_Profiles u
	JOIN dbo.NETS_Data_Groups g ON g.team_id = u.team_id
								AND g.group_id = u.data_group_id
	JOIN dbo.NETS_User_Profiles u1 ON u1.team_id = u.team_id
								AND u1.oa_user = @username
	JOIN dbo.NETS_Data_Groups g1 ON g1.team_id = u1.team_id
								AND g1.group_id = u1.data_group_id
								AND g1.product_id = g.product_id;


	-- Search
	SELECT 
		i.ref_year
		,i.ref_no
		,i.transaction_no
		,CONCAT(FORMAT(DATEFROMPARTS(i.ref_year, 1, 1), 'yy', 'th-TH'), '-', i.ref_no, '-', i.transaction_no) ref_no_mask
		,CONCAT(p.first_name, ' ', p.last_name) name
		,FORMAT(i.submitted_date, 'dd/MM/yyyy') submitted_date
		,ISNULL(CONCAT(proi.first_name_th, ' ', proi.last_name_th), i.created_by) submitted_by
		,i.amount
		,l.lov_description source
		,COUNT(*) Over() total_records
	FROM dbo.NETS_Incomes i
	JOIN @access_user acu ON acu.user_access = i.created_by
	JOIN dbo.NETS_Payees p ON p.national_id = i.national_id
	JOIN dbo.NETS_List_of_Values l ON l.lov_field = 'Source'
									AND l.lov_code = i.source
	LEFT JOIN dbo.NETS_User_Profiles_Info proi ON proi.oa_user = i.created_by
	WHERE i.ref_status = 'S'
	AND (
		i.national_id LIKE CONCAT('%', @national_id, '%')
		AND CONCAT(p.first_name, ' ', p.last_name) LIKE CONCAT('%', @name, '%')
		AND i.source = IIF(ISNULL(@source, '') = '', i.source, @source)
		AND i.created_by = IIF(ISNULL(@submitted_by, '') = '', i.created_by, @submitted_by)
		AND CAST(i.submitted_date as date) BETWEEN IIF(ISNULL(@submitted_date_from, '') = '', CAST(i.submitted_date as date), CONVERT(date, @submitted_date_from, 112))
											AND IIF(ISNULL(@submitted_date_to, '') = '', CAST(i.submitted_date as date), CONVERT(date, @submitted_date_to, 112))
	)

	ORDER BY i.submitted_date ASC, 1, 2, 3;


END

GO
/****** Object:  StoredProcedure [dbo].[getBatchCalendarByYear]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getBatchCalendarByYear]
	@year int = 0
AS
BEGIN
SELECT 
	c.calendar_year
	,c.calendar_month
	,c.calendar_period
	,FORMAT(c.calendar_run_date, 'yyyy-MM-dd') calendar_run_date
	,FORMAT(c.batch_run_date, 'yyyy-MM-dd') batch_run_date
	,IIF(c.batch_run_flag = 0 OR c.calendar_run_flag = 0, 'N', 'Y') batch_run
FROM dbo.NETS_Batch_Calendars c
WHERE c.calendar_year = @year
ORDER BY c.calendar_month ASC

SELECT DISTINCT calendar_year
FROM dbo.NETS_Batch_Calendars
ORDER BY 1 ASC;

END

GO
/****** Object:  StoredProcedure [dbo].[getBatchCalendarByYearAndMonth]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getBatchCalendarByYearAndMonth]
	@year int = 0,
	@month int = 1
AS
BEGIN

SELECT 
	c.calendar_year
	,c.calendar_month
	,c.calendar_period
	,FORMAT(c.calendar_run_date, 'yyyy-MM-dd') calendar_run_date
	,FORMAT(c.batch_run_date, 'yyyy-MM-dd') batch_run_date
	,IIF(c.batch_run_flag = 0 OR c.calendar_run_flag = 0, 'N', 'Y') batch_run
FROM dbo.NETS_Batch_Calendars c
WHERE c.calendar_year = @year
AND c.calendar_month = @month;

END

GO
/****** Object:  StoredProcedure [dbo].[getBatchRunDate]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getBatchRunDate]
@format varchar(100) = ''

AS
BEGIN

IF @format = ''
	SET @format = 'dd/MM/yyyy';

SELECT FORMAT(MIN(c.batch_run_date), @format) calendar_run_date
FROM dbo.NETS_Batch_Calendars c
WHERE c.batch_run_flag = 0

END

GO
/****** Object:  StoredProcedure [dbo].[getCalendarYear]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getCalendarYear]
AS
BEGIN
SELECT DISTINCT calendar_year
FROM dbo.NETS_Batch_Calendars
ORDER BY 1 ASC;

END

GO
/****** Object:  StoredProcedure [dbo].[getDataGroups]    Script Date: 5/23/2023 4:40:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetEffective]    Script Date: 5/23/2023 4:40:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getIncome]    Script Date: 5/23/2023 4:40:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getInquiry]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getInquiry]
 @username varchar(50) = 'user02',
 @field varchar(50) = NULL
AS
BEGIN

DECLARE @group_access TABLE(group_id varchar(50));
WITH hierarchy AS ( 
    SELECT h1.*
    FROM dbo.NETS_Data_Groups AS h1
	JOIN dbo.NETS_User_Profiles u ON u.oa_user = @username
								AND h1.group_id = u.data_group_id
    UNION ALL
    SELECT c2.*
    FROM hierarchy AS c1
    JOIN dbo.NETS_Data_Groups AS c2
    ON c2.parent_group_id = c1.group_id)
INSERT INTO @group_access 
SELECT group_id
FROM hierarchy;

DECLARE @role_level int;
SELECT @role_level = r.role_level
	FROM dbo.NETS_Roles r
	JOIN dbo.NETS_User_Profiles u ON u.oa_user = @username
									AND u.role_id = r.role_id;


IF @role_level >= 50
BEGIN
    IF @field IS NULL OR @field = 'CreatedBy'
    BEGIN
        -- create by dropdown
        SELECT 
            'CreatedBy' field
            ,oa_user id
            ,oa_user title
            ,ROW_NUMBER() OVER(ORDER BY oa_user) order_by
        FROM dbo.NETS_User_Profiles
    END

    IF @field IS NULL OR @field = 'Team'
    BEGIN
        -- team dropdown
        SELECT 
            'Team' field
            ,lov_code id
            ,lov_description title
            ,ROW_NUMBER() OVER(ORDER BY lov_code) order_by
        FROM dbo.NETS_List_of_Values
        WHERE lov_field = 'Team'
    END

    IF @field IS NULL OR @field = 'Product'
    BEGIN
        -- product dropdown
        SELECT 
            'Product' field
            ,lov_code id
            ,lov_description title
            ,ROW_NUMBER() OVER(ORDER BY lov_field) order_by
        FROM dbo.NETS_List_of_Values
        WHERE lov_field = 'Product'
    END

    IF @field IS NULL OR @field = 'DataGroup'
    BEGIN
        -- data group dropdown
        SELECT 
            'DataGroup' field
            ,group_id id
            ,group_title title
            ,ROW_NUMBER() OVER(ORDER BY group_id) order_by
        FROM dbo.NETS_Data_Groups
    END

    IF @field IS NULL OR @field = 'Status'
    BEGIN
        -- status dropdown
        SELECT 
            'Status' field
            ,l.lov_code id
            ,l.lov_description title
            ,ROW_NUMBER() OVER(ORDER BY l.lov_code) order_by
        FROM dbo.NETS_List_of_Values l
        WHERE l.lov_field = 'RefNoStatus'
    END

    IF @field IS NULL OR @field = 'Source'
    BEGIN
        -- source dropdown
        SELECT 
            'Source' field
            ,l.lov_code id
            ,l.lov_description title
            ,ROW_NUMBER() OVER(ORDER BY l.lov_description) order_by
        FROM dbo.NETS_List_of_Values l
        WHERE l.lov_field = 'Source'
    END

    IF @field IS NULL OR @field = 'TransferDate'
    BEGIN
	SELECT 
		'TransferDate' field
		,FORMAT(c.batch_run_date, 'yyyyMMdd') id
		,FORMAT(c.batch_run_date, 'dd/MM/yyyy') title
		,ROW_NUMBER() OVER(ORDER BY c.batch_run_date DESC) order_by
	FROM dbo.NETS_Batch_Calendars c
	WHERE c.batch_run_date IS NOT NULL


	ORDER BY 1, order_by ASC, 2;
	END
END
ELSE

BEGIN
-- create by dropdown
    IF @field IS NULL OR @field = 'CreatedBy'
	BEGIN
	SELECT 
		'CreatedBy' field
		,u1.oa_user id
		,u1.oa_user title
		,ROW_NUMBER() OVER(ORDER BY u1.oa_user) order_by
	FROM dbo.NETS_User_Profiles u1
	JOIN dbo.NETS_Data_Groups g1 ON g1.group_id = u1.data_group_id
	JOIN dbo.NETS_Data_Groups g2 ON g2.product_id = g1.product_id 
	JOIN dbo.NETS_User_Profiles u2 ON u2.oa_user = @username
								AND u2.data_group_id = g2.group_id
END
-- team dropdown
    IF @field IS NULL OR @field = 'Team'
BEGIN
	SELECT DISTINCT 
		'Team' field
		,l.lov_code id
		,l.lov_description title
	    ,ROW_NUMBER() OVER(ORDER BY l.lov_field) order_by
	FROM dbo.NETS_Data_Groups u
	JOIN @group_access g ON g.group_id = u.group_id
	JOIN dbo.NETS_List_of_Values l ON l.lov_field = 'Team'
									AND l.lov_code = u.team_id

END
-- product dropdown
    IF @field IS NULL OR @field = 'Product'
	BEGIN
	SELECT DISTINCT 
		'Product' field
		,l.lov_code id
		,l.lov_description title
	    ,ROW_NUMBER() OVER(ORDER BY u.product_id) order_by
	FROM dbo.NETS_Data_Groups u
	JOIN @group_access g ON g.group_id = u.group_id
	JOIN dbo.NETS_List_of_Values l ON l.lov_field = 'Product'
									AND l.lov_code = u.product_id
									END

-- data group dropdown
    IF @field IS NULL OR @field = 'DataGroup'
	BEGIN
	SELECT 
		'DataGroup' field
		,u.group_id id
		,u.group_title title
		,ROW_NUMBER() OVER(ORDER BY u.group_id) order_by
	FROM dbo.NETS_Data_Groups u
	JOIN @group_access g ON g.group_id = u.group_id

	END
-- status dropdown
    IF @field IS NULL OR @field = 'Status'
	BEGIN
	SELECT 
		'Status' field
		,l.lov_code id
		,l.lov_description title
		,ROW_NUMBER() OVER(ORDER BY l.lov_code) order_by
	FROM dbo.NETS_List_of_Values l
	WHERE l.lov_field = 'RefNoStatus'
	END
-- source dropdown
    IF @field IS NULL OR @field = 'Source'
	BEGIN
	SELECT 
		'Source' field
		,l.lov_code id
		,l.lov_description title
		,ROW_NUMBER() OVER(ORDER BY l.lov_description) order_by
	FROM dbo.NETS_List_of_Values l
	WHERE l.lov_field = 'Source'
	END
-- transfer date dropdown
    IF @field IS NULL OR @field = 'TransferDate'
	BEGIN
	SELECT 
		'TransferDate' field
		,FORMAT(c.batch_run_date, 'yyyyMMdd') id
		,FORMAT(c.batch_run_date, 'dd/MM/yyyy') title
		,ROW_NUMBER() OVER(ORDER BY c.batch_run_date DESC) order_by
	FROM dbo.NETS_Batch_Calendars c
	WHERE c.batch_run_date IS NOT NULL
	ORDER BY 1, order_by ASC, 2;
	END
END

END

GO
/****** Object:  StoredProcedure [dbo].[getInquiryIncomeSearch]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getInquiryIncomeSearch]
@username varchar(50)
,@national_id varchar(13)
,@name varchar(200)
,@created_by varchar(50)
,@created_date_from varchar(8)
,@created_date_to varchar(8)
,@team_id varchar(50)
,@product_id varchar(50)
,@data_group_id varchar(50)
,@ref_status varchar(1)
,@source varchar(1)
,@paid_date varchar(8)
,@records int
,@page int
AS
BEGIN
	
	-- initial access data group
	DECLARE @role_level int;
	SELECT @role_level = r.role_level
	FROM dbo.NETS_Roles r
	JOIN dbo.NETS_User_Profiles u ON u.oa_user = @username
									AND u.role_id = r.role_id;

	DECLARE @group_access TABLE(group_id varchar(50));

	IF @role_level < 50 
	BEGIN 
		WITH hierarchy AS ( 
			SELECT h1.*
			FROM dbo.NETS_Data_Groups AS h1
			JOIN dbo.NETS_User_Profiles u ON u.oa_user = @username
										AND h1.group_id = u.data_group_id
			UNION ALL
			SELECT c2.*
			FROM hierarchy AS c1
			JOIN dbo.NETS_Data_Groups AS c2
			ON c2.parent_group_id = c1.group_id)
		INSERT INTO @group_access 
		SELECT group_id
		FROM hierarchy
		WHERE group_id = IIF(@data_group_id = '' OR @data_group_id IS NULL, group_id, @data_group_id)
		AND product_id = IIF(@product_id = '' OR @product_id IS NULL, product_id, @product_id)
		AND team_id = IIF(@team_id = '' OR @team_id IS NULL, team_id, @team_id);

	END
	ELSE 
	BEGIN
		INSERT INTO @group_access
		SELECT group_id
		FROM dbo.NETS_Data_Groups
		WHERE group_id = IIF(@data_group_id = '' OR @data_group_id IS NULL, group_id, @data_group_id)
		AND product_id = IIF(@product_id = '' OR @product_id IS NULL, product_id, @product_id)
		AND team_id = IIF(@team_id = '' OR @team_id IS NULL, team_id, @team_id);

	END

	-- set default variable
	IF @records IS NULL OR @records < 10
		SET @records = 100;
	IF @page IS NULL OR @page < 1
		SET @page = 1;

	-- Search

	SELECT		
		CONCAT(FORMAT(DATEFROMPARTS(i.ref_year, 1, 1), 'yy', 'th-TH'), '-', i.ref_no, '-', i.transaction_no) ref_no
		,i.national_id
		,ISNULL(i.sales_code, '') sales_code
		,CONCAT(p.first_name, ' ', p.last_name) name
		,FORMAT(i.created_date, 'dd/MM/yyyy') created_date
		,i.amount
		,ISNULL(pay.amount_net, 0) amount_net
		,ISNULL(pay.withholding_tax, 0) withholding_tax
		,l_src.lov_description source
		,l_sts.lov_description ref_status
		,ISNULL(FORMAT(i.paid_date, 'dd/MM/yyyy'), '') paid_date
		,i.created_by
		,ISNULL(i.approved_by, '') approved_by
		,i.group_id

		,Count(*) Over() AS total_records
		,@page current_page

	FROM dbo.NETS_Incomes i
	JOIN dbo.NETS_Payees p ON p.national_id = i.national_id
							AND p.national_id LIKE CONCAT('%', @national_id, '%')
							AND CONCAT(p.first_name, ' ', p.last_name) LIKE CONCAT('%', @name, '%')
	JOIN dbo.NETS_List_of_Values l_src ON l_src.lov_field = 'Source'
										AND l_src.lov_code = i.source
										AND l_src.lov_code = IIF(@source = '' OR @source IS NULL, l_src.lov_code, @source)
	JOIN dbo.NETS_List_of_Values l_sts ON l_sts.lov_field = 'RefNoStatus'
										AND l_sts.lov_code = i.ref_status
										AND l_sts.lov_code = IIF(@ref_status = '' OR @ref_status IS NULL, l_sts.lov_code, @ref_status)
	JOIN @group_access g ON g.group_id = i.group_id
	LEFT JOIN dbo.NETS_Payments pay ON pay.ref_year = i.ref_year
									AND pay.ref_no = i.ref_no
									AND pay.transaction_no = i.transaction_no

	WHERE i.created_by = IIF(@created_by = '' OR @created_by IS NULL, i.created_by, @created_by)										
	AND CAST(i.created_date as date) BETWEEN IIF(@created_date_from = '' OR @created_date_from IS NULL, CAST(i.created_date as date), CONVERT(date, @created_date_from, 112))
										AND IIF(@created_date_to = '' OR @created_date_to IS NULL, CAST(i.created_date as date), CONVERT(date, @created_date_to, 112))
	AND ISNULL(CAST(i.paid_date as date), '') = IIF(@paid_date = '' OR @paid_date IS NULL, ISNULL(CAST(i.paid_date as date), ''), CONVERT(date, @paid_date, 112))

	ORDER BY i.ref_year DESC, i.ref_no DESC, i.transaction_no ASC
	OFFSET @records*(@page-1) ROWS
	FETCH NEXT @records ROWS ONLY;

END

GO
/****** Object:  StoredProcedure [dbo].[getInquiryPaymentsSearch]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getInquiryPaymentsSearch]
@username varchar(50)
,@team_id varchar(50)
,@product_id varchar(50)
,@data_group_id varchar(50)
,@payment_status varchar(1)
,@source varchar(1)
,@paid_date varchar(8)
,@records int
,@page int
AS
BEGIN
	-- initial access data group
	DECLARE @role_level int;
	SELECT @role_level = r.role_level
	FROM dbo.NETS_Roles r
	JOIN dbo.NETS_User_Profiles u ON u.oa_user = @username
									AND u.role_id = r.role_id;

	DECLARE @group_access TABLE(group_id varchar(50));

	IF @role_level < 50 
	BEGIN 
		WITH hierarchy AS ( 
			SELECT h1.*
			FROM dbo.NETS_Data_Groups AS h1
			JOIN dbo.NETS_User_Profiles u ON u.oa_user = @username
										AND h1.group_id = u.data_group_id
			UNION ALL
			SELECT c2.*
			FROM hierarchy AS c1
			JOIN dbo.NETS_Data_Groups AS c2
			ON c2.parent_group_id = c1.group_id)
		INSERT INTO @group_access 
		SELECT group_id
		FROM hierarchy
		WHERE group_id = IIF(@data_group_id = '' OR @data_group_id IS NULL, group_id, @data_group_id)
		AND product_id = IIF(@product_id = '' OR @product_id IS NULL, product_id, @product_id)
		AND team_id = IIF(@team_id = '' OR @team_id IS NULL, team_id, @team_id);

	END
	ELSE 
	BEGIN
		INSERT INTO @group_access
		SELECT group_id
		FROM dbo.NETS_Data_Groups
		WHERE group_id = IIF(@data_group_id = '' OR @data_group_id IS NULL, group_id, @data_group_id)
		AND product_id = IIF(@product_id = '' OR @product_id IS NULL, product_id, @product_id)
		AND team_id = IIF(@team_id = '' OR @team_id IS NULL, team_id, @team_id);

	END

	-- set default variable
	IF @records IS NULL OR @records < 10
		SET @records = 100;
	IF @page IS NULL OR @page < 1
		SET @page = 1;

	-- Search
	IF @payment_status <> 'I'
	BEGIN
		SELECT 
			CONCAT(FORMAT(DATEFROMPARTS(pay.ref_year, 1, 1), 'yy', 'th-TH'), '-', pay.ref_no, '-', pay.transaction_no) ref_no
			,ISNULL(i.sales_code, '') sales_code
			,CONCAT(p.first_name, ' ', p.last_name) name
			,FORMAT(i.created_date, 'dd/MM/yyyy') created_date
			,i.amount
			,pay.amount_net
			,pay.withholding_tax
			,l_sts.lov_description payment_status
			,pay.group_id
			,l_src.lov_description source
			,ISNULL(FORMAT(pay.batch_paid_date, 'dd/MM/yyyy'), '') paid_date
			,SUM(IIF(pay.payment_status = 'P', 1, 0)) Over() total_paid
			,SUM(IIF(pay.payment_status = 'P', pay.amount_net, 0)) Over() sum_paid
			,SUM(IIF(pay.payment_status = 'U', 1, 0)) Over() total_unpaid
			,SUM(IIF(pay.payment_status = 'U', pay.amount_net, 0)) Over() sum_unpaid
			,COUNT(*) Over() total_records
			,SUM(pay.amount_net) Over() total_net
			,@page current_page

		FROM dbo.NETS_Payments pay
		JOIN dbo.NETS_Incomes i ON pay.ref_year = i.ref_year
								AND pay.ref_no = i.ref_no
								AND pay.transaction_no = i.transaction_no
		JOIN dbo.NETS_Payees p ON p.national_id = i.national_id
		JOIN dbo.NETS_List_of_Values l_sts ON l_sts.lov_field = 'PaymentStatus'
											AND l_sts.lov_code = pay.payment_status
											AND l_sts.lov_code = IIF(ISNULL(@payment_status, '') = '' OR @payment_status = 'A', l_sts.lov_code, @payment_status)
		JOIN dbo.NETS_List_of_Values l_src ON l_src.lov_field = 'Source'
											AND l_src.lov_code = i.source
											AND l_src.lov_code = IIF(@source = '' OR @source IS NULL, l_src.lov_code, @source)
		JOIN @group_access g ON g.group_id = i.group_id
		WHERE ISNULL(CAST(pay.batch_paid_date as date), '') = IIF(@paid_date = '' OR @paid_date IS NULL, ISNULL(CAST(pay.batch_paid_date as date), ''), CONVERT(date, @paid_date, 112))

		ORDER BY pay.ref_year DESC, pay.ref_no DESC, pay.transaction_no ASC
		OFFSET @records*(@page-1) ROWS
		FETCH NEXT @records ROWS ONLY;

	END
	ELSE
	BEGIN
		SELECT 
			CONCAT(FORMAT(DATEFROMPARTS(i.ref_year, 1, 1), 'yy', 'th-TH'), '-', i.ref_no, '-', i.transaction_no) ref_no
			,ISNULL(i.sales_code, '') sales_code
			,CONCAT(p.first_name, ' ', p.last_name) name
			,FORMAT(i.created_date, 'dd/MM/yyyy') created_date
			,i.amount
			,0 amount_net
			,0 withholding_tax
			,l_sts.lov_description payment_status
			,i.group_id
			,l_src.lov_description source
			,ISNULL(FORMAT(i.paid_date, 'dd/MM/yyyy'), '') paid_date
			,0 total_paid
			,0 sum_paid
			,0 total_unpaid
			,0 sum_unpaid
			,COUNT(*) Over() total_records
			,SUM(i.amount) Over() total_net
			,@page current_page

		FROM dbo.NETS_Incomes i
		JOIN dbo.NETS_Payees p ON p.national_id = i.national_id
		JOIN dbo.NETS_List_of_Values l_sts ON l_sts.lov_field = 'RefNoStatus'
											AND l_sts.lov_code = i.ref_status
											AND l_sts.lov_code = 'S'
		JOIN dbo.NETS_List_of_Values l_src ON l_src.lov_field = 'Source'
											AND l_src.lov_code = i.source
											AND l_src.lov_code = IIF(@source = '' OR @source IS NULL, l_src.lov_code, @source)
		JOIN @group_access g ON g.group_id = i.group_id

		ORDER BY i.ref_year DESC, i.ref_no DESC, i.transaction_no ASC
		OFFSET @records*(@page-1) ROWS
		FETCH NEXT @records ROWS ONLY;

	END

END

GO
/****** Object:  StoredProcedure [dbo].[getInquiryTax]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getInquiryTax]
 @username varchar(50) = 'user02'

AS
BEGIN

DECLARE @group_access TABLE(group_id varchar(50));
WITH hierarchy AS ( 
    SELECT h1.*
    FROM dbo.NETS_Data_Groups AS h1
	JOIN dbo.NETS_User_Profiles u ON u.oa_user = @username
								AND h1.group_id = u.data_group_id
    UNION ALL
    SELECT c2.*
    FROM hierarchy AS c1
    JOIN dbo.NETS_Data_Groups AS c2
    ON c2.parent_group_id = c1.group_id)
INSERT INTO @group_access 
SELECT group_id
FROM hierarchy;

DECLARE @role_level int;
SELECT @role_level = r.role_level
	FROM dbo.NETS_Roles r
	JOIN dbo.NETS_User_Profiles u ON u.oa_user = @username
									AND u.role_id = r.role_id;


IF @role_level >= 50
BEGIN

    BEGIN
        -- Team, Product dropdown
        SELECT 
            lov_field field
            ,lov_code id
            ,lov_description title
            ,ROW_NUMBER() OVER(ORDER BY lov_code) order_by
        FROM dbo.NETS_List_of_Values
        WHERE lov_field IN ('Team')
    END

	 BEGIN
        -- Team, Product dropdown
        SELECT 
            lov_field field
            ,lov_code id
            ,lov_description title
            ,ROW_NUMBER() OVER(ORDER BY lov_code) order_by
        FROM dbo.NETS_List_of_Values
        WHERE lov_field IN ('Product')
    END

    BEGIN
        -- Group dropdown
SELECT 
	'Group' field
	,g.group_id id
	,g.group_id title
	,ROW_NUMBER() Over(ORDER BY g.group_id) order_by
FROM dbo.NETS_Data_Groups g

    END

    BEGIN
        -- Period dropdown
      SELECT 
	      'Period' field
	      ,FORMAT(b.batch_run_date, 'MMyyyy') id
	      ,FORMAT(b.batch_run_date, 'MMM-yyyy') title
	      ,ROW_NUMBER() Over(ORDER BY b.batch_run_date DESC) order_by
      FROM dbo.NETS_Batch_Calendars b
      WHERE b.batch_run_flag = 1
   END

    BEGIN
        -- Year dropdown
SELECT
	'Year' field
	,y.year id
	,y.year title
	,ROW_NUMBER() Over(ORDER BY y.year DESC) order_by
FROM (SELECT DISTINCT FORMAT(b.batch_run_date, 'yyyy') year
	FROM dbo.NETS_Batch_Calendars b
	WHERE b.batch_run_flag = 1) y

    END
END
END
GO
/****** Object:  StoredProcedure [dbo].[getInquiryTaxGroup]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getInquiryTaxGroup]
@period varchar(6)
,@team_id varchar(50)
,@product_id varchar(50)
,@data_group_id varchar(50)
,@records int
,@page int
AS
BEGIN
	
	-- set default variable
	IF @records IS NULL OR @records < 10
		SET @records = 100;
	IF @page IS NULL OR @page < 1
		SET @page = 1;


	SELECT
		-- header
		l.year
		,l.period
		,l_tm.lov_description team
		,l_pd.lov_description product
		,l.group_id

		-- list
		,l.national_id
		,l.name
		,l.amount
		,l.amount_net
		,l.withholding_tax

		-- summary
		,SUM(l.amount) Over() total_amount
		,SUM(l.amount_net) Over() total_amount_net
		,SUM(l.withholding_tax) Over() total_withholding_tax
		,COUNT(*) Over() total_records
		,@page page

	FROM (
		SELECT  
			p.national_id
			,CONCAT(p.first_name, ' ', p.last_name) name
			,pay.ref_year year
			,FORMAT(pay.batch_paid_date, 'MMM-yyyy') period
			,pay.group_id

			,SUM(pay.amount) amount
			,SUM(pay.amount_net) amount_net
			,SUM(pay.withholding_tax) withholding_tax

		FROM dbo.NETS_Payments pay
		JOIN dbo.NETS_Payees p ON p.national_id = pay.national_id
	
		WHERE FORMAT(pay.batch_paid_date, 'MMyyyy') = @period
		AND pay.group_id = @data_group_id
		AND (pay.payment_status = 'P' 
			OR pay.payment_status = 'U')

		GROUP BY p.national_id, p.first_name, p.last_name,
					pay.ref_year, FORMAT(pay.batch_paid_date, 'MMM-yyyy'), pay.group_id) l

	JOIN dbo.NETS_Data_Groups g ON g.group_id = l.group_id
								AND g.product_id = IIF(ISNULL(@product_id, '') = '', g.product_id, @product_id)
								AND g.team_id = IIF(ISNULL(@team_id, '') = '', g.team_id, @team_id)
	JOIN dbo.NETS_List_of_Values l_tm ON l_tm.lov_field = 'Team'
									AND l_tm.lov_code = g.team_id
	JOIN dbo.NETS_List_of_Values l_pd ON l_pd.lov_field = 'Product'
									AND l_pd.lov_code = g.product_id

	ORDER BY l.national_id ASC, l.name ASC
	OFFSET @records*(@page-1) ROWS
	FETCH NEXT @records ROWS ONLY;


END
GO
/****** Object:  StoredProcedure [dbo].[getInquiryTaxPerson]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getInquiryTaxPerson]
@national_id varchar(13)
,@year int
AS
BEGIN
	
	SELECT
		-- header
		l.national_id
		,l.name
		,l.year

		-- list
		,l.period
		,l.group_id
		,l.amount
		,l.amount_net
		,l.withholding_tax

		-- summary
		,SUM(l.amount) Over() total_amount
		,SUM(l.amount_net) Over() total_amount_net
		,SUM(l.withholding_tax) Over() total_withholding_tax

	FROM (SELECT  
			p.national_id
			,CONCAT(p.first_name, ' ', p.last_name) name
			,pay.ref_year year
			,FORMAT(pay.batch_paid_date, 'MMM-yy') period
			,MONTH(pay.batch_paid_date) month
			,pay.group_id

			,SUM(pay.amount) amount
			,SUM(pay.amount_net) amount_net
			,SUM(pay.withholding_tax) withholding_tax

		FROM dbo.NETS_Payments pay
		JOIN dbo.NETS_Payees p ON p.national_id = pay.national_id
		WHERE pay.national_id = @national_id
		AND pay.ref_year = @year
		AND (pay.payment_status = 'P' 
			OR pay.payment_status = 'U')

		GROUP BY p.national_id, p.first_name, p.last_name,
					pay.ref_year, FORMAT(pay.batch_paid_date, 'MMM-yy'), MONTH(pay.batch_paid_date), pay.group_id) l

	ORDER BY l.month ASC;

END
GO
/****** Object:  StoredProcedure [dbo].[getInquiryTaxPersonSearch]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getInquiryTaxPersonSearch]
@national_id varchar(13)
,@name varchar(200)
,@records int
,@page int
AS
BEGIN
	
	-- set default variable
	IF @records IS NULL OR @records < 1
		SET @records = 20;
	IF @page IS NULL OR @page < 1
		SET @page = 1;


	SELECT 
		p.national_id
		,CONCAT(p.first_name, ' ', p.last_name) name
		,COUNT(*) Over() records
		,@page page


	FROM dbo.NETS_Payees p
	WHERE p.national_id LIKE CONCAT('%', @national_id, '%')
	AND CONCAT(p.first_name, ' ', p.last_name) LIKE CONCAT('%', @name, '%')
	AND EXISTS (SELECT 1
				FROM dbo.NETS_Payments pay
				WHERE pay.national_id = p.national_id)

	ORDER BY p.national_id ASC
	OFFSET @records*(@page-1) ROWS
	FETCH NEXT @records ROWS ONLY;

END
GO
/****** Object:  StoredProcedure [dbo].[getListDataGroups]    Script Date: 5/23/2023 4:40:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getListEffectiveDate]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListEffectiveDate]

AS
BEGIN

     SELECT DISTINCT effective_date
     FROM NETS_Tax_Terms

END

GO
/****** Object:  StoredProcedure [dbo].[getListOfValues]    Script Date: 5/23/2023 4:40:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getListParents]    Script Date: 5/23/2023 4:40:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getListPreName]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListPreName]

AS
BEGIN
	SELECT l2.lov_code team_id
	,l2.lov_description team_title
FROM dbo.NETS_List_of_Values l2
WHERE l2.lov_field = 'PreName'
AND l2.lov_active = 1

END

GO
/****** Object:  StoredProcedure [dbo].[getListProducts]    Script Date: 5/23/2023 4:40:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getListRole]    Script Date: 5/23/2023 4:40:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getListTaxRate]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListTaxRate]
	@eff_date DATE = '2023-01-01'
AS
BEGIN

SELECT 
	t.effective_date
	,ROUND(t.tax_rate*100, 2) tax_rate
	,t.tax_range_begin
	,t.tax_range_end
FROM dbo.NETS_Tax_Terms t
WHERE t.effective_date =  @eff_date
ORDER BY t.tax_range_begin ASC;

END

GO
/****** Object:  StoredProcedure [dbo].[getListTeams]    Script Date: 5/23/2023 4:40:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getManualDropdown]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getManualDropdown]

 @username varchar(50) = ''

AS
BEGIN

SELECT 
	g1.group_id id
	,g1.group_id title
FROM dbo.NETS_Data_Groups g1
JOIN dbo.NETS_Data_Groups g2 ON g1.product_id = g2.product_id
JOIN dbo.NETS_User_Profiles u ON g2.group_id = u.data_group_id
							AND u.oa_user = @username

ORDER BY g1.group_id ASC;


END

GO
/****** Object:  StoredProcedure [dbo].[getManualIncome]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getManualIncome]

 @created_by varchar(50) = 'user13',
 @ref_year int = 2023,
 @ref_no varchar(5) = '00003'

AS
BEGIN

	SELECT 
		i.national_id payee_national_id
		,CONCAT(p.pre_name, ' ' , p.first_name, ' ', p.last_name) payee_name
		,i.account_no
		,FORMAT(i.created_date, 'dd/MM/yyyy HH:mm') created_date
		,i.created_by
		,FORMAT(i.updated_date, 'dd/MM/yyyy HH:mm') updated_date
		,i.updated_by
		,CONCAT(FORMAT(DATEFROMPARTS(i.ref_year, 1, 1), 'yy', 'th-TH'), '-', i.ref_no) ref_no_mask
		,ISNULL(i.sales_code, '') sales_code
		,i.amount
		,ISNULL(i.remark, '') remark
		,i.ref_year
		,i.ref_no
		,i.ref_status
		,lst.lov_description ref_status_desc
	FROM dbo.NETS_Incomes i
	JOIN dbo.NETS_Payees p ON p.national_id = i.national_id
	JOIN dbo.NETS_List_of_Values lst ON lst.lov_field = 'RefNoStatus'
									AND lst.lov_code = i.ref_status
	WHERE i.ref_no = @ref_no
	AND i.ref_year = @ref_year
	AND i.created_by = @created_by;

END

GO
/****** Object:  StoredProcedure [dbo].[getManualIncomeAdjustByID]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getManualIncomeAdjustByID]
@username varchar(50)
,@ref_year int
,@ref_no varchar(5)
,@transaction_no int
AS
BEGIN

	SELECT 
		pay.ref_year
		,pay.ref_no
		,pay.transaction_no
		,CONCAT(FORMAT(DATEFROMPARTS(i.ref_year, 1, 1), 'yy', 'th-TH'), '-', i.ref_no, '-', i.transaction_no) ref_no_mask
		,FORMAT(pay.batch_paid_date, 'dd/MM/yyyy') paid_date
		,CONCAT(p.first_name, ' ', p.last_name) name
		,i.national_id
		,i.group_id
		,i.account_no
		,pay.amount
		,pay.withholding_tax
		,pay.amount_net

	FROM dbo.NETS_Payments pay
	JOIN dbo.NETS_Incomes i ON i.created_by = @username
						AND i.ref_year = pay.ref_year
						AND i.ref_no = pay.ref_no
						AND i.transaction_no = pay.transaction_no
	JOIN dbo.NETS_Payees p ON p.national_id = i.national_id
	LEFT JOIN dbo.NETS_Payments_Adjustment aj ON aj.status = 'W'
											AND aj.ref_year = pay.ref_year
											AND aj.ref_no = pay.ref_no
											AND aj.transaction_no = pay.transaction_no
	WHERE pay.batch_paid_date IS NOT NULL
	AND ISNULL(aj.status, 'A') IN ('A', 'R')
	AND pay.payment_status IN ('P', 'U')
	AND i.created_by = @username
	AND pay.ref_year = @ref_year
	AND pay.ref_no = @ref_no
	AND pay.transaction_no = @transaction_no;

END
GO
/****** Object:  StoredProcedure [dbo].[getManualIncomeAdjustSearch]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getManualIncomeAdjustSearch]
@username varchar(50)
,@paid_date varchar(8)
,@name varchar(200)
,@national_id varchar(13)
,@source char(1)
,@records int
,@page int
AS
BEGIN
	
	-- set default variable
		IF @records IS NULL OR @records < 10
			SET @records = 100;
		IF @page IS NULL OR @page < 1
			SET @page = 1;

	SELECT 
		pay.ref_year
		,pay.ref_no
		,pay.transaction_no
		,CONCAT(FORMAT(DATEFROMPARTS(i.ref_year, 1, 1), 'yy', 'th-TH'), '-', i.ref_no, '-', i.transaction_no) ref_no_mask
		,i.sales_code
		,CONCAT(p.first_name, ' ', p.last_name) name
		,FORMAT(i.created_date, 'dd/MM/yyyy') created_date
		,ISNULL(aj.amount, pay.amount) amount
		,ISNULL(aj.amount_net, pay.amount_net) amount_net
		,ISNULL(aj.withholding_tax, pay.withholding_tax) withholding_tax
		,IIF(ISNULL(aj.status, '') = 'W', a_status.lov_description, l_status.lov_description) status
		,IIF(ISNULL(aj.status, '') = 'W', a_status.lov_code, l_status.lov_code) status_code
		,pay.group_id
	 
		 ,COUNT(*) Over() total_records
		 ,@page current_page

	FROM dbo.NETS_Payments pay
	JOIN dbo.NETS_List_of_Values l_status ON l_status.lov_field = 'PaymentStatus'
										AND l_status.lov_code IN ('P', 'U')
										AND l_status.lov_code = pay.payment_status
	JOIN dbo.NETS_Incomes i ON i.created_by = @username
							AND i.national_id LIKE CONCAT('%', @national_id, '%')
							AND i.source = IIF(ISNULL(@source, '') = '', i.source, @source)
							AND i.ref_year = pay.ref_year
							AND i.ref_no = pay.ref_no
							AND i.transaction_no = pay.transaction_no
	JOIN dbo.NETS_Payees p ON p.national_id = i.national_id
							AND CONCAT(p.first_name, ' ', p.last_name) LIKE CONCAT('%', @name, '%')
	LEFT JOIN dbo.NETS_Payments_Adjustment aj ON aj.status = 'W'
											AND aj.ref_year = pay.ref_year
											AND aj.ref_no = pay.ref_no
											AND aj.transaction_no = pay.transaction_no
	LEFT JOIN dbo.NETS_List_of_Values a_status ON a_status.lov_field = 'AdjustStatus'
										AND a_status.lov_code = aj.status
	WHERE FORMAT(pay.batch_paid_date, 'ddMMyyyy') = @paid_date

	ORDER BY 1, 2, 3
	OFFSET @records*(@page-1) ROWS
	FETCH NEXT @records ROWS ONLY;

END
GO
/****** Object:  StoredProcedure [dbo].[getManualIncomeHistory]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getManualIncomeHistory]
 @created_by varchar(50) = 'user13',
 @national_id varchar(13) = '',
 @records int = 100,
 @page int = 1
AS
BEGIN

	SELECT 
		CONCAT(FORMAT(DATEFROMPARTS(i.ref_year, 1, 1), 'yy', 'th-TH'), '-', i.ref_no) ref_no_mask
		,i.ref_year
		,i.ref_no
		,FORMAT(i.created_date, 'dd/MM/yyyy') created_date
		,ISNULL(FORMAT(i.submitted_date, 'dd/MM/yyyy'), '') submitted_date
		,ISNULL(FORMAT(i.approved_date, 'dd/MM/yyyy'), '') approved_date
		,i.amount
		,ISNULL(FORMAT(i.paid_date, 'dd/MM/yyyy'), '') paid_date
		,lst.lov_description ref_status
		,i.national_id
		,i.group_id
		,Count(*) Over() AS total_records
		,@page current_page
	FROM dbo.NETS_Incomes i
	JOIN dbo.NETS_List_of_Values lst ON lst.lov_field = 'RefNoStatus'
									AND lst.lov_code = i.ref_status
	WHERE i.created_by = @created_by
	AND i.national_id = IIF(@national_id = '', i.national_id, @national_id)

	ORDER BY i.ref_year DESC, i.ref_no DESC
	OFFSET @records*(@page-1) ROWS
	FETCH NEXT @records ROWS ONLY;


END

GO
/****** Object:  StoredProcedure [dbo].[getNextCalendar]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getNextCalendar]
	 @format varchar(100) = ''
AS
BEGIN

IF @format = ''
	SET @format = 'dd/MM/yyyy';

SELECT FORMAT(MIN(c.calendar_run_date), @format) calendar_run_date
FROM dbo.NETS_Batch_Calendars c
WHERE c.batch_run_date IS NULL

END

GO
/****** Object:  StoredProcedure [dbo].[getPayeesById]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getPayeesById]
@national_id VARCHAR(13)
AS
BEGIN

SELECT national_id
	,pre_name
	,first_name
	,last_name
	,address_no
	,address_moo_no
	,address_build_name
	,address_room_no
	,address_floor_no
	,address_village_name
	,address_soi
	,address_street_name
	,address_tambon
	,address_amphur
	,address_province
	,address_postal_code
	,account_no
	,active
FROM dbo.NETS_Payees
WHERE national_id = @national_id

END

GO
/****** Object:  StoredProcedure [dbo].[getPayeesChange]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getPayeesChange]
 @username varchar(50) = 'user07'

AS
BEGIN

-- initial access user table for filter record product
DECLARE @access_user TABLE(
user_access varchar(50)
);


INSERT INTO @access_user
SELECT 
	u.oa_user id
FROM dbo.NETS_User_Profiles u
JOIN dbo.NETS_Data_Groups g ON g.team_id = u.team_id
							AND g.group_id = u.data_group_id
JOIN dbo.NETS_User_Profiles u1 ON u1.team_id = u.team_id
							AND u1.oa_user = @username
JOIN dbo.NETS_Data_Groups g1 ON g1.team_id = u1.team_id
							AND g1.group_id = u1.data_group_id
							AND g1.product_id = g.product_id;


SELECT 
	c.action
	,c.national_id
	,CONCAT(c.first_name, ' ', c.last_name) name
	,'-' info_old
	,CONCAT(
		'เลขที่บัญชี: ', c.account_no, CHAR(13)+CHAR(10), 'ที่อยู่: '
		,CONCAT(c.address_no, ' '
		,IIF(ISNULL(c.address_moo_no, '') = '', '', 'หมู่ ' + c.address_moo_no + ' ')
		,IIF(ISNULL(c.address_build_name, '') = '', '', 'อาคาร ' + c.address_build_name + ' ')
		,IIF(ISNULL(c.address_room_no, '') = '', '', 'ห้อง ' + c.address_room_no + ' ')
		,IIF(ISNULL(c.address_floor_no, '') = '', '', 'ชั้น ' + c.address_floor_no + ' ')
		,IIF(ISNULL(c.address_village_name, '') = '', '', 'หมู่บ้าน ' + c.address_village_name + ' ')
		,IIF(ISNULL(c.address_soi, '') = '', '', 'ซอย ' + c.address_soi + ' ')
		,IIF(ISNULL(c.address_street_name, '') = '', '', 'ถนน ' + c.address_street_name + ' ')
		,c.address_tambon, ' '
		,c.address_amphur, ' '
		,c.address_province, ' '
		,c.address_postal_code) 

	) info_change
	,FORMAT(c.changed_date, 'dd/MM/yyyy HH:mm') changed_date
	,c.changed_by
	,c.remark

FROM dbo.NETS_Payees_Change c
JOIN @access_user a ON a.user_access = c.changed_by

WHERE c.status = 'W'
AND c.action = 'New'

UNION 
SELECT 
	c.action
	,c.national_id
	,CONCAT(c.first_name, ' ', c.last_name) name
	,CONCAT(
		'เลขที่บัญชี: ', p.account_no, CHAR(13)+CHAR(10)
		,'สถานะ: ', IIF(p.active = 1, 'เปิดใช้งาน', 'ปิดใช้งาน'), CHAR(13)+CHAR(10)
		,'ที่อยู่: ', CONCAT(p.address_no, ' '
		,IIF(ISNULL(p.address_moo_no, '') = '', '', 'หมู่ ' + p.address_moo_no + ' ')
		,IIF(ISNULL(p.address_build_name, '') = '', '', 'อาคาร ' + p.address_build_name + ' ')
		,IIF(ISNULL(p.address_room_no, '') = '', '', 'ห้อง ' + p.address_room_no + ' ')
		,IIF(ISNULL(p.address_floor_no, '') = '', '', 'ชั้น ' + p.address_floor_no + ' ')
		,IIF(ISNULL(p.address_village_name, '') = '', '', 'หมู่บ้าน ' + p.address_village_name + ' ')
		,IIF(ISNULL(p.address_soi, '') = '', '', 'ซอย ' + p.address_soi + ' ')
		,IIF(ISNULL(p.address_street_name, '') = '', '', 'ถนน ' + p.address_street_name + ' ')
		,p.address_tambon, ' '
		,p.address_amphur, ' '
		,p.address_province, ' '
		,p.address_postal_code) 
		) info_old
	,CONCAT(
		'เลขที่บัญชี: ', c.account_no, CHAR(13)+CHAR(10)
		,'สถานะ: ', IIF(c.active = 1, 'เปิดใช้งาน', 'ปิดใช้งาน'), CHAR(13)+CHAR(10)
		,'ที่อยู่: ', CONCAT(c.address_no, ' '
		,IIF(ISNULL(c.address_moo_no, '') = '', '', 'หมู่ ' + c.address_moo_no + ' ')
		,IIF(ISNULL(c.address_build_name, '') = '', '', 'อาคาร ' + c.address_build_name + ' ')
		,IIF(ISNULL(c.address_room_no, '') = '', '', 'ห้อง ' + c.address_room_no + ' ')
		,IIF(ISNULL(c.address_floor_no, '') = '', '', 'ชั้น ' + c.address_floor_no + ' ')
		,IIF(ISNULL(c.address_village_name, '') = '', '', 'หมู่บ้าน ' + c.address_village_name + ' ')
		,IIF(ISNULL(c.address_soi, '') = '', '', 'ซอย ' + c.address_soi + ' ')
		,IIF(ISNULL(c.address_street_name, '') = '', '', 'ถนน ' + c.address_street_name + ' ')
		,c.address_tambon, ' '
		,c.address_amphur, ' '
		,c.address_province, ' '
		,c.address_postal_code) 
		) info_change
	,FORMAT(c.changed_date, 'dd/MM/yyyy HH:mm') changed_date
	,c.changed_by
	,c.remark

FROM dbo.NETS_Payees_Change c
JOIN dbo.NETS_Payees p ON p.national_id = c.national_id
JOIN @access_user a ON a.user_access = c.changed_by

WHERE c.status = 'W'
AND c.action = 'Update'


ORDER BY changed_date DESC


END
GO
/****** Object:  StoredProcedure [dbo].[getRole]    Script Date: 5/23/2023 4:40:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getSource]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getSource]
AS
BEGIN
	SELECT 
	l.lov_code id
	,l.lov_description title
FROM dbo.NETS_List_of_Values l
WHERE l.lov_field = 'Source'
ORDER BY IIF(l.lov_code = 'M', 1, IIF(l.lov_code = 'U', 2, 3)) ASC

END

GO
/****** Object:  StoredProcedure [dbo].[getSubmittedy]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getSubmittedy]
	 @username varchar(50) = ''

AS
BEGIN 

SELECT 
	u.oa_user id
	,u.oa_user title
	,g.product_id
FROM dbo.NETS_User_Profiles u
JOIN dbo.NETS_Data_Groups g ON g.team_id = u.team_id
							AND g.group_id = u.data_group_id
JOIN dbo.NETS_User_Profiles u1 ON u1.team_id = u.team_id
							AND u1.oa_user = @username
JOIN dbo.NETS_Data_Groups g1 ON g1.team_id = u1.team_id
							AND g1.group_id = u1.data_group_id
							AND g1.product_id = g.product_id
ORDER BY 1 ASC

END

GO
/****** Object:  StoredProcedure [dbo].[getTaxByDate]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getTaxByDate]
    @eff_date DATE = '2023-01-01'
AS
BEGIN

SELECT 
	d.effective_date
	,ROUND(d.tax_exemption_rate*100, 2) tax_exemption_rate
	,d.tax_exemption_max
	,d.tax_deduction
FROM dbo.NETS_Tax_Deduction_Terms d
WHERE d.effective_date = @eff_date;

END

GO
/****** Object:  StoredProcedure [dbo].[getTaxByEffDate]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getTaxByEffDate]
    @eff_date DATE
AS
BEGIN

SELECT 
	t.effective_date
	,ROUND(t.tax_rate*100, 2) tax_rate
	,t.tax_range_begin
	,t.tax_range_end
FROM dbo.NETS_Tax_Terms t
WHERE t.effective_date =  @eff_date
ORDER BY t.tax_range_begin ASC;

END

GO
/****** Object:  StoredProcedure [dbo].[getTaxById]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getTaxById]
    @effective_date DATE,
	@tax_range_begin INT
AS
BEGIN
    SELECT ROUND(tax_rate*100, 2) tax_rate, effective_date,tax_range_begin,tax_range_end,created_date,created_by,updated_date,updated_date
    FROM NETS_Tax_Terms 
    WHERE effective_date = @effective_date
    AND tax_range_begin = @tax_range_begin;
END

GO
/****** Object:  StoredProcedure [dbo].[GetUploadTemplate]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUploadTemplate]

AS
	BEGIN
  SELECT 
	  lov_description url
	  ,lov_condition filename
  FROM dbo.NETS_List_of_Values
  WHERE lov_field = 'IncomeUpload'
  AND lov_code = 'Template'

END

GO
/****** Object:  StoredProcedure [dbo].[getUserName]    Script Date: 5/23/2023 4:40:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Login]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Login
-- =============================================
CREATE PROCEDURE [dbo].[Login] 
     @oa_user varchar(50),
	 @password varchar(50)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @userId INT

    SELECT oa_user
    FROM dbo.NETS_User_Profiles
    WHERE oa_user  COLLATE SQL_Latin1_General_CP1_CS_AS  = @oa_user AND password = @password
END
SET ANSI_NULLS ON
/****** Object:  StoredProcedure [dbo].[updateRole] ******/
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[postBatchCalendar]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[postBatchCalendar]
@calendar_year int
,@calendar_month int
,@calendar_run_date date
,@batch_run_date date
,@UpdatedBy varchar(50)

AS
BEGIN

BEGIN TRANSACTION
BEGIN TRY

	UPDATE dbo.NETS_Batch_Calendars
	SET 
		calendar_run_date = @calendar_run_date
		,batch_run_date = @batch_run_date
		,updated_by = @UpdatedBy
		,updated_date = SYSDATETIME()
	WHERE calendar_year = @calendar_year
	AND calendar_month = @calendar_month
	AND (batch_run_flag = 0 OR calendar_run_flag = 0)

	COMMIT;
END TRY
BEGIN CATCH
	
	IF @@TRANCOUNT > 0
		ROLLBACK;

END CATCH

END

GO
/****** Object:  StoredProcedure [dbo].[postDataGroups]    Script Date: 5/23/2023 4:40:51 PM ******/
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
		   @active,
		   @team_id,
		   @product_id,
		   SYSDATETIME(),
		   @updated_by,
		   SYSDATETIME(),
		   @updated_by);
		
	COMMIT;
END TRY
BEGIN CATCH
	ROLLBACK;
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
/****** Object:  StoredProcedure [dbo].[postListOfValues]    Script Date: 5/23/2023 4:40:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[postManualIncomeAdjust]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[postManualIncomeAdjust]
@username varchar(50)
,@ref_year int
,@ref_no varchar(5)
,@transaction_no int
,@adjust_amount decimal(17, 2)
,@adjust_tax decimal(17, 2)
,@adjust_reason varchar(1000)

AS
BEGIN

BEGIN TRANSACTION
BEGIN TRY

	INSERT INTO dbo.NETS_Payments_Adjustment (
		ref_year
		,ref_no
		,transaction_no
		,amount
		,withholding_tax
		,amount_net
		,changed_date
		,changed_by
		,status
		,remark)
		SELECT
		pay.ref_year
		,pay.ref_no
		,pay.transaction_no
		,@adjust_amount
		,@adjust_tax
		,@adjust_amount-@adjust_tax
		,SYSDATETIME()
		,@username
		,'W'
		,@adjust_reason

	FROM dbo.NETS_Payments pay
	JOIN dbo.NETS_Incomes i ON i.created_by = @username
						AND i.ref_year = pay.ref_year
						AND i.ref_no = pay.ref_no
						AND i.transaction_no = pay.transaction_no
	LEFT JOIN dbo.NETS_Payments_Adjustment aj ON aj.status = 'W'
											AND aj.ref_year = pay.ref_year
											AND aj.ref_no = pay.ref_no
											AND aj.transaction_no = pay.transaction_no
	WHERE pay.batch_paid_date IS NOT NULL
	AND ISNULL(aj.status, 'A') IN ('A', 'R')
	AND pay.payment_status IN ('P', 'U')
	AND i.created_by = @username
	AND pay.ref_year = @ref_year
	AND pay.ref_no = @ref_no
	AND pay.transaction_no = @transaction_no;

	COMMIT;
	SELECT (-1) Result;

END TRY
BEGIN CATCH
	
	SELECT ISNULL(ERROR_NUMBER(), 0) Result;

	IF @@TRANCOUNT > 0
		ROLLBACK;

END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[postManualIncomeApprove]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[postManualIncomeApprove] 
@lists income_ref_no_type READONLY
,@username varchar(50)
AS
BEGIN

BEGIN TRANSACTION
BEGIN TRY

	-- initial access user table for filter record product
	DECLARE @access_group TABLE(
	group_access varchar(50)
	);

	INSERT INTO @access_group
	SELECT 
		g.group_id
	FROM dbo.NETS_Data_Groups g
	JOIN dbo.NETS_Data_Groups g1 ON g1.product_id = g.product_id
	JOIN dbo.NETS_User_Profiles u ON u.data_group_id = g1.group_id
								AND u.oa_user = @username;

	-- initial income list for validate
	DECLARE @income TABLE(
		ref_year int,
		ref_no varchar(5),
		ref_status varchar(1),
		national_id varchar(13),
		group_id varchar(50)
	);
	INSERT INTO @income
	SELECT 
		i.ref_year
		,i.ref_no
		,i.ref_status
		,i.national_id
		,i.group_id
	FROM dbo.NETS_Incomes i
	JOIN (SELECT DISTINCT * FROM @lists ) l ON l.ref_year = i.ref_year
					AND l.ref_no = i.ref_no;

	-- check data group 
	DECLARE @error int = 0;
	SELECT @error = COUNT(*)
	FROM @income i
	WHERE NOT EXISTS (SELECT 1 FROM @access_group ag WHERE ag.group_access = i.group_id)

	IF @error > 0
	BEGIN
		SELECT 
			0 total_approved_rows
			,(-1) Result;
		
	END
	ELSE
	BEGIN
	-- check ref status
		SELECT @error = COUNT(*)
		FROM @income i
		WHERE i.ref_status <> 'S';

		IF @error > 0
		BEGIN
			SELECT 
				0 total_approved_rows
				,(-2) Result;

		END
		ELSE
		BEGIN

			UPDATE i
			SET 
				i.ref_status = 'A'
				,i.approved_by = @username
				,i.approved_date = SYSDATETIME()
			FROM dbo.NETS_Incomes i
			JOIN @lists l ON l.ref_year = i.ref_year
						AND l.ref_no = i.ref_no;

			COMMIT;

			SELECT 
				COUNT(*) total_approved_rows
				,(-3) Result
			FROM @income;

		END

	END


END TRY
BEGIN CATCH
	
	SELECT 0 total_approved_rows, ISNULL(ERROR_NUMBER(), 0) Result;

	IF @@TRANCOUNT > 0
		ROLLBACK;
	
END CATCH

END

GO
/****** Object:  StoredProcedure [dbo].[postManualIncomeCancel]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[postManualIncomeCancel]
@ref_year int
,@ref_no varchar(5)
,@cancel_reason varchar(1000)
,@updated_by varchar(50)
AS
BEGIN

BEGIN TRANSACTION
BEGIN TRY

	DECLARE @created_by varchar(50);
	DECLARE @ref_status char(1);

	SELECT @created_by = i.created_by
		,@ref_status = i.ref_status
	FROM dbo.NETS_Incomes i
	WHERE i.ref_year = @ref_year
	AND i.ref_no = @ref_no;

	IF @ref_status IS NULL OR @ref_status NOT IN ('N', 'R')
	BEGIN
		ROLLBACK;
		SELECT (-2) Result;
	END

	ELSE IF @created_by <> @updated_by
	BEGIN
		ROLLBACK;
		SELECT (-3) Result;
	END

	ELSE
	BEGIN
		
		UPDATE dbo.NETS_Incomes
		SET updated_by = @updated_by
			,updated_date = SYSDATETIME()
			,cancelled_date = SYSDATETIME()
			,cancelled_reason = @cancel_reason
			,ref_status = 'C'
		WHERE ref_year = @ref_year
		AND ref_no = @ref_no
		AND ref_status IN ('N', 'R')
		AND created_by = @updated_by;

		COMMIT;

		SELECT (-1) Result;

	END

END TRY
BEGIN CATCH
	
	SELECT ISNULL(ERROR_NUMBER(), 0) Result

	IF @@TRANCOUNT > 0
		ROLLBACK;
	
END CATCH

END

GO
/****** Object:  StoredProcedure [dbo].[postManualIncomeKeyin]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[postManualIncomeKeyin]
@payee_national_id varchar(13)
,@data_group_id varchar(50)
,@amount decimal(17, 2)
,@sales_code varchar(10)
,@remark varchar(max)
,@ref_year int
,@ref_no varchar(5)
,@created_by varchar(50)
AS
BEGIN

BEGIN TRANSACTION
BEGIN TRY

	DECLARE @year int;
	SELECT @year = YEAR(MAX(c.calendar_run_date))
	FROM dbo.NETS_Batch_Calendars c
	WHERE c.batch_run_flag = 0;

	--DECLARE @group_id varchar(50);
	--SELECT @group_id = u.data_group_id
	--FROM dbo.NETS_User_Profiles u
	--WHERE u.oa_user = @created_by;

	IF @data_group_id IS NULL 
	BEGIN
		ROLLBACK;
		SELECT (-2) Result;
	END

	ELSE
	BEGIN
		DECLARE @account_no varchar(10);
		SELECT @account_no = p.account_no
		FROM dbo.NETS_Payees p
		WHERE p.active = 1
		AND p.national_id = @payee_national_id;

		IF @account_no IS NULL 
		BEGIN
			ROLLBACK;
			SELECT (-3) Result;
		END

		ELSE 
		BEGIN
			DECLARE @Update int;
			SELECT @Update = COUNT(*)
			FROM dbo.NETS_Incomes i
			WHERE i.ref_year = @ref_year
			AND i.ref_no = @ref_no
			AND i.created_by = @created_by
			AND i.national_id = @payee_national_id
			AND i.ref_status IN ('N', 'R')

			IF @ref_year <> 0 AND ISNULL(@Update, 0) = 0
			BEGIN
				ROLLBACK;
				SELECT (-4) Result;
			END

			ELSE
			BEGIN

				IF @ref_year = 0
				BEGIN
					DECLARE @ref_no_new varchar(5) = dbo.getRunningIncomeRefNo(@year);
					INSERT INTO dbo.NETS_Incomes (
					 ref_year
					,ref_no
					,transaction_no
					,ref_status
					,national_id
					,account_no
					,amount
					,group_id
					,sales_code
					,remark
					,source
					,created_date
					,created_by
					,updated_date
					,updated_by)
					VALUES
					(@year                                      -- ref_year
					,@ref_no_new									-- ref_no
					,1											-- transaction_no
					,'N'										-- ref_status
					,@payee_national_id							-- national_id
					,@account_no								-- account_no
					,@amount									-- amount
					,@data_group_id									-- group_id
					,IIF(@sales_code = '', null, @sales_code)	-- sales_code
					,IIF(@remark = '', null, @remark)			-- remark
					,'M'										-- source
					,SYSDATETIME(), @created_by, SYSDATETIME(), @created_by);

					SET @ref_no = @ref_no_new;

				END

				ELSE
				BEGIN
					UPDATE dbo.NETS_Incomes
					SET amount = @amount
						,group_id = @data_group_id
						,account_no = @account_no
						,sales_code = IIF(@sales_code = '', null, @sales_code)
						,remark = IIF(@remark = '', null, @remark)
						,updated_by = @created_by
						,updated_date = SYSDATETIME()
					WHERE ref_year = @ref_year
					AND ref_no = @ref_no
					AND created_by = @created_by
					AND national_id = @payee_national_id;

				END

				COMMIT;
	
				SELECT 
					i.national_id payee_national_id
					,CONCAT(p.pre_name , p.first_name, ' ', p.last_name) payee_name
					,i.account_no
					,FORMAT(i.created_date, 'dd/MM/yyyy HH:mm') created_date
					,i.created_by
					,FORMAT(i.updated_date, 'dd/MM/yyyy HH:mm') updated_date
					,i.updated_by
					,CONCAT(FORMAT(DATEFROMPARTS(i.ref_year, 1, 1), 'yy', 'th-TH'), '-', i.ref_no) ref_no_mask
					,ISNULL(i.sales_code, '') sales_code
					,i.amount
					,ISNULL(i.remark, '') remark
					,i.ref_year
					,i.ref_no
					,i.ref_status
					,l_sts.lov_description ref_status_desc
					,i.group_id
					,(-1) Result
				FROM dbo.NETS_Incomes i
				JOIN dbo.NETS_Payees p ON p.national_id = i.national_id
				JOIN dbo.NETS_List_of_Values l_sts ON l_sts.lov_field = 'RefNoStatus'
												AND l_sts.lov_code = i.ref_status
				WHERE i.ref_no = @ref_no
				AND i.ref_year = @year;

			END
		END
	END

END TRY
BEGIN CATCH
	
	SELECT ISNULL(ERROR_NUMBER(), 0) Result

	IF @@TRANCOUNT > 0
		ROLLBACK;
	
END CATCH

END

GO
/****** Object:  StoredProcedure [dbo].[postManualIncomeReject]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[postManualIncomeReject]
@lists income_ref_no_type READONLY
,@rejectReason varchar(1000)
,@username varchar(50)
AS
BEGIN

BEGIN TRANSACTION
BEGIN TRY

	-- initial access user table for filter record product
	DECLARE @access_group TABLE(
	group_access varchar(50)
	);

	INSERT INTO @access_group
	SELECT 
		g.group_id
	FROM dbo.NETS_Data_Groups g
	JOIN dbo.NETS_Data_Groups g1 ON g1.product_id = g.product_id
	JOIN dbo.NETS_User_Profiles u ON u.data_group_id = g1.group_id
								AND u.oa_user = @username;

	-- initial income list for validate
	DECLARE @income TABLE(
		ref_year int,
		ref_no varchar(5),
		ref_status varchar(1),
		national_id varchar(13),
		group_id varchar(50)
	);
	INSERT INTO @income
	SELECT 
		i.ref_year
		,i.ref_no
		,i.ref_status
		,i.national_id
		,i.group_id
	FROM dbo.NETS_Incomes i
	JOIN (SELECT DISTINCT * FROM @lists ) l ON l.ref_year = i.ref_year
					AND l.ref_no = i.ref_no;

	-- check data group 
	DECLARE @error int = 0;
	SELECT @error = COUNT(*)
	FROM @income i
	WHERE NOT EXISTS (SELECT 1 FROM @access_group ag WHERE ag.group_access = i.group_id)

	IF @error > 0
	BEGIN
		SELECT 
			0 total_approved_rows
			,(-1) Result;
		
	END
	ELSE
	BEGIN
	-- check ref status
		SELECT @error = COUNT(*)
		FROM @income i
		WHERE i.ref_status <> 'S';

		IF @error > 0
		BEGIN
			SELECT 
				0 total_approved_rows
				,(-2) Result;

		END
		ELSE
		BEGIN

			UPDATE i
			SET 
				i.ref_status = 'R'
				,i.rejected_by = @username
				,i.rejected_date = SYSDATETIME()
				,i.rejected_reason = @rejectReason
			FROM dbo.NETS_Incomes i
			JOIN @lists l ON l.ref_year = i.ref_year
						AND l.ref_no = i.ref_no;

			COMMIT;

			SELECT 
				COUNT(*) total_rejected_rows
				,(-3) Result
			FROM @income;

		END

	END


END TRY
BEGIN CATCH
	
	SELECT 0 total_approved_rows, ISNULL(ERROR_NUMBER(), 0) Result;

	IF @@TRANCOUNT > 0
		ROLLBACK;
	
END CATCH

END

GO
/****** Object:  StoredProcedure [dbo].[postManualIncomeSubmit]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[postManualIncomeSubmit]
@ref_year int
,@ref_no varchar(5)
,@updated_by varchar(50)
AS
BEGIN

BEGIN TRANSACTION
BEGIN TRY

	DECLARE @created_by varchar(50);
	DECLARE @ref_status char(1);

	SELECT @created_by = i.created_by
		,@ref_status = i.ref_status
	FROM dbo.NETS_Incomes i
	WHERE i.ref_year = @ref_year
	AND i.ref_no = @ref_no;

	IF @ref_status IS NULL OR @ref_status NOT IN ('N', 'R')
	BEGIN
		ROLLBACK;
		SELECT (-2) Result;
	END

	ELSE IF @created_by <> @updated_by
	BEGIN
		ROLLBACK;
		SELECT (-3) Result;
	END

	ELSE
	BEGIN
		
		UPDATE dbo.NETS_Incomes
		SET updated_by = @updated_by
			,updated_date = SYSDATETIME()
			,submitted_date =  SYSDATETIME()
			,ref_status = 'S'
		WHERE ref_year = @ref_year
		AND ref_no = @ref_no
		AND ref_status IN ('N', 'R')
		AND created_by = @updated_by;

		COMMIT;

		SELECT (-1) Result;

	END

END TRY
BEGIN CATCH
	
	SELECT ISNULL(ERROR_NUMBER(), 0) Result

	IF @@TRANCOUNT > 0
		ROLLBACK;
	
END CATCH

END

GO
/****** Object:  StoredProcedure [dbo].[postManualIncomeUploadSubmit]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[postManualIncomeUploadSubmit]
@lists manual_income_upload_type READONLY
,@sum_amount decimal(17, 2)
,@total_rows int
,@username varchar(50)
AS
BEGIN

BEGIN TRANSACTION
BEGIN TRY
	-- initial data group child for validate group id in payload
	DECLARE @group_table TABLE(group_id varchar(50));
	
	-- keep record to table varable
	INSERT INTO @group_table
	SELECT g1.group_id
	FROM dbo.NETS_Data_Groups g1
	JOIN (SELECT d.product_id
		FROM dbo.NETS_Data_Groups d
		JOIN dbo.NETS_User_Profiles u ON u.data_group_id = d.group_id
									AND u.oa_user = @username) g2 ON g2.product_id = g1.product_id;
	
	-- initial check sum, count row variable
	DECLARE @count_row int, @sum decimal(17, 2);
	SELECT 
		@count_row = COUNT(*)
		,@sum = SUM(l.amount)
	FROM @lists l;

	IF @total_rows <> @count_row OR @sum_amount <> @sum
	BEGIN
		SELECT '' ref_no_mask, (-1) Result;

	END
	ELSE
	BEGIN
	-- initial count error variable
		DECLARE @error int = 0;
		SELECT 
			@error = COUNT(*)
		FROM @lists l
		WHERE NOT EXISTS (SELECT 1 
						FROM dbo.NETS_Payees p 
						WHERE p.active = 1
						AND p.national_id = l.national_id);

		IF @error > 0
		BEGIN
			SELECT '' ref_no_mask, (-2) Result;

		END
		ELSE
		BEGIN
			-- check data group id
			SELECT 
				@error = COUNT(*)
			FROM @lists l
			WHERE NOT EXISTS (SELECT 1
								FROM @group_table g 
								WHERE g.group_id = l.group_id);

			IF @error > 0
			BEGIN
				SELECT '' ref_no_mask, (-3) Result;

			END
			ELSE
			BEGIN
			-- check amount
				SELECT 
					@error = COUNT(*)
				FROM @lists l
				WHERE l.amount <= 0;

				IF @error > 0
				BEGIN
					SELECT '' ref_no_mask, (-4) Result;

				END
				ELSE
				BEGIN
				-- initial ref year
					DECLARE @year int;
					SELECT @year = YEAR(MAX(c.calendar_run_date))
					FROM dbo.NETS_Batch_Calendars c
					WHERE c.batch_run_date IS NULL;

				-- initial ref no
					DECLARE @ref_no_new varchar(5) = dbo.getRunningIncomeRefNo(@year);

				-- insert records
					INSERT INTO dbo.NETS_Incomes (
						 ref_year
						,ref_no
						,transaction_no
						,ref_status
						,national_id
						,account_no
						,amount
						,group_id
						,sales_code
						,remark
						,source
						,submitted_date
						,created_date
						,created_by
						,updated_date
						,updated_by)
					SELECT
						@year                                      -- ref_year
						,@ref_no_new									-- ref_no
						,ROW_NUMBER() OVER(ORDER BY (SELECT null))	-- transaction_no
						,'S'										-- ref_status
						,l.national_id							-- national_id
						,p.account_no								-- account_no
						,l.amount									-- amount
						,l.group_id									-- group_id
						,IIF(l.sales_code = '', null, l.sales_code)	-- sales_code
						,IIF(l.remark = '', null, l.remark)			-- remark
						,'U'										-- source
						,SYSDATETIME()
						,SYSDATETIME(), @username, SYSDATETIME(), @username
					FROM @lists l
					JOIN dbo.NETS_Payees p ON p.national_id = l.national_id;

					COMMIT;

					SELECT CONCAT(FORMAT(DATEFROMPARTS(@year, 1, 1), 'yy', 'th-TH'), '-', @ref_no_new) ref_no_mask
						,(-5) Result;

				END

			END
		
		END
	END

END TRY
BEGIN CATCH
	
	SELECT '' ref_no_mask, ISNULL(ERROR_NUMBER(), 0) Result

	IF @@TRANCOUNT > 0
		ROLLBACK;
	
END CATCH

END

GO
/****** Object:  StoredProcedure [dbo].[postPayee]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[postPayee]
@national_id varchar(13) 
,@pre_name varchar(20) 
,@first_name varchar(100) 
,@last_name varchar(100) 
,@address_no varchar(40) 
,@address_moo_no varchar(20) 
,@address_build_name varchar(40) 
,@address_room_no varchar(20) 
,@address_floor_no varchar(20) 
,@address_village_name varchar(100) 
,@address_soi varchar(100) 
,@address_street_name varchar(100) 
,@address_tambon varchar(50) 
,@address_amphur varchar(50) 
,@address_province varchar(50) 
,@address_postal_code varchar(5) 
,@account_no varchar(10) 
,@active bit 
,@UpdatedBy varchar(50)

AS
BEGIN

BEGIN TRANSACTION
BEGIN TRY

	INSERT INTO dbo.NETS_Payees
		(national_id
		,pre_name
		,first_name
		,last_name
		,address_no
		,address_moo_no
		,address_build_name
		,address_room_no
		,address_floor_no
		,address_village_name
		,address_soi
		,address_street_name
		,address_tambon
		,address_amphur
		,address_province
		,address_postal_code
		,account_no
		,active
		,created_by
		,created_date
		,updated_by
		,updated_date)
	VALUES (
		@national_id
		,@pre_name
		,@first_name
		,@last_name
		,@address_no
		,@address_moo_no
		,@address_build_name
		,@address_room_no
		,@address_floor_no
		,@address_village_name
		,@address_soi
		,@address_street_name
		,@address_tambon
		,@address_amphur
		,@address_province
		,@address_postal_code
		,@account_no
		,@active
		,@UpdatedBy, SYSDATETIME(), @UpdatedBy, SYSDATETIME());

	COMMIT;
END TRY
BEGIN CATCH
	
	IF @@TRANCOUNT > 0
		ROLLBACK;

	UPDATE dbo.NETS_Payees
	SET 
		pre_name = @pre_name
		,first_name = @first_name
		,last_name = @last_name
		,address_no = @address_no
		,address_moo_no = @address_moo_no
		,address_build_name = @address_build_name
		,address_room_no = @address_room_no
		,address_floor_no = @address_floor_no
		,address_village_name = @address_village_name
		,address_soi = @address_soi
		,address_street_name = @address_street_name
		,address_tambon = @address_tambon
		,address_amphur = @address_amphur
		,address_province = @address_province
		,address_postal_code = @address_postal_code
		,active = @active
		,updated_by = @UpdatedBy
		,updated_date = SYSDATETIME()
	WHERE national_id = @national_id;

	COMMIT;
END CATCH

END

GO
/****** Object:  StoredProcedure [dbo].[postPayeeChangeApprove]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[postPayeeChangeApprove]
@list_national_id national_id_type READONLY
,@UpdatedBy varchar(50)

AS
BEGIN

BEGIN TRANSACTION
BEGIN TRY

	-- initial access user table for filter record product
	DECLARE @access_user TABLE(
	user_access varchar(50)
	);

	INSERT INTO @access_user
	SELECT 
		u.oa_user id
	FROM dbo.NETS_User_Profiles u
	JOIN dbo.NETS_Data_Groups g ON g.team_id = u.team_id
								AND g.group_id = u.data_group_id
	JOIN dbo.NETS_User_Profiles u1 ON u1.team_id = u.team_id
								AND u1.oa_user = @UpdatedBy
	JOIN dbo.NETS_Data_Groups g1 ON g1.team_id = u1.team_id
								AND g1.group_id = u1.data_group_id
								AND g1.product_id = g.product_id;

	-- Insert new change
	INSERT INTO dbo.NETS_Payees (
		 national_id
		,pre_name
		,first_name
		,last_name
		,address_no
		,address_moo_no
		,address_build_name
		,address_room_no
		,address_floor_no
		,address_village_name
		,address_soi
		,address_street_name
		,address_tambon
		,address_amphur
		,address_province
		,address_postal_code
		,account_no
		,active
		,created_date
		,created_by
		,updated_date
		,updated_by
	)
	SELECT
		c.national_id
		,c.pre_name
		,c.first_name
		,c.last_name
		,c.address_no
		,c.address_moo_no
		,c.address_build_name
		,c.address_room_no
		,c.address_floor_no
		,c.address_village_name
		,c.address_soi
		,c.address_street_name
		,c.address_tambon
		,c.address_amphur
		,c.address_province
		,c.address_postal_code
		,c.account_no
		,c.active
		,c.changed_date
		,c.changed_by
		,c.changed_date
		,c.changed_by
	FROM dbo.NETS_Payees_Change c
	JOIN @access_user a ON a.user_access = c.changed_by
	JOIN @list_national_id n ON n.national_id = c.national_id
	WHERE c.status = 'W'
	AND c.action = 'New';
	
	-- Update change
	UPDATE p
	SET 
		 p.pre_name = c.pre_name
		,p.first_name = c.first_name
		,p.last_name = c.last_name
		,p.address_no = c.address_no
		,p.address_moo_no = c.address_moo_no
		,p.address_build_name = c.address_build_name
		,p.address_room_no = c.address_room_no
		,p.address_floor_no = c.address_floor_no
		,p.address_village_name = c.address_village_name
		,p.address_soi = c.address_soi
		,p.address_street_name = c.address_street_name
		,p.address_tambon = c.address_tambon
		,p.address_amphur = c.address_amphur
		,p.address_province = c.address_province
		,p.address_postal_code = c.address_postal_code
		,p.account_no = c.account_no
		,p.active = c.active
		,p.updated_by = c.changed_by
		,p.updated_date = c.changed_date
	FROM dbo.NETS_Payees p
	INNER JOIN dbo.NETS_Payees_Change c ON c.national_id = p.national_id
										AND c.status = 'W'
										AND c.action = 'Update'
	INNER JOIN @access_user a ON c.changed_by = a.user_access
	INNER JOIN @list_national_id n ON n.national_id = c.national_id;

	-- update status chaneg table
	UPDATE dbo.NETS_Payees_Change
	SET
		status = 'A'
		,approved_by = @UpdatedBy
		,approved_date = SYSDATETIME()
	WHERE status = 'W'
	AND EXISTS (SELECT 1 FROM @access_user u WHERE u.user_access = NETS_Payees_Change.changed_by)
	AND EXISTS (SELECT 1 FROM @list_national_id n WHERE n.national_id = NETS_Payees_Change.national_id);

	
	COMMIT;
	SELECT (-1) Result;

END TRY
BEGIN CATCH
	
	SELECT ISNULL(ERROR_NUMBER(), 0) Result;

	IF @@TRANCOUNT > 0
		ROLLBACK;

END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[postPayeeChangeReject]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[postPayeeChangeReject]
@list_national_id national_id_type READONLY
,@reason varchar(1000)
,@UpdatedBy varchar(50)

AS
BEGIN

BEGIN TRANSACTION
BEGIN TRY

	-- initial access user table for filter record product
	DECLARE @access_user TABLE(
	user_access varchar(50)
	);

	INSERT INTO @access_user
	SELECT 
		u.oa_user id
	FROM dbo.NETS_User_Profiles u
	JOIN dbo.NETS_Data_Groups g ON g.team_id = u.team_id
								AND g.group_id = u.data_group_id
	JOIN dbo.NETS_User_Profiles u1 ON u1.team_id = u.team_id
								AND u1.oa_user = @UpdatedBy
	JOIN dbo.NETS_Data_Groups g1 ON g1.team_id = u1.team_id
								AND g1.group_id = u1.data_group_id
								AND g1.product_id = g.product_id;

	-- update status chaneg table
	UPDATE dbo.NETS_Payees_Change
	SET
		status = 'R'
		,rejected_by = @UpdatedBy
		,rejected_date = SYSDATETIME()
		,rejected_reason = @reason
	WHERE status = 'W'
	AND EXISTS (SELECT 1 FROM @access_user u WHERE u.user_access = NETS_Payees_Change.changed_by)
	AND EXISTS (SELECT 1 FROM @list_national_id n WHERE n.national_id = NETS_Payees_Change.national_id);

	
	COMMIT;
	SELECT (-1) Result;

END TRY
BEGIN CATCH
	
	SELECT ISNULL(ERROR_NUMBER(), 0) Result;

	IF @@TRANCOUNT > 0
		ROLLBACK;

END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[postRole]    Script Date: 5/23/2023 4:40:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[postTaxDeduction]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[postTaxDeduction]
@effective_date date
,@tax_exemption_rate float
,@tax_exemption_max float
,@tax_deduction float
,@UpdatedBy varchar(50)

AS
BEGIN

BEGIN TRANSACTION
BEGIN TRY
INSERT INTO dbo.NETS_Tax_Deduction_Terms
VALUES (
	@effective_date
	,ROUND(@tax_exemption_rate/100, 2)
	,@tax_exemption_max
	,@tax_deduction
	,SYSDATETIME()
	,@UpdatedBy
	,SYSDATETIME()
	,@UpdatedBy
	);

COMMIT;

END TRY
BEGIN CATCH

IF @@TRANCOUNT > 0
	ROLLBACK;

BEGIN TRANSACTION;

UPDATE dbo.NETS_Tax_Deduction_Terms
SET 
	tax_deduction = @tax_deduction
	,tax_exemption_max = @tax_exemption_max
	,tax_exemption_rate = ROUND(@tax_exemption_rate/100, 2)
	,updated_by = @UpdatedBy
	,updated_date = SYSDATETIME()
WHERE effective_date = @effective_date;

COMMIT;

END CATCH

END

GO
/****** Object:  StoredProcedure [dbo].[postTaxTerm]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[postTaxTerm]
@effective_date date 
,@tax_rate float 
,@tax_range_begin int 
,@tax_range_begin_old int
,@tax_range_end int 
,@UpdatedBy varchar(50)

AS
BEGIN

BEGIN TRANSACTION
BEGIN TRY

    -- check if the record exists
    IF EXISTS (SELECT 1 FROM dbo.NETS_Tax_Terms WHERE effective_date = @effective_date AND tax_range_begin = @tax_range_begin_old)
    BEGIN
        -- update the existing record
        UPDATE dbo.NETS_Tax_Terms
        SET 
            tax_rate = ROUND(@tax_rate/100, 2)
            ,tax_range_begin = @tax_range_begin
            ,tax_range_end = @tax_range_end
            ,updated_by = @UpdatedBy
            ,updated_date = SYSDATETIME()
        WHERE effective_date = @effective_date
        AND tax_range_begin = @tax_range_begin_old;
    END
    ELSE
    BEGIN
        -- insert a new record
        INSERT INTO dbo.NETS_Tax_Terms
        VALUES (
            ROUND(@tax_rate/100, 2)
            ,@effective_date
            ,@tax_range_begin
            ,@tax_range_end
            ,SYSDATETIME()
            ,@UpdatedBy
            ,SYSDATETIME()
            ,@UpdatedBy
            );
    END

	COMMIT;
END TRY
BEGIN CATCH
	
	IF @@TRANCOUNT > 0
		ROLLBACK;

	THROW;
END CATCH

END

GO
/****** Object:  StoredProcedure [dbo].[postUsername]    Script Date: 5/23/2023 4:40:51 PM ******/
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
    ,'123'
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

END CATCH

END

GO
/****** Object:  StoredProcedure [dbo].[RolePermission]    Script Date: 5/23/2023 4:40:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[searchPayees]    Script Date: 5/23/2023 4:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[searchPayees]
@wording varchar(100) = ''

AS
BEGIN

DECLARE @records int = 100;
DECLARE @page int = 1;

SELECT 
	p.national_id
	,p.pre_name
	,p.first_name
	,p.last_name
	,p.account_no
	,p.address_village_name
	,CONCAT(p.address_no, ' '
			, IIF(ISNULL(p.address_moo_no, '') = '', '', 'หมู่ ' + p.address_moo_no + ' ')
			, IIF(ISNULL(p.address_build_name, '') = '', '', 'อาคาร ' + p.address_build_name + ' ')
			, IIF(ISNULL(p.address_room_no, '') = '', '', 'ห้อง ' + p.address_room_no + ' ')
			, IIF(ISNULL(p.address_floor_no, '') = '', '', 'ชั้น ' + p.address_floor_no + ' ')
			, IIF(ISNULL(p.address_village_name, '') = '', '', 'หมู่บ้าน ' + p.address_village_name + ' ')
			, IIF(ISNULL(p.address_soi, '') = '', '', 'ซอย ' + p.address_soi + ' ')
			, IIF(ISNULL(p.address_street_name, '') = '', '', 'ถนน ' + p.address_street_name + ' ')
			,p.address_tambon, ' '
			,p.address_amphur, ' '
			,p.address_province, ' '
			,p.address_postal_code) address
	,p.active
	,Count(*) Over() AS total_records
	,@page current_page
FROM dbo.NETS_Payees p
WHERE CONCAT(p.first_name, ' ', p.last_name) LIKE '%' + @wording + '%'
OR p.national_id LIKE '%' + @wording + '%'

ORDER BY p.national_id ASC
OFFSET @records*(@page-1) ROWS
FETCH NEXT @records ROWS ONLY;


END

GO
USE [master]
GO
ALTER DATABASE [Nets] SET  READ_WRITE 
GO
