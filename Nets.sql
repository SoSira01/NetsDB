USE [NETS_db]
GO
/****** Object:  StoredProcedure [dbo].[ValidateToken]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[ValidateToken]
GO
/****** Object:  StoredProcedure [dbo].[searchPayees]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[searchPayees]
GO
/****** Object:  StoredProcedure [dbo].[RolePermission]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[RolePermission]
GO
/****** Object:  StoredProcedure [dbo].[postUsername]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[postUsername]
GO
/****** Object:  StoredProcedure [dbo].[postTaxTerm]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[postTaxTerm]
GO
/****** Object:  StoredProcedure [dbo].[postTaxDeduction]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[postTaxDeduction]
GO
/****** Object:  StoredProcedure [dbo].[postRole]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[postRole]
GO
/****** Object:  StoredProcedure [dbo].[postPayeeChangeReject]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[postPayeeChangeReject]
GO
/****** Object:  StoredProcedure [dbo].[postPayeeChangeApprove]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[postPayeeChangeApprove]
GO
/****** Object:  StoredProcedure [dbo].[postPayee]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[postPayee]
GO
/****** Object:  StoredProcedure [dbo].[postManualIncomeUploadSubmit]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[postManualIncomeUploadSubmit]
GO
/****** Object:  StoredProcedure [dbo].[postManualIncomeSubmit]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[postManualIncomeSubmit]
GO
/****** Object:  StoredProcedure [dbo].[postManualIncomeReject]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[postManualIncomeReject]
GO
/****** Object:  StoredProcedure [dbo].[postManualIncomeKeyin]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[postManualIncomeKeyin]
GO
/****** Object:  StoredProcedure [dbo].[postManualIncomeCancel]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[postManualIncomeCancel]
GO
/****** Object:  StoredProcedure [dbo].[postManualIncomeApprove]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[postManualIncomeApprove]
GO
/****** Object:  StoredProcedure [dbo].[postManualIncomeAPI]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[postManualIncomeAPI]
GO
/****** Object:  StoredProcedure [dbo].[postManualIncomeAdjust]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[postManualIncomeAdjust]
GO
/****** Object:  StoredProcedure [dbo].[postListOfValues]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[postListOfValues]
GO
/****** Object:  StoredProcedure [dbo].[postDataGroups]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[postDataGroups]
GO
/****** Object:  StoredProcedure [dbo].[postBatchCalendar]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[postBatchCalendar]
GO
/****** Object:  StoredProcedure [dbo].[postAdjustmentIncomeReject]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[postAdjustmentIncomeReject]
GO
/****** Object:  StoredProcedure [dbo].[postAdjustmentIncomeApprove]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[postAdjustmentIncomeApprove]
GO
/****** Object:  StoredProcedure [dbo].[getUserName]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getUserName]
GO
/****** Object:  StoredProcedure [dbo].[GetUploadTemplate]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[GetUploadTemplate]
GO
/****** Object:  StoredProcedure [dbo].[getTaxById]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getTaxById]
GO
/****** Object:  StoredProcedure [dbo].[getTaxByEffDate]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getTaxByEffDate]
GO
/****** Object:  StoredProcedure [dbo].[getTaxByDate]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getTaxByDate]
GO
/****** Object:  StoredProcedure [dbo].[getSubmittedy]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getSubmittedy]
GO
/****** Object:  StoredProcedure [dbo].[getSource]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getSource]
GO
/****** Object:  StoredProcedure [dbo].[getRole]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getRole]
GO
/****** Object:  StoredProcedure [dbo].[getProductGroupidFromToken]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getProductGroupidFromToken]
GO
/****** Object:  StoredProcedure [dbo].[getPayeesChange]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getPayeesChange]
GO
/****** Object:  StoredProcedure [dbo].[getPayeesById]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getPayeesById]
GO
/****** Object:  StoredProcedure [dbo].[getPayeePending]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getPayeePending]
GO
/****** Object:  StoredProcedure [dbo].[getNextCalendar]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getNextCalendar]
GO
/****** Object:  StoredProcedure [dbo].[getManualIncomeHistory]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getManualIncomeHistory]
GO
/****** Object:  StoredProcedure [dbo].[getManualIncomeAdjustSearch]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getManualIncomeAdjustSearch]
GO
/****** Object:  StoredProcedure [dbo].[getManualIncomeAdjustByID]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getManualIncomeAdjustByID]
GO
/****** Object:  StoredProcedure [dbo].[getManualIncome]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getManualIncome]
GO
/****** Object:  StoredProcedure [dbo].[getManualDropdown]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getManualDropdown]
GO
/****** Object:  StoredProcedure [dbo].[getListTeams]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getListTeams]
GO
/****** Object:  StoredProcedure [dbo].[getListTaxRate]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getListTaxRate]
GO
/****** Object:  StoredProcedure [dbo].[getListRole]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getListRole]
GO
/****** Object:  StoredProcedure [dbo].[getListProducts]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getListProducts]
GO
/****** Object:  StoredProcedure [dbo].[getListPreName]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getListPreName]
GO
/****** Object:  StoredProcedure [dbo].[getListParents]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getListParents]
GO
/****** Object:  StoredProcedure [dbo].[getListOfValues]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getListOfValues]
GO
/****** Object:  StoredProcedure [dbo].[getListEffectiveDate]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getListEffectiveDate]
GO
/****** Object:  StoredProcedure [dbo].[getListDataGroups]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getListDataGroups]
GO
/****** Object:  StoredProcedure [dbo].[getInquiryTaxPersonSearch]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getInquiryTaxPersonSearch]
GO
/****** Object:  StoredProcedure [dbo].[getInquiryTaxPerson]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getInquiryTaxPerson]
GO
/****** Object:  StoredProcedure [dbo].[getInquiryTaxGroup]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getInquiryTaxGroup]
GO
/****** Object:  StoredProcedure [dbo].[getInquiryTax]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getInquiryTax]
GO
/****** Object:  StoredProcedure [dbo].[getInquiryPaymentsSearch]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getInquiryPaymentsSearch]
GO
/****** Object:  StoredProcedure [dbo].[getInquiryIncomeSearch]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getInquiryIncomeSearch]
GO
/****** Object:  StoredProcedure [dbo].[getInquiry]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getInquiry]
GO
/****** Object:  StoredProcedure [dbo].[getIncome]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getIncome]
GO
/****** Object:  StoredProcedure [dbo].[GetEffective]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[GetEffective]
GO
/****** Object:  StoredProcedure [dbo].[getDataGroups]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getDataGroups]
GO
/****** Object:  StoredProcedure [dbo].[getCalendarYear]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getCalendarYear]
GO
/****** Object:  StoredProcedure [dbo].[getBatchRunDate]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getBatchRunDate]
GO
/****** Object:  StoredProcedure [dbo].[getBatchCalendarByYearAndMonth]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getBatchCalendarByYearAndMonth]
GO
/****** Object:  StoredProcedure [dbo].[getBatchCalendarByYear]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getBatchCalendarByYear]
GO
/****** Object:  StoredProcedure [dbo].[getApproveIncomeSearch]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getApproveIncomeSearch]
GO
/****** Object:  StoredProcedure [dbo].[getApproveIncomeAdjustment]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getApproveIncomeAdjustment]
GO
/****** Object:  StoredProcedure [dbo].[getAllUser]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getAllUser]
GO
/****** Object:  StoredProcedure [dbo].[getAllRoles]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getAllRoles]
GO
/****** Object:  StoredProcedure [dbo].[getAllPayees]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getAllPayees]
GO
/****** Object:  StoredProcedure [dbo].[getAllListOfValues]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getAllListOfValues]
GO
/****** Object:  StoredProcedure [dbo].[getAllIncome]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getAllIncome]
GO
/****** Object:  StoredProcedure [dbo].[getAllDataGroups]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[getAllDataGroups]
GO
/****** Object:  StoredProcedure [dbo].[FindUser]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[FindUser]
GO
/****** Object:  StoredProcedure [dbo].[deleteTaxTerm]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[deleteTaxTerm]
GO
/****** Object:  StoredProcedure [dbo].[deletePayeeChange]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[deletePayeeChange]
GO
/****** Object:  StoredProcedure [dbo].[checkManualIncomeUpload]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP PROCEDURE [dbo].[checkManualIncomeUpload]
GO
ALTER TABLE [dbo].[NETS_User_Profiles] DROP CONSTRAINT [DF_UserProfiles_updated_date]
GO
ALTER TABLE [dbo].[NETS_User_Profiles] DROP CONSTRAINT [DF_UserProfiles_created_date]
GO
ALTER TABLE [dbo].[NETS_Tax_Deduction_Terms] DROP CONSTRAINT [DF__NETS_Tax___updat__44FF419A]
GO
ALTER TABLE [dbo].[NETS_Tax_Deduction_Terms] DROP CONSTRAINT [DF__NETS_Tax___creat__440B1D61]
GO
ALTER TABLE [dbo].[NETS_Roles] DROP CONSTRAINT [DF_NETS_Roles_updated_date]
GO
ALTER TABLE [dbo].[NETS_Roles] DROP CONSTRAINT [DF_NETS_Roles_created_date]
GO
ALTER TABLE [dbo].[NETS_Payees] DROP CONSTRAINT [DF__NETS_Paye__updat__412EB0B6]
GO
ALTER TABLE [dbo].[NETS_Payees] DROP CONSTRAINT [DF__NETS_Paye__creat__403A8C7D]
GO
ALTER TABLE [dbo].[NETS_List_of_Values] DROP CONSTRAINT [DF_NETS_List_of_Values_updated_date]
GO
ALTER TABLE [dbo].[NETS_List_of_Values] DROP CONSTRAINT [DF_NETS_List_of_Values_created_date]
GO
ALTER TABLE [dbo].[NETS_Data_Groups] DROP CONSTRAINT [DF_NETS_Data_Groups_updated_date]
GO
ALTER TABLE [dbo].[NETS_Data_Groups] DROP CONSTRAINT [DF_NETS_Data_Groups_created_date]
GO
/****** Object:  Table [dbo].[NETS_User_Profiles_Info]    Script Date: 6/30/2023 8:57:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NETS_User_Profiles_Info]') AND type in (N'U'))
DROP TABLE [dbo].[NETS_User_Profiles_Info]
GO
/****** Object:  Table [dbo].[NETS_User_Profiles]    Script Date: 6/30/2023 8:57:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NETS_User_Profiles]') AND type in (N'U'))
DROP TABLE [dbo].[NETS_User_Profiles]
GO
/****** Object:  Table [dbo].[NETS_Tax_Terms]    Script Date: 6/30/2023 8:57:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NETS_Tax_Terms]') AND type in (N'U'))
DROP TABLE [dbo].[NETS_Tax_Terms]
GO
/****** Object:  Table [dbo].[NETS_Tax_Deduction_Terms]    Script Date: 6/30/2023 8:57:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NETS_Tax_Deduction_Terms]') AND type in (N'U'))
DROP TABLE [dbo].[NETS_Tax_Deduction_Terms]
GO
/****** Object:  Table [dbo].[NETS_Roles]    Script Date: 6/30/2023 8:57:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NETS_Roles]') AND type in (N'U'))
DROP TABLE [dbo].[NETS_Roles]
GO
/****** Object:  Table [dbo].[NETS_Payments_Logs]    Script Date: 6/30/2023 8:57:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NETS_Payments_Logs]') AND type in (N'U'))
DROP TABLE [dbo].[NETS_Payments_Logs]
GO
/****** Object:  Table [dbo].[NETS_Payments_Adjustment]    Script Date: 6/30/2023 8:57:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NETS_Payments_Adjustment]') AND type in (N'U'))
DROP TABLE [dbo].[NETS_Payments_Adjustment]
GO
/****** Object:  Table [dbo].[NETS_Payments]    Script Date: 6/30/2023 8:57:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NETS_Payments]') AND type in (N'U'))
DROP TABLE [dbo].[NETS_Payments]
GO
/****** Object:  Table [dbo].[NETS_Payees_Logs]    Script Date: 6/30/2023 8:57:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NETS_Payees_Logs]') AND type in (N'U'))
DROP TABLE [dbo].[NETS_Payees_Logs]
GO
/****** Object:  Table [dbo].[NETS_Payees_Change]    Script Date: 6/30/2023 8:57:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NETS_Payees_Change]') AND type in (N'U'))
DROP TABLE [dbo].[NETS_Payees_Change]
GO
/****** Object:  Table [dbo].[NETS_Payees]    Script Date: 6/30/2023 8:57:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NETS_Payees]') AND type in (N'U'))
DROP TABLE [dbo].[NETS_Payees]
GO
/****** Object:  Table [dbo].[NETS_List_of_Values]    Script Date: 6/30/2023 8:57:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NETS_List_of_Values]') AND type in (N'U'))
DROP TABLE [dbo].[NETS_List_of_Values]
GO
/****** Object:  Table [dbo].[NETS_Incomes_Logs]    Script Date: 6/30/2023 8:57:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NETS_Incomes_Logs]') AND type in (N'U'))
DROP TABLE [dbo].[NETS_Incomes_Logs]
GO
/****** Object:  Table [dbo].[NETS_Incomes]    Script Date: 6/30/2023 8:57:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NETS_Incomes]') AND type in (N'U'))
DROP TABLE [dbo].[NETS_Incomes]
GO
/****** Object:  Table [dbo].[NETS_Data_Groups]    Script Date: 6/30/2023 8:57:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NETS_Data_Groups]') AND type in (N'U'))
DROP TABLE [dbo].[NETS_Data_Groups]
GO
/****** Object:  Table [dbo].[NETS_Batch_Calendars]    Script Date: 6/30/2023 8:57:24 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NETS_Batch_Calendars]') AND type in (N'U'))
DROP TABLE [dbo].[NETS_Batch_Calendars]
GO
/****** Object:  UserDefinedFunction [dbo].[getRunningIncomeRefNo]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP FUNCTION [dbo].[getRunningIncomeRefNo]
GO
/****** Object:  UserDefinedTableType [dbo].[roles_type]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP TYPE [dbo].[roles_type]
GO
/****** Object:  UserDefinedTableType [dbo].[national_id_type]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP TYPE [dbo].[national_id_type]
GO
/****** Object:  UserDefinedTableType [dbo].[manual_income_upload_type]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP TYPE [dbo].[manual_income_upload_type]
GO
/****** Object:  UserDefinedTableType [dbo].[manual_income_api_type]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP TYPE [dbo].[manual_income_api_type]
GO
/****** Object:  UserDefinedTableType [dbo].[insertUser]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP TYPE [dbo].[insertUser]
GO
/****** Object:  UserDefinedTableType [dbo].[insertRole]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP TYPE [dbo].[insertRole]
GO
/****** Object:  UserDefinedTableType [dbo].[income_ref_transaction_type]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP TYPE [dbo].[income_ref_transaction_type]
GO
/****** Object:  UserDefinedTableType [dbo].[income_ref_no_type]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP TYPE [dbo].[income_ref_no_type]
GO
/****** Object:  User [JPornchai ]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP USER [JPornchai ]
GO
/****** Object:  User [OA_TEST_DOM\DBA SQL Group - 1]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP USER [OA_TEST_DOM\DBA SQL Group - 1]
GO
/****** Object:  User [OA_TEST_DOM\DBA SQL Group - 2]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP USER [OA_TEST_DOM\DBA SQL Group - 2]
GO
/****** Object:  User [phuparichat]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP USER [phuparichat]
GO
/****** Object:  User [Swanwadee]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP USER [Swanwadee]
GO
/****** Object:  User [UEkachai]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP USER [UEkachai]
GO
USE [master]
GO
/****** Object:  Database [NETS_db]    Script Date: 6/30/2023 8:57:24 AM ******/
DROP DATABASE [NETS_db]
GO
/****** Object:  Database [NETS_db]    Script Date: 6/30/2023 8:57:24 AM ******/
CREATE DATABASE [NETS_db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NETS_db_sys01', FILENAME = N'E:\sqldata\NETS_db_sys01.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [NETSD]  DEFAULT
( NAME = N'NETS_db_d01', FILENAME = N'E:\sqldata\NETS_db_d01.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [NETSL] 
( NAME = N'NETS_db_l01', FILENAME = N'E:\sqldata\NETS_db_l01.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [NETSX] 
( NAME = N'NETS_db_i01', FILENAME = N'E:\sqldata\NETS_db_i01.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NETS_db_log01', FILENAME = N'F:\sqllog\NETS_db_log01.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [NETS_db] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NETS_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NETS_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NETS_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NETS_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NETS_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NETS_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [NETS_db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NETS_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NETS_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NETS_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NETS_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NETS_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NETS_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NETS_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NETS_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NETS_db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NETS_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NETS_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NETS_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NETS_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NETS_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NETS_db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NETS_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NETS_db] SET RECOVERY FULL 
GO
ALTER DATABASE [NETS_db] SET  MULTI_USER 
GO
ALTER DATABASE [NETS_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NETS_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NETS_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NETS_db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NETS_db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NETS_db] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'NETS_db', N'ON'
GO
ALTER DATABASE [NETS_db] SET QUERY_STORE = OFF
GO
USE [NETS_db]
GO
/****** Object:  User [UEkachai]    Script Date: 6/30/2023 8:57:24 AM ******/
CREATE USER [UEkachai] FOR LOGIN [UEkachai] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Swanwadee]    Script Date: 6/30/2023 8:57:24 AM ******/
CREATE USER [Swanwadee] FOR LOGIN [Swanwadee] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [phuparichat]    Script Date: 6/30/2023 8:57:24 AM ******/
CREATE USER [phuparichat] FOR LOGIN [phuparichat] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OA_TEST_DOM\DBA SQL Group - 2]    Script Date: 6/30/2023 8:57:24 AM ******/
CREATE USER [OA_TEST_DOM\DBA SQL Group - 2] FOR LOGIN [OA_TEST_DOM\DBA SQL Group - 2]
GO
/****** Object:  User [OA_TEST_DOM\DBA SQL Group - 1]    Script Date: 6/30/2023 8:57:24 AM ******/
CREATE USER [OA_TEST_DOM\DBA SQL Group - 1] FOR LOGIN [OA_TEST_DOM\DBA SQL Group - 1] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [JPornchai ]    Script Date: 6/30/2023 8:57:24 AM ******/
CREATE USER [JPornchai ] FOR LOGIN [JPornchai] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [UEkachai]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [UEkachai]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Swanwadee]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Swanwadee]
GO
ALTER ROLE [db_datareader] ADD MEMBER [phuparichat]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [phuparichat]
GO
ALTER ROLE [db_owner] ADD MEMBER [OA_TEST_DOM\DBA SQL Group - 2]
GO
ALTER ROLE [db_owner] ADD MEMBER [OA_TEST_DOM\DBA SQL Group - 1]
GO
ALTER ROLE [db_datareader] ADD MEMBER [JPornchai ]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [JPornchai ]
GO
/****** Object:  UserDefinedTableType [dbo].[income_ref_no_type]    Script Date: 6/30/2023 8:57:24 AM ******/
CREATE TYPE [dbo].[income_ref_no_type] AS TABLE(
	[ref_year] [int] NULL,
	[ref_no] [varchar](5) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[income_ref_transaction_type]    Script Date: 6/30/2023 8:57:24 AM ******/
CREATE TYPE [dbo].[income_ref_transaction_type] AS TABLE(
	[ref_year] [int] NOT NULL,
	[ref_no] [varchar](5) NOT NULL,
	[transaction_no] [int] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[insertRole]    Script Date: 6/30/2023 8:57:24 AM ******/
CREATE TYPE [dbo].[insertRole] AS TABLE(
	[id] [int] NULL,
	[rolename] [varchar](max) NULL,
	[permission] [varchar](max) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[insertUser]    Script Date: 6/30/2023 8:57:24 AM ******/
CREATE TYPE [dbo].[insertUser] AS TABLE(
	[id] [int] NULL,
	[fullname] [varchar](max) NULL,
	[password] [varchar](max) NULL,
	[roleid] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[manual_income_api_type]    Script Date: 6/30/2023 8:57:24 AM ******/
CREATE TYPE [dbo].[manual_income_api_type] AS TABLE(
	[row_no] [int] NOT NULL,
	[national_id] [varchar](13) NULL,
	[pre_name] [varchar](20) NULL,
	[first_name] [varchar](100) NULL,
	[last_name] [varchar](100) NULL,
	[address_no] [varchar](40) NULL,
	[address_moo_no] [varchar](20) NULL,
	[address_build_name] [varchar](40) NULL,
	[address_room_no] [varchar](20) NULL,
	[address_floor_no] [varchar](20) NULL,
	[address_village_name] [varchar](100) NULL,
	[address_soi] [varchar](100) NULL,
	[address_street_name] [varchar](100) NULL,
	[address_tambon] [varchar](50) NULL,
	[address_amphur] [varchar](50) NULL,
	[address_province] [varchar](50) NULL,
	[address_postal_code] [varchar](5) NULL,
	[account_no] [varchar](10) NULL,
	[sales_code] [varchar](10) NULL,
	[group_id] [varchar](50) NULL,
	[amount] [decimal](17, 2) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[manual_income_upload_type]    Script Date: 6/30/2023 8:57:24 AM ******/
CREATE TYPE [dbo].[manual_income_upload_type] AS TABLE(
	[national_id] [varchar](13) NOT NULL,
	[group_id] [varchar](50) NOT NULL,
	[amount] [decimal](17, 2) NOT NULL,
	[sales_code] [varchar](10) NULL,
	[remark] [varchar](max) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[national_id_type]    Script Date: 6/30/2023 8:57:24 AM ******/
CREATE TYPE [dbo].[national_id_type] AS TABLE(
	[national_id] [varchar](13) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[roles_type]    Script Date: 6/30/2023 8:57:24 AM ******/
CREATE TYPE [dbo].[roles_type] AS TABLE(
	[id] [int] NOT NULL,
	[rolename] [varchar](100) NOT NULL,
	[permission] [varchar](max) NULL
)
GO
/****** Object:  UserDefinedFunction [dbo].[getRunningIncomeRefNo]    Script Date: 6/30/2023 8:57:24 AM ******/
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
/****** Object:  Table [dbo].[NETS_Batch_Calendars]    Script Date: 6/30/2023 8:57:24 AM ******/
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
/****** Object:  Table [dbo].[NETS_Data_Groups]    Script Date: 6/30/2023 8:57:24 AM ******/
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
/****** Object:  Table [dbo].[NETS_Incomes]    Script Date: 6/30/2023 8:57:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETS_Incomes](
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
	[adjusted_date] [datetime] NULL,
	[adjusted_by] [varchar](50) NULL,
	[adjusted_reason] [varchar](1000) NULL,
	[deleted_date] [datetime] NULL,
	[deleted_by] [varchar](50) NULL,
	[deleted_reason] [varchar](1000) NULL,
	[cancelled_date] [datetime] NULL,
	[cancelled_reason] [varchar](1000) NULL,
	[batch_run_date] [datetime] NULL,
 CONSTRAINT [PK_NETS_Incomes] PRIMARY KEY CLUSTERED 
(
	[ref_year] ASC,
	[ref_no] ASC,
	[transaction_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETS_Incomes_Logs]    Script Date: 6/30/2023 8:57:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETS_Incomes_Logs](
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
	[adjusted_date] [datetime] NULL,
	[adjusted_by] [varchar](50) NULL,
	[adjusted_reason] [varchar](1000) NULL,
	[deleted_date] [datetime] NULL,
	[deleted_by] [varchar](50) NULL,
	[deleted_reason] [varchar](1000) NULL,
	[cancelled_date] [datetime] NULL,
	[cancelled_reason] [varchar](1000) NULL,
	[batch_run_date] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETS_List_of_Values]    Script Date: 6/30/2023 8:57:24 AM ******/
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
/****** Object:  Table [dbo].[NETS_Payees]    Script Date: 6/30/2023 8:57:24 AM ******/
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
/****** Object:  Table [dbo].[NETS_Payees_Change]    Script Date: 6/30/2023 8:57:24 AM ******/
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
/****** Object:  Table [dbo].[NETS_Payees_Logs]    Script Date: 6/30/2023 8:57:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETS_Payees_Logs](
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
	[updated_by] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETS_Payments]    Script Date: 6/30/2023 8:57:24 AM ******/
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
/****** Object:  Table [dbo].[NETS_Payments_Adjustment]    Script Date: 6/30/2023 8:57:24 AM ******/
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
/****** Object:  Table [dbo].[NETS_Payments_Logs]    Script Date: 6/30/2023 8:57:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NETS_Payments_Logs](
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
	[adjusted_date] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NETS_Roles]    Script Date: 6/30/2023 8:57:24 AM ******/
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
/****** Object:  Table [dbo].[NETS_Tax_Deduction_Terms]    Script Date: 6/30/2023 8:57:24 AM ******/
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
/****** Object:  Table [dbo].[NETS_Tax_Terms]    Script Date: 6/30/2023 8:57:24 AM ******/
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
/****** Object:  Table [dbo].[NETS_User_Profiles]    Script Date: 6/30/2023 8:57:24 AM ******/
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
	[email] [varchar](250) NULL,
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
/****** Object:  Table [dbo].[NETS_User_Profiles_Info]    Script Date: 6/30/2023 8:57:24 AM ******/
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
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2022, 1, N'Jan-22', CAST(N'2022-01-13' AS Date), CAST(N'2022-01-13' AS Date), CAST(N'2023-05-12T14:28:36.000' AS DateTime), N'batch', CAST(N'2023-05-12T14:28:36.000' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2022, 2, N'Feb-22', CAST(N'2022-02-11' AS Date), CAST(N'2022-02-11' AS Date), CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2022, 3, N'Mar-22', CAST(N'2022-03-11' AS Date), CAST(N'2022-03-11' AS Date), CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2022, 4, N'Apr-22', CAST(N'2022-04-12' AS Date), CAST(N'2022-04-12' AS Date), CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2022, 5, N'May-22', CAST(N'2022-05-13' AS Date), CAST(N'2022-05-13' AS Date), CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2022, 6, N'Jun-22', CAST(N'2022-06-13' AS Date), CAST(N'2022-06-13' AS Date), CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2022, 7, N'Jul-22', CAST(N'2022-07-13' AS Date), CAST(N'2022-07-13' AS Date), CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2022, 8, N'Aug-22', CAST(N'2022-08-11' AS Date), CAST(N'2022-08-11' AS Date), CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2022, 9, N'Sep-22', CAST(N'2022-09-13' AS Date), CAST(N'2022-09-13' AS Date), CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2022, 10, N'Oct-22', CAST(N'2022-10-12' AS Date), CAST(N'2022-10-12' AS Date), CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2022, 11, N'Nov-22', CAST(N'2022-11-11' AS Date), CAST(N'2022-11-11' AS Date), CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2022, 12, N'Dec-22', CAST(N'2022-12-13' AS Date), CAST(N'2022-12-13' AS Date), CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2023, 1, N'Jan-23', CAST(N'2023-01-13' AS Date), CAST(N'2023-01-13' AS Date), CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2023, 2, N'Feb-23', CAST(N'2023-02-13' AS Date), CAST(N'2023-02-13' AS Date), CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2023, 3, N'Mar-23', CAST(N'2023-03-13' AS Date), CAST(N'2023-03-13' AS Date), CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', 1, 1)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2023, 4, N'Apr-23', CAST(N'2023-04-10' AS Date), CAST(N'2023-06-23' AS Date), CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', CAST(N'2023-06-20T13:41:06.910' AS DateTime), N'S_PSiraphob', 0, 0)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2023, 5, N'May-23', CAST(N'2023-05-12' AS Date), CAST(N'2023-06-19' AS Date), CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', CAST(N'2023-06-20T13:41:17.257' AS DateTime), N'S_PSiraphob', 0, 0)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2023, 6, N'Jun-23', CAST(N'2023-06-13' AS Date), NULL, CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', 0, 0)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2023, 7, N'Jul-23', CAST(N'2023-07-13' AS Date), NULL, CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', 0, 0)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2023, 8, N'Aug-23', CAST(N'2023-08-11' AS Date), NULL, CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', 0, 0)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2023, 9, N'Sep-23', CAST(N'2023-09-13' AS Date), NULL, CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', 0, 0)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2023, 10, N'Oct-23', CAST(N'2023-10-12' AS Date), NULL, CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', 0, 0)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2023, 11, N'Nov-23', CAST(N'2023-11-13' AS Date), NULL, CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', 0, 0)
GO
INSERT [dbo].[NETS_Batch_Calendars] ([calendar_year], [calendar_month], [calendar_period], [calendar_run_date], [batch_run_date], [created_date], [created_by], [updated_date], [updated_by], [calendar_run_flag], [batch_run_flag]) VALUES (2023, 12, N'Dec-23', CAST(N'2023-12-13' AS Date), NULL, CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', CAST(N'2023-05-12T14:29:11.000' AS DateTime), N'batch', 0, 0)
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'123', N'123', N'', 0, N'', N'', CAST(N'2023-06-12T09:46:30.653' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-19T15:25:07.927' AS DateTime), N'S_PSiraphob')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'BLA', N'BLA', NULL, 1, N'DirectSales', N'BLA', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'CreditCard', N'Credit Card', NULL, 1, N'DirectSales', N'CreditCard', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HealthCare', N'Health Care', NULL, 1, N'HealthCare', N'HealthCare', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'HomeLoan-M', N'Mortgage Direct Sales Head', N'HomeLoan-M', 1, N'DirectSales', N'HomeLoan', CAST(N'2023-05-12T10:38:41.043' AS DateTime), N'admin', CAST(N'2023-06-16T15:44:01.197' AS DateTime), N'S_PSiraphob')
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
INSERT [dbo].[NETS_Data_Groups] ([group_id], [group_title], [parent_group_id], [active], [team_id], [product_id], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', N'', N'', 1, N'', N'', CAST(N'2023-06-16T15:28:21.500' AS DateTime), N'2521116455', CAST(N'2023-06-16T16:13:16.067' AS DateTime), N'2521116455')
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00001', 1, N'N', N'1234567890123', N'123456', CAST(120.00 AS Decimal(17, 2)), N'', NULL, NULL, N'M', CAST(N'2023-06-12T16:28:59.953' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-12T16:28:59.953' AS DateTime), N'S_PSiraphob', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00002', 1, N'N', N'1234567890123', N'123456', CAST(120.00 AS Decimal(17, 2)), N'', NULL, NULL, N'M', CAST(N'2023-06-12T16:29:00.010' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-12T16:29:00.010' AS DateTime), N'S_PSiraphob', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00003', 1, N'S', N'1234567890123', N'123456', CAST(100.00 AS Decimal(17, 2)), N'', NULL, NULL, N'M', CAST(N'2023-06-12T16:29:20.113' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-12T16:29:22.240' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-12T16:29:22.240' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00004', 1, N'N', N'1234567890123', N'123456', CAST(100.00 AS Decimal(17, 2)), N'', NULL, NULL, N'M', CAST(N'2023-06-12T16:29:20.123' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-12T16:29:20.123' AS DateTime), N'S_PSiraphob', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00005', 1, N'N', N'1234567890123', N'123456', CAST(120.00 AS Decimal(17, 2)), N'', NULL, NULL, N'M', CAST(N'2023-06-12T16:29:58.163' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-12T16:29:58.163' AS DateTime), N'S_PSiraphob', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00006', 1, N'N', N'1234567890123', N'1180002667', CAST(1200.00 AS Decimal(17, 2)), N'IT', N'123123213', N'213123123123', N'M', CAST(N'2023-06-12T16:29:58.170' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-23T16:16:28.470' AS DateTime), N'S_PSiraphob', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00007', 1, N'S', N'1234567890123', N'123456', CAST(1200.00 AS Decimal(17, 2)), N'', NULL, NULL, N'M', CAST(N'2023-06-12T16:30:15.207' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-12T16:30:17.693' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-12T16:30:17.693' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00008', 1, N'C', N'1234567890123', N'123456', CAST(1200.00 AS Decimal(17, 2)), N'', NULL, NULL, N'M', CAST(N'2023-06-12T16:30:15.210' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-12T16:34:54.430' AS DateTime), N'S_PSiraphob', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-06-12T16:34:54.430' AS DateTime), N'test', NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00009', 1, N'S', N'1234567890123', N'123456', CAST(80000.00 AS Decimal(17, 2)), N'IT', N'00010', N'correct', N'U', CAST(N'2023-06-12T16:35:13.613' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-12T16:35:13.613' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-12T16:35:13.613' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00010', 1, N'S', N'1234567890123', N'123456', CAST(80000.00 AS Decimal(17, 2)), N'IT', N'00010', N'correct', N'U', CAST(N'2023-06-12T16:35:13.620' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-12T16:35:13.620' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-12T16:35:13.620' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00011', 1, N'S', N'1234567890123', N'1234567890', CAST(15000.00 AS Decimal(17, 2)), N'', NULL, NULL, N'M', CAST(N'2023-06-12T17:17:51.827' AS DateTime), N'jupornchai', CAST(N'2023-06-12T17:18:09.703' AS DateTime), N'jupornchai', CAST(N'2023-06-12T17:18:09.703' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00012', 1, N'N', N'1234567890123', N'1234567890', CAST(15000.00 AS Decimal(17, 2)), N'', NULL, NULL, N'M', CAST(N'2023-06-12T17:17:51.833' AS DateTime), N'jupornchai', CAST(N'2023-06-12T17:17:51.833' AS DateTime), N'jupornchai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00013', 1, N'S', N'1234567890123', N'1234567890', CAST(25000.00 AS Decimal(17, 2)), N'CreditCard', N'ME-1112', N'ทดสอบ', N'U', CAST(N'2023-06-12T17:25:30.720' AS DateTime), N'jupornchai', CAST(N'2023-06-12T17:25:30.720' AS DateTime), N'jupornchai', CAST(N'2023-06-12T17:25:30.720' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00014', 1, N'S', N'1234567890123', N'1234567890', CAST(25000.00 AS Decimal(17, 2)), N'CreditCard', N'ME-1112', N'ทดสอบ', N'U', CAST(N'2023-06-12T17:25:30.723' AS DateTime), N'jupornchai', CAST(N'2023-06-12T17:25:30.723' AS DateTime), N'jupornchai', CAST(N'2023-06-12T17:25:30.723' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00015', 1, N'N', N'1234567890123', N'1180002667', CAST(100.00 AS Decimal(17, 2)), N'IT', N'1232131231', N'123213123', N'M', CAST(N'2023-06-13T13:16:45.763' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-20T13:04:56.910' AS DateTime), N'S_PSiraphob', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00016', 1, N'C', N'1234567890123', N'1234567890', CAST(0.00 AS Decimal(17, 2)), N'', NULL, NULL, N'M', CAST(N'2023-06-13T13:16:45.773' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-16T15:07:13.600' AS DateTime), N'S_PSiraphob', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-06-16T15:07:13.600' AS DateTime), N'', NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00017', 1, N'S', N'1234567890123', N'1234567890', CAST(123.12 AS Decimal(17, 2)), N'IT', N'S001', NULL, N'M', CAST(N'2023-06-14T15:44:33.177' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-14T15:49:26.300' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-14T15:49:26.300' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00018', 1, N'C', N'1234567890123', N'1234567890', CAST(123.12 AS Decimal(17, 2)), N'IT', N'S001', NULL, N'M', CAST(N'2023-06-14T15:44:33.223' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-14T15:45:06.757' AS DateTime), N'S_PSiraphob', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-06-14T15:45:06.757' AS DateTime), N'', NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00020', 1, N'I', N'1234567890123', N'1180002667', CAST(10000.00 AS Decimal(17, 2)), N'HomeLoan-MB', N'MB-001', NULL, N'A', CAST(N'2023-06-16T13:14:44.857' AS DateTime), N'pnitinan', CAST(N'2023-06-16T13:14:44.857' AS DateTime), N'pnitinan', CAST(N'2023-06-16T13:14:44.857' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00021', 1, N'S', N'1234567890123', N'1180002667', CAST(1111111111.00 AS Decimal(17, 2)), N'BLA', N'1234567890', N'1234567890123 ', N'M', CAST(N'2023-06-16T14:26:22.513' AS DateTime), N'2521116455', CAST(N'2023-06-20T10:58:31.660' AS DateTime), N'2521116455', CAST(N'2023-06-20T10:58:31.660' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00022', 1, N'S', N'1234567890123', N'1180002667', CAST(1111111111.00 AS Decimal(17, 2)), N'BLA', N'1234567890', N'1234567890123 ', N'M', CAST(N'2023-06-16T14:26:22.530' AS DateTime), N'2521116455', CAST(N'2023-06-20T10:57:52.490' AS DateTime), N'2521116455', CAST(N'2023-06-20T10:57:52.490' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00023', 1, N'C', N'1234567890123', N'1180002667', CAST(1111111111.00 AS Decimal(17, 2)), N'IT', N'1111111111', N'1111111111111111111', N'M', CAST(N'2023-06-16T15:52:44.017' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-16T16:20:16.467' AS DateTime), N'S_PSiraphob', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-06-16T16:20:16.467' AS DateTime), N'', NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00024', 1, N'C', N'1234567890123', N'1180002667', CAST(1111111111.00 AS Decimal(17, 2)), N'IT', N'1111111111', N'1111111111111111111', N'M', CAST(N'2023-06-16T15:52:44.017' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-20T11:37:33.780' AS DateTime), N'S_PSiraphob', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-06-20T11:37:33.780' AS DateTime), N'test', NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00025', 1, N'C', N'1234567890123', N'1180002667', CAST(111111111.00 AS Decimal(17, 2)), N'IT', N'1111111111', N'111111111111111111111', N'M', CAST(N'2023-06-16T16:04:19.857' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-20T11:45:42.787' AS DateTime), N'S_PSiraphob', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-06-20T11:45:42.787' AS DateTime), N'', NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00026', 1, N'C', N'1234567890123', N'1180002667', CAST(111111111.00 AS Decimal(17, 2)), N'IT', N'1111111111', N'111111111111111111111', N'M', CAST(N'2023-06-16T16:04:20.090' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-20T13:59:42.293' AS DateTime), N'S_PSiraphob', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-06-20T13:59:42.293' AS DateTime), N'', NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00027', 1, N'I', N'1234567890147', N'1180002709', CAST(15501.55 AS Decimal(17, 2)), N'HomeLoan-MCA', N'', NULL, N'A', CAST(N'2023-06-19T09:32:58.847' AS DateTime), N'pnitinan', CAST(N'2023-06-19T09:32:58.847' AS DateTime), N'pnitinan', CAST(N'2023-06-19T09:32:58.847' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00028', 1, N'I', N'1234567890147', N'1180002709', CAST(10000.00 AS Decimal(17, 2)), N'HomeLoan-MA', N'MA-001', NULL, N'A', CAST(N'2023-06-19T15:48:34.877' AS DateTime), N'pnitinan', CAST(N'2023-06-19T15:48:34.877' AS DateTime), N'pnitinan', CAST(N'2023-06-19T15:48:34.877' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00029', 1, N'N', N'1234567890123', N'1180002667', CAST(1023421312.00 AS Decimal(17, 2)), N'IT', N'1231231231', N'1231231231132321', N'M', CAST(N'2023-06-20T11:33:10.127' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-23T16:14:32.887' AS DateTime), N'S_PSiraphob', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00030', 1, N'C', N'1234567890123', N'1180002667', CAST(123213213.00 AS Decimal(17, 2)), N'IT', N'1323123123', N'1232312132312312', N'M', CAST(N'2023-06-20T11:33:56.620' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-20T11:37:42.343' AS DateTime), N'S_PSiraphob', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-06-20T11:37:42.343' AS DateTime), N'', NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00031', 1, N'C', N'1234567890123', N'1180002667', CAST(9999.00 AS Decimal(17, 2)), N'IT', N'9999999999', N'9999999999999', N'M', CAST(N'2023-06-20T13:05:23.817' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-23T16:13:51.880' AS DateTime), N'S_PSiraphob', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-06-23T16:13:51.880' AS DateTime), N'', NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00032', 1, N'S', N'1234567890123', N'1180002667', CAST(123123213.00 AS Decimal(17, 2)), N'IT', N'2131232131', N'132213123', N'M', CAST(N'2023-06-20T13:10:40.433' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-23T16:12:50.960' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-23T16:12:50.960' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00033', 1, N'C', N'1234567890123', N'1180002667', CAST(123123213.00 AS Decimal(17, 2)), N'IT', N'2131232131', N'132213123', N'M', CAST(N'2023-06-20T13:11:18.850' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-23T16:10:31.733' AS DateTime), N'S_PSiraphob', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-06-23T16:10:31.733' AS DateTime), N'', NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00034', 1, N'C', N'1234567890123', N'1180002667', CAST(123123213.00 AS Decimal(17, 2)), N'IT', N'2131232131', N'132213123', N'M', CAST(N'2023-06-20T13:12:02.720' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-23T16:07:26.037' AS DateTime), N'S_PSiraphob', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-06-23T16:07:26.037' AS DateTime), N'', NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00035', 1, N'S', N'1234567890123', N'1180002667', CAST(123213123.00 AS Decimal(17, 2)), N'IT', N'3213213123', N'123123123', N'M', CAST(N'2023-06-20T13:14:38.033' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-20T13:46:09.767' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-20T13:46:09.767' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00036', 1, N'S', N'1234567890123', N'1180002667', CAST(123321312.00 AS Decimal(17, 2)), N'IT', N'123213321', N'123312132', N'M', CAST(N'2023-06-20T13:15:48.697' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-20T13:16:21.880' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-20T13:16:21.880' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00037', 1, N'N', N'1234567890123', N'1180002667', CAST(10000011.00 AS Decimal(17, 2)), N'IT', N'0010010011', N'CHANGE AMOUNT', N'M', CAST(N'2023-06-23T16:19:02.627' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-23T16:19:34.517' AS DateTime), N'S_PSiraphob', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00038', 1, N'C', N'1234567890147', N'1180002709', CAST(1.00 AS Decimal(17, 2)), N'IT', N'EEE1010101', N'TEST', N'M', CAST(N'2023-06-23T16:20:12.827' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-23T16:20:37.573' AS DateTime), N'S_PSiraphob', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-06-23T16:20:37.573' AS DateTime), N'TEST CANCEL', NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00039', 1, N'N', N'1234567890123', N'1234567890', CAST(11111111.00 AS Decimal(17, 2)), N'IT', N'1111111111', NULL, N'M', CAST(N'2023-06-26T15:42:10.190' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-26T15:42:10.190' AS DateTime), N'S_PSiraphob', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Incomes] ([ref_year], [ref_no], [transaction_no], [ref_status], [national_id], [account_no], [amount], [group_id], [sales_code], [remark], [source], [created_date], [created_by], [updated_date], [updated_by], [submitted_date], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [paid_date], [adjusted_date], [adjusted_by], [adjusted_reason], [deleted_date], [deleted_by], [deleted_reason], [cancelled_date], [cancelled_reason], [batch_run_date]) VALUES (2023, N'00040', 1, N'N', N'8888888888888', N'ระ-ทะ-ทู-อ', CAST(1111111110.00 AS Decimal(17, 2)), N'IT', N'1111111111', NULL, N'M', CAST(N'2023-06-26T15:44:04.450' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-26T15:44:04.450' AS DateTime), N'S_PSiraphob', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'11', N'11', 1, N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริกันแนวตลกดรามา[3] ฉายเมื่อปี ค.ศ. 2007 สร้างโดย พิกซาร์ และจัดจำหน่ายโดย วอลต์ดิสนีย์พิกเชอส์ เป็นภาพยนตร์เรื่องที่แปดของพิกซาร์ เขียนบทและกำกับโดย แบร', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', CAST(N'2023-06-12T09:43:57.197' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-29T10:32:26.773' AS DateTime), N'S_PSiraphob')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'123312', N'123321', 1, N'', NULL, CAST(N'2023-06-12T09:28:11.617' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-12T09:28:11.617' AS DateTime), N'S_PSiraphob')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1312312312123', N'1321312312', 1, N'', NULL, CAST(N'2023-06-12T09:27:27.510' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-12T09:27:27.510' AS DateTime), N'S_PSiraphob')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'222', N'222', 1, N'', NULL, CAST(N'2023-06-12T16:38:36.303' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-12T16:38:36.303' AS DateTime), N'S_PSiraphob')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'555', N'555', 1, N'', NULL, CAST(N'2023-06-12T09:32:40.653' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-12T09:32:40.653' AS DateTime), N'S_PSiraphob')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'AdjustStatus', N'A', 1, N'Approved', NULL, CAST(N'2023-05-25T10:22:36.000' AS DateTime), N'admin', CAST(N'2023-05-25T10:22:36.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'AdjustStatus', N'R', 1, N'Rejected', NULL, CAST(N'2023-05-25T10:22:36.000' AS DateTime), N'admin', CAST(N'2023-05-25T10:22:36.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'AdjustStatus', N'W', 1, N'Waiting', NULL, CAST(N'2023-05-25T10:22:36.000' AS DateTime), N'admin', CAST(N'2023-05-25T10:22:36.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'IncomeCreateAPI', N'HomeLoan', 1, N'pnitinan', NULL, CAST(N'2023-05-31T14:38:59.000' AS DateTime), N'admin', CAST(N'2023-05-31T14:38:59.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'IncomeUpload', N'Template', 1, N' https://bangkokbank.sharepoint.com/teams/NETS/Shared%20Documents/General/Relate%20Document/Template/NETS-Income-Upload_v.1.0_20230425.xlsx', N' NETS-Income-Upload_v.1.0_20230425.xlsx', CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'PaymentStatus', N'P', 1, N'Paid', NULL, CAST(N'2023-05-25T10:22:36.000' AS DateTime), N'admin', CAST(N'2023-05-25T10:22:36.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'PaymentStatus', N'U', 1, N'Unpaid', NULL, CAST(N'2023-05-25T10:22:36.000' AS DateTime), N'admin', CAST(N'2023-05-25T10:22:36.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'PaymentStatus', N'W', 1, N'Waiting Paid', NULL, CAST(N'2023-05-25T10:22:36.000' AS DateTime), N'admin', CAST(N'2023-05-25T10:22:36.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'PreName', N'นาง', 1, N'นาง', NULL, CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'PreName', N'นางสาว', 1, N'นางสาว', NULL, CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'PreName', N'นาย', 1, N'นาย', NULL, CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'Product', N'BLA', 1, N'BLA', NULL, CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'Product', N'CreditCard', 1, N'Credit Card', NULL, CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'Product', N'HealthCare', 1, N'Health Care', NULL, CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'Product', N'HomeLoan', 1, N'Home Loan', NULL, CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'Product', N'IT', 1, N'IT', NULL, CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'RefNoStatus', N'A', 1, N'Approved', NULL, CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'RefNoStatus', N'C', 1, N'Cancelled', NULL, CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'RefNoStatus', N'I', 1, N'In-Process', NULL, CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'RefNoStatus', N'M', 1, N'Manual-Paid', NULL, CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'RefNoStatus', N'N', 1, N'New', NULL, CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'RefNoStatus', N'P', 1, N'Paid', NULL, CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'RefNoStatus', N'R', 1, N'Rejected', NULL, CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'RefNoStatus', N'S', 1, N'Submitted', NULL, CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'RefNoStatus', N'U', 1, N'Unpaid', NULL, CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'Source', N'A', 1, N'API', NULL, CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'Source', N'M', 1, N'Manual Key-In', NULL, CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'Source', N'U', 1, N'Excel Upload', NULL, CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'Team', N'DirectSales', 1, N'Direct Sales', NULL, CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'Team', N'HealthCare', 1, N'Health Care', NULL, CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'Team', N'IT', 1, N'IT', NULL, CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'Team', N'Tax', 1, N'Tax', NULL, CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin', CAST(N'2023-05-12T10:38:41.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'test', N'123', 1, N'', NULL, CAST(N'2023-06-12T09:26:07.553' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-12T09:26:07.553' AS DateTime), N'S_PSiraphob')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'TESTXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: R', 1, N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริกันแนวตลกดรามา[3] ฉายเมื่อปี ค.ศ. 2007 สร้างโดย พิกซาร์ และจัดจำหน่ายโดย วอลต์ดิสนีย์พิกเชอส์ เป็นภาพยนตร์เรื่องที่แปดของพิกซาร์ เขียนบทและกำกับโดย แบร', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', CAST(N'2023-06-16T15:34:27.590' AS DateTime), N'2521116455', CAST(N'2023-06-16T15:34:27.590' AS DateTime), N'2521116455')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'tettreetrter', N'etrteterter', 1, N'', NULL, CAST(N'2023-06-12T09:27:02.470' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-12T09:27:02.470' AS DateTime), N'S_PSiraphob')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'TokenAPI', N'HomeLoan', 1, N'token123', N'Approve,Payee', CAST(N'2023-05-31T14:38:59.000' AS DateTime), N'admin', CAST(N'2023-05-31T14:38:59.000' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_List_of_Values] ([lov_field], [lov_code], [lov_active], [lov_description], [lov_condition], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: R', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: R', 1, N'', NULL, CAST(N'2023-06-16T15:36:11.397' AS DateTime), N'2521116455', CAST(N'2023-06-16T15:36:11.397' AS DateTime), N'2521116455')
GO
INSERT [dbo].[NETS_Payees] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890123', N'นาย', N'ทดสอบ', N'ทดสอบ', N'สำนักงานใหญ่', N'-', N'1', N'-', N'1', N'1', N'พระราม3/9', N'พระราม3', N'ช่องนนทรี', N'ยานนาวา', N'กทม', N'10120', N'1234567890', 1, CAST(N'2023-06-15T09:00:11.707' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T11:23:42.983' AS DateTime), N'S_PSiraphob')
GO
INSERT [dbo].[NETS_Payees] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890147', N'นางสาว', N'นาตยา', N'ศรีสวัสดิ์', N'คอนโด อยู่เย็น', N'15', NULL, NULL, N'150', N'5', NULL, N'พระราม3', N'ช่องนนทรี', N'ยานนาวา', N'กรุงเทพ', N'10120', N'1180002709', 1, CAST(N'2023-06-14T16:03:57.890' AS DateTime), N'pnitinan', CAST(N'2023-06-19T15:48:34.877' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890155', N'นาย', N'สง่า', N'ศรีบ้านใหม่', NULL, NULL, NULL, NULL, N'7', N'1', NULL, NULL, N'หนองศรี', N'หนองใหญ่', N'นนทบุรี', N'20210', N'1180002774', 1, CAST(N'2023-06-14T16:13:15.310' AS DateTime), N'pnitinan', CAST(N'2023-06-15T09:31:59.663' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'8888888888888', N'นาย', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก ', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก ', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: R', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: R', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: R', N'ระ-ทะ', N'ระ-ทะ-ทู-อ', 1, CAST(N'2023-06-16T16:12:34.240' AS DateTime), N'2521116455', CAST(N'2023-06-26T15:43:45.310' AS DateTime), N'S_PSiraphob')
GO
INSERT [dbo].[NETS_Payees_Change] ([action], [national_id], [changed_date], [changed_by], [status], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [remark]) VALUES (N'New', N'1234567890123', CAST(N'2023-06-08T14:06:07.340' AS DateTime), N'S_PSiraphob', N'A', CAST(N'2023-06-12T16:09:50.617' AS DateTime), N'S_PSiraphob', NULL, NULL, NULL, N'นางสาว', N'cat', N'cat', N'123', N'123', N'123', N'123', N'123', N'123', N'123', N'123', N'123', N'123', N'123', N'12312', N'123456', 1, N'-')
GO
INSERT [dbo].[NETS_Payees_Change] ([action], [national_id], [changed_date], [changed_by], [status], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [remark]) VALUES (N'Update', N'1234567890123', CAST(N'2023-06-12T16:35:55.847' AS DateTime), N'S_PSiraphob', N'A', CAST(N'2023-06-12T16:37:57.480' AS DateTime), N'S_PSiraphob', NULL, NULL, NULL, N'นางสาว', N'catt', N'cat', N'123', N'123', N'123', N'123', N'123', N'123', N'123', N'123', N'123', N'123', N'123', N'12312', N'123456', 1, N'tt')
GO
INSERT [dbo].[NETS_Payees_Change] ([action], [national_id], [changed_date], [changed_by], [status], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [remark]) VALUES (N'Update', N'1234567890123', CAST(N'2023-06-12T17:10:56.683' AS DateTime), N'jupornchai', N'A', CAST(N'2023-06-12T17:12:42.923' AS DateTime), N'jupornchai', NULL, NULL, NULL, N'นาย', N'ทดสอบ', N'ทดสอบ', N'สำนักงานใหญ่', N'-', N'1', N'-', N'1', N'1', N'-', N'พระราม3', N'ช่องนนทรี', N'ยานนาวา', N'กทม', N'10120', N'1234567890', 1, N'')
GO
INSERT [dbo].[NETS_Payees_Change] ([action], [national_id], [changed_date], [changed_by], [status], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [remark]) VALUES (N'Update', N'1234567890123', CAST(N'2023-06-12T17:13:28.077' AS DateTime), N'jupornchai', N'A', CAST(N'2023-06-12T17:13:43.167' AS DateTime), N'jupornchai', NULL, NULL, NULL, N'นาย', N'ทดสอบ', N'ทดสอบ', N'สำนักงานใหญ่', N'-', N'1', N'-', N'1', N'1', N'พระราม3/9', N'พระราม3', N'ช่องนนทรี', N'ยานนาวา', N'กทม', N'10120', N'1234567890', 1, N'แจ้งเปลี่ยนที่อยู่')
GO
INSERT [dbo].[NETS_Payees_Change] ([action], [national_id], [changed_date], [changed_by], [status], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [remark]) VALUES (N'Update', N'1234567890123', CAST(N'2023-06-14T11:23:42.983' AS DateTime), N'S_PSiraphob', N'A', CAST(N'2023-06-26T15:28:41.630' AS DateTime), N'S_PSiraphob', NULL, NULL, NULL, N'นาย', N'ทดสอบ', N'ทดสอบ', N'สำนักงานใหญ่', N'-', N'1', N'-', N'1', N'1', N'พระราม3/9', N'พระราม3', N'ช่องนนทรี', N'ยานนาวา', N'กทม', N'10120', N'1234567890', 1, N'ๆ')
GO
INSERT [dbo].[NETS_Payees_Change] ([action], [national_id], [changed_date], [changed_by], [status], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [remark]) VALUES (N'New', N'1234567890147', CAST(N'2023-06-14T16:03:57.890' AS DateTime), N'pnitinan', N'A', CAST(N'2023-06-14T16:11:14.240' AS DateTime), N'pnitinan', NULL, NULL, NULL, N'นางสาว', N'นงคราญ', N'ศรีสวัสดิ์', N'คอนโด อยู่เย็น', N'15', NULL, NULL, N'150', N'5', NULL, N'พระราม3', N'ช่องนนทรี', N'ยานนาวา', N'กรุงเทพ', N'10120', N'1180002709', 1, N'-')
GO
INSERT [dbo].[NETS_Payees_Change] ([action], [national_id], [changed_date], [changed_by], [status], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [remark]) VALUES (N'New', N'1234567890155', CAST(N'2023-06-14T16:13:15.310' AS DateTime), N'pnitinan', N'A', CAST(N'2023-06-14T16:13:58.350' AS DateTime), N'pnitinan', NULL, NULL, NULL, N'นาย', N'สง่า', N'ศรีบ้านใหม่', NULL, NULL, NULL, NULL, N'7', N'1', NULL, NULL, N'หนองศรี', N'หนองใหญ่', N'นนทบุรี', N'20210', N'1183172673', 1, N'-')
GO
INSERT [dbo].[NETS_Payees_Change] ([action], [national_id], [changed_date], [changed_by], [status], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [remark]) VALUES (N'New', N'0000000000000', CAST(N'2023-06-16T16:11:37.517' AS DateTime), N'2521116455', N'W', NULL, NULL, NULL, NULL, NULL, N'นาง', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก ', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก ', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: R', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: R', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: R', N'ระ-ทะ', N'ระ-ทะ-ทู-อ', 1, N'-')
GO
INSERT [dbo].[NETS_Payees_Change] ([action], [national_id], [changed_date], [changed_by], [status], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [remark]) VALUES (N'Update', N'8888888888888', CAST(N'2023-06-26T15:43:45.310' AS DateTime), N'S_PSiraphob', N'A', CAST(N'2023-06-26T15:43:54.243' AS DateTime), N'S_PSiraphob', NULL, NULL, NULL, N'นาย', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก ', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก ', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: R', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: R', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: R', N'ระ-ทะ', N'ระ-ทะ-ทู-อ', 1, N'update status')
GO
INSERT [dbo].[NETS_Payees_Change] ([action], [national_id], [changed_date], [changed_by], [status], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [remark]) VALUES (N'Update', N'8888888888888', CAST(N'2023-06-29T15:00:45.120' AS DateTime), N'S_PSiraphob', N'W', NULL, NULL, NULL, NULL, NULL, N'นาย', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก ', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก ', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: R', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: R', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: R', N'ระ-ทะ', N'ระ-ทะ-ทู-อ', 0, N'test')
GO
INSERT [dbo].[NETS_Payees_Change] ([action], [national_id], [changed_date], [changed_by], [status], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [remark]) VALUES (N'New', N'1100400890728', CAST(N'2023-06-16T14:31:22.797' AS DateTime), N'2521116455', N'W', NULL, NULL, NULL, NULL, NULL, N'นางสาว', N'กุ๊กๆ', N'ไก่ๆ', N'D', N'2212S', N'22', N'-', N'14/307', N'-', N'-', N'พระราม 3', N'บางโพงพาง', N'ยานนาวา', N'กทม.', N'10120', N'1524954417', 1, N'-')
GO
INSERT [dbo].[NETS_Payees_Change] ([action], [national_id], [changed_date], [changed_by], [status], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [remark]) VALUES (N'New', N'1111111111111', CAST(N'2023-06-16T15:33:30.343' AS DateTime), N'S_PSiraphob', N'R', NULL, NULL, CAST(N'2023-06-26T15:31:24.743' AS DateTime), N'S_PSiraphob', N'', N'นางสาว', N'1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', N'1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', N'1111111111111111111111111111111111111111', N'11111111111111111111', N'11111111111111111111', N'1111111111111111111111111111111111111111', N'11111111111111111111', N'11111111111111111111', N'1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', N'1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', N'11111111111111111111111111111111111111111111111111', N'11111111111111111111111111111111111111111111111111', N'11111111111111111111111111111111111111111111111111', N'11111', N'1111111111', 1, N'-')
GO
INSERT [dbo].[NETS_Payees_Change] ([action], [national_id], [changed_date], [changed_by], [status], [approved_date], [approved_by], [rejected_date], [rejected_by], [rejected_reason], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [remark]) VALUES (N'New', N'8888888888888', CAST(N'2023-06-16T16:12:34.240' AS DateTime), N'2521116455', N'A', CAST(N'2023-06-26T15:31:20.383' AS DateTime), N'S_PSiraphob', NULL, NULL, NULL, N'นาย', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก ', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก ', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: R', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: R', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: R', N'ระ-ทะ', N'ระ-ทะ-ทู-อ', 0, N'-')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890123', N'นางสาว', N'cat', N'cat', N'123', N'123', N'123', N'123', N'123', N'123', N'123', N'123', N'123', N'123', N'123', N'12312', N'123456', 1, CAST(N'2023-06-08T14:06:07.340' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-08T14:06:07.340' AS DateTime), N'S_PSiraphob')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890123', N'นางสาว', N'cat', N'cat', N'123', N'123', N'123', N'123', N'123', N'123', N'123', N'123', N'123', N'123', N'123', N'12312', N'123456', 1, CAST(N'2023-06-08T14:06:07.340' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-08T14:06:07.340' AS DateTime), N'S_PSiraphob')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890123', N'นางสาว', N'catt', N'cat', N'123', N'123', N'123', N'123', N'123', N'123', N'123', N'123', N'123', N'123', N'123', N'12312', N'123456', 1, CAST(N'2023-06-08T14:06:07.340' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-12T16:35:55.847' AS DateTime), N'S_PSiraphob')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890123', N'นาย', N'ทดสอบ', N'ทดสอบ', N'สำนักงานใหญ่', N'-', N'1', N'-', N'1', N'1', N'-', N'พระราม3', N'ช่องนนทรี', N'ยานนาวา', N'กทม', N'10120', N'1234567890', 1, CAST(N'2023-06-08T14:06:07.340' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-12T17:10:56.683' AS DateTime), N'jupornchai')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890147', N'นางสาว', N'นงคราญ', N'ศรีสวัสดิ์', N'คอนโด อยู่เย็น', N'15', NULL, NULL, N'150', N'5', NULL, N'พระราม3', N'ช่องนนทรี', N'ยานนาวา', N'กรุงเทพ', N'10120', N'1180002709', 1, CAST(N'2023-06-14T16:03:57.890' AS DateTime), N'pnitinan', CAST(N'2023-06-14T16:03:57.890' AS DateTime), N'pnitinan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890155', N'นาย', N'สง่า', N'ศรีบ้านใหม่', NULL, NULL, NULL, NULL, N'7', N'1', NULL, NULL, N'หนองศรี', N'หนองใหญ่', N'นนทบุรี', N'20210', N'1183172673', 1, CAST(N'2023-06-14T16:13:15.310' AS DateTime), N'pnitinan', CAST(N'2023-06-14T16:13:15.310' AS DateTime), N'pnitinan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'string', N'string', N'string', N'string', N'112', N'string', N'string', N'string', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:46:07.317' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T16:46:07.317' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'string', N'string', N'string', N'string', N'112', N'string', N'string', N'string', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:46:07.317' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T16:46:07.317' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'string', N'string', N'string', N'string', N'112', N'string', N'string', N'string', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:46:07.317' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T16:47:55.703' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'string', N'string', N'string', N'string', N'112', N'string', N'string', N'string', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:46:07.317' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T16:48:09.943' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'string', N'string', N'string', N'string', N'112', N'string', N'string', N'string', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:46:07.317' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T16:48:09.943' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'string', N'string', N'string', N'string', N'112', N'string', N'string', N'string', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:46:07.317' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T16:48:33.660' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'string', N'string', N'string', N'string', N'112', N'string', N'string', N'string', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:46:07.317' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T16:48:33.660' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'string', N'string', N'string', N'string', N'112', N'string', N'string', N'string', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:46:07.317' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T16:49:14.827' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'string', N'string', N'string', N'string', N'112', N'string', N'string', N'string', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:46:07.317' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T16:49:14.827' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'string', N'string', N'string', N'string', N'112', N'string', N'string', N'string', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:46:07.317' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T16:53:17.270' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'', N'', N'', N'', N'112', N'', N'', N'', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T17:05:43.407' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T17:05:43.423' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'', N'', N'', N'', N'112', N'', N'', N'', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T17:05:43.407' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-15T09:00:11.707' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890139', N'นาง', N'มานี', N'ทดลองดี', N'', N'', N'', N'', N'112', N'', N'', N'', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002667', 1, CAST(N'2023-06-15T09:00:11.707' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-15T09:00:11.707' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'8888888888888', N'นาย', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก ', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก ', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: R', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: R', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: R', N'ระ-ทะ', N'ระ-ทะ-ทู-อ', 0, CAST(N'2023-06-16T16:12:34.240' AS DateTime), N'2521116455', CAST(N'2023-06-16T16:12:34.240' AS DateTime), N'2521116455')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'8888888888888', N'นาย', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก ', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก ', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัว', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: Ratatouille) เป็นภาพยนตร์คอมพิวเตอร์แอนิเมชันอเมริก', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: R', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: R', N'ระ-ทะ-ทู-อี่ พ่อครัวตัวจี๊ด หัวใจคับโลก (อังกฤษ: R', N'ระ-ทะ', N'ระ-ทะ-ทู-อ', 0, CAST(N'2023-06-16T16:12:34.240' AS DateTime), N'2521116455', CAST(N'2023-06-16T16:12:34.240' AS DateTime), N'2521116455')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'string', N'string', N'string', N'string', N'112', N'string', N'string', N'string', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:46:07.317' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T16:46:20.370' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'string', N'string', N'string', N'string', N'112', N'string', N'string', N'string', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:46:07.317' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T16:46:20.370' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'string', N'string', N'string', N'string', N'112', N'string', N'string', N'string', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:46:07.317' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T16:46:20.387' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'string', N'string', N'string', N'string', N'112', N'string', N'string', N'string', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:46:07.317' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T16:46:20.387' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'string', N'string', N'string', N'string', N'112', N'string', N'string', N'string', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:46:07.317' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T16:47:55.703' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890147', N'นางสาว', N'นาตยา', N'ศรีสวัสดิ์', N'คอนโด อยู่เย็น', N'15', NULL, NULL, N'150', N'5', NULL, N'พระราม3', N'ช่องนนทรี', N'ยานนาวา', N'กรุงเทพ', N'10120', N'0', 1, CAST(N'2023-06-14T16:03:57.890' AS DateTime), N'pnitinan', CAST(N'2023-06-16T10:05:25.890' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890147', N'นางสาว', N'นาตยา', N'ศรีสวัสดิ์', N'คอนโด อยู่เย็น', N'15', NULL, NULL, N'150', N'5', NULL, N'พระราม3', N'ช่องนนทรี', N'ยานนาวา', N'กรุงเทพ', N'10120', N'1180002709', 1, CAST(N'2023-06-14T16:03:57.890' AS DateTime), N'pnitinan', CAST(N'2023-06-19T09:32:26.420' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'', N'', N'', N'', N'112', N'', N'', N'', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:59:58.610' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T16:59:58.610' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890139', N'นาง', N'มานี', N'ทดลองดี', N'', N'', N'', N'', N'112', N'', N'', N'', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002667', 1, CAST(N'2023-06-14T16:59:58.610' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T16:59:58.610' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'', N'', N'', N'', N'112', N'', N'', N'', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:59:58.610' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T16:59:58.627' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890139', N'นาง', N'มานี', N'ทดลองดี', N'', N'', N'', N'', N'112', N'', N'', N'', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002667', 1, CAST(N'2023-06-14T16:59:58.610' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T16:59:58.627' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'', N'', N'', N'', N'112', N'', N'', N'', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:59:58.610' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T17:00:55.937' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890139', N'นาง', N'มานี', N'ทดลองดี', N'', N'', N'', N'', N'112', N'', N'', N'', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002667', 1, CAST(N'2023-06-14T16:59:58.610' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T17:00:55.937' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'', N'', N'', N'', N'112', N'', N'', N'', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:59:58.610' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T17:00:55.953' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'', N'', N'', N'', N'112', N'', N'', N'', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:59:58.610' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T17:01:30.267' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'', N'', N'', N'', N'112', N'', N'', N'', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:59:58.610' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T17:01:30.283' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'', N'', N'', N'', N'112', N'', N'', N'', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:59:58.610' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T17:01:35.597' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'', N'', N'', N'', N'112', N'', N'', N'', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:59:58.610' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T17:01:35.610' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'', N'', N'', N'', N'112', N'', N'', N'', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:59:58.610' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T17:01:36.837' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'', N'', N'', N'', N'112', N'', N'', N'', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:59:58.610' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T17:01:36.837' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'', N'', N'', N'', N'112', N'', N'', N'', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:59:58.610' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T17:01:38.167' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'', N'', N'', N'', N'112', N'', N'', N'', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:59:58.610' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T17:01:38.167' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'', N'', N'', N'', N'112', N'', N'', N'', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T16:59:58.610' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T17:01:40.417' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'', N'', N'', N'', N'112', N'', N'', N'', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T17:02:40.103' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T17:02:40.103' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890139', N'นาง', N'มานี', N'ทดลองดี', N'', N'', N'', N'', N'112', N'', N'', N'', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002667', 1, CAST(N'2023-06-14T17:02:40.103' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T17:02:40.103' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'', N'', N'', N'', N'112', N'', N'', N'', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T17:04:35.827' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T17:04:35.827' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890139', N'นาง', N'มานี', N'ทดลองดี', N'', N'', N'', N'', N'112', N'', N'', N'', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002667', 1, CAST(N'2023-06-14T17:04:35.827' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T17:04:35.827' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'', N'', N'', N'', N'112', N'', N'', N'', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002659', 1, CAST(N'2023-06-14T17:05:43.407' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-14T17:05:43.407' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890147', N'นางสาว', N'นงคราญ', N'ศรีสวัสดิ์', N'คอนโด อยู่เย็น', N'15', NULL, NULL, N'150', N'5', NULL, N'พระราม3', N'ช่องนนทรี', N'ยานนาวา', N'กรุงเทพ', N'10120', N'0', 1, CAST(N'2023-06-14T16:03:57.890' AS DateTime), N'pnitinan', CAST(N'2023-06-16T09:15:43.383' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890147', N'นางสาว', N'นาตยา', N'ศรีสวัสดิ์', N'คอนโด อยู่เย็น', N'15', NULL, NULL, N'150', N'5', NULL, N'พระราม3', N'ช่องนนทรี', N'ยานนาวา', N'กรุงเทพ', N'10120', N'1180002709', 1, CAST(N'2023-06-14T16:03:57.890' AS DateTime), N'pnitinan', CAST(N'2023-06-16T09:31:26.470' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890121', N'นาย', N'มานะ', N'ทดลองดี', N'', N'', N'', N'', N'112', N'', N'', N'', N'บางดี', N'บางเด่น', N'กทม', N'101ฟ0', N'1234567890', 1, CAST(N'2023-06-19T10:18:18.863' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-19T10:18:18.863' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Payees_Logs] ([national_id], [pre_name], [first_name], [last_name], [address_build_name], [address_room_no], [address_floor_no], [address_village_name], [address_no], [address_moo_no], [address_soi], [address_street_name], [address_tambon], [address_amphur], [address_province], [address_postal_code], [account_no], [active], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'1234567890123', N'นาง', N'มาลินี', N'ทดลองดี', N'', N'', N'', N'', N'112', N'', N'', N'', N'บางดี', N'บางเด่น', N'กทม', N'10101', N'1180002667', 1, CAST(N'2023-06-15T09:00:11.707' AS DateTime), N'API-HomeLoan', CAST(N'2023-06-16T13:14:44.857' AS DateTime), N'API-HomeLoan')
GO
INSERT [dbo].[NETS_Roles] ([role_id], [role_title], [role_level], [active], [menu_manual_entry], [menu_inquiry], [menu_setup], [menu_admin], [menu_report], [menu_tax], [menu_it], [func_approve], [func_upload], [func_payee], [created_date], [created_by], [updated_date], [updated_by], [menu_01], [menu_02], [menu_03], [menu_04], [menu_05], [menu_06], [menu_07], [menu_08], [menu_09], [menu_10], [func_01], [func_02], [func_03], [func_04], [func_05], [func_06], [func_07], [func_08], [func_09], [func_10]) VALUES (N'AppAdmin', N'App - Admin01', 50, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, CAST(N'2023-06-07T12:56:25.613' AS DateTime), N'admin', CAST(N'2023-06-20T08:54:07.040' AS DateTime), N'S_PSiraphob', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[NETS_Roles] ([role_id], [role_title], [role_level], [active], [menu_manual_entry], [menu_inquiry], [menu_setup], [menu_admin], [menu_report], [menu_tax], [menu_it], [func_approve], [func_upload], [func_payee], [created_date], [created_by], [updated_date], [updated_by], [menu_01], [menu_02], [menu_03], [menu_04], [menu_05], [menu_06], [menu_07], [menu_08], [menu_09], [menu_10], [func_01], [func_02], [func_03], [func_04], [func_05], [func_06], [func_07], [func_08], [func_09], [func_10]) VALUES (N'IT', N'IT', 99, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, CAST(N'2023-06-07T12:56:25.613' AS DateTime), N'admin', CAST(N'2023-06-07T12:56:25.613' AS DateTime), N'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Roles] ([role_id], [role_title], [role_level], [active], [menu_manual_entry], [menu_inquiry], [menu_setup], [menu_admin], [menu_report], [menu_tax], [menu_it], [func_approve], [func_upload], [func_payee], [created_date], [created_by], [updated_date], [updated_by], [menu_01], [menu_02], [menu_03], [menu_04], [menu_05], [menu_06], [menu_07], [menu_08], [menu_09], [menu_10], [func_01], [func_02], [func_03], [func_04], [func_05], [func_06], [func_07], [func_08], [func_09], [func_10]) VALUES (N'ITXXXXXXXXXXXXXXXXXX', N'IT1', 99, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, CAST(N'2023-06-16T16:21:27.240' AS DateTime), N'2521116455', CAST(N'2023-06-20T08:39:09.297' AS DateTime), N'jupornchai', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[NETS_Roles] ([role_id], [role_title], [role_level], [active], [menu_manual_entry], [menu_inquiry], [menu_setup], [menu_admin], [menu_report], [menu_tax], [menu_it], [func_approve], [func_upload], [func_payee], [created_date], [created_by], [updated_date], [updated_by], [menu_01], [menu_02], [menu_03], [menu_04], [menu_05], [menu_06], [menu_07], [menu_08], [menu_09], [menu_10], [func_01], [func_02], [func_03], [func_04], [func_05], [func_06], [func_07], [func_08], [func_09], [func_10]) VALUES (N'Officer', N'Officer', 10, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, CAST(N'2023-06-07T12:56:25.617' AS DateTime), N'admin', CAST(N'2023-06-07T12:56:25.617' AS DateTime), N'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Roles] ([role_id], [role_title], [role_level], [active], [menu_manual_entry], [menu_inquiry], [menu_setup], [menu_admin], [menu_report], [menu_tax], [menu_it], [func_approve], [func_upload], [func_payee], [created_date], [created_by], [updated_date], [updated_by], [menu_01], [menu_02], [menu_03], [menu_04], [menu_05], [menu_06], [menu_07], [menu_08], [menu_09], [menu_10], [func_01], [func_02], [func_03], [func_04], [func_05], [func_06], [func_07], [func_08], [func_09], [func_10]) VALUES (N'string', N'string', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, CAST(N'2023-06-15T11:06:42.880' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-15T11:06:42.880' AS DateTime), N'S_PSiraphob', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[NETS_Roles] ([role_id], [role_title], [role_level], [active], [menu_manual_entry], [menu_inquiry], [menu_setup], [menu_admin], [menu_report], [menu_tax], [menu_it], [func_approve], [func_upload], [func_payee], [created_date], [created_by], [updated_date], [updated_by], [menu_01], [menu_02], [menu_03], [menu_04], [menu_05], [menu_06], [menu_07], [menu_08], [menu_09], [menu_10], [func_01], [func_02], [func_03], [func_04], [func_05], [func_06], [func_07], [func_08], [func_09], [func_10]) VALUES (N'SuperAdmin', N'Super Admin', 99, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, CAST(N'2023-06-07T12:56:25.617' AS DateTime), N'admin', CAST(N'2023-06-07T12:56:25.617' AS DateTime), N'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Roles] ([role_id], [role_title], [role_level], [active], [menu_manual_entry], [menu_inquiry], [menu_setup], [menu_admin], [menu_report], [menu_tax], [menu_it], [func_approve], [func_upload], [func_payee], [created_date], [created_by], [updated_date], [updated_by], [menu_01], [menu_02], [menu_03], [menu_04], [menu_05], [menu_06], [menu_07], [menu_08], [menu_09], [menu_10], [func_01], [func_02], [func_03], [func_04], [func_05], [func_06], [func_07], [func_08], [func_09], [func_10]) VALUES (N'Supervisor', N'Supervisor', 30, 1, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, CAST(N'2023-06-07T12:56:25.617' AS DateTime), N'admin', CAST(N'2023-06-07T12:56:25.617' AS DateTime), N'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Roles] ([role_id], [role_title], [role_level], [active], [menu_manual_entry], [menu_inquiry], [menu_setup], [menu_admin], [menu_report], [menu_tax], [menu_it], [func_approve], [func_upload], [func_payee], [created_date], [created_by], [updated_date], [updated_by], [menu_01], [menu_02], [menu_03], [menu_04], [menu_05], [menu_06], [menu_07], [menu_08], [menu_09], [menu_10], [func_01], [func_02], [func_03], [func_04], [func_05], [func_06], [func_07], [func_08], [func_09], [func_10]) VALUES (N'Tax', N'Tax', 30, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, CAST(N'2023-06-07T12:56:25.617' AS DateTime), N'admin', CAST(N'2023-06-07T12:56:25.617' AS DateTime), N'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[NETS_Roles] ([role_id], [role_title], [role_level], [active], [menu_manual_entry], [menu_inquiry], [menu_setup], [menu_admin], [menu_report], [menu_tax], [menu_it], [func_approve], [func_upload], [func_payee], [created_date], [created_by], [updated_date], [updated_by], [menu_01], [menu_02], [menu_03], [menu_04], [menu_05], [menu_06], [menu_07], [menu_08], [menu_09], [menu_10], [func_01], [func_02], [func_03], [func_04], [func_05], [func_06], [func_07], [func_08], [func_09], [func_10]) VALUES (N'test', N'test', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(N'2023-06-16T16:21:28.350' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-20T12:58:35.907' AS DateTime), N'S_PSiraphob', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[NETS_Roles] ([role_id], [role_title], [role_level], [active], [menu_manual_entry], [menu_inquiry], [menu_setup], [menu_admin], [menu_report], [menu_tax], [menu_it], [func_approve], [func_upload], [func_payee], [created_date], [created_by], [updated_date], [updated_by], [menu_01], [menu_02], [menu_03], [menu_04], [menu_05], [menu_06], [menu_07], [menu_08], [menu_09], [menu_10], [func_01], [func_02], [func_03], [func_04], [func_05], [func_06], [func_07], [func_08], [func_09], [func_10]) VALUES (N'TEST123', N'TEST:))', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, CAST(N'2023-06-20T10:34:48.253' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-20T10:42:32.083' AS DateTime), N'S_PSiraphob', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[NETS_Roles] ([role_id], [role_title], [role_level], [active], [menu_manual_entry], [menu_inquiry], [menu_setup], [menu_admin], [menu_report], [menu_tax], [menu_it], [func_approve], [func_upload], [func_payee], [created_date], [created_by], [updated_date], [updated_by], [menu_01], [menu_02], [menu_03], [menu_04], [menu_05], [menu_06], [menu_07], [menu_08], [menu_09], [menu_10], [func_01], [func_02], [func_03], [func_04], [func_05], [func_06], [func_07], [func_08], [func_09], [func_10]) VALUES (N'TESTTESTTESTTESTTEST', N'123', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(N'2023-06-19T08:55:51.177' AS DateTime), N'2521116455', CAST(N'2023-06-20T08:56:26.637' AS DateTime), N'S_PSiraphob', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[NETS_Tax_Deduction_Terms] ([effective_date], [tax_exemption_rate], [tax_exemption_max], [tax_deduction], [created_date], [created_by], [updated_date], [updated_by]) VALUES (CAST(N'2020-01-01' AS Date), 0.5, 80000, 30000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Deduction_Terms] ([effective_date], [tax_exemption_rate], [tax_exemption_max], [tax_deduction], [created_date], [created_by], [updated_date], [updated_by]) VALUES (CAST(N'2023-01-01' AS Date), 0.5211, 100000.23, 60000.82, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-06-16T13:39:31.337' AS DateTime), N'2521116455')
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
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0, CAST(N'2023-01-01' AS Date), 0, 150000, CAST(N'2023-06-20T09:23:18.853' AS DateTime), N'jupornchai', CAST(N'2023-06-29T10:41:32.417' AS DateTime), N'S_PSiraphob')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.05, CAST(N'2023-01-01' AS Date), 150001, 300000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.1, CAST(N'2023-01-01' AS Date), 300001, 500000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.15, CAST(N'2023-01-01' AS Date), 500001, 750000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.3, CAST(N'2023-01-01' AS Date), 750011, 1000000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-06-16T13:40:13.533' AS DateTime), N'2521116455')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.25, CAST(N'2023-01-01' AS Date), 1000001, 2000000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.3, CAST(N'2023-01-01' AS Date), 2000001, 5000000, CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin', CAST(N'2023-05-12T10:40:57.147' AS DateTime), N'admin')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0.35, CAST(N'2023-01-01' AS Date), 5000001, 99999999, CAST(N'2023-06-07T15:04:29.857' AS DateTime), N'jupornchai', CAST(N'2023-06-28T13:48:10.083' AS DateTime), N'S_PSiraphob')
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
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0, CAST(N'2023-06-27' AS Date), 0, 100, CAST(N'2023-06-28T11:07:53.017' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-28T11:07:53.017' AS DateTime), N'S_PSiraphob')
GO
INSERT [dbo].[NETS_Tax_Terms] ([tax_rate], [effective_date], [tax_range_begin], [tax_range_end], [created_date], [created_by], [updated_date], [updated_by]) VALUES (0, CAST(N'2023-06-29' AS Date), 0, 1000, CAST(N'2023-06-28T11:08:38.750' AS DateTime), N'S_PSiraphob', CAST(N'2023-06-28T11:08:55.987' AS DateTime), N'S_PSiraphob')
GO
INSERT [dbo].[NETS_User_Profiles] ([oa_user], [active], [role_id], [data_group_id], [team_id], [email], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'2521116455', 1, N'SuperAdmin', N'IT', N'IT', N'Kasemsri.Unno@bangkokbank.com', CAST(N'2022-06-20T00:00:00.000' AS DateTime), N'admin', CAST(N'2023-06-19T10:39:03.383' AS DateTime), N'2521116455')
GO
INSERT [dbo].[NETS_User_Profiles] ([oa_user], [active], [role_id], [data_group_id], [team_id], [email], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'jupornchai', 1, N'SuperAdmin', N'CreditCard', N'IT', N'pornchai.juntrapoon@bangkokbank.com', CAST(N'2023-03-22T10:02:31.417' AS DateTime), N'admin', CAST(N'2023-06-13T14:27:45.980' AS DateTime), N'jupornchai')
GO
INSERT [dbo].[NETS_User_Profiles] ([oa_user], [active], [role_id], [data_group_id], [team_id], [email], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'pnitinan', 1, N'SuperAdmin', N'IT', N'IT', N'pornchai.juntrapoon@bangkokbank.com', CAST(N'2023-03-22T10:02:31.417' AS DateTime), N'admin', CAST(N'2023-06-20T11:27:28.317' AS DateTime), N'S_PSiraphob')
GO
INSERT [dbo].[NETS_User_Profiles] ([oa_user], [active], [role_id], [data_group_id], [team_id], [email], [created_date], [created_by], [updated_date], [updated_by]) VALUES (N'S_PSiraphob', 1, N'SuperAdmin', N'IT', N'IT', N'Siraphob.Phairoh@bangkokbank.com', CAST(N'2023-06-06T00:00:00.000' AS DateTime), N'admin', CAST(N'2023-06-28T11:12:24.237' AS DateTime), N'S_PSiraphob')
GO
INSERT [dbo].[NETS_User_Profiles_Info] ([oa_user], [first_name_th], [last_name_th], [first_name_en], [last_name_en], [division_code], [division_name]) VALUES (N'2521116455', N'Kasemsri', N'Unno', N'Kasemsri', N'Unno', N'001911', N'ERM')
GO
INSERT [dbo].[NETS_User_Profiles_Info] ([oa_user], [first_name_th], [last_name_th], [first_name_en], [last_name_en], [division_code], [division_name]) VALUES (N'jupornchai', N'Pornchai', N'Juntrapoon', N'Pornchai', N'Juntrapoon', N'001911', N'ERM')
GO
INSERT [dbo].[NETS_User_Profiles_Info] ([oa_user], [first_name_th], [last_name_th], [first_name_en], [last_name_en], [division_code], [division_name]) VALUES (N'pnitinan', N'Nitinan', N'Punsabsawat', N'Nitinan', N'Punsabsawat', N'001911', N'ERM')
GO
INSERT [dbo].[NETS_User_Profiles_Info] ([oa_user], [first_name_th], [last_name_th], [first_name_en], [last_name_en], [division_code], [division_name]) VALUES (N'S_PSiraphob', N'Siraphob', N'Phairoh', N'Siraphob', N'Phairoh', N'001911', N'ERM')
GO
ALTER TABLE [dbo].[NETS_Data_Groups] ADD  CONSTRAINT [DF_NETS_Data_Groups_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[NETS_Data_Groups] ADD  CONSTRAINT [DF_NETS_Data_Groups_updated_date]  DEFAULT (getdate()) FOR [updated_date]
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
/****** Object:  StoredProcedure [dbo].[checkManualIncomeUpload]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[deletePayeeChange]    Script Date: 6/30/2023 8:57:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[deletePayeeChange]
@national_id varchar(13) 
,@DeleteBy varchar(50)

AS
BEGIN

BEGIN TRANSACTION
BEGIN TRY

	DELETE FROM dbo.NETS_Payees_Change
	WHERE national_id = @national_id
	AND changed_by = @DeleteBy
	AND status = 'W';

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
/****** Object:  StoredProcedure [dbo].[deleteTaxTerm]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[FindUser]    Script Date: 6/30/2023 8:57:25 AM ******/
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
	,u1.email
	,g.team_id
	,g.product_id data_product_id
FROM dbo.NETS_User_Profiles u1
     JOIN dbo.NETS_User_Profiles_Info i ON i.oa_user = u1.oa_user
     JOIN dbo.NETS_Roles r ON r.role_id = u1.role_id
     JOIN dbo.NETS_Data_Groups g ON g.group_id = u1.data_group_id
	 JOIN dbo.NETS_List_of_Values l1 ON l1.lov_code = u1.team_id
	 AND l1.lov_field = 'Team'
	 AND u1.oa_user LIKE '%' + @oa_user +'%'
     AND (i.first_name_en + i.first_name_th) LIKE '%' + @fname + '%'
     AND (i.last_name_en + i.last_name_th) LIKE '%' + @lname + '%';
END
GO
/****** Object:  StoredProcedure [dbo].[getAllDataGroups]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getAllIncome]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getAllListOfValues]    Script Date: 6/30/2023 8:57:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getAllListOfValues]
AS
BEGIN
	
	SELECT *
	FROM dbo.NETS_List_of_Values
	order by lov_field asc

END

GO
/****** Object:  StoredProcedure [dbo].[getAllPayees]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getAllRoles]    Script Date: 6/30/2023 8:57:25 AM ******/
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
	order by role_id desc;

END
/****** Object:  StoredProcedure [dbo].[GetAllUsers] ******/
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[getAllUser]    Script Date: 6/30/2023 8:57:25 AM ******/
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
	,u1.email
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
/****** Object:  StoredProcedure [dbo].[getApproveIncomeAdjustment]    Script Date: 6/30/2023 8:57:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getApproveIncomeAdjustment]
@username varchar(50)
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
		pay.ref_year
		,pay.ref_no
		,pay.transaction_no
		,CONCAT(FORMAT(DATEFROMPARTS(i.ref_year, 1, 1), 'yy', 'th-TH'), '-', i.ref_no, '-', i.transaction_no) ref_no_mask
		,CONCAT(p.first_name, ' ', p.last_name) name
		,FORMAT(pay.batch_paid_date, 'dd/MM/yyyy') paid_date
		,pay.amount original_amount
		,pay.withholding_tax original_tax
		,aj.amount changed_amount
		,aj.withholding_tax changed_tax
		,FORMAT(aj.changed_date, 'dd/MM/yyyy') changed_date
		,aj.changed_by
		,aj.remark

	FROM dbo.NETS_Payments_Adjustment aj
	JOIN dbo.NETS_Payments pay ON pay.ref_year = aj.ref_year
							AND pay.ref_no = aj.ref_no
							AND pay.transaction_no = aj.transaction_no
	JOIN dbo.NETS_Incomes i ON i.ref_year = aj.ref_year
							AND i.ref_no = aj.ref_no
							AND i.transaction_no = aj.transaction_no
	JOIN dbo.NETS_Payees p ON p.national_id = i.national_id
	JOIN @access_user ac ON ac.user_access = aj.changed_by

	WHERE aj.status = 'W'

	ORDER BY aj.changed_date asc;

END
GO
/****** Object:  StoredProcedure [dbo].[getApproveIncomeSearch]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getBatchCalendarByYear]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getBatchCalendarByYearAndMonth]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getBatchRunDate]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getCalendarYear]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getDataGroups]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetEffective]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getIncome]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getInquiry]    Script Date: 6/30/2023 8:57:25 AM ******/
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
DECLARE @type TABLE(
id char(1)
,title varchar(250)
,order_by int);

INSERT INTO @type VALUES('A', 'รายการที่เข้าบัญชีทั้งหมด', 1);
INSERT INTO @type VALUES('C', 'รายการที่รอเข้าบัญชี', 2);
INSERT INTO @type VALUES('P', 'รายการที่เข้าบัญชีสำเร็จ', 3);
INSERT INTO @type VALUES('U', 'รายการที่เข้าบัญชีไม่สำเร็จ', 4);
INSERT INTO @type VALUES('I', 'รายการที่ยังไม่อนุมัติ', 5);


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

    BEGIN
        -- source dropdown
SELECT 
     'PaymentSource' field,
	id
	,title
	,order_by
FROM @type
ORDER BY order_by ASC;

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
/****** Object:  StoredProcedure [dbo].[getInquiryIncomeSearch]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getInquiryPaymentsSearch]    Script Date: 6/30/2023 8:57:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getInquiryPaymentsSearch]
@username varchar(50)
,@team_id varchar(50) = ''
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
/****** Object:  StoredProcedure [dbo].[getInquiryTax]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getInquiryTaxGroup]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getInquiryTaxPerson]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getInquiryTaxPersonSearch]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getListDataGroups]    Script Date: 6/30/2023 8:57:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListDataGroups]
AS
Begin
	SELECT d.group_id,d.group_title,d.product_id
	From NETS_Data_Groups d
	where d.active = 1

End

GO
/****** Object:  StoredProcedure [dbo].[getListEffectiveDate]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getListOfValues]    Script Date: 6/30/2023 8:57:25 AM ******/
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
	AND lov_code = IIF(@lov_code = '' ,lov_code, @lov_code);

END
GO
/****** Object:  StoredProcedure [dbo].[getListParents]    Script Date: 6/30/2023 8:57:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListParents]
AS
Begin
   SELECT DISTINCT d.parent_group_id
   FROM dbo.NETS_Data_Groups d
   where  d.active = 1

End

GO
/****** Object:  StoredProcedure [dbo].[getListPreName]    Script Date: 6/30/2023 8:57:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListPreName]

AS
BEGIN
	SELECT l2.lov_code id
	,l2.lov_description title
FROM dbo.NETS_List_of_Values l2
WHERE l2.lov_field = 'PreName'
AND l2.lov_active = 1

END

GO
/****** Object:  StoredProcedure [dbo].[getListProducts]    Script Date: 6/30/2023 8:57:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListProducts]
AS
Begin
   SELECT l1.lov_code id
	   ,l1.lov_description title
   FROM dbo.NETS_List_of_Values l1 
   WHERE l1.lov_field = 'Product'
   AND l1.lov_active = 1

End

GO
/****** Object:  StoredProcedure [dbo].[getListRole]    Script Date: 6/30/2023 8:57:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListRole]
AS
Begin
	SELECT role_id id
	,role_title title
	From NETS_Roles
End

GO
/****** Object:  StoredProcedure [dbo].[getListTaxRate]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getListTeams]    Script Date: 6/30/2023 8:57:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListTeams]
AS
Begin
   SELECT l2.lov_code id
	   ,l2.lov_description title
   FROM dbo.NETS_List_of_Values l2
   WHERE l2.lov_field = 'Team'
   AND l2.lov_active = 1

End

GO
/****** Object:  StoredProcedure [dbo].[getManualDropdown]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getManualIncome]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getManualIncomeAdjustByID]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getManualIncomeAdjustSearch]    Script Date: 6/30/2023 8:57:25 AM ******/
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
	WHERE FORMAT(pay.batch_paid_date, 'yyyyMMdd') = @paid_date
	AND YEAR(pay.batch_paid_date) = YEAR(SYSDATETIME())
	AND MONTH(pay.batch_paid_date) = MONTH(SYSDATETIME())

	ORDER BY 1, 2, 3
	OFFSET @records*(@page-1) ROWS
	FETCH NEXT @records ROWS ONLY;

END
GO
/****** Object:  StoredProcedure [dbo].[getManualIncomeHistory]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getNextCalendar]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getPayeePending]    Script Date: 6/30/2023 8:57:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getPayeePending]
	@changed_by varchar(50) = 'user07'
AS
Begin

SELECT 
	p.action
	,p.national_id
	,p.pre_name
	,p.first_name
	,p.last_name
	,p.active
	,p.account_no
	,CONCAT(p.address_no, ' '
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
		,p.address_postal_code) address

FROM dbo.NETS_Payees_Change p
WHERE p.status = 'W'
AND p.changed_by = @changed_by
ORDER BY p.changed_date DESC

End
GO
/****** Object:  StoredProcedure [dbo].[getPayeesById]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getPayeesChange]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getProductGroupidFromToken]    Script Date: 6/30/2023 8:57:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getProductGroupidFromToken]
   @token varchar(50)
AS
Begin

DECLARE @product_id varchar(50);
DECLARE @token_condition varchar(100);

SELECT 
    g.group_id
    ,g.group_title
    ,g.team_id
    ,g.product_id
FROM dbo.NETS_Data_Groups g
JOIN dbo.NETS_List_of_Values l ON l.lov_code = g.product_id
                            AND l.lov_field = 'TokenAPI'
                            AND l.lov_description = @token
                            AND l.lov_active = 1
							
End
GO
/****** Object:  StoredProcedure [dbo].[getRole]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getSource]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getSubmittedy]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getTaxByDate]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getTaxByEffDate]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getTaxById]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetUploadTemplate]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getUserName]    Script Date: 6/30/2023 8:57:25 AM ******/
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
		,u1.email
	,r.role_id
	,g.group_id data_group_id
	,u1.team_id
	,g.product_id data_product_id
	,r.role_title
	,g.group_title data_group_title
	,l1.lov_description data_product_title
FROM dbo.NETS_User_Profiles u1
LEFT JOIN dbo.NETS_User_Profiles_Info i ON i.oa_user = u1.oa_user AND u1.active = 1
JOIN dbo.NETS_Roles r ON r.role_id = u1.role_id
JOIN dbo.NETS_Data_Groups g ON g.group_id = u1.data_group_id
JOIN dbo.NETS_List_of_Values l1 ON l1.lov_code = u1.team_id 
                                and l1.lov_field = 'Team'
WHERE u1.oa_user = @oa_user
END
GO
/****** Object:  StoredProcedure [dbo].[postAdjustmentIncomeApprove]    Script Date: 6/30/2023 8:57:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[postAdjustmentIncomeApprove]
@list_ref_no income_ref_transaction_type READONLY
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
				
	-- insert log
	INSERT INTO dbo.NETS_Payments_Logs
	SELECT pay.*
	FROM dbo.NETS_Payments pay
	INNER JOIN dbo.NETS_Payments_Adjustment aj ON aj.ref_year = pay.ref_year
											AND aj.ref_no = pay.ref_no
											AND aj.transaction_no = pay.transaction_no
											AND aj.status = 'W'
	INNER JOIN @list_ref_no i ON i.ref_year = aj.ref_year
								AND i.ref_no = aj.ref_no
								AND i.transaction_no = aj.transaction_no
	INNER JOIN @access_user ac ON ac.user_access = aj.changed_by;

	INSERT INTO dbo.NETS_Incomes_Logs
	SELECT i.*
	FROM dbo.NETS_Incomes i
	INNER JOIN dbo.NETS_Payments_Adjustment aj ON aj.ref_year = i.ref_year
											AND aj.ref_no = i.ref_no
											AND aj.transaction_no = i.transaction_no
											AND aj.status = 'W'
	INNER JOIN @list_ref_no l ON l.ref_year = aj.ref_year
								AND l.ref_no = aj.ref_no
								AND l.transaction_no = aj.transaction_no
	INNER JOIN @access_user ac ON ac.user_access = aj.changed_by;

	-- Update change
	UPDATE inc
	SET 
		 inc.amount = aj.amount
		 ,inc.updated_date = SYSDATETIME()
		 ,inc.adjusted_date = SYSDATETIME()
		 ,inc.adjusted_by = @UpdatedBy
		 ,inc.adjusted_reason = aj.remark
	FROM dbo.NETS_Incomes inc
	INNER JOIN dbo.NETS_Payments_Adjustment aj ON aj.ref_year = inc.ref_year
											AND aj.ref_no = inc.ref_no
											AND aj.transaction_no = inc.transaction_no
											AND aj.status = 'W'
	INNER JOIN @list_ref_no i ON i.ref_year = aj.ref_year
								AND i.ref_no = aj.ref_no
								AND i.transaction_no = aj.transaction_no
	INNER JOIN @access_user ac ON ac.user_access = aj.changed_by;

	UPDATE pay
	SET 
		 pay.amount = aj.amount
		 ,pay.withholding_tax = aj.withholding_tax
		 ,pay.amount_net = aj.amount - aj.withholding_tax
		 ,pay.updated_date = SYSDATETIME()
		 ,pay.adjusted_date = SYSDATETIME()
		 ,pay.adjusted_by = @UpdatedBy
		 ,pay.description = CONCAT(pay.description, ', ', aj.remark)
	FROM dbo.NETS_Payments pay
	INNER JOIN dbo.NETS_Payments_Adjustment aj ON aj.ref_year = pay.ref_year
											AND aj.ref_no = pay.ref_no
											AND aj.transaction_no = pay.transaction_no
											AND aj.status = 'W'
	INNER JOIN @list_ref_no i ON i.ref_year = aj.ref_year
								AND i.ref_no = aj.ref_no
								AND i.transaction_no = aj.transaction_no
	INNER JOIN @access_user ac ON ac.user_access = aj.changed_by;

	
	-- update status chaneg table
	UPDATE aj
	SET
		aj.status = 'A'
		,aj.approved_by = @UpdatedBy
		,aj.approved_date = SYSDATETIME()
	FROM dbo.NETS_Payments_Adjustment aj
	INNER JOIN @list_ref_no i ON i.ref_year = aj.ref_year
								AND i.ref_no = aj.ref_no
								AND i.transaction_no = aj.transaction_no
	INNER JOIN @access_user ac ON ac.user_access = aj.changed_by
	WHERE aj.status = 'W'
	
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
/****** Object:  StoredProcedure [dbo].[postAdjustmentIncomeReject]    Script Date: 6/30/2023 8:57:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[postAdjustmentIncomeReject]
@list_ref_no income_ref_transaction_type READONLY
,@reject_reason varchar(1000)
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
	UPDATE aj
	SET
		aj.status = 'R'
		,aj.rejected_reason = @reject_reason
		,aj.rejected_by = @UpdatedBy
		,aj.rejected_date = SYSDATETIME()
	FROM dbo.NETS_Payments_Adjustment aj
	INNER JOIN @list_ref_no i ON i.ref_year = aj.ref_year
								AND i.ref_no = aj.ref_no
								AND i.transaction_no = aj.transaction_no
	INNER JOIN @access_user ac ON ac.user_access = aj.changed_by
	WHERE aj.status = 'W';
	
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
/****** Object:  StoredProcedure [dbo].[postBatchCalendar]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[postDataGroups]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[postListOfValues]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[postManualIncomeAdjust]    Script Date: 6/30/2023 8:57:25 AM ******/
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
	AND pay.transaction_no = @transaction_no
	AND YEAR(pay.batch_paid_date) = YEAR(SYSDATETIME())
	AND MONTH(pay.batch_paid_date) = MONTH(SYSDATETIME())

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
/****** Object:  StoredProcedure [dbo].[postManualIncomeAPI]    Script Date: 6/30/2023 8:57:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[postManualIncomeAPI]
@lists manual_income_api_type READONLY
,@amount_sum decimal(17, 2) = 6000
,@record_count int = 6
,@token varchar(250)
AS
BEGIN

BEGIN TRANSACTION
BEGIN TRY

-- get token
	DECLARE @product_id varchar(50);
	DECLARE @token_condition varchar(100);
	SELECT @product_id = l.lov_code
		,@token_condition = UPPER(l.lov_condition)
	FROM dbo.NETS_List_of_Values l
	WHERE l.lov_field = 'TokenAPI'
	AND l.lov_active = 1
	AND l.lov_description = @token;
	
-- token invalid
	IF @product_id IS NULL OR @product_id = ''
	BEGIN 
		ROLLBACK;
		SELECT '' ref_no_mask, (-2) Result

	END
	ELSE
	BEGIN
-- validate record count
	IF (SELECT 1 FROM @lists l HAVING SUM(l.amount) = @amount_sum AND COUNT(l.amount) = @record_count) IS NULL
	BEGIN 
		ROLLBACK;
		SELECT '' ref_no_mask, (-3) Result -- record count or amount summary invalid

	END
	ELSE
	BEGIN
-- validate records
-- validate national id, account no
	IF (SELECT COUNT(*) FROM @lists l WHERE LEN(l.national_id) <> 13 OR LEN(IIF(ISNULL(l.account_no, '') = '', '1234567890', l.account_no)) <> 10) > 0
	BEGIN 
		ROLLBACK;
		SELECT '' ref_no_mask, (-4) Result -- national id or account no. invalid

	END
-- validate amount < 0
	ELSE IF (SELECT COUNT(*) FROM @lists l WHERE l.amount <= 0) > 0
	BEGIN 
		ROLLBACK;
		SELECT '' ref_no_mask, (-5) Result -- amount invalid

	END
-- validate data group 
	ELSE IF (SELECT COUNT(*) FROM @lists l WHERE NOT EXISTS (SELECT 1 
															FROM dbo.NETS_Data_Groups g
															WHERE g.group_id = l.group_id
															AND g.product_id = @product_id)) > 0
	BEGIN 
		ROLLBACK;
		SELECT '' ref_no_mask, (-6) Result -- data group id is not existing

	END
	ELSE
	BEGIN
-- manage payee
	DECLARE @payee manual_income_api_type;
	INSERT INTO @payee
	SELECT *
	FROM @lists l 
	WHERE NOT EXISTS (SELECT 1 FROM dbo.NETS_Payees p WHERE p.national_id = l.national_id)

-- check permission change apyee
	IF ((SELECT COUNT(*) FROM @payee) > 0 OR (SELECT COUNT(*) FROM @lists WHERE ISNULL(account_no, '') <> '') > 0 )
		AND @token_condition NOT LIKE '%PAYEE%'
	BEGIN 
		ROLLBACK;
		SELECT '' ref_no_mask, (-7) Result -- Not authorized to change payee info.
		
	END
	ELSE
	BEGIN
-- check required field when new payee
	IF (SELECT COUNT(*) 
		FROM @payee p
		WHERE ISNULL(p.pre_name, '') = ''
		OR ISNULL(p.first_name, '') = ''
		OR ISNULL(p.last_name, '') = ''
		OR ISNULL(p.address_no, '') = ''
		OR ISNULL(p.address_tambon, '') = ''
		OR ISNULL(p.address_amphur, '') = ''
		OR ISNULL(p.address_province, '') = ''
		OR LEN(ISNULL(p.address_postal_code, '')) <> 5
		) > 0
	BEGIN 
		ROLLBACK;
		SELECT '' ref_no_mask, (-8) Result -- change payee faild, required field must not be empty.
		
	END
	ELSE
	BEGIN
-- Add change payee log
		INSERT INTO dbo.NETS_Payees_Logs
		SELECT DISTINCT p.*
		FROM dbo.NETS_Payees p
		JOIN @lists l ON p.national_id = l.national_id
		WHERE ISNULL(l.pre_name, '') <> ''
		OR ISNULL(l.first_name, '') <> ''
		OR ISNULL(l.last_name, '') <> ''
		OR ISNULL(l.address_no, '') <> ''
		OR ISNULL(l.address_build_name, '') <> ''
		OR ISNULL(l.address_room_no, '') <> ''
		OR ISNULL(l.address_floor_no, '') <> ''
		OR ISNULL(l.address_village_name, '') <> ''
		OR ISNULL(l.address_no, '') <> ''
		OR ISNULL(l.address_moo_no, '') <> ''
		OR ISNULL(l.address_soi, '') <> ''
		OR ISNULL(l.address_street_name, '') <> ''
		OR ISNULL(l.address_tambon, '') <> ''
		OR ISNULL(l.address_amphur, '') <> ''
		OR ISNULL(l.address_province, '') <> ''
		OR ISNULL(l.address_postal_code, '') <> ''
		OR ISNULL(l.account_no, '') <> '';

-- update payee
		UPDATE p
		SET 
			p.pre_name = IIF(ISNULL(l.pre_name, '') = '', p.pre_name, TRIM(l.pre_name))
			,p.first_name = IIF(ISNULL(l.first_name, '') = '', p.first_name, TRIM(l.first_name))
			,p.last_name = IIF(ISNULL(l.last_name, '') = '', p.last_name, TRIM(l.last_name))
			,p.address_build_name = IIF(ISNULL(l.address_build_name, '') = '', p.address_build_name, TRIM(l.address_build_name))
			,p.address_room_no = IIF(ISNULL(l.address_room_no, '') = '', p.address_room_no, TRIM(l.address_room_no))
			,p.address_floor_no = IIF(ISNULL(l.address_floor_no, '') = '', p.address_floor_no, TRIM(l.address_floor_no))
			,p.address_village_name = IIF(ISNULL(l.address_village_name, '') = '', p.address_village_name, TRIM(l.address_village_name))
			,p.address_no = IIF(ISNULL(l.address_no, '') = '', p.address_no, TRIM(l.address_no))
			,p.address_moo_no = IIF(ISNULL(l.address_moo_no, '') = '', p.address_moo_no, TRIM(l.address_moo_no))
			,p.address_soi = IIF(ISNULL(l.address_soi, '') = '', p.address_soi, TRIM(l.address_soi))
			,p.address_street_name = IIF(ISNULL(l.address_street_name, '') = '', p.address_street_name, TRIM(l.address_street_name))
			,p.address_tambon = IIF(ISNULL(l.address_tambon, '') = '', p.address_tambon, TRIM(l.address_tambon))
			,p.address_amphur = IIF(ISNULL(l.address_amphur, '') = '', p.address_amphur, TRIM(l.address_amphur))
			,p.address_province = IIF(ISNULL(l.address_province, '') = '', p.address_province, TRIM(l.address_province))
			,p.address_postal_code = IIF(ISNULL(l.address_postal_code, '') = '', p.address_postal_code, IIF(LEN(TRIM(l.address_postal_code)) = 5, TRIM(l.address_postal_code), p.address_postal_code))
			,p.account_no = IIF(ISNULL(l.account_no, '') = '', p.account_no, TRIM(l.account_no))
			,p.updated_by = CONCAT('API-', @product_id)
			,p.updated_date = SYSDATETIME()
		FROM dbo.NETS_Payees p
		INNER JOIN @lists l ON l.national_id = p.national_id;
		
-- Add payee
		INSERT INTO dbo.NETS_Payees
		SELECT 
			p.national_id
			,p.pre_name
			,p.first_name
			,p.last_name
			,p.address_build_name
			,p.address_room_no
			,p.address_floor_no
			,p.address_village_name
			,p.address_no
			,p.address_moo_no
			,p.address_soi
			,p.address_street_name
			,p.address_tambon
			,p.address_amphur
			,p.address_province
			,p.address_postal_code
			,p.account_no
			,1
			,SYSDATETIME()
			,CONCAT('API-', @product_id)
			,SYSDATETIME()
			,CONCAT('API-', @product_id)
		FROM @payee p;

-- Insert income records
		DECLARE @year int = (SELECT YEAR(MAX(c.calendar_run_date)) FROM dbo.NETS_Batch_Calendars c WHERE c.batch_run_flag = 0);
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
			,source
			,submitted_date
			,created_date
			,created_by
			,updated_date
			,updated_by)
		SELECT
			@year
			,@ref_no_new
			,ROW_NUMBER() Over(ORDER BY l.row_no)
			,'I'
			,l.national_id
			,p.account_no
			,l.amount
			,l.group_id
			,l.sales_code
			,'A'
			,SYSDATETIME()
			,SYSDATETIME(), c.lov_description
			,SYSDATETIME(), c.lov_description
		FROM @lists l
		JOIN dbo.NETS_Payees p ON p.national_id = l.national_id
		JOIN dbo.NETS_List_of_Values c ON c.lov_field = 'IncomeCreateAPI'
										AND c.lov_code = @product_id;

		COMMIT;
											
		SELECT CONCAT(FORMAT(DATEFROMPARTS(@year, 1, 1), 'yy', 'th-TH'), '-', @ref_no_new) ref_no_mask, (-1) Result

	END -- check required field when new payee
	END -- manage payee

	END -- validate records
	END -- validate record count
	END -- token invalid
	

END TRY
BEGIN CATCH
	
	SELECT '' ref_no_mask, ISNULL(ERROR_NUMBER(), 0) Result

	IF @@TRANCOUNT > 0
		ROLLBACK;
	
END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[postManualIncomeApprove]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[postManualIncomeCancel]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[postManualIncomeKeyin]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[postManualIncomeReject]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[postManualIncomeSubmit]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[postManualIncomeUploadSubmit]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[postPayee]    Script Date: 6/30/2023 8:57:25 AM ******/
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
,@remark varchar(1000) 
,@UpdatedBy varchar(50)

AS
BEGIN

BEGIN TRANSACTION
BEGIN TRY

	IF (SELECT COUNT(*)
		FROM dbo.NETS_Payees_Change c
		WHERE c.status = 'W'
		AND c.national_id = @national_id) >= 1
	BEGIN
		ROLLBACK;

	-- payee waiting approve change
		SELECT (-1) Result;

	END
	ELSE
	BEGIN 
	-- set New or Update
		DECLARE @action varchar(10);
		SELECT @action = IIF(COUNT(*) = 0, 'New', 'Update')
		FROM dbo.NETS_Payees p
		WHERE p.national_id = @national_id;

		INSERT INTO dbo.NETS_Payees_Change
			(action
			,national_id
			,changed_date
			,changed_by
			,status
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
			,remark)
		VALUES(
			@action
			,@national_id
			,SYSDATETIME()
			,@UpdatedBy
			,'W'
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
			,IIF(@action = 'New', '-', ISNULL(@remark, '-')));
		COMMIT;
		SELECT (-2) Result;
	END

END TRY
BEGIN CATCH
	
	SELECT ISNULL(ERROR_NUMBER(), 0) Result;

	IF @@TRANCOUNT > 0
		ROLLBACK;

END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[postPayeeChangeApprove]    Script Date: 6/30/2023 8:57:25 AM ******/
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
	

	-- Add change payee log
	INSERT INTO dbo.NETS_Payees_Logs
	SELECT p.*
	FROM dbo.NETS_Payees p
	JOIN @list_national_id id ON id.national_id = p.national_id;

	
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
/****** Object:  StoredProcedure [dbo].[postPayeeChangeReject]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[postRole]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[postTaxDeduction]    Script Date: 6/30/2023 8:57:25 AM ******/
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
	,ROUND(@tax_exemption_rate/100, 4)
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
	,tax_exemption_rate = ROUND(@tax_exemption_rate/100, 4)
	,updated_by = @UpdatedBy
	,updated_date = SYSDATETIME()
WHERE effective_date = @effective_date;

COMMIT;

END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[postTaxTerm]    Script Date: 6/30/2023 8:57:25 AM ******/
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
            tax_rate = ROUND(@tax_rate/100, 4)
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
            ROUND(@tax_rate/100, 4)
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
/****** Object:  StoredProcedure [dbo].[postUsername]    Script Date: 6/30/2023 8:57:25 AM ******/
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
,@email varchar(250)
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
    --,'123'
    ,@active
    ,@role_id
    ,@data_group_id
    ,@team_id
	,@email
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
/****** Object:  StoredProcedure [dbo].[RolePermission]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[searchPayees]    Script Date: 6/30/2023 8:57:25 AM ******/
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
/****** Object:  StoredProcedure [dbo].[ValidateToken]    Script Date: 6/30/2023 8:57:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ValidateToken]
   @token varchar(250)
AS
BEGIN
	SELECT 1 result
	FROM dbo.NETS_List_of_Values l
	WHERE l.lov_field = 'TokenAPI'
	AND l.lov_active = 1
	AND l.lov_description = @token;
END
GO
USE [master]
GO
ALTER DATABASE [NETS_db] SET  READ_WRITE 
GO
