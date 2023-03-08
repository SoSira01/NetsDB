-- UserProfiles
CREATE TABLE [dbo].[NETS_UserProfiles] (
    [oa_user]       VARCHAR (50) NOT NULL,
    [active]        BIT          NOT NULL,
    [role_id]       VARCHAR (20) NOT NULL,
    [data_group_id] VARCHAR (20) NOT NULL,
    [team_id]       VARCHAR (20) NOT NULL,
    [created_date]  DATETIME     CONSTRAINT [DF_UserProfiles_created_date] DEFAULT (getdate()) NOT NULL,
    [created_by]    VARCHAR (20) NOT NULL,
    [updated_date]  DATETIME     CONSTRAINT [DF_UserProfiles_updated_date] DEFAULT (getdate()) NOT NULL,
    [updated_by]    VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_UserProfiles] PRIMARY KEY CLUSTERED ([oa_user] ASC)
);

-- Roles
CREATE TABLE [dbo].[NETS_Roles] (
    [role_id]           VARCHAR (20)  NOT NULL,
    [role_title]        VARCHAR (100) NOT NULL,
    [active]            BIT           NOT NULL,
    [menu_manual_entry] BIT           NOT NULL,
    [menu_inquiry]      BIT           NOT NULL,
    [menu_setup]        BIT           NOT NULL,
    [menu_report]       BIT           NOT NULL,
    [menu_tax]          BIT           NOT NULL,
    [menu_it]           BIT           NOT NULL,
    [func_approve]      BIT           NOT NULL,
    [func_upload]       BIT           NOT NULL,
    [func_payee]        BIT           NOT NULL,
    [created_date]      DATETIME      CONSTRAINT [DF_NETS_Roles_created_date] DEFAULT (getdate()) NOT NULL,
    [created_by]        VARCHAR (50)  NOT NULL,
    [updated_date]      DATETIME      CONSTRAINT [DF_NETS_Roles_updated_date] DEFAULT (getdate()) NOT NULL,
    [updated_by]        VARCHAR (50)  NOT NULL,
    [menu_01]           BIT           NOT NULL,
    [menu_02]           BIT           NOT NULL,
    [menu_03]           BIT           NOT NULL,
    [menu_04]           BIT           NOT NULL,
    [menu_05]           BIT           NOT NULL,
    [menu_06]           BIT           NOT NULL,
    [menu_07]           BIT           NOT NULL,
    [menu_08]           BIT           NOT NULL,
    [menu_09]           BIT           NOT NULL,
    [menu_10]           BIT           NOT NULL,
    [func_01]           BIT           NOT NULL,
    [func_02]           BIT           NOT NULL,
    [func_03]           BIT           NOT NULL,
    [func_04]           BIT           NOT NULL,
    [func_05]           BIT           NOT NULL,
    [func_06]           BIT           NOT NULL,
    [func_07]           BIT           NOT NULL,
    [func_08]           BIT           NOT NULL,
    [func_09]           BIT           NOT NULL,
    [func_10]           BIT           NOT NULL,
    CONSTRAINT [PK_NETS_Roles] PRIMARY KEY CLUSTERED ([role_id] ASC)
);

-- Data_Groups
CREATE TABLE [dbo].[NETS_Data_Groups] (
    [group_id]        VARCHAR (50)  NOT NULL,
    [group_title]     VARCHAR (100) NOT NULL,
    [parent_group_id] VARCHAR (50)  NULL,
    [active]          BIT           NOT NULL,
    [team_id]         VARCHAR (20)  NOT NULL,
    [product_id]      VARCHAR (20)  NOT NULL,
    [created_date]    DATETIME      CONSTRAINT [DF_NETS_Data_Groups_created_date] DEFAULT (getdate()) NOT NULL,
    [created_by]      VARCHAR (50)  NOT NULL,
    [updated_date]    DATETIME      CONSTRAINT [DF_NETS_Data_Groups_updated_date] DEFAULT (getdate()) NOT NULL,
    [updated_by]      VARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_NETS_Data_Groups] PRIMARY KEY CLUSTERED ([group_id] ASC)
);

-- Tax_Terms
CREATE TABLE [dbo].[NETS_Tax_Terms] (
    [tax_id]          VARCHAR (50) NOT NULL,
    [tax_rate]        FLOAT (53)   NOT NULL,
    [effective_date]  DATE         NOT NULL,
    [tax_range_begin] INT          NOT NULL,
    [tax_range_end]   INT          NOT NULL,
    [created_date]    DATETIME     NOT NULL,
    [created_by]      VARCHAR (50) NOT NULL,
    [updated_date]    DATETIME     NOT NULL,
    [updated_by]      VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_NETS_Tax_Terms] PRIMARY KEY CLUSTERED ([tax_id] ASC)
);

-- Batch_Calendars
CREATE TABLE [dbo].[NETS_Batch_Calendars] (
    [calandar_year]     INT          NOT NULL,
    [calandar_month]    INT          NOT NULL,
    [calandar_period]   VARCHAR (6)  NOT NULL,
    [calandar_run_date] DATE         NOT NULL,
    [created_date]      DATETIME     CONSTRAINT [DF_NETS_Batch_Calendars_created_date] DEFAULT (getdate()) NOT NULL,
    [created_by]        VARCHAR (50) NOT NULL,
    [updated_date]      DATETIME     CONSTRAINT [DF_NETS_Batch_Calendars_updated_date] DEFAULT (getdate()) NOT NULL,
    [updated_by]        VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_NETS_Batch_Calendars] PRIMARY KEY CLUSTERED ([calandar_year] ASC)
);

