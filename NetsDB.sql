Use Nets
TRUNCATE TABLE dbo.NETS_List_of_Values
INSERT dbo.NETS_List_of_Values VALUES (N'PreName', N'นาง', 1, N'นาง', NULL, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_List_of_Values VALUES (N'PreName', N'นางสาว', 1, N'นางสาว', NULL, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_List_of_Values VALUES (N'PreName', N'นาย', 1, N'นาย', NULL, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_List_of_Values VALUES (N'Product', N'BLA', 1, N'BLA', NULL, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_List_of_Values VALUES (N'Product', N'CreditCard', 1, N'Credit Card', NULL, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_List_of_Values VALUES (N'Product', N'HealthCare', 1, N'Health Care', NULL, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_List_of_Values VALUES (N'Product', N'HomeLoan', 1, N'Home Loan', NULL, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_List_of_Values VALUES (N'Source', N'A', 1, N'API', NULL, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_List_of_Values VALUES (N'Source', N'M', 1, N'Manual Key-In', NULL, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_List_of_Values VALUES (N'Source', N'U', 1, N'Excel Upload', NULL, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_List_of_Values VALUES (N'Team', N'DirectSales', 1, N'Direct Sales', NULL, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_List_of_Values VALUES (N'Team', N'HealthCare', 1, N'Health Care', NULL, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_List_of_Values VALUES (N'Team', N'IT', 1, N'IT', NULL, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_List_of_Values VALUES (N'Team', N'Tax', 1, N'Tax', NULL, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_List_of_Values VALUES (N'RefNoStatus', N'N', 1, N'New', NULL, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_List_of_Values VALUES (N'RefNoStatus', N'S', 1, N'Submitted', NULL, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_List_of_Values VALUES (N'RefNoStatus', N'R', 1, N'Rejected', NULL, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_List_of_Values VALUES (N'RefNoStatus', N'A', 1, N'Approved', NULL, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_List_of_Values VALUES (N'RefNoStatus', N'C', 1, N'Cancelled', NULL, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_List_of_Values VALUES (N'RefNoStatus', N'I', 1, N'In-Process', NULL, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_List_of_Values VALUES (N'RefNoStatus', N'P', 1, N'Paid', NULL, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_List_of_Values VALUES (N'RefNoStatus', N'U', 1, N'Unpaid', NULL, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_List_of_Values VALUES (N'RefNoStatus', N'M', 1, N'Manual-Paid', NULL, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_List_of_Values VALUES (N'IncomeUpload', N'Template', 1, N' https://bangkokbank.sharepoint.com/teams/NETS/Shared%20Documents/General/Relate%20Document/Template/NETS-Income-Upload_v.1.0_20230425.xlsx', N' NETS-Income-Upload_v.1.0_20230425.xlsx', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
TRUNCATE TABLE dbo.NETS_Data_Groups;
INSERT dbo.NETS_Data_Groups  VALUES (N'IT', N'IT', NULL, 1, N'IT', N'IT', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'BLA', N'BLA', NULL, 1, N'DirectSales', N'BLA', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'CreditCard', N'Credit Card', NULL, 1, N'DirectSales', N'CreditCard', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HealthCare', N'Health Care', NULL, 1, N'HealthCare', N'HealthCare', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-M', N'Mortgage Direct Sales Head', NULL, 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MA', N'Mortgage Direct Sales Manager Team1 ( A )', N'HomeLoan-M', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MB', N'Mortgage Direct Sales Manager Team2 ( B )', N'HomeLoan-M', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MC', N'Mortgage Direct Sales Manager Team3 ( C )', N'HomeLoan-M', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MD', N'Mortgage Direct Sales Manager Team4 ( D )', N'HomeLoan-M', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-ME', N'Mortgage Direct Sales Manager Team5 ( E )', N'HomeLoan-M', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MG', N'Mortgage Direct Sales Manager Team6 ( I )', N'HomeLoan-M', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MH', N'Mortgage Direct Sales Manager Team7 ( G )', N'HomeLoan-M', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MI', N'Mortgage Direct Sales Manager Team8 ( H )', N'HomeLoan-M', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MAA', N'Mortgage Direct Sales Leader AA', N'HomeLoan-MA', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MAB', N'Mortgage Direct Sales Leader AB', N'HomeLoan-MA', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MAC', N'Mortgage Direct Sales Leader AC', N'HomeLoan-MA', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MAD', N'Mortgage Direct Sales Leader AD', N'HomeLoan-MA', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MAE', N'Mortgage Direct Sales Leader AE', N'HomeLoan-MA', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MBA', N'Mortgage Direct Sales Leader BA', N'HomeLoan-MB', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MBB', N'Mortgage Direct Sales Leader BB', N'HomeLoan-MB', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MBC', N'Mortgage Direct Sales Leader BC', N'HomeLoan-MB', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MCA', N'Mortgage Direct Sales Leader CA', N'HomeLoan-MC', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MCB', N'Mortgage Direct Sales Leader CB', N'HomeLoan-MC', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MCD', N'Mortgage Direct Sales Leader CD', N'HomeLoan-MC', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MDA', N'Mortgage Direct Sales Leader DA', N'HomeLoan-MD', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MDC', N'Mortgage Direct Sales Leader DC', N'HomeLoan-MD', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MDD', N'Mortgage Direct Sales Leader DD', N'HomeLoan-MD', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MEA', N'Mortgage Direct Sales Leader EA', N'HomeLoan-ME', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MEB', N'Mortgage Direct Sales Leader EB', N'HomeLoan-ME', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MEE', N'Mortgage Direct Sales Leader EE', N'HomeLoan-ME', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MIA', N'Mortgage Direct Sales Leader IA', N'HomeLoan-MI', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MIB', N'Mortgage Direct Sales Leader IB', N'HomeLoan-MI', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MIC', N'Mortgage Direct Sales Leader IC', N'HomeLoan-MI', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MGA', N'Mortgage Direct Sales Leader GA', N'HomeLoan-MG', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MGB', N'Mortgage Direct Sales Leader GB', N'HomeLoan-MG', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MGC', N'Mortgage Direct Sales Leader GC', N'HomeLoan-MG', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MHA', N'Mortgage Direct Sales Leader HA', N'HomeLoan-MH', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MHB', N'Mortgage Direct Sales Leader HB', N'HomeLoan-MH', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Data_Groups  VALUES (N'HomeLoan-MHC', N'Mortgage Direct Sales Leader HC', N'HomeLoan-MH', 1, N'DirectSales', N'HomeLoan', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');

TRUNCATE TABLE dbo.NETS_Roles;
INSERT dbo.NETS_Roles  VALUES (N'AppAdmin', N'App - Admin', 50, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT dbo.NETS_Roles  VALUES (N'IT', N'IT', 99, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT dbo.NETS_Roles  VALUES (N'Officer', N'Officer', 10, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT dbo.NETS_Roles  VALUES (N'SuperAdmin', N'Super Admin', 99, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT dbo.NETS_Roles  VALUES (N'Supervisor', N'Supervisor', 30, 1, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT dbo.NETS_Roles  VALUES (N'Tax', N'Tax', 30, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

TRUNCATE TABLE dbo.NETS_User_Profiles_Info;
INSERT dbo.NETS_User_Profiles_Info VALUES (N'user02', N'ผู้ใช้งาน', N'แอพ แอดมิน', N'user', N'user 02', N'001903', N'Organization and Methodology');
INSERT dbo.NETS_User_Profiles_Info VALUES (N'user03', N'ผู้ใช้งาน', N'ภาษี', N'user', N'user 03', N'001906', N'Deposit and Related Systems');
INSERT dbo.NETS_User_Profiles_Info VALUES (N'user04', N'ผู้ใช้งาน', N'หัวหน้า สุขภาพ', N'user', N'user 04', N'001908', N'Loan and Related Systems');
INSERT dbo.NETS_User_Profiles_Info VALUES (N'user05', N'ผู้ใช้งาน', N'หัวหน้า BLA', N'user', N'user 05', N'001909', N'Channel Management System');
INSERT dbo.NETS_User_Profiles_Info VALUES (N'user06', N'ผู้ใช้งาน', N'หัวหน้า สายบัตร', N'user', N'user 06', N'001910', N'International Business System');
INSERT dbo.NETS_User_Profiles_Info VALUES (N'user07', N'ผู้ใช้งาน', N'หัวหน้า สินเชื่อบ้าน', N'user', N'user 07', N'001912', N'Information Management System');
INSERT dbo.NETS_User_Profiles_Info VALUES (N'user08', N'ผู้ใช้งาน', N'BLA', N'user', N'user 08', N'001913', N'Business Analysis System');
INSERT dbo.NETS_User_Profiles_Info VALUES (N'user09', N'ผู้ใช้งาน', N'สายบัตร', N'user', N'user 09', N'001923', N'Custody System Group');
INSERT dbo.NETS_User_Profiles_Info VALUES (N'user10', N'ผู้ใช้งาน', N'สินเชื่อบ้าน', N'user', N'user 10', N'001924', N'Trade Finance System Group');
INSERT dbo.NETS_User_Profiles_Info VALUES (N'user11', N'ผู้ใช้งาน', N'สินเชื่อบ้าน', N'user', N'user 11', N'001925', N'Treasury System and B.I.B.F. Group');
INSERT dbo.NETS_User_Profiles_Info VALUES (N'user12', N'ผู้ใช้งาน', N'สินเชื่อบ้าน', N'user', N'user 12', N'001926', N'International Remittance and Collection System Group');
INSERT dbo.NETS_User_Profiles_Info VALUES (N'user13', N'ผู้ใช้งาน', N'สินเชื่อบ้าน', N'user', N'user 13', N'001927', N'Management Information System Group');
INSERT dbo.NETS_User_Profiles_Info VALUES (N'user14', N'ผู้ใช้งาน', N'สินเชื่อบ้าน', N'user', N'user 14', N'001928', N'Performance Information System Group');
INSERT dbo.NETS_User_Profiles_Info VALUES (N'user15', N'ผู้ใช้งาน', N'สินเชื่อบ้าน', N'user', N'user 15', N'001929', N'Head Office Application System Group');
INSERT dbo.NETS_User_Profiles_Info VALUES (N'admin', N'แอดมิน', N'แอดมิน', N'admin', N'admin', N'001911', N'ERM');
INSERT dbo.NETS_User_Profiles_Info VALUES (N'user01', N'ผู้ใช้งาน', N'ไอที', N'user', N'user 01', N'001901', N'Central Administration Section');

TRUNCATE TABLE dbo.NETS_User_Profiles;
INSERT dbo.NETS_User_Profiles VALUES (N'admin','123', 1, N'SuperAdmin', N'IT', N'IT', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_User_Profiles VALUES (N'user01','123', 1, N'IT', N'IT', N'IT', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_User_Profiles VALUES (N'user02','123', 0, N'AppAdmin', N'IT', N'IT', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_User_Profiles VALUES (N'user03','123', 1, N'Tax', N'IT', N'Tax', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_User_Profiles VALUES (N'user04','123', 1, N'Supervisor', N'HealthCare', N'HealthCare', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_User_Profiles VALUES (N'user05','123', 1, N'Supervisor', N'BLA', N'DirectSales', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_User_Profiles VALUES (N'user06','123', 1, N'Supervisor', N'CreditCard', N'DirectSales', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_User_Profiles VALUES (N'user07','123', 1, N'Supervisor', N'HomeLoan-M', N'DirectSales', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_User_Profiles VALUES (N'user08','123', 1, N'Officer', N'BLA', N'DirectSales', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_User_Profiles VALUES (N'user09','123', 1, N'Officer', N'CreditCard', N'DirectSales', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_User_Profiles VALUES (N'user10','123', 1, N'Officer', N'HomeLoan-MA', N'DirectSales', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_User_Profiles VALUES (N'user11','123', 1, N'Officer', N'HomeLoan-MB', N'DirectSales', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_User_Profiles VALUES (N'user12','123', 1, N'Officer', N'HomeLoan-MC', N'DirectSales', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_User_Profiles VALUES (N'user13','123', 1, N'Officer', N'HomeLoan-MD', N'DirectSales', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_User_Profiles VALUES (N'user14','123', 1, N'Officer', N'HomeLoan-MAA', N'DirectSales', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_User_Profiles VALUES (N'user15','123', 1, N'Officer', N'HomeLoan-MBB', N'DirectSales', SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');

TRUNCATE TABLE dbo.NETS_Batch_Calendars;
INSERT INTO [dbo].[NETS_Batch_Calendars]  VALUES (2022, 1, N'Jan-22', N'2022-01-13', N'2022-01-13', N'2023-05-12 14:28:36', N'batch', N'2023-05-12 14:28:36', N'batch', 1, 1)
INSERT INTO [dbo].[NETS_Batch_Calendars]  VALUES (2022, 2, N'Feb-22', N'2022-02-11', N'2022-02-11', N'2023-05-12 14:29:11', N'batch', N'2023-05-12 14:29:11', N'batch', 1, 1)
INSERT INTO [dbo].[NETS_Batch_Calendars]  VALUES (2022, 3, N'Mar-22', N'2022-03-11', N'2022-03-11', N'2023-05-12 14:29:11', N'batch', N'2023-05-12 14:29:11', N'batch', 1, 1)
INSERT INTO [dbo].[NETS_Batch_Calendars]  VALUES (2022, 4, N'Apr-22', N'2022-04-12', N'2022-04-12', N'2023-05-12 14:29:11', N'batch', N'2023-05-12 14:29:11', N'batch', 1, 1)
INSERT INTO [dbo].[NETS_Batch_Calendars]  VALUES (2022, 5, N'May-22', N'2022-05-13', N'2022-05-13', N'2023-05-12 14:29:11', N'batch', N'2023-05-12 14:29:11', N'batch', 1, 1)
INSERT INTO [dbo].[NETS_Batch_Calendars]  VALUES (2022, 6, N'Jun-22', N'2022-06-13', N'2022-06-13', N'2023-05-12 14:29:11', N'batch', N'2023-05-12 14:29:11', N'batch', 1, 1)
INSERT INTO [dbo].[NETS_Batch_Calendars]  VALUES (2022, 7, N'Jul-22', N'2022-07-13', N'2022-07-13', N'2023-05-12 14:29:11', N'batch', N'2023-05-12 14:29:11', N'batch', 1, 1)
INSERT INTO [dbo].[NETS_Batch_Calendars]  VALUES (2022, 8, N'Aug-22', N'2022-08-11', N'2022-08-11', N'2023-05-12 14:29:11', N'batch', N'2023-05-12 14:29:11', N'batch', 1, 1)
INSERT INTO [dbo].[NETS_Batch_Calendars]  VALUES (2022, 9, N'Sep-22', N'2022-09-13', N'2022-09-13', N'2023-05-12 14:29:11', N'batch', N'2023-05-12 14:29:11', N'batch', 1, 1)
INSERT INTO [dbo].[NETS_Batch_Calendars]  VALUES (2022, 10, N'Oct-22', N'2022-10-12', N'2022-10-12', N'2023-05-12 14:29:11', N'batch', N'2023-05-12 14:29:11', N'batch', 1, 1)
INSERT INTO [dbo].[NETS_Batch_Calendars]  VALUES (2022, 11, N'Nov-22', N'2022-11-11', N'2022-11-11', N'2023-05-12 14:29:11', N'batch', N'2023-05-12 14:29:11', N'batch', 1, 1)
INSERT INTO [dbo].[NETS_Batch_Calendars]  VALUES (2022, 12, N'Dec-22', N'2022-12-13', N'2022-12-13', N'2023-05-12 14:29:11', N'batch', N'2023-05-12 14:29:11', N'batch', 1, 1)
INSERT INTO [dbo].[NETS_Batch_Calendars]  VALUES (2023, 1, N'Jan-23', N'2023-01-13', N'2023-01-13', N'2023-05-12 14:29:11', N'batch', N'2023-05-12 14:29:11', N'batch', 1, 1)
INSERT INTO [dbo].[NETS_Batch_Calendars]  VALUES (2023, 2, N'Feb-23', N'2023-02-13', N'2023-02-13', N'2023-05-12 14:29:11', N'batch', N'2023-05-12 14:29:11', N'batch', 1, 1)
INSERT INTO [dbo].[NETS_Batch_Calendars]  VALUES (2023, 3, N'Mar-23', N'2023-03-13', N'2023-03-13', N'2023-05-12 14:29:11', N'batch', N'2023-05-12 14:29:11', N'batch', 1, 1)
INSERT INTO [dbo].[NETS_Batch_Calendars]  VALUES (2023, 4, N'Apr-23', N'2023-04-10', NULL, N'2023-05-12 14:29:11', N'batch', N'2023-05-12 14:29:11', N'batch', 0, 0)
INSERT INTO [dbo].[NETS_Batch_Calendars]  VALUES (2023, 5, N'May-23', N'2023-05-12', NULL, N'2023-05-12 14:29:11', N'batch', N'2023-05-12 14:29:11', N'batch', 0, 0)
INSERT INTO [dbo].[NETS_Batch_Calendars]  VALUES (2023, 6, N'Jun-23', N'2023-06-13', NULL, N'2023-05-12 14:29:11', N'batch', N'2023-05-12 14:29:11', N'batch', 0, 0)
INSERT INTO [dbo].[NETS_Batch_Calendars]  VALUES (2023, 7, N'Jul-23', N'2023-07-13', NULL, N'2023-05-12 14:29:11', N'batch', N'2023-05-12 14:29:11', N'batch', 0, 0)
INSERT INTO [dbo].[NETS_Batch_Calendars]  VALUES (2023, 8, N'Aug-23', N'2023-08-11', NULL, N'2023-05-12 14:29:11', N'batch', N'2023-05-12 14:29:11', N'batch', 0, 0)
INSERT INTO [dbo].[NETS_Batch_Calendars]  VALUES (2023, 9, N'Sep-23', N'2023-09-13', NULL, N'2023-05-12 14:29:11', N'batch', N'2023-05-12 14:29:11', N'batch', 0, 0)
INSERT INTO [dbo].[NETS_Batch_Calendars]  VALUES (2023, 10, N'Oct-23', N'2023-10-12', NULL, N'2023-05-12 14:29:11', N'batch', N'2023-05-12 14:29:11', N'batch', 0, 0)
INSERT INTO [dbo].[NETS_Batch_Calendars]  VALUES (2023, 11, N'Nov-23', N'2023-11-13', NULL, N'2023-05-12 14:29:11', N'batch', N'2023-05-12 14:29:11', N'batch', 0, 0)
INSERT INTO [dbo].[NETS_Batch_Calendars]  VALUES (2023, 12, N'Dec-23', N'2023-12-13', NULL, N'2023-05-12 14:29:11', N'batch', N'2023-05-12 14:29:11', N'batch', 0, 0)


TRUNCATE TABLE dbo.NETS_Tax_Deduction_Terms;
INSERT dbo.NETS_Tax_Deduction_Terms VALUES (CAST(N'2020-01-01' AS Date), 0.5, 80000, 30000, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Tax_Deduction_Terms VALUES (CAST(N'2023-01-01' AS Date), 0.5, 100000, 60000, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Tax_Deduction_Terms VALUES (CAST(N'2023-05-01' AS Date), 0.5, 150000, 100000, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');

TRUNCATE TABLE dbo.NETS_Tax_Terms;
INSERT dbo.NETS_Tax_Terms VALUES (0, CAST(N'2000-01-01' AS Date), 0, 150000, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Tax_Terms VALUES (0.03, CAST(N'2000-01-01' AS Date), 150001, 300000, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Tax_Terms VALUES (0.06, CAST(N'2000-01-01' AS Date), 300001, 500000, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Tax_Terms VALUES (0.09, CAST(N'2000-01-01' AS Date), 500001, 750000, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Tax_Terms VALUES (0.12, CAST(N'2000-01-01' AS Date), 750001, 1000000, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Tax_Terms VALUES (0.15, CAST(N'2000-01-01' AS Date), 1000001, 2000000, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Tax_Terms VALUES (0.18, CAST(N'2000-01-01' AS Date), 2000001, 5000000, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Tax_Terms VALUES (0.21, CAST(N'2000-01-01' AS Date), 5000001, 0, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Tax_Terms VALUES (0, CAST(N'2023-01-01' AS Date), 0, 150000, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Tax_Terms VALUES (0.05, CAST(N'2023-01-01' AS Date), 150001, 300000, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Tax_Terms VALUES (0.1, CAST(N'2023-01-01' AS Date), 300001, 500000, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Tax_Terms VALUES (0.15, CAST(N'2023-01-01' AS Date), 500001, 750000, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Tax_Terms VALUES (0.2, CAST(N'2023-01-01' AS Date), 750001, 1000000, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Tax_Terms VALUES (0.25, CAST(N'2023-01-01' AS Date), 1000001, 2000000, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Tax_Terms VALUES (0.3, CAST(N'2023-01-01' AS Date), 2000001, 5000000, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Tax_Terms VALUES (0.35, CAST(N'2023-01-01' AS Date), 5000001, 0, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Tax_Terms VALUES (0, CAST(N'2023-05-01' AS Date), 0, 200000, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Tax_Terms VALUES (0.05, CAST(N'2023-05-01' AS Date), 200001, 400000, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Tax_Terms VALUES (0.1, CAST(N'2023-05-01' AS Date), 400001, 750000, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Tax_Terms VALUES (0.15, CAST(N'2023-05-01' AS Date), 750001, 1000000, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Tax_Terms VALUES (0.2, CAST(N'2023-05-01' AS Date), 1000001, 2000000, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Tax_Terms VALUES (0.25, CAST(N'2023-05-01' AS Date), 2000001, 5000000, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Tax_Terms VALUES (0.3, CAST(N'2023-05-01' AS Date), 5000001, 10000000, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');
INSERT dbo.NETS_Tax_Terms VALUES (0.35, CAST(N'2023-05-01' AS Date), 10000001, 0, SYSDATETIME(), N'admin', SYSDATETIME(), N'admin');

TRUNCATE TABLE dbo.NETS_Incomes;
INSERT INTO dbo.NETS_Incomes VALUES (2023, N'00001', 1, N'S', N'1234567890', N'123', CAST(25.00 AS Decimal(17, 2)), N'IT', NULL, NULL, N'M', N'2023-04-11 15:20:57', N'admin', N'2023-04-19 08:46:34', N'admin', N'2023-04-19 08:46:34', N'2023-04-11 15:20:57', NULL, N'2023-04-11 15:20:57', NULL, NULL, N'2023-04-11 15:20:57', N'2023-04-11 15:20:57', NULL, NULL, N'2023-04-11 15:20:57', NULL, N'2023-04-11 15:20:57', NULL, N'2023-04-11 15:20:57')
INSERT INTO dbo.NETS_Incomes VALUES (2023, N'00002', 1, N'C', N'1234567890', N'123', CAST(0.00 AS Decimal(17, 2)), N'IT', NULL, NULL, N'M', N'2023-04-18 09:44:51', N'admin', N'2023-04-19 15:31:06', N'admin', N'2023-04-19 15:17:18', N'2023-04-18 09:44:51', NULL, N'2023-04-18 09:44:51', NULL, NULL, N'2023-04-18 09:44:51', N'2023-04-18 09:44:51', NULL, NULL, N'2023-04-18 09:44:51', NULL, N'2023-04-19 15:31:06', N'cancel', N'2023-04-18 09:44:51')
INSERT INTO dbo.NETS_Incomes VALUES (2023, N'00003', 1, N'S', N'123456789', N'123123', CAST(50.00 AS Decimal(17, 2)), N'IT', NULL, NULL, N'M', N'2023-04-18 10:06:10', N'admin', N'2023-04-18 10:06:10', N'admin', N'2023-04-18 10:06:10', N'2023-04-18 10:06:10', NULL, N'2023-04-18 10:06:10', NULL, NULL, N'2023-04-18 10:06:10', N'2023-04-18 10:06:10', NULL, NULL, N'2023-04-18 10:06:10', NULL, N'2023-04-18 10:06:10', NULL, N'2023-04-18 10:06:10')
INSERT INTO dbo.NETS_Incomes VALUES (2023, N'00004', 1, N'N', N'123456789', N'123123', CAST(120.00 AS Decimal(17, 2)), N'IT', NULL, NULL, N'M', N'2023-04-18 10:07:54', N'admin', N'2023-04-25 13:21:49', N'admin', N'2023-04-19 15:14:46', N'2023-04-18 10:07:54', NULL, N'2023-04-18 10:07:54', NULL, NULL, N'2023-04-18 10:07:54', N'2023-04-18 10:07:54', NULL, NULL, N'2023-04-18 10:07:54', NULL, N'2023-04-18 10:07:54', NULL, N'2023-04-18 10:07:54')
INSERT INTO dbo.NETS_Incomes VALUES (2023, N'00005', 1, N'N', N'1234567890', N'123', CAST(3.00 AS Decimal(17, 2)), N'IT', NULL, NULL, N'M', N'2023-04-25 14:31:30', N'admin', N'2023-04-25 14:31:30', N'admin', N'2023-04-25 14:31:30', N'2023-04-25 14:31:30', NULL, N'2023-04-25 14:31:30', NULL, NULL, N'2023-04-25 14:31:30', N'2023-04-25 14:31:30', NULL, NULL, N'2023-04-25 14:31:30', NULL, N'2023-04-25 14:31:30', NULL, N'2023-04-25 14:31:30')
INSERT INTO dbo.NETS_Incomes VALUES (2023, N'00006', 1, N'N', N'1234567890', N'123', CAST(999.00 AS Decimal(17, 2)), N'IT', NULL, NULL, N'M', N'2023-04-25 14:32:23', N'admin', N'2023-04-25 14:32:23', N'admin', N'2023-04-25 14:32:23', N'2023-04-25 14:32:23', NULL, N'2023-04-25 14:32:23', NULL, NULL, N'2023-04-25 14:32:23', N'2023-04-25 14:32:23', NULL, NULL, N'2023-04-25 14:32:23', NULL, N'2023-04-25 14:32:23', NULL, N'2023-04-25 14:32:23')

TRUNCATE TABLE dbo.NETS_Payees;
INSERT INTO [dbo].[NETS_Payees] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'123456789', N'นาง', N'ผู้ใช้งาน123', N'user 04', N'1', NULL, NULL, NULL, N'25', NULL, N'Soi', N'Street', N'Tambom', N'Amphur', N'BKK', N'10100', N'123123', 1, N'2023-03-30 13:50:54', N'admin', N'2023-03-30 13:50:54', N'admin')
INSERT INTO [dbo].[NETS_Payees] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890', N'นาย', N'cat', N'dog', N'123', NULL, NULL, NULL, N'288', NULL, N'Soi', N'Street', N'Tambom', N'Amphur', N'BKK', N'10400', N'123', 1, N'2023-03-30 08:47:36', N'admin', N'2023-03-30 13:07:13', N'admin')

INSERT INTO dbo.NETS_Payments
           (ref_year
           ,ref_no
           ,transaction_no
           ,national_id
           ,account_no
           ,group_id
           ,amount
           ,withholding_tax
           ,amount_net
           ,payment_status
           ,created_date
           ,updated_date
           )
SELECT ref_year
      ,ref_no
      ,transaction_no
      ,national_id
      ,account_no
      ,group_id
      ,amount
      ,0
      ,0
      ,'P'
      ,SYSDATETIME()
      ,SYSDATETIME()
FROM dbo.NETS_Incomes
where ref_no = '00001'