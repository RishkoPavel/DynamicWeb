GO
/****** Object:  Table [dbo].[AccessElementPermission]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessElementPermission](
	[AccessElementPermissionId] [int] IDENTITY(1,1) NOT NULL,
	[AccessElementPermissionTypeId] [int] NULL,
	[AccessElementPermissionUserId] [int] NULL,
	[AccessElementPermissionElementId] [int] NULL,
	[AccessElementPermissionElementTextId] [nvarchar](255) NULL,
	[AccessElementPermissionTypePermission] [nvarchar](50) NULL,
	[AccessElementPermissionWriteTypePermission] [nvarchar](50) NULL,
 CONSTRAINT [DW_PK_AccessElementPermission] PRIMARY KEY CLUSTERED 
(
	[AccessElementPermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AccessElementType]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessElementType](
	[AccessElementTypeId] [int] IDENTITY(1,1) NOT NULL,
	[AccessElementType] [nvarchar](255) NULL,
 CONSTRAINT [DW_PK_AccessElementType] PRIMARY KEY CLUSTERED 
(
	[AccessElementTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AccessUser]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessUser](
	[AccessUserId] [int] IDENTITY(1,1) NOT NULL,
	[AccessUserParentId] [int] NULL CONSTRAINT [DW_DF_AccessUser_ParentId]  DEFAULT ((0)),
	[AccessUserUserName] [nvarchar](255) NULL,
	[AccessUserPassword] [nvarchar](255) NULL,
	[AccessUserName] [nvarchar](255) NULL,
	[AccessUserDepartment] [nvarchar](255) NULL,
	[AccessUserEmail] [nvarchar](255) NULL,
	[AccessUserPhone] [nvarchar](255) NULL,
	[AccessUserFax] [nvarchar](255) NULL,
	[AccessUserGroups] [nvarchar](255) NULL,
	[AccessUserType] [int] NULL CONSTRAINT [DW_DF_AccessUser_Type]  DEFAULT ((0)),
	[AccessUserValidFrom] [datetime] NULL CONSTRAINT [DW_DF_AccessUser_ValidFrom]  DEFAULT (getdate()),
	[AccessUserValidTo] [datetime] NULL CONSTRAINT [DW_DF_AccessUser_ValidTo]  DEFAULT ('2999-12-31T00:00:00'),
	[AccessUserPages] [nvarchar](255) NULL,
	[AccessUserAreas] [nvarchar](255) NULL,
	[AccessUserSettings] [ntext] NULL,
	[AccessUserModules] [ntext] NULL,
	[AccessUserInformation] [ntext] NULL,
	[AccessUserMyFolder] [nvarchar](255) NULL,
	[AccessUserAddress] [nvarchar](255) NULL,
	[AccessUserAddress2] [nvarchar](255) NULL,
	[AccessUserZip] [nvarchar](255) NULL,
	[AccessUserCity] [nvarchar](255) NULL,
	[AccessUserCountry] [nvarchar](255) NULL,
	[AccessUserJobTitle] [nvarchar](255) NULL,
	[AccessUserCompany] [nvarchar](255) NULL,
	[AccessUserPhonePriv] [nvarchar](255) NULL,
	[AccessUserMobile] [nvarchar](255) NULL,
	[AccessUserCustomerNumber] [nvarchar](255) NULL,
	[AccessUserRedirectOnLogin] [nvarchar](255) NULL,
	[AccessUserCurrencyCharacter] [nvarchar](3) NULL,
	[AccessUserRead] [bit] NOT NULL CONSTRAINT [DW_DF_AccessUser_Read]  DEFAULT ((0)),
	[AccessUserAdsiMap] [nvarchar](255) NULL,
	[AccessUserPasswordDate] [datetime] NULL,
	[AccessUserLastName] [nvarchar](255) NULL,
	[AccessUserMiddleName] [nvarchar](255) NULL,
	[AccessUserActive] [bit] NOT NULL CONSTRAINT [DW_DF_AccessUser_Active]  DEFAULT ((1)),
	[AccessUserImage] [nvarchar](255) NULL,
	[AccessUserBusiness] [nvarchar](255) NULL,
	[AccessUserInitials] [nvarchar](255) NULL,
	[AccessUserComment] [ntext] NULL,
	[AccessUserLevel] [int] NULL CONSTRAINT [DW_DF_AccessUser_Level]  DEFAULT ((0)),
	[AccessUserInheritAddress] [bit] NOT NULL CONSTRAINT [DW_DF_AccessUser_InheritAddress]  DEFAULT ((1)),
	[AccessUserWeb] [nvarchar](255) NULL,
	[AccessUserSort] [int] NULL CONSTRAINT [DW_DF_AccessUser_Sort]  DEFAULT ((0)),
	[AccessUserStatus] [int] NULL CONSTRAINT [DW_DF_AccessUser_Status]  DEFAULT ((0)),
	[AccessUserStatusBegin] [datetime] NULL,
	[AccessUserStatusEnd] [datetime] NULL,
	[AccessUserStatusComment] [nvarchar](255) NULL,
	[AccessUserEditorConfigurationId] [int] NULL,
	[AccessUserHideStat] [bit] NOT NULL CONSTRAINT [DW_DF_AccessUser_HideState]  DEFAULT ((0)),
	[AccessUserCartId] [nvarchar](50) NULL,
	[AccessUserAllowBackend] [bit] NULL,
	[AccessUserApprovalKey] [nvarchar](50) NULL,
	[AccessUserShopId] [nvarchar](50) NULL,
	[AccessUserExternalId] [nvarchar](250) NULL,
	[AccessUserSortXML] [nvarchar](max) NULL,
	[AccessUserGeoLocationLat] [float] NULL,
	[AccessUserGeoLocationLng] [float] NULL,
	[AccessUserGeoLocationIsCustom] [bit] NULL,
	[AccessUserGeoLocationImage] [nvarchar](255) NULL,
	[AccessUserGeoLocationHash] [nvarchar](32) NULL,
	[AccessUserNewsletterAllowed] [bit] NOT NULL CONSTRAINT [DW_DF_AccessUserNewsletterAllowed]  DEFAULT ((0)),
	[AccessUserCreatedOn] [datetime] NULL,
	[AccessUserUpdatedOn] [datetime] NULL,
	[AccessUserCreatedBy] [int] NULL,
	[AccessUserUpdatedBy] [int] NULL,
	[AccessUserEmailPermissionGivenOn] [datetime] NULL,
	[AccessUserEmailPermissionUpdatedOn] [datetime] NULL,
	[AccessUserState] [nvarchar](255) NULL,
	[AccessUserVatRegNumber] [nvarchar](20) NULL,
	[AccessUserDisableLivePrices] [bit] NULL,
	[AccessUserLastLoginOn] [datetime] NULL,
	[AccessUserAdministratorInGroups] [nvarchar](max) NULL,
	[AccessUserTitle] [nvarchar](255) NULL,
	[AccessUserFirstName] [nvarchar](255) NULL,
	[AccessUserHouseNumber] [nvarchar](255) NULL,
	[AccessUserLastOrderDate] [datetime] NULL,
	[AccessUserPasswordRecoveryToken] [nvarchar](128) NULL,
	[AccessUserPasswordRecoveryTokenExpirationTime] [datetime] NULL,
	[AccessUserGroupSmartSearch] [nvarchar](50) NULL,
	[AccessUserGroupSmartSearchLastCalculatedTime] [datetime] NULL,
	[AccessUserExported] [datetime] NULL,
	[AccessUserItemType] [nvarchar](255) NULL,
	[AccessUserItemId] [nvarchar](255) NULL,
	[AccessUserDefaultUserItemType] [nvarchar](255) NULL,
	[AccessUserStockLocationID] [bigint] NULL,
	[AccessUserCountryCode] [nvarchar](2) NULL,
	[AccessUserPointBalance] [float] NULL,
	[AccessUserAddressTitle] [nvarchar](255) NULL,
	[AccessUserUserAndGroupType] [nvarchar](255) NULL,
	[AccessUserInformationSent] [datetime] NULL,
	[AccessUserReverseChargeForVat] [BIT] NOT NULL CONSTRAINT [DW_DF_AccessUser_ReverseChargeForVat]  DEFAULT ((0)),
	[AccessUserProfileCreatedDate] [datetime] NULL,
 CONSTRAINT [DW_PK_AccessUser] PRIMARY KEY CLUSTERED 
(
	[AccessUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AccessUserAddress]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessUserAddress](
	[AccessUserAddressId] [int] IDENTITY(1,1) NOT NULL,
	[AccessUserAddressUserId] [int] NOT NULL,
	[AccessUserAddressType] [bit] NOT NULL,
	[AccessUserAddressCallName] [nvarchar](255) NULL,
	[AccessUserAddressCompany] [nvarchar](255) NULL,
	[AccessUserAddressName] [nvarchar](255) NULL,
	[AccessUserAddressAddress] [nvarchar](255) NULL,
	[AccessUserAddressAddress2] [nvarchar](255) NULL,
	[AccessUserAddressZip] [nvarchar](255) NULL,
	[AccessUserAddressCity] [nvarchar](255) NULL,
	[AccessUserAddressCountry] [nvarchar](255) NULL,
	[AccessUserAddressPhone] [nvarchar](255) NULL,
	[AccessUserAddressCell] [nvarchar](20) NULL,
	[AccessUserAddressFax] [nvarchar](255) NULL,
	[AccessUserAddressEmail] [nvarchar](255) NULL,
	[AccessUserAddressCustomerNumber] [nvarchar](255) NULL,
	[AccessUserAddressUId] [nvarchar](25) NULL,
	[AccessUserAddressState] [nvarchar](255) NULL,
	[AccessUserAddressIsDefault] [bit] NULL,
	[AccessUserAddressExported] [datetime] NULL,
	[AccessUserAddressPhoneBusiness] [nvarchar](255) NULL,
	[AccessUserAddressDefaultAddressCustomFields] [bit] NOT NULL,
 CONSTRAINT [DW_PK_AccessUserAddress] PRIMARY KEY CLUSTERED 
(
	[AccessUserAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AccessUserCard]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessUserCard](
	[AccessUserCardId] [int] IDENTITY(1,1) NOT NULL,
	[AccessUserCardUserID] [int] NOT NULL,
	[AccessUserCardName] [nvarchar](50) NOT NULL,
	[AccessUserCardType] [nvarchar](20) NOT NULL,
	[AccessUserCardIdentifier] [nvarchar](20) NOT NULL,
	[AccessUserCardToken] [nvarchar](max) NOT NULL,
	[AccessUserCardPaymentID] [nvarchar](50) NOT NULL,
	[AccessUserCardLanguageID] [nvarchar](50) NOT NULL,
	[AccessUserCardUsedDate] [datetime] NOT NULL,
	[AccessUserCardCheckSum] [nvarchar](128) NULL,
	[AccessUserCardIsDefault] [bit] NOT NULL,
 CONSTRAINT [DW_PK_AccessUserCard] PRIMARY KEY CLUSTERED 
(
	[AccessUserCardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AccessUserExternalLogin]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessUserExternalLogin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProviderId] [int] NOT NULL,
	[ProviderKey] [nvarchar](255) NOT NULL,
	[UserId] [int] NOT NULL,
	[ProviderUserName] [nvarchar](255) NULL,
 CONSTRAINT [DW_PK_AccessUserExternalLogin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AccessUserPassword]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessUserPassword](
	[AccessUserPasswordId] [int] IDENTITY(1,1) NOT NULL,
	[AccessUserPasswordPassword] [nvarchar](255) NULL,
	[AccessUserPasswordCreated] [datetime] NULL,
	[AccessUserPasswordUserId] [int] NULL,
 CONSTRAINT [DW_PK_AccessUserPassword] PRIMARY KEY CLUSTERED 
(
	[AccessUserPasswordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AccessUserSecondaryRelation]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessUserSecondaryRelation](
	[AccessUserSecondaryRelationUserId] [int] NOT NULL,
	[AccessUserSecondaryRelationSecondaryUserId] [int] NOT NULL,
	[AccessUserSecondaryRelationAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AccessWorkflow]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessWorkflow](
	[AccessWorkflowId] [int] IDENTITY(1,1) NOT NULL,
	[AccessWorkflowTitle] [nvarchar](255) NULL,
	[AccessWorkflowCreatedDate] [datetime] NULL,
	[AccessWorkflowNotifyTemplate] [nvarchar](255) NULL,
	[AccessWorkflowRequiredTemplate] [nvarchar](255) NULL,
 CONSTRAINT [DW_PK_AccessWorkflow] PRIMARY KEY CLUSTERED 
(
	[AccessWorkflowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AccessWorkflowUser]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessWorkflowUser](
	[AccessWorkflowUserId] [int] IDENTITY(1,1) NOT NULL,
	[AccessWorkflowUserUserId] [int] NULL,
	[AccessWorkflowUserWorkflowId] [int] NULL,
	[AccessWorkflowUserRole] [int] NULL,
	[AccessWorkflowUserPriority] [int] NULL,
	[AccessWorkflowUserNotify] [bit] NOT NULL,
	[AccessWorkflowUserRequired] [bit] NOT NULL,
 CONSTRAINT [DW_PK_AccessWorkflowUser] PRIMARY KEY CLUSTERED 
(
	[AccessWorkflowUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ActionLog]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActionLog](
	[LogId] [int] IDENTITY(1,1) NOT NULL,
	[LogAction] [nvarchar](50) NULL,
	[LogEntityType] [nvarchar](50) NULL,
	[LogEntity] [nvarchar](250) NULL,
	[LogEntityId] [nvarchar](50) NULL,
	[LogLocationType] [nvarchar](50) NULL,
	[LogLocation] [nvarchar](250) NULL,
	[LogLocationId] [nvarchar](50) NULL,
	[LogDestinationType] [nvarchar](50) NULL,
	[LogDestination] [nvarchar](250) NULL,
	[LogDestinationId] [nvarchar](50) NULL,
	[LogDate] [datetime] NULL,
	[LogUserName] [nvarchar](250) NULL,
 CONSTRAINT [DW_PK_ActionLog] PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Area]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Area](
	[AreaId] [int] IDENTITY(1,1) NOT NULL,
	[AreaStyleId] [int] NULL CONSTRAINT [DW_DF_Area_AreaStyleId]  DEFAULT ((1)),
	[AreaName] [nvarchar](255) NULL,
	[AreaDomain] [nvarchar](255) NULL,
	[AreaEncoding] [nvarchar](255) NULL,
	[AreaPermission] [nvarchar](255) NULL,
	[AreaPermissionTemplate] [nvarchar](50) NULL,
	[AreaTitle] [nvarchar](255) NULL,
	[AreaKeywords] [ntext] NULL,
	[AreaDescription] [ntext] NULL,
	[AreaFrontpage] [nvarchar](255) NULL,
	[AreaDateformat] [nvarchar](50) NULL,
	[AreaCodepage] [int] NULL CONSTRAINT [DW_DF_Area_Codepage]  DEFAULT ((28591)),
	[AreaLanguage] [int] NULL CONSTRAINT [DW_DF_Area_Language]  DEFAULT ((1)),
	[StyleId] [int] NULL CONSTRAINT [DW_DF_Area_StyleId]  DEFAULT ((1)),
	[AreaMasterTemplate] [nvarchar](100) NULL,
	[AreaHtmlType] [nvarchar](10) NULL,
	[AreaCulture] [nvarchar](50) NULL,
	[AreaApprovalType] [int] NULL,
	[AreaEcomLanguageId] [nvarchar](50) NULL,
	[AreaEcomCurrencyId] [nvarchar](3) NULL,
	[AreaActive] [bit] NOT NULL CONSTRAINT [DW_DF_Area_Active]  DEFAULT ((0)),
	[AreaSort] [int] NULL,
	[AreaMasterAreaId] [int] NULL CONSTRAINT [DW_DF_Area_MasterAreaId]  DEFAULT ((0)),
	[AreaRobotsTxt] [nvarchar](max) NULL,
	[AreaRobotsTxtIncludeSitemap] [bit] NOT NULL CONSTRAINT [DW_DF_Area_RobotsTxtIncludeSitemap]  DEFAULT ((0)),
	[AreaDomainLock] [nvarchar](255) NULL,
	[AreaUserManagementPermissions] [nvarchar](max) NULL,
	[AreaUrlName] [nvarchar](50) NULL,
	[AreaUpdatedDate] [datetime] NULL,
	[AreaCreatedDate] [datetime] NULL,
	[AreaCopyOf] [int] NULL,
	[AreaLayout] [nvarchar](255) NULL,
	[AreaNotFound] [nvarchar](255) NULL,
	[AreaRedirectFirstPage] [int] NULL,
	[AreaLayoutPhone] [nvarchar](255) NULL,
	[AreaLayoutTablet] [nvarchar](255) NULL,
	[AreaLockPagesToDomain] [bit] NULL,
	[AreaEcomCountryCode] [nchar](2) NULL,
	[AreaEcomShopId] [nvarchar](50) NULL,
	[AreaUrlIgnoreForChildren] [bit] NULL,
	[AreaItemType] [nvarchar](255) NULL,
	[AreaItemId] [nvarchar](255) NULL,
	[AreaCookieWarningTemplate] [nvarchar](255) NULL,
	[AreaCookieCustomNotifications] [bit] NOT NULL CONSTRAINT [DW_DF_Area_CookieCustomNotifications]  DEFAULT ((0)),
	[AreaItemTypePageProperty] [nvarchar](255) NULL,
	[AreaIncludeProductsInSitemap] [bit] NOT NULL CONSTRAINT [DW_DF_Area_IncludeProductsInSitemap]  DEFAULT ((0)),
	[AreaSSLMode] [int] NULL,
	[AreaEcomPricesWithVat] [nvarchar](10) NULL,
	[AreaIsCdnActive] [bit] NULL,
	[AreaCdnHost] [nvarchar](255) NULL,
	[AreaCdnImageHost] [nvarchar](255) NULL,
	[AreaStockLocationID] [bigint] NULL,
	[AreaReverseChargeForVat] [bit] NULL,
	[AreaUniqueId] UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),
 CONSTRAINT [DW_PK_Area] PRIMARY KEY CLUSTERED 
(
	[AreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AreaEncoding]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AreaEncoding](
	[AreaEncodingId] [int] IDENTITY(1,1) NOT NULL,
	[AreaEncodingCharSet] [nvarchar](50) NOT NULL,
	[AreaEncodingName] [nvarchar](50) NULL,
	[AreaEncodingCodepage] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Campaign]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campaign](
	[CampaignId] [int] IDENTITY(1,1) NOT NULL,
	[CampaignCampaignDefinitionId] [int] NOT NULL,
	[CampaignPreviousActionTime] [datetime] NULL,
	[CampaignNextActionTime] [datetime] NULL,
	[CampaignNextActionIndex] [int] NOT NULL,
	[CampaignState] [int] NOT NULL,
 CONSTRAINT [DW_PK_Campaign] PRIMARY KEY CLUSTERED 
(
	[CampaignId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CampaignAction]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CampaignAction](
	[CampaignActionId] [int] IDENTITY(1,1) NOT NULL,
	[CampaignActionCampaignDefinitionId] [int] NOT NULL,
	[CampaignActionType] [nvarchar](255) NOT NULL,
	[CampaignActionDelayInSeconds] [float] NULL,
	[CampaignActionParameters] [nvarchar](max) NULL,
	[CampaignActionOrder] [int] NOT NULL,
 CONSTRAINT [DW_PK_CampaignAction] PRIMARY KEY CLUSTERED 
(
	[CampaignActionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CampaignActionExecution]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CampaignActionExecution](
	[CampaignActionExecutionId] [int] IDENTITY(1,1) NOT NULL,
	[CampaignActionExecutionActionId] [int] NOT NULL,
	[CampaignActionExecutionCampaignId] [int] NOT NULL,
	[CampaignActionExecutionTime] [datetime] NOT NULL,
	[CampaignActionExecutionSucceeded] [bit] NOT NULL,
	[CampaignActionExecutionErrorMessage] [nvarchar](max) NULL,
	[CampaignActionExecutionErrorStackTrace] [nvarchar](max) NULL,
 CONSTRAINT [DW_PK_CampaignActionExecution] PRIMARY KEY CLUSTERED 
(
	[CampaignActionExecutionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CampaignContext]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CampaignContext](
	[CampaignContextCampaignId] [int] NOT NULL,
	[CampaignContextKey] [nvarchar](255) NOT NULL,
	[CampaignContextValue] [nvarchar](max) NULL,
	[CampaignContextAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CampaignDefinition]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CampaignDefinition](
	[CampaignDefinitionId] [int] IDENTITY(1,1) NOT NULL,
	[CampaignDefinitionName] [nvarchar](255) NOT NULL,
	[CampaignDefinitionFolderId] [int] NULL,
	[CampaignDefinitionTriggerType] [nvarchar](255) NULL,
 CONSTRAINT [DW_PK_CampaignDefinition] PRIMARY KEY CLUSTERED 
(
	[CampaignDefinitionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CampaignFolder]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CampaignFolder](
	[CampaignFolderId] [int] IDENTITY(1,1) NOT NULL,
	[CampaignFolderParentId] [int] NULL,
	[CampaignFolderName] [nvarchar](255) NULL,
 CONSTRAINT [DW_PK_CampaignFolder] PRIMARY KEY CLUSTERED 
(
	[CampaignFolderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClusteringInstance]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClusteringInstance](
	[InstanceId] [int] IDENTITY(1,1) NOT NULL,
	[InstanceName] [nvarchar](255) NULL,
	[InstanceMachineName] [nvarchar](255) NULL,
	[InstanceIP] [nvarchar](15) NULL,
	[InstanceStartup] [datetime] NULL,
	[InstanceUpdateDate] [datetime] NULL,
	[InstanceEnabled] [bit] NOT NULL,
	[InstanceHostName] [nvarchar](255) NULL,
 CONSTRAINT [ClusteringInstance_PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[InstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comment]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[CommentName] [nvarchar](255) NULL,
	[CommentEmail] [nvarchar](255) NULL,
	[CommentWebsite] [nvarchar](255) NULL,
	[CommentRating] [int] NULL,
	[CommentText] [nvarchar](max) NULL,
	[CommentItemType] [nvarchar](25) NOT NULL,
	[CommentItemId] [nvarchar](35) NOT NULL,
	[CommentLangId] [nvarchar](25) NULL,
	[CommentCreatedDate] [datetime] NOT NULL,
	[CommentEditedDate] [datetime] NULL,
	[CommentCreatedBy] [int] NOT NULL,
	[CommentEditedBy] [int] NULL,
	[CommentIp] [nvarchar](16) NULL,
	[CommentLikes] [int] NULL,
	[CommentNolikes] [int] NULL,
	[CommentParentId] [int] NULL,
	[CommentActive] [bit] NULL,
 CONSTRAINT [DW_PK_Comment] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomField]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomField](
	[CustomFieldSystemName] [nvarchar](50) NOT NULL,
	[CustomFieldTableName] [nvarchar](255) NOT NULL,
	[CustomFieldType] [nvarchar](50) NOT NULL,
	[CustomFieldName] [nvarchar](255) NOT NULL,
	[CustomFieldOptions] [nvarchar](max) NULL,
	[CustomFieldSort] [int] NULL,
	[CustomFieldAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DMConnectionSetting]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DMConnectionSetting](
	[ConnectionSettingId] [int] IDENTITY(1,1) NOT NULL,
	[ConnectionSettingName] [nvarchar](255) NULL,
	[ConnectionSettingDBName] [nvarchar](255) NULL,
	[ConnectionSettingServer] [nvarchar](255) NULL,
	[ConnectionSettingUserId] [nvarchar](255) NULL,
	[ConnectionSettingPassword] [nvarchar](255) NULL,
	[ConnectionSettingLocalPath] [nvarchar](255) NULL,
	[ConnectionSettingTrusted] [bit] NULL,
	[ConnectionSettingType] [int] NULL,
 CONSTRAINT [DW_PK_DMConnectionSetting] PRIMARY KEY CLUSTERED 
(
	[ConnectionSettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DMFormField]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DMFormField](
	[FormFieldId] [int] IDENTITY(1,1) NOT NULL,
	[FormFieldFormId] [int] NULL,
	[FormFieldName] [nvarchar](255) NULL,
	[FormFieldSystemName] [nvarchar](255) NULL,
	[FormFieldLabel] [nvarchar](255) NULL,
	[FormFieldType] [int] NULL,
	[FormFieldWidth] [int] NULL,
	[FormFieldHeight] [int] NULL,
	[FormFieldMaxLength] [int] NULL,
	[FormFieldActive] [bit] NULL,
	[FormFieldSort] [int] NULL,
	[FormFieldRequired] [bit] NULL,
	[FormFieldDefaultValue] [nvarchar](255) NULL,
	[FormFieldDataTypeCode] [int] NULL,
	[FormFieldDescription] [nvarchar](255) NULL,
	[FormFieldCheckedStatus] [bit] NULL,
	[FormFieldValidationValue] [nvarchar](max) NULL,
	[FormFieldOptionSourceType] [int] NULL,
	[FormFieldOptionDataListId] [int] NULL,
	[FormFieldOptionKeyField] [nvarchar](255) NULL,
	[FormFieldOptionValueField] [nvarchar](255) NULL,
 CONSTRAINT [DW_PK_DMFormField] PRIMARY KEY CLUSTERED 
(
	[FormFieldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DMFormFieldOption]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DMFormFieldOption](
	[FormFieldOptionId] [int] IDENTITY(1,1) NOT NULL,
	[FormFieldOptionFieldId] [int] NULL,
	[FormFieldOptionText] [nvarchar](255) NULL,
	[FormFieldOptionValue] [nvarchar](255) NULL,
	[FormFieldOptionDefault] [bit] NULL,
	[FormFieldOptionActive] [bit] NULL,
	[FormFieldOptionSort] [int] NULL,
 CONSTRAINT [DW_PK_DMFormFieldOption] PRIMARY KEY CLUSTERED 
(
	[FormFieldOptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DMFormSetting]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DMFormSetting](
	[FormSettingId] [int] IDENTITY(1,1) NOT NULL,
	[FormSettingName] [nvarchar](255) NULL,
	[FormSettingType] [int] NULL,
	[FormSettingViewId] [int] NULL,
	[FormSettingTableName] [nvarchar](max) NULL,
	[FormSettingConnection] [nvarchar](max) NULL,
 CONSTRAINT [DW_PK_DMFormSetting] PRIMARY KEY CLUSTERED 
(
	[FormSettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DMPublishing]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DMPublishing](
	[PublishingId] [int] IDENTITY(1,1) NOT NULL,
	[PublishingName] [nvarchar](255) NULL,
	[PublishingType] [int] NULL,
	[PublishingListTemplate] [nvarchar](255) NULL,
	[PublishingItemTemplate] [nvarchar](255) NULL,
	[PublishingXsltFile] [nvarchar](255) NULL,
	[PublishingViewId] [int] NULL,
	[PublishingListFields] [nvarchar](max) NULL,
	[PublishingItemFields] [nvarchar](max) NULL,
	[PublishingListLayout] [nvarchar](255) NULL,
	[PublishingItemLayout] [nvarchar](255) NULL,
	[PublishingShowDetails] [bit] NULL,
	[PublishingShowHeadings] [bit] NULL,
	[PublishingSortable] [bit] NULL,
	[PublishingListStyle] [nvarchar](max) NULL,
	[PublishingItemStyle] [nvarchar](max) NULL,
 CONSTRAINT [DW_PK_DMPublishing] PRIMARY KEY CLUSTERED 
(
	[PublishingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DMViewSetting]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DMViewSetting](
	[ViewSettingId] [int] IDENTITY(1,1) NOT NULL,
	[ViewSettingName] [nvarchar](255) NULL,
	[ViewSettingTableName] [nvarchar](255) NULL,
	[ViewSettingConnectionId] [int] NULL,
	[ViewSettingConnectionDBName] [nvarchar](255) NULL,
	[ViewSettingSQLStatement] [nvarchar](max) NULL,
	[ViewSettingDesignerConfiguration] [nvarchar](max) NULL,
	[ViewSettingVariables] [nvarchar](max) NULL,
 CONSTRAINT [DW_PK_DMViewSetting] PRIMARY KEY CLUSTERED 
(
	[ViewSettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ecom7Tree]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ecom7Tree](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[Text] [nvarchar](50) NOT NULL,
	[Alt] [smallint] NULL,
	[TreeIcon] [nvarchar](255) NULL,
	[TreeIconOpen] [nvarchar](255) NULL,
	[TreeUrl] [nvarchar](255) NULL,
	[TreeChildPopulate] [nvarchar](50) NULL,
	[TreeSort] [smallint] NULL,
	[TreeHasAccessModuleSystemName] [nvarchar](255) NULL,
 CONSTRAINT [DW_PK_Ecom7Tree] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomAddressValidatorSettings]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomAddressValidatorSettings](
	[AddressValidatorSettingId] [int] IDENTITY(1,1) NOT NULL,
	[AddressValidatorName] [nvarchar](255) NULL,
	[AddressValidatorActive] [bit] NOT NULL,
	[AddressValidatorProviderSettings] [nvarchar](max) NULL,
 CONSTRAINT [DW_PK_EcomAddressValidatorSettings] PRIMARY KEY CLUSTERED 
(
	[AddressValidatorSettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomAssortmentGroupRelations]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomAssortmentGroupRelations](
	[AssortmentGroupRelationAssortmentID] [nvarchar](50) NOT NULL,
	[AssortmentGroupRelationGroupID] [nvarchar](255) NOT NULL,
	[AssortmentGroupRelationAutoID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomAssortmentItems]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomAssortmentItems](
	[AssortmentItemAssortmentID] [nvarchar](50) NOT NULL,
	[AssortmentItemRelationAutoID] [int] NOT NULL,
	[AssortmentItemRelationType] [nvarchar](50) NOT NULL,
	[AssortmentItemLanguageID] [nvarchar](50) NOT NULL,
	[AssortmentItemProductID] [nvarchar](30) NOT NULL,
	[AssortmentItemProductVariantID] [nvarchar](255) NOT NULL,
	[AssortmentItemAutoID] [bigint] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomAssortmentPermissions]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomAssortmentPermissions](
	[AssortmentPermissionAssortmentID] [nvarchar](50) NOT NULL,
	[AssortmentPermissionAccessUserID] [int] NOT NULL,
	[AssortmentPermissionAutoID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomAssortmentProductRelations]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomAssortmentProductRelations](
	[AssortmentProductRelationAssortmentID] [nvarchar](50) NOT NULL,
	[AssortmentProductRelationProductID] [nvarchar](30) NOT NULL,
	[AssortmentProductRelationProductVariantID] [nvarchar](255) NOT NULL,
	[AssortmentProductRelationAutoID] [int] IDENTITY(1,1) NOT NULL,
	[AssortmentProductRelationProductNumber] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomAssortments]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomAssortments](
	[AssortmentID] [nvarchar](50) NOT NULL,
	[AssortmentLanguageID] [nvarchar](50) NOT NULL,
	[AssortmentName] [nvarchar](255) NULL,
	[AssortmentNumber] [nvarchar](255) NULL,
	[AssortmentPeriodID] [nvarchar](50) NULL,
	[AssortmentLastBuildDate] [datetime] NULL,
	[AssortmentRebuildRequired] [bit] NOT NULL,
	[AssortmentAutoID] [int] IDENTITY(1,1) NOT NULL,
	[AssortmentActive] [bit] NOT NULL,
	[AssortmentIncludeSubgroups] [bit] NOT NULL,
	[AssortmentAllowAnonymousUsers] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomAssortmentShopRelations]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomAssortmentShopRelations](
	[AssortmentShopRelationAssortmentID] [nvarchar](50) NOT NULL,
	[AssortmentShopRelationShopID] [nvarchar](255) NOT NULL,
	[AssortmentShopRelationAutoID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomCalculatedField]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomCalculatedField](
	[CalculatedFieldId] [int] IDENTITY(1,1) NOT NULL,
	[CalculatedFieldName] [nvarchar](255) NOT NULL,
	[CalculatedFieldType] [nvarchar](255) NOT NULL,
	[CalculatedFieldTypeConfiguration] [nvarchar](max) NOT NULL,
	[CalculatedFieldUpdateInterval] [int] NOT NULL,
	[CalculatedFieldUpdateStartTime] [datetime] NOT NULL,
	[CalculatedFieldLastUpdateTime] [datetime] NULL,
 CONSTRAINT [DW_PK_EcomCalculatedField] PRIMARY KEY CLUSTERED 
(
	[CalculatedFieldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomCalculatedProductFieldValue]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomCalculatedProductFieldValue](
	[CalculatedProductFieldValueFieldId] [int] NOT NULL,
	[CalculatedProductFieldValueProductId] [nvarchar](30) NOT NULL,
	[CalculatedProductFieldValueProductVariantId] [nvarchar](255) NOT NULL,
	[CalculatedProductFieldValueProductLanguageId] [nvarchar](50) NOT NULL,
	[CalculatedProductFieldValueValue] [float] NOT NULL,
	[CalculatedProductFieldValueAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomCountries]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomCountries](
	[CountryCode2] [nchar](2) NOT NULL,
	[CountryCode3] [nvarchar](3) NULL,
	[CountryCurrencyCode] [nvarchar](3) NULL,
	[CountryNumber] [nvarchar](4) NULL,
	[CountryVAT] [float] NULL,
	[CountryCultureInfo] [nvarchar](10) NULL,
	[CountryRegionCode] [nchar](3) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomCountryText]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomCountryText](
	[CountryTextCode2] [nchar](2) NOT NULL,
	[CountryTextLanguageId] [nvarchar](50) NOT NULL,
	[CountryTextName] [nvarchar](255) NULL,
	[CountryTextRegionCode] [nchar](3) NOT NULL,
	[CountryTextAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomCurrencies]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomCurrencies](
	[CurrencyCode] [nvarchar](3) NOT NULL,
	[CurrencyLanguageId] [nvarchar](50) NOT NULL,
	[CurrencySymbol] [nvarchar](5) NULL,
	[CurrencyName] [nvarchar](50) NULL,
	[CurrencyRate] [float] NULL,
	[CurrencyIsDefault] [bit] NULL,
	[CurrencyCultureInfo] [nvarchar](50) NULL,
	[CurrencyPayGatewayCode] [smallint] NULL,
	[CurrencyRoundingId] [nvarchar](50) NULL,
	[CurrencySymbolPlace] [int] NULL,
	[CurrencyAutoId] [int] IDENTITY(1,1) NOT NULL,
	[CurrencyPositivePattern] [int] NULL,
	[CurrencyNegativePattern] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomCustomerFavoriteLists]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomCustomerFavoriteLists](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccessUserId] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[IsPublished] [bit] NOT NULL,
	[PublishedToDate] [datetime] NULL,
	[Type] [nvarchar](255) NULL,
	[IsDefault] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[PublishedId] [nvarchar](255) NULL,
 CONSTRAINT [DW_PK_EcomCustomerFavoriteLists] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomCustomerFavoriteProducts]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomCustomerFavoriteProducts](
	[FavoriteListId] [int] NOT NULL,
	[ProductId] [nvarchar](30) NOT NULL,
	[ProductLanguageId] [nvarchar](50) NOT NULL,
	[ProductVariantId] [nvarchar](255) NOT NULL,
	[Note] [ntext] NULL,
	[ProductReferenceUrl] [ntext] NULL,
	[CustomerFavoriteProductAutoId] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NULL,
	[SortOrder] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomCustomersSettings]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomCustomersSettings](
	[SettingId] [int] IDENTITY(1,1) NOT NULL,
	[AccessUserId] [int] NOT NULL,
	[PaymentMethodId] [nvarchar](50) NOT NULL,
	[ShippingMethodId] [nvarchar](50) NOT NULL,
	[CurrencyCode] [nvarchar](3) NOT NULL,
 CONSTRAINT [DW_PK_EcomCustomersSettings] PRIMARY KEY CLUSTERED 
(
	[SettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomDetails]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomDetails](
	[DetailId] [nvarchar](255) NOT NULL,
	[DetailProductId] [nvarchar](30) NULL,
	[DetailVariantId] [nvarchar](255) NULL,
	[DetailLanguageId] [nvarchar](50) NULL,
	[DetailType] [smallint] NULL,
	[DetailValue] [nvarchar](max) NULL,
	[DetailSortOrder] [int] NULL,
	[DetailAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomDiscount]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomDiscount](
	[DiscountId] [bigint] IDENTITY(1,1) NOT NULL,
	[DiscountType] [int] NOT NULL,
	[DiscountName] [nvarchar](255) NULL,
	[DiscountActive] [bit] NOT NULL,
	[DiscountValidFrom] [datetime] NULL,
	[DiscountValidTo] [datetime] NULL,
	[DiscountDiscountType] [int] NOT NULL,
	[DiscountAmount] [float] NULL,
	[DiscountCurrencyCode] [nvarchar](3) NULL,
	[DiscountPercentage] [float] NULL,
	[DiscountProductId] [nvarchar](30) NULL,
	[DiscountProductVariantId] [nvarchar](255) NULL,
	[DiscountGroupId] [nvarchar](50) NULL,
	[DiscountShopId] [nvarchar](255) NULL,
	[DiscountLanguageId] [nvarchar](50) NULL,
	[DiscountProductQuantification] [int] NOT NULL,
	[DiscountProductQuantity] [float] NULL,
	[DiscountAccessUserId] [int] NULL,
	[DiscountAccessUserGroupId] [int] NULL,
	[DiscountAccessUserCustomerNumber] [nvarchar](255) NULL,
	[DiscountCountryCode2] [nvarchar](2) NULL,
	[DiscountShippingId] [nvarchar](50) NULL,
	[DiscountPaymentId] [nvarchar](50) NULL,
	[DiscountOrderFieldName] [nvarchar](255) NULL,
	[DiscountOrderFieldValue] [nvarchar](max) NULL,
	[DiscountVoucherListId] [int] NULL,
	[DiscountOrderTotalPriceCondition] [int] NOT NULL,
	[DiscountOrderTotalPrice] [float] NULL,
	[DiscountApplyOnce] [bit] NULL,
	[DiscountExcludedProductsAndGroups] [nvarchar](max) NOT NULL,
	[DiscountProductsAndGroups] [nvarchar](max) NOT NULL,
	[DiscountAssignableFromProducts] [bit] NOT NULL,
	[DiscountDescription] [nvarchar](max) NULL,
	[DiscountOrderContextId] [nvarchar](50) NULL,
	[DiscountProductIdByDiscount] [nvarchar](30) NULL,
	[DiscountProductVariantIdByDiscount] [nvarchar](255) NULL,
	[DiscountLoyaltyPointsRate] [float] NULL
 CONSTRAINT [DW_PK_EcomDiscount] PRIMARY KEY CLUSTERED 
(
	[DiscountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomDiscountTranslation]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomDiscountTranslation](
	[DiscountTranslationAutoId] [bigint] IDENTITY(1,1) NOT NULL,
	[DiscountTranslationDiscountId] [bigint] NOT NULL,
	[DiscountTranslationLanguageId] [nvarchar](255) NOT NULL,
	[DiscountTranslationName] [nvarchar](255) NOT NULL,
 CONSTRAINT [DW_PK_EcomDiscountTranslation] PRIMARY KEY CLUSTERED 
(
	[DiscountTranslationDiscountId] ASC,
	[DiscountTranslationLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomFees]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomFees](
	[FeeId] [nvarchar](50) NOT NULL,
	[FeeMethod] [nvarchar](50) NULL,
	[FeeMethodId] [nvarchar](50) NULL,
	[FeeValue] [float] NULL,
	[FeeType] [smallint] NULL,
	[FeeWeightLimit] [float] NULL,
	[FeeVolume] [float] NULL,
	[FeeCountryId] [nvarchar](50) NULL,
	[FeeRegionCode] [nchar](3) NOT NULL,
	[FeeOrderPrice] [float] NOT NULL,
	[FeeAutoId] [int] IDENTITY(1,1) NOT NULL,
	[FeeName] [nvarchar](255) NULL,
	[FeeActive] [bit] NOT NULL,
	[FeeValidFrom] [datetime] NULL,
	[FeeValidTo] [datetime] NULL,
	[FeeAccessUserId] [int] NULL,
	[FeeAccessUserGroupId] [int] NULL,
	[FeeAccessUserCustomerNumber] [nvarchar](255) NULL,
	[FeeShopId] [nvarchar](255) NULL,
	[FeeProductsAndGroups] [nvarchar](max) NOT NULL,
	[FeeOrderContextId] [nvarchar](50) NULL,
	[FeeCurrencyCode] [nvarchar](3) NULL,
	[FeeZip] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomFieldOption]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomFieldOption](
	[FieldOptionId] [nvarchar](255) NOT NULL,
	[FieldOptionFieldId] [nvarchar](255) NOT NULL,
	[FieldOptionName] [nvarchar](255) NULL,
	[FieldOptionValue] [nvarchar](255) NULL,
	[FieldOptionIsDefault] [bit] NULL,
	[FieldOptionSort] [int] NULL,
	[FieldOptionAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomFieldOptionTranslation]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomFieldOptionTranslation](
	[EcomFieldOptionTranslationID] [int] IDENTITY(1,1) NOT NULL,
	[EcomFieldOptionTranslationOptionID] [nvarchar](255) NOT NULL,
	[EcomFieldOptionTranslationLanguageID] [nvarchar](50) NOT NULL,
	[EcomFieldOptionTranslationName] [nvarchar](255) NULL,
 CONSTRAINT [PK_EcomFieldOptionTranslation] PRIMARY KEY CLUSTERED 
(
	[EcomFieldOptionTranslationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomFieldType]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomFieldType](
	[FieldTypeId] [int] IDENTITY(1,1) NOT NULL,
	[FieldTypeName] [nvarchar](255) NULL,
	[FieldTypeDW] [nvarchar](255) NULL,
	[FieldTypeSort] [int] NULL CONSTRAINT [DW_DF_EcomFieldType_Sort]  DEFAULT ((0)),
	[FieldTypeDBSQL] [nvarchar](255) NULL,
	[FieldTypeAdvanced] [bit] NULL,
 CONSTRAINT [DW_PK_EcomFieldType] PRIMARY KEY CLUSTERED 
(
	[FieldTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomFilterDefinition]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomFilterDefinition](
	[EcomFilterDefinitionId] [int] IDENTITY(1,1) NOT NULL,
	[EcomFilterDefinitionGroupId] [int] NOT NULL,
	[EcomFilterDefinitionName] [nvarchar](255) NOT NULL,
	[EcomFilterDefinitionAddInName] [nvarchar](255) NOT NULL,
	[EcomFilterDefinitionTemplate] [nvarchar](255) NULL,
	[EcomFilterDefinitionIsActive] [bit] NULL,
	[EcomFilterDefinitionTagName] [nvarchar](255) NULL,
	[EcomFilterDefinitionVisibilityRule] [int] NULL,
	[EcomFilterDefinitionSorting] [int] NULL,
 CONSTRAINT [DW_PK_EcomFilterDefinition] PRIMARY KEY CLUSTERED 
(
	[EcomFilterDefinitionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomFilterDefinitionGroup]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomFilterDefinitionGroup](
	[EcomFilterDefinitionGroupId] [int] IDENTITY(1,1) NOT NULL,
	[EcomFilterDefinitionGroupName] [nvarchar](255) NOT NULL,
 CONSTRAINT [DW_PK_EcomFilterDefinitionGroup] PRIMARY KEY CLUSTERED 
(
	[EcomFilterDefinitionGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomFilterDefinitionTranslation]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomFilterDefinitionTranslation](
	[EcomFilterDefinitionTranslationId] [int] IDENTITY(1,1) NOT NULL,
	[EcomFilterDefinitionTranslationFilterDefinitionId] [int] NOT NULL,
	[EcomFilterDefinitionTranslationFilterDefinitionLanguageId] [nvarchar](50) NOT NULL,
	[EcomFilterDefinitionTranslationFilterDefinitionName] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomFilterSetting]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomFilterSetting](
	[EcomFilterSettingId] [int] IDENTITY(1,1) NOT NULL,
	[EcomFilterSettingDefinitionId] [int] NOT NULL,
	[EcomFilterSettingName] [nvarchar](255) NOT NULL,
	[EcomFilterSettingValue] [nvarchar](max) NULL,
 CONSTRAINT [DW_PK_EcomFilterSettingId] PRIMARY KEY CLUSTERED 
(
	[EcomFilterSettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomFilterVisibilityCondition]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomFilterVisibilityCondition](
	[EcomFilterVisibilityConditionId] [int] IDENTITY(1,1) NOT NULL,
	[EcomFilterVisibilityConditionDefinitionId] [int] NOT NULL,
	[EcomFilterVisibilityConditionDependantDefinitionId] [int] NOT NULL,
	[EcomFilterVisibilityConditionValue] [nvarchar](max) NULL,
 CONSTRAINT [DW_PK_EcomFilterVisibilityCondition] PRIMARY KEY CLUSTERED 
(
	[EcomFilterVisibilityConditionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomGiftCard]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomGiftCard](
	[GiftCardAutoId] [bigint] IDENTITY(1,1) NOT NULL,
	[GiftCardId] [nvarchar](50) NOT NULL,
	[GiftCardName] [nvarchar](max) NOT NULL,
	[GiftCardCode] [nvarchar](max) NOT NULL,
	[GiftCardExpiryDate] [datetime] NOT NULL,
	[GiftCardCurrency] [nvarchar](10) NULL,
 CONSTRAINT [DW_PK_EcomGiftCard] PRIMARY KEY CLUSTERED 
(
	[GiftCardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomGiftCardTransaction]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomGiftCardTransaction](
	[GiftCardTransactionId] [bigint] IDENTITY(1,1) NOT NULL,
	[GiftCardTransactionAmount] [float] NOT NULL,
	[GiftCardTransactionOrderId] [nvarchar](50) NOT NULL,
	[GiftCardTransactionGiftCardId] [nvarchar](50) NULL,
	[GiftCardTransactionDate] [datetime] NOT NULL,
	[GiftCardTransactionOrderLineId] [nvarchar](50) NOT NULL,
 CONSTRAINT [DW_PK_EcomGiftCardTransaction] PRIMARY KEY CLUSTERED 
(
	[GiftCardTransactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomGlobalIso]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomGlobalIso](
	[IsoId] [int] IDENTITY(1,1) NOT NULL,
	[IsoCode2] [nchar](2) NULL,
	[IsoCode3] [nvarchar](3) NULL,
	[IsoCountryNameDK] [nvarchar](255) NULL,
	[IsoCountryNameUK] [nvarchar](255) NULL,
	[IsoCurrencyCode] [int] NULL,
	[IsoCurrencySymbol] [nvarchar](255) NULL,
	[IsoVat] [float] NULL CONSTRAINT [DW_DF_EcomGlobalIso_Vat]  DEFAULT ((0)),
	[IsoCultureInfo] [nvarchar](50) NULL,
	[IsoDisabled] [bit] NULL CONSTRAINT [DW_DF_EcomGlobalIso_Disabled]  DEFAULT ((0)),
 CONSTRAINT [DW_PK_EcomGlobalIso] PRIMARY KEY CLUSTERED 
(
	[IsoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomGroupFilterOption]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomGroupFilterOption](
	[EcomGroupFilterOptionId] [int] IDENTITY(1,1) NOT NULL,
	[EcomGroupFilterOptionGroupId] [nvarchar](255) NOT NULL,
	[EcomGroupFilterOptionGroupLanguageId] [nvarchar](50) NOT NULL,
	[EcomGroupFilterOptionDefinitionId] [int] NOT NULL,
	[EcomGroupFilterOptionLabel] [nvarchar](255) NULL,
	[EcomGroupFilterOptionValue] [nvarchar](255) NULL,
	[EcomGroupFilterOptionSort] [int] NULL,
 CONSTRAINT [DW_PK_EcomGroupFilterOption] PRIMARY KEY CLUSTERED 
(
	[EcomGroupFilterOptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomGroupFilterSetting]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomGroupFilterSetting](
	[EcomGroupFilterSettingId] [int] IDENTITY(1,1) NOT NULL,
	[EcomGroupFilterSettingGroupId] [nvarchar](255) NOT NULL,
	[EcomGroupFilterSettingGroupLanguageId] [nvarchar](50) NOT NULL,
	[EcomGroupFilterSettingDefinitionId] [int] NOT NULL,
	[EcomGroupFilterSettingVisibility] [nvarchar](50) NULL,
	[EcomGroupFilterSettingLimitOptions] [bit] NULL,
	[EcomGroupFilterSettingOptionsMergeMode] [nvarchar](50) NULL,
 CONSTRAINT [DW_PK_EcomGroupFilterSetting] PRIMARY KEY CLUSTERED 
(
	[EcomGroupFilterSettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomGroupProductRelation]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomGroupProductRelation](
	[GroupProductRelationGroupId] [nvarchar](255) NOT NULL,
	[GroupProductRelationProductId] [nvarchar](30) NOT NULL,
	[GroupProductRelationSorting] [int] NULL,
	[GroupProductRelationIsPrimary] [bit] NULL,
	[GroupProductRelationAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomGroupRelations]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomGroupRelations](
	[GroupRelationsGroupId] [nvarchar](255) NOT NULL,
	[GroupRelationsParentId] [nvarchar](255) NOT NULL,
	[GroupRelationsSorting] [int] NULL,
	[GroupRelationsIsPrimary] [bit] NULL,
	[GroupRelationsAutoId] [int] IDENTITY(1,1) NOT NULL,
	[GroupRelationsInheritCategories] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomGroups]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomGroups](
	[GroupId] [nvarchar](255) NOT NULL,
	[GroupLanguageId] [nvarchar](50) NOT NULL,
	[GroupName] [nvarchar](255) NULL,
	[GroupNumber] [nvarchar](255) NULL,
	[GroupPageIDRel] [int] NULL,
	[GroupSmallImage] [nvarchar](255) NULL,
	[GroupLargeImage] [nvarchar](255) NULL,
	[GroupDescription] [nvarchar](max) NULL,
	[GroupAssortment] [bit] NULL,
	[GroupIcon] [nvarchar](255) NULL,
	[GroupNavigationShowInMenu] [bit] NULL,
	[GroupNavigationShowInSiteMap] [bit] NULL,
	[GroupNavigationClickable] [bit] NULL,
	[GroupInheritOrderLineFields] [bit] NULL,
	[ProductCategoryId] [nvarchar](50) NULL,
	[GroupRelatedGroups] [nvarchar](max) NULL,
	[GroupRelatedProducts] [nvarchar](max) NULL,
	[GroupManufacturerId] [nvarchar](50) NULL,
	[GroupVatGroupId] [nvarchar](50) NULL,
	[GroupProductType] [int] NULL,
	[GroupStockGroupId] [nvarchar](50) NULL,
	[GroupMetaTitle] [nvarchar](255) NULL,
	[GroupMetaKeywords] [nvarchar](max) NULL,
	[GroupMetaDescription] [nvarchar](max) NULL,
	[GroupMetaUrl] [nvarchar](max) NULL,
	[GroupFilterPagedQueryMode] [int] NULL,
	[GroupMetaPrimaryPage] [nvarchar](255) NULL,
	[GroupMetaCanonical] [nvarchar](255) NULL,
	[GroupAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomLanguages]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomLanguages](
	[LanguageId] [nvarchar](50) NOT NULL,
	[LanguageCode2] [nvarchar](50) NULL,
	[LanguageName] [nvarchar](255) NULL,
	[LanguageNativeName] [nvarchar](255) NULL,
	[LanguageIsDefault] [bit] NULL CONSTRAINT [DW_DF_EcomLanguages_IsDefault]  DEFAULT ((0)),
	[LanguageAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomLoyaltyReward]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomLoyaltyReward](
	[LoyaltyRewardId] [int] IDENTITY(1,1) NOT NULL,
	[LoyaltyRewardName] [nvarchar](50) NOT NULL,
	[LoyaltyRewardType] [int] NOT NULL,
	[LoyaltyRewardActive] [bit] NOT NULL,
	[LoyaltyRewardPoints] [float] NULL,
	[LoyaltyRewardCurrencyCode] [nvarchar](3) NULL,
	[LoyaltyRewardRoundingId] [nvarchar](50) NULL,
	[LoyaltyRewardPercentage] [float] NULL,
	[LoyaltyRewardArchived] [bit] NOT NULL,
 CONSTRAINT [DW_PK_EcomLoyaltyReward] PRIMARY KEY CLUSTERED 
(
	[LoyaltyRewardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomLoyaltyRewardRule]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomLoyaltyRewardRule](
	[LoyaltyRewardRuleId] [int] IDENTITY(1,1) NOT NULL,
	[LoyaltyRewardRuleRewardId] [int] NOT NULL,
	[LoyaltyRewardRuleShopId] [nvarchar](255) NULL,
	[LoyaltyRewardRuleGroupId] [nvarchar](50) NULL,
	[LoyaltyRewardRuleProductId] [nvarchar](30) NULL,
	[LoyaltyRewardRuleProductVariantId] [nvarchar](255) NULL,
	[LoyaltyRewardRuleProductLanguageId] [nvarchar](255) NULL,
	[LoyaltyRewardRuleName] [nvarchar](255) NULL,
	[LoyaltyRewardRuleActive] [bit] NOT NULL,
	[LoyaltyRewardRuleValidFrom] [datetime] NULL,
	[LoyaltyRewardRuleValidTo] [datetime] NULL,
	[LoyaltyRewardRuleAccessUserId] [int] NULL,
	[LoyaltyRewardRuleAccessUserGroupId] [int] NULL,
	[LoyaltyRewardRuleAccessUserCustomerNumber] [nvarchar](255) NULL,
	[LoyaltyRewardRuleProductsAndGroups] [nvarchar](max) NOT NULL,
	[LoyaltyRewardRuleCountryCode2] [nvarchar](2) NULL,
	[LoyaltyRewardRuleShippingId] [nvarchar](50) NULL,
	[LoyaltyRewardRulePaymentId] [nvarchar](50) NULL,
	[LoyaltyRewardRuleProductQuantification] [int] NOT NULL,
	[LoyaltyRewardRuleProductQuantity] [float] NULL,
	[LoyaltyRewardRuleOrderTotalPriceCondition] [int] NOT NULL,
	[LoyaltyRewardRuleOrderTotalPrice] [float] NULL,
	[LoyaltyRewardRuleOrderFieldName] [nvarchar](255) NULL,
	[LoyaltyRewardRuleOrderFieldValue] [nvarchar](max) NULL,
	[LoyaltyRewardRuleVoucherListId] [int] NULL,
	[LoyaltyRewardRuleOrderLineFieldName] [nvarchar](255) NULL,
 CONSTRAINT [DW_PK_EcomLoyaltyRewardRule] PRIMARY KEY CLUSTERED 
(
	[LoyaltyRewardRuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomLoyaltyRewardTranslation]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomLoyaltyRewardTranslation](
	[LoyaltyRewardTranslationAutoId] [int] IDENTITY(1,1) NOT NULL,
	[LoyaltyRewardTranslationRewardId] [int] NOT NULL,
	[LoyaltyRewardTranslationLanguageId] [nvarchar](50) NOT NULL,
	[LoyaltyRewardTranslationName] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomLoyaltyUserTransaction]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomLoyaltyUserTransaction](
	[LoyaltyUserTransactionId] [bigint] IDENTITY(1,1) NOT NULL,
	[LoyaltyUserTransactionUserId] [int] NOT NULL,
	[LoyaltyUserTransactionRewardId] [int] NULL,
	[LoyaltyUserTransactionDate] [datetime] NOT NULL,
	[LoyaltyUserTransactionPoints] [float] NOT NULL,
	[LoyaltyUserTransactionObjectType] [nvarchar](255) NULL,
	[LoyaltyUserTransactionObjectElement] [nvarchar](255) NULL,
	[LoyaltyUserTransactionComment] [nvarchar](255) NULL,
 CONSTRAINT [DW_PK_EcomLoyaltyUserTransaction] PRIMARY KEY CLUSTERED 
(
	[LoyaltyUserTransactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomManufacturers]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomManufacturers](
	[ManufacturerId] [nvarchar](50) NOT NULL,
	[ManufacturerName] [nvarchar](255) NULL,
	[ManufacturerAddress] [nvarchar](255) NULL,
	[ManufacturerZipCode] [nvarchar](255) NULL,
	[ManufacturerCity] [nvarchar](255) NULL,
	[ManufacturerCountry] [nvarchar](255) NULL,
	[ManufacturerPhone] [nvarchar](255) NULL,
	[ManufacturerFax] [nvarchar](255) NULL,
	[ManufacturerEmail] [nvarchar](255) NULL,
	[ManufacturerWeb] [nvarchar](255) NULL,
	[ManufacturerLogo] [nvarchar](255) NULL,
	[ManufacturerDescription] [nvarchar](max) NULL,
	[ManufacturerAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomMethodCountryRelation]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomMethodCountryRelation](
	[MethodCountryRelCode2] [nvarchar](50) NOT NULL,
	[MethodCountryRelMethodType] [nvarchar](50) NULL,
	[MethodCountryRelCountryId] [nvarchar](50) NULL,
	[MethodCountryRelMethodId] [nvarchar](50) NULL,
	[MethodCountryRelLanguageId] [nvarchar](50) NULL,
	[MethodCountryRelIsDefault] [bit] NULL,
	[MethodCountryRelRegionCode] [nchar](3) NOT NULL,
	[MethodCountryRelAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomNotification]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomNotification](
	[NotificationID] [int] IDENTITY(1,1) NOT NULL,
	[NotificationUserID] [nvarchar](50) NOT NULL,
	[NotificationEmail] [nvarchar](255) NULL,
	[NotificationProductID] [nvarchar](30) NOT NULL,
	[NotificationProductVariantID] [nvarchar](50) NOT NULL,
	[NotificationProductLanguageID] [nvarchar](50) NOT NULL,
	[NotificationProductUnitID] [nvarchar](75) NOT NULL,
	[NotificationContextLanguageID] [nvarchar](50) NOT NULL,
	[NotificationContextAreaID] [int] NOT NULL,
	[NotificationCreated] [datetime] NOT NULL,
	[NotificationSentTime] [datetime] NULL,
 CONSTRAINT [DW_PK_EcomNotification] PRIMARY KEY CLUSTERED 
(
	[NotificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomNumbers]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomNumbers](
	[NumberId] [nvarchar](50) NOT NULL,
	[NumberType] [nvarchar](50) NULL,
	[NumberDescription] [nvarchar](50) NULL,
	[NumberCounter] [int] NULL CONSTRAINT [DW_DF_EcomNumbers_Counter]  DEFAULT ((0)),
	[NumberPrefix] [nvarchar](50) NULL,
	[NumberPostFix] [nvarchar](50) NULL,
	[NumberAdd] [int] NULL CONSTRAINT [DW_DF_EcomNumbers_Add]  DEFAULT ((0)),
	[NumberEditable] [bit] NULL CONSTRAINT [DW_DF_EcomNumbers_Editable]  DEFAULT ((0)),
	[NumberAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomOrderContextAccessUserRelation]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomOrderContextAccessUserRelation](
	[OrderContextAccessUserAccessUserId] [int] NOT NULL,
	[OrderContextAccessUserOrderContextId] [nvarchar](50) NOT NULL,
	[OrderContextAccessUserOrderId] [nvarchar](50) NOT NULL,
	[OrderContextAccessUserRelationAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomOrderContexts]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomOrderContexts](
	[OrderContextId] [nvarchar](50) NOT NULL,
	[OrderContextName] [nvarchar](255) NULL,
	[OrderContextAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomOrderContextShopRelation]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomOrderContextShopRelation](
	[OrderContextShopRelationContextId] [nvarchar](50) NOT NULL,
	[OrderContextShopRelationShopId] [nvarchar](50) NOT NULL,
	[OrderContextShopRelationAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomOrderDebuggingInfo]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomOrderDebuggingInfo](
	[OrderDebuggingInfoId] [int] IDENTITY(1,1) NOT NULL,
	[OrderDebuggingInfoOrderId] [nvarchar](50) NOT NULL,
	[OrderDebuggingInfoSource] [nvarchar](255) NOT NULL,
	[OrderDebuggingInfoTime] [datetime] NOT NULL,
	[OrderDebuggingInfoMessage] [nvarchar](max) NOT NULL,
	[OrderDebuggingInfoType] [int] NOT NULL,
 CONSTRAINT [DW_PK_OrderDebuggingInfo] PRIMARY KEY CLUSTERED 
(
	[OrderDebuggingInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomOrderField]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomOrderField](
	[OrderFieldId] [nvarchar](255) NOT NULL,
	[OrderFieldName] [nvarchar](255) NULL,
	[OrderFieldSystemName] [nvarchar](255) NULL,
	[OrderFieldTemplateName] [nvarchar](255) NULL,
	[OrderFieldTypeId] [int] NULL,
	[OrderFieldTypeName] [nvarchar](255) NULL,
	[OrderFieldLocked] [bit] NULL,
	[OrderFieldSort] [int] NULL,
	[OrderFieldAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomOrderFlow]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomOrderFlow](
	[OrderFlowId] [int] IDENTITY(1,1) NOT NULL,
	[OrderFlowIsDefault] [bit] NOT NULL,
	[OrderFlowName] [nvarchar](255) NOT NULL,
	[OrderFlowDescription] [nvarchar](max) NULL,
	[OrderFlowOrderType] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [DW_PK_EcomOrderFlow] PRIMARY KEY CLUSTERED 
(
	[OrderFlowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomOrderLineFieldGroupRelation]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomOrderLineFieldGroupRelation](
	[OrderLineFieldGroupRelationSystemName] [nvarchar](255) NOT NULL,
	[OrderLineFieldGroupRelationGroupId] [nvarchar](255) NOT NULL,
	[OrderLineFieldGroupRelationAutoId] [int] IDENTITY(1,1) NOT NULL,
	[OrderLineFieldGroupRelationShopID] [nvarchar](255) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomOrderLineFields]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomOrderLineFields](
	[OrderLineFieldSystemName] [nvarchar](255) NOT NULL,
	[OrderLineFieldName] [nvarchar](255) NULL,
	[OrderLineFieldLength] [int] NULL,
	[OrderLineFieldAutoId] [int] IDENTITY(1,1) NOT NULL,
	[EcomOrderLineFieldsSorting] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomOrderLines]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomOrderLines](
	[OrderLineId] [nvarchar](50) NOT NULL,
	[OrderLineOrderId] [nvarchar](50) NULL,
	[OrderLineParentLineId] [nvarchar](50) NULL,
	[OrderLineBOM] [bit] NULL,
	[OrderLineDate] [datetime] NULL,
	[OrderLineModified] [datetime] NULL,
	[OrderLineProductNumber] [nvarchar](255) NULL,
	[OrderLineProductId] [nvarchar](30) NULL,
	[OrderLineProductVariantId] [nvarchar](255) NULL,
	[OrderLineProductName] [nvarchar](255) NULL,
	[OrderLineProductVariantText] [nvarchar](255) NULL,
	[OrderLineUnitPrice] [float] NULL,
	[OrderLineVatPercent] [float] NULL,
	[OrderLineVatPrice] [float] NULL,
	[OrderLineQuantity] [float] NULL,
	[OrderLineType] [nvarchar](255) NULL,
	[OrderLineReference] [nvarchar](255) NULL,
	[OrderLineBOMItemId] [nvarchar](50) NULL,
	[OrderLineUnitId] [nvarchar](50) NULL,
	[OrderLineWeight] [float] NULL,
	[OrderLineVolume] [float] NULL,
	[OrderLinePriceWithVAT] [float] NULL,
	[OrderLinePriceWithoutVAT] [float] NULL,
	[OrderLinePriceVAT] [float] NULL,
	[OrderLinePriceVATPercent] [float] NULL,
	[OrderLineUnitPriceWithVAT] [float] NULL,
	[OrderLineUnitPriceWithoutVAT] [float] NULL,
	[OrderLineUnitPriceVAT] [float] NULL,
	[OrderLineUnitPriceVATPercent] [float] NULL,
	[OrderLinePageId] [int] NULL,
	[OrderLineDiscountId] [nvarchar](50) NULL,
	[OrderLineFieldValues] [nvarchar](max) NULL,
	[OrderLineAttachment] [nvarchar](max) NULL,
	[OrderLineAutoId] [int] IDENTITY(1,1) NOT NULL,
	[OrderLineWishListId] [int] NOT NULL,
	[OrderLinePriceCalculationReference] [nvarchar](255) NULL,
	[OrderLineUnitPriceCalculationReference] [nvarchar](255) NULL,
	[OrderLineUnitPoints] [float] NULL,
	[OrderLineUnitRewardPoints] [float] NULL,
	[OrderLinePoints] [float] NULL,
	[OrderLineRewardPoints] [float] NULL,
	[OrderLineRewardId] [int] NULL,
	[OrderLineReverseChargeForVat] [bit] NULL,
	[OrderLineTotalDiscountWithVAT] [float] NULL,
	[OrderLineTotalDiscountWithoutVAT] [float] NULL,
	[OrderLineTotalDiscountVAT] [float] NULL,
	[OrderLineTotalDiscountVATPercent] [float] NULL,
	[OrderLineGiftCardCode] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomOrders]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomOrders](
	[OrderId] [nvarchar](50) NOT NULL,
	[OrderShopId] [nvarchar](255) NULL,
	[OrderDate] [datetime] NULL,
	[OrderModified] [datetime] NULL,
	[OrderComplete] [bit] NULL,
	[OrderDeleted] [bit] NULL,
	[OrderStateId] [nvarchar](50) NULL,
	[OrderVAT] [float] NULL,
	[OrderIP] [nvarchar](255) NULL,
	[OrderReferrer] [nvarchar](255) NULL,
	[OrderTransactionValue] [nchar](2) NULL,
	[OrderTransactionType] [nvarchar](50) NULL,
	[OrderTransactionStatus] [nvarchar](50) NULL,
	[OrderTransactionAmount] [float] NULL,
	[OrderTransactionPayGatewayCode] [nvarchar](4) NULL,
	[OrderTrackTraceNumber] [nvarchar](50) NULL,
	[OrderShippingMethod] [nvarchar](255) NULL,
	[OrderShippingMethodFee] [float] NULL,
	[OrderPaymentMethod] [nvarchar](255) NULL,
	[OrderPaymentMethodFee] [float] NULL,
	[OrderSalesDiscount] [float] NULL,
	[OrderCurrencyName] [nvarchar](50) NULL,
	[OrderCurrencyRate] [float] NULL,
	[OrderCurrencyCode] [nvarchar](3) NULL,
	[OrderCart] [bit] NULL,
	[OrderFieldsXML] [nvarchar](max) NULL,
	[OrderReSendEmail] [nvarchar](255) NULL,
	[OrderCustomerNumber] [nvarchar](255) NULL,
	[OrderCustomerCompany] [nvarchar](255) NULL,
	[OrderCustomerName] [nvarchar](255) NULL,
	[OrderCustomerAddress] [nvarchar](255) NULL,
	[OrderCustomerAddress2] [nvarchar](255) NULL,
	[OrderCustomerZip] [nvarchar](50) NULL,
	[OrderCustomerCity] [nvarchar](255) NULL,
	[OrderCustomerCountry] [nvarchar](50) NULL,
	[OrderCustomerRegion] [nvarchar](50) NULL,
	[OrderCustomerPhone] [nvarchar](50) NULL,
	[OrderCustomerFax] [nvarchar](50) NULL,
	[OrderCustomerEmail] [nvarchar](255) NULL,
	[OrderCustomerCell] [nvarchar](50) NULL,
	[OrderCustomerRefId] [nvarchar](255) NULL,
	[OrderCustomerEAN] [nvarchar](255) NULL,
	[OrderCustomerVatRegNumber] [nvarchar](50) NULL,
	[OrderDeliveryCompany] [nvarchar](255) NULL,
	[OrderDeliveryName] [nvarchar](255) NULL,
	[OrderDeliveryAddress] [nvarchar](255) NULL,
	[OrderDeliveryAddress2] [nvarchar](255) NULL,
	[OrderDeliveryZip] [nvarchar](50) NULL,
	[OrderDeliveryCity] [nvarchar](255) NULL,
	[OrderDeliveryCountry] [nvarchar](50) NULL,
	[OrderDeliveryRegion] [nvarchar](50) NULL,
	[OrderDeliveryPhone] [nvarchar](50) NULL,
	[OrderDeliveryFax] [nvarchar](50) NULL,
	[OrderDeliveryEmail] [nvarchar](255) NULL,
	[OrderDeliveryCell] [nvarchar](50) NULL,
	[OrderTotalPrice] [float] NULL,
	[OrderComment] [nvarchar](max) NULL,
	[OrderCustomerComment] [nvarchar](max) NULL,
	[OrderWeight] [float] NULL,
	[OrderVolume] [float] NULL,
	[OrderPriceWithVAT] [float] NULL,
	[OrderPriceWithoutVAT] [float] NULL,
	[OrderPriceVAT] [float] NULL,
	[OrderPriceVATPercent] [float] NULL,
	[OrderShippingFeeWithVAT] [float] NULL,
	[OrderShippingFeeWithoutVAT] [float] NULL,
	[OrderShippingFeeVAT] [float] NULL,
	[OrderShippingFeeVATPercent] [float] NULL,
	[OrderPaymentFeeWithVAT] [float] NULL,
	[OrderPaymentFeeWithoutVAT] [float] NULL,
	[OrderPaymentFeeVAT] [float] NULL,
	[OrderPaymentFeeVATPercent] [float] NULL,
	[OrderPriceBeforeFeesWithVAT] [float] NULL,
	[OrderPriceBeforeFeesWithoutVAT] [float] NULL,
	[OrderPriceBeforeFeesVAT] [float] NULL,
	[OrderPriceBeforeFeesVATPercent] [float] NULL,
	[OrderCustomerAccessUserId] [int] NULL,
	[OrderCustomerAccessUserUserName] [nvarchar](255) NULL,
	[OrderShippingMethodId] [nvarchar](50) NULL,
	[OrderPaymentMethodId] [nvarchar](50) NULL,
	[OrderGatewayResult] [ntext] NULL,
	[OrderStepNum] [int] NULL,
	[OrderTransactionNumber] [nvarchar](255) NULL,
	[OrderCustomerCountryCode] [nvarchar](50) NULL,
	[OrderDeliveryCountryCode] [nvarchar](50) NULL,
	[OrderStepHistory] [ntext] NULL,
	[OrderLanguageId] [nvarchar](50) NULL,
	[OrderTransactionMailSend] [bit] NOT NULL,
	[OrderShippingMethodDescription] [nvarchar](max) NULL,
	[OrderPaymentMethodDescription] [nvarchar](max) NULL,
	[OrderCustomerNewsletterSubcribe] [bit] NOT NULL,
	[OrderGatewayPaymentStatus] [nvarchar](255) NULL,
	[OrderGatewayTransactionProblems] [nvarchar](max) NULL,
	[OrderGatewayUniqueId] [nvarchar](255) NULL,
	[OrderCaptureInfo] [nvarchar](max) NULL,
	[OrderCartV2StepIndex] [int] NULL,
	[OrderSecret] [nvarchar](255) NULL,
	[OrderShippingCountrySelection] [nvarchar](255) NULL,
	[OrderPaymentCountrySelection] [nvarchar](255) NULL,
	[OrderCustomerAccepted] [bit] NULL,
	[OrderDebuggingInfo] [nvarchar](max) NULL,
	[OrderHasSetUserDetails] [bit] NULL,
	[OrderTrackAndTraceId] [int] NULL,
	[OrderTrackAndTraceParameters] [nvarchar](max) NULL,
	[OrderIntegrationOrderId] [nvarchar](max) NULL,
	[OrderRequisition] [nvarchar](255) NULL,
	[OrderAXOrderId] [nvarchar](max) NULL,
	[OrderVisitorSessionId] [nvarchar](255) NULL,
	[OrderIsExported] [bit] NULL,
	[OrderVoucherCode] [nvarchar](36) NULL,
	[OrderCustomerSurname] [nvarchar](255) NULL,
	[OrderCustomerInitials] [nvarchar](50) NULL,
	[OrderCustomerPrefix] [nvarchar](50) NULL,
	[OrderDeliverySurname] [nvarchar](255) NULL,
	[OrderDeliveryInitials] [nvarchar](50) NULL,
	[OrderDeliveryPrefix] [nvarchar](50) NULL,
	[OrderShippingDocumentData] [nvarchar](max) NULL,
	[OrderShippingProviderData] [nvarchar](max) NULL,
	[OrderCompletedDate] [datetime] NULL,
	[OrderSecondaryUserId] [int] NULL,
	[OrderReceiptShowCount] [int] NULL,
	[OrderCaptureAmount] [float] NULL,
	[OrderTransactionCardType] [nvarchar](100) NULL,
	[OrderExternalPaymentFee] [float] NULL,
	[OrderAutoId] [int] IDENTITY(1,1) NOT NULL,
	[OrderCustomerTitle] [nvarchar](255) NULL,
	[OrderCustomerFirstName] [nvarchar](255) NULL,
	[OrderCustomerMiddleName] [nvarchar](255) NULL,
	[OrderCustomerHouseNumber] [nvarchar](255) NULL,
	[OrderDeliveryTitle] [nvarchar](255) NULL,
	[OrderDeliveryFirstName] [nvarchar](255) NULL,
	[OrderDeliveryMiddleName] [nvarchar](255) NULL,
	[OrderDeliveryHouseNumber] [nvarchar](255) NULL,
	[OrderPriceCalculationDate] [datetime] NULL,
	[OrderTotalPoints] [float] NULL,
	[OrderTotalRewardPoints] [float] NULL,
	[OrderTotalDiscountWithVAT] [float] NULL,
	[OrderTotalDiscountWithoutVAT] [float] NULL,
	[OrderTotalDiscountVAT] [float] NULL,
	[OrderTotalDiscountVATPercent] [float] NULL,
	[OrderIsQuote] [bit] NOT NULL,
	[OrderTransactionCardNumber] [nvarchar](50) NULL,
	[OrderCheckoutPageID] [int] NOT NULL,
	[OrderVisitorSessionDate] [datetime] NULL,
	[OrderPriceCalculatedByProvider] [bit] NOT NULL,
	[OrderTaxTransactionNumber] [nvarchar](50) NULL,
	[OrderVoucherUseType] [int] NOT NULL,
	[OrderContextID] [nvarchar](50) NULL,
	[OrderGiftcardTransactionFailed] [bit] NOT NULL,
	[OrderShippingFeeRuleName] [nvarchar](255) NULL,
	[OrderRecurringOrderId] [int] NULL,
	[OrderPaymentRecurringInfo] [nvarchar](max) NULL,
	[OrderSavedCardID] [int] NULL,
	[OrderIsRecurringOrderTemplate] [bit] NULL,
	[OrderTransactionToken] [nvarchar](max) NULL,
	[OrderTransactionTokenCheckSum] [nvarchar](128) NULL,
	[OrderPointsToUse] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomOrderStateRules]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomOrderStateRules](
	[OrderStateRuleId] [int] IDENTITY(1,1) NOT NULL,
	[OrderStateRuleFromState] [nvarchar](50) NOT NULL,
	[OrderStateRuleToState] [nvarchar](50) NOT NULL,
 CONSTRAINT [DW_PK_EcomOrderStateRules] PRIMARY KEY CLUSTERED 
(
	[OrderStateRuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomOrderStates]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomOrderStates](
	[OrderStateId] [nvarchar](50) NOT NULL,
	[OrderStateName] [nvarchar](255) NULL,
	[OrderStateDescription] [nvarchar](max) NULL,
	[OrderStateIsDefault] [bit] NULL CONSTRAINT [DW_DF_EcomOrderStates_IsDefault]  DEFAULT ((0)),
	[OrderStateDontUseInstatistics] [bit] NULL CONSTRAINT [DW_DF_EcomOrderStates_DontUseInstatistics]  DEFAULT ((0)),
	[OrderStateIsDeleted] [bit] NULL CONSTRAINT [DW_DF_EcomOrderStates_IsDeleted]  DEFAULT ((0)),
	[OrderStateMailTemplate] [nvarchar](255) NULL,
	[OrderFlowId] [int] NULL,
	[OrderStateMailSender] [nvarchar](255) NULL,
	[OrderStateMailSenderName] [nvarchar](255) NULL,
	[OrderStateMailSubject] [nvarchar](255) NULL,
	[OrderStateAutoId] [int] IDENTITY(1,1) NOT NULL,
	[OrderStateSendToCustomer] [bit] NULL,
	[OrderStateOthersMailTemplate] [nvarchar](255) NULL,
	[OrderStateOthersRecipients] [nvarchar](max) NULL,
	[OrderStateSortOrder] [int] NULL,
	[OrderStateOrderType] [int] NOT NULL DEFAULT ((0)),
	[OrderStateAllowOrder] [bit] NOT NULL DEFAULT ((1))
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomPayments]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomPayments](
	[PaymentId] [nvarchar](50) NOT NULL,
	[PaymentLanguageId] [nvarchar](50) NOT NULL,
	[PaymentName] [nvarchar](255) NULL,
	[PaymentDescription] [nvarchar](max) NULL,
	[PaymentIcon] [nvarchar](255) NULL,
	[PaymentGatewayId] [nvarchar](50) NULL,
	[PaymentGatewayTemplate] [nvarchar](255) NULL,
	[PaymentMerchantNum] [nvarchar](50) NULL,
	[PaymentGatewayMD5Key] [nvarchar](255) NULL,
	[PaymentCCITemplate] [nvarchar](255) NULL,
	[PaymentGatewayParameters] [ntext] NULL,
	[PaymentIconOrderList] [nvarchar](255) NULL,
	[PaymentAddInType] [nvarchar](max) NULL,
	[PaymentCheckoutSystemName] [nvarchar](max) NULL,
	[PaymentCheckoutParameters] [nvarchar](max) NULL,
	[PaymentSorting] [int] NULL,
	[PaymentAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomPeriods]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomPeriods](
	[PeriodId] [nvarchar](50) NOT NULL,
	[PeriodName] [nvarchar](255) NULL,
	[PeriodStartDate] [datetime] NULL,
	[PeriodEndDate] [datetime] NULL,
	[PeriodAlways] [bit] NULL,
	[PeriodActive] [bit] NULL,
	[PeriodShowProductsAfterExpiration] [bit] NULL,
	[PeriodAutoId] [int] IDENTITY(1,1) NOT NULL,
	[PeriodHidden] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomPrices]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomPrices](
	[PriceId] [nvarchar](255) NOT NULL,
	[PriceProductId] [nvarchar](30) NULL,
	[PriceProductVariantId] [nvarchar](255) NULL,
	[PriceProductLanguageId] [nvarchar](50) NULL,
	[PriceCurrency] [nvarchar](3) NOT NULL,
	[PriceQuantity] [int] NULL,
	[PriceAmount] [float] NULL,
	[PriceUnitId] [nvarchar](50) NULL,
	[PricePeriodId] [nvarchar](50) NULL,
	[PriceCustomerGroupId] [nvarchar](255) NULL,
	[PricePriority] [int] NULL,
	[PriceUserCustomerNumber] [nvarchar](255) NULL,
	[PriceCountry] [nchar](2) NULL,
	[PriceShopId] [nvarchar](255) NULL,
	[PriceValidFrom] [datetime] NULL,
	[PriceValidTo] [datetime] NULL,
	[PriceUserId] [nvarchar](255) NULL,
	[PriceUserGroupId] [nvarchar](255) NULL,
	[PriceAutoId] [int] IDENTITY(1,1) NOT NULL,
	[PriceIsInformative] [bit] NULL,
	[PriceStockLocationID] [bigint] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomProductCategory]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomProductCategory](
	[CategoryId] [nvarchar](50) NOT NULL,
	[CategoryAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomProductCategoryField]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomProductCategoryField](
	[FieldId] [nvarchar](255) NOT NULL,
	[FieldCategoryId] [nvarchar](50) NOT NULL,
	[FieldTemplateTag] [nvarchar](255) NOT NULL,
	[FieldType] [int] NOT NULL,
	[FieldDefaultValue] [nvarchar](max) NULL,
	[FieldPresentationType] [nvarchar](50) NULL,
	[FieldSortOrder] [int] NULL,
	[FieldAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomProductCategoryFieldGroupValue]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomProductCategoryFieldGroupValue](
	[FieldValueFieldId] [nvarchar](255) NOT NULL,
	[FieldValueFieldCategoryId] [nvarchar](50) NOT NULL,
	[FieldValueGroupId] [nvarchar](255) NOT NULL,
	[FieldValueGroupLanguageId] [nvarchar](50) NOT NULL,
	[FieldValueValue] [nvarchar](max) NULL,
 CONSTRAINT [EcomProductCategoryFieldGroupValue$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[FieldValueFieldId] ASC,
	[FieldValueFieldCategoryId] ASC,
	[FieldValueGroupId] ASC,
	[FieldValueGroupLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomProductCategoryFieldTranslation]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomProductCategoryFieldTranslation](
	[FieldTranslationFieldId] [nvarchar](255) NOT NULL,
	[FieldTranslationFieldCategoryId] [nvarchar](50) NOT NULL,
	[FieldTranslationLanguageId] [nvarchar](50) NOT NULL,
	[FieldTranslationFieldLabel] [nvarchar](255) NULL,
	[FieldTranslationFieldOptions] [nvarchar](max) NULL,
	[FieldTranslationAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomProductCategoryFieldValue]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomProductCategoryFieldValue](
	[FieldValueFieldId] [nvarchar](255) NOT NULL,
	[FieldValueFieldCategoryId] [nvarchar](50) NOT NULL,
	[FieldValueProductId] [nvarchar](30) NOT NULL,
	[FieldValueProductVariantId] [nvarchar](255) NOT NULL,
	[FieldValueProductLanguageId] [nvarchar](50) NOT NULL,
	[FieldValueValue] [nvarchar](max) NULL,
	[FieldValueAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomProductCategoryTranslation]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomProductCategoryTranslation](
	[CategoryTranslationCategoryId] [nvarchar](50) NOT NULL,
	[CategoryTranslationLanguageId] [nvarchar](50) NOT NULL,
	[CategoryTranslationCategoryName] [nvarchar](255) NULL,
	[CategoryTranslationAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomProductField]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomProductField](
	[ProductFieldId] [nvarchar](255) NOT NULL,
	[ProductFieldName] [nvarchar](255) NULL,
	[ProductFieldSystemName] [nvarchar](255) NULL,
	[ProductFieldTemplateName] [nvarchar](255) NULL,
	[ProductFieldTypeId] [int] NULL CONSTRAINT [DW_DF_EcomProductField_TypeId]  DEFAULT ((0)),
	[ProductFieldTypeName] [nvarchar](255) NULL,
	[ProductFieldLocked] [bit] NULL CONSTRAINT [DW_DF_EcomProductField_Locked]  DEFAULT ((0)),
	[ProductFieldSort] [int] NULL,
	[ProductFieldListPresentationType] [int] NULL,
	[ProductFieldAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomProductFieldTranslation]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomProductFieldTranslation](
	[ProductFieldTranslationID] [int] IDENTITY(1,1) NOT NULL,
	[ProductFieldTranslationFieldID] [nvarchar](255) NOT NULL,
	[ProductFieldTranslationLanguageID] [nvarchar](50) NOT NULL,
	[ProductFieldTranslationName] [nvarchar](255) NULL,
 CONSTRAINT [PK_EcomProductFieldTranslation] PRIMARY KEY CLUSTERED 
(
	[ProductFieldTranslationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomProductGroupField]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomProductGroupField](
	[ProductGroupFieldId] [nvarchar](50) NOT NULL,
	[ProductGroupFieldName] [nvarchar](255) NOT NULL,
	[ProductGroupFieldSystemName] [nvarchar](255) NOT NULL,
	[ProductGroupFieldTemplateName] [nvarchar](255) NOT NULL,
	[ProductGroupFieldTypeId] [int] NOT NULL,
	[ProductGroupFieldTypeName] [nvarchar](255) NOT NULL,
	[ProductGroupFieldLocked] [bit] NOT NULL,
	[ProductGroupFieldSort] [int] NOT NULL,
	[ProductGroupFieldListPresentationType] [int] NULL,
	[ProductGroupFieldAutoId] [int] IDENTITY(1,1) NOT NULL,
	[ProductGroupFieldRequired] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomProductItems]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomProductItems](
	[ProductItemId] [nvarchar](50) NOT NULL,
	[ProductItemProductId] [nvarchar](30) NOT NULL,
	[ProductItemBomProductId] [nvarchar](30) NULL,
	[ProductItemBomGroupId] [nvarchar](255) NULL,
	[ProductItemQuantity] [float] NULL,
	[ProductItemName] [nvarchar](255) NULL,
	[ProductItemRequired] [bit] NULL,
	[ProductItemDefaultProductId] [nvarchar](30) NULL,
	[ProductItemBomNoProductText] [nvarchar](255) NULL,
	[ProductItemSortOrder] [int] NULL,
	[ProductItemBomVariantId] [nvarchar](255) NOT NULL,
	[ProductItemAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomProducts]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomProducts](
	[ProductId] [nvarchar](30) NOT NULL,
	[ProductLanguageId] [nvarchar](50) NOT NULL,
	[ProductVariantId] [nvarchar](255) NOT NULL,
	[ProductDefaultShopId] [nvarchar](255) NULL,
	[ProductNumber] [nvarchar](255) NULL,
	[ProductName] [nvarchar](255) NULL,
	[ProductShortDescription] [nvarchar](max) NULL,
	[ProductLongDescription] [nvarchar](max) NULL,
	[ProductImageSmall] [nvarchar](255) NULL,
	[ProductImageMedium] [nvarchar](255) NULL,
	[ProductImageLarge] [nvarchar](255) NULL,
	[ProductLink1] [nvarchar](255) NULL,
	[ProductLink2] [nvarchar](255) NULL,
	[ProductPrice] [float] NULL,
	[ProductStock] [float] NULL,
	[ProductStockGroupId] [nvarchar](50) NULL,
	[ProductWeight] [float] NULL,
	[ProductVolume] [float] NULL,
	[ProductVatGrpId] [nvarchar](50) NULL,
	[ProductManufacturerId] [nvarchar](50) NULL,
	[ProductActive] [bit] NULL,
	[ProductPeriodId] [nvarchar](50) NULL,
	[ProductCreated] [datetime] NULL,
	[ProductUpdated] [datetime] NULL,
	[ProductCustomFieldsXml] [nvarchar](max) NULL,
	[ProductType] [int] NULL,
	[ProductPriceType] [int] NULL,
	[ProductPriceCounter] [int] NULL,
	[ProductVariantCounter] [int] NULL,
	[ProductVariantProdCounter] [int] NULL,
	[ProductVariantGroupCounter] [int] NULL,
	[ProductRelatedCounter] [int] NULL,
	[ProductUnitCounter] [int] NULL,
	[ProductDefaultUnitId] [nvarchar](50) NULL,
	[ProductDefaultVariantComboId] [nvarchar](255) NULL,
	[ProductPriceMatrixUnit] [int] NULL,
	[ProductPriceMatrixVariant] [int] NULL,
	[ProductPriceMatrixPeriod] [int] NULL,
	[ProductPriceMatrixMultiplePrices] [int] NULL,
	[ProductPriceMatrixQuantitySpecification] [nvarchar](255) NULL,
	[ProductMetaTitle] [nvarchar](255) NULL,
	[ProductMetaKeywords] [nvarchar](max) NULL,
	[ProductMetaDescription] [nvarchar](max) NULL,
	[ProductMetaUrl] [nvarchar](max) NULL,
	[ProductCategoryFieldValues] [nvarchar](max) NULL,
	[ProductOptimizedFor] [nvarchar](255) NULL,
	[ProductCommentcount] [int] NULL,
	[ProductRating] [float] NULL,
	[ProductCost] [float] NULL,
	[ProductAutoId] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductMetaCanonical] [nvarchar](255) NULL,
	[ProductExcludeFromIndex] [bit] NOT NULL,
	[ProductExcludeFromCustomizedUrls] [bit] NOT NULL,
	[ProductExcludeFromAllProducts] [bit] NOT NULL,
	[ProductPoints] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomProductsRelated]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomProductsRelated](
	[ProductRelatedProductId] [nvarchar](30) NOT NULL,
	[ProductRelatedProductRelId] [nvarchar](30) NOT NULL,
	[ProductRelatedGroupId] [nvarchar](255) NOT NULL,
	[ProductRelatedSortOrder] [int] NULL,
	[ProductRelatedLimitLanguage] [nvarchar](max) NULL,
	[ProductRelatedLimitCountry] [nvarchar](max) NULL,
	[ProductRelatedLimitShop] [nvarchar](max) NULL,
	[ProductRelatedAutoId] [int] IDENTITY(1,1) NOT NULL,
	[ProductRelatedProductRelVariantID] [nvarchar](255) NOT NULL,
	[ProductRelatedLimitVariant] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomProductsRelatedGroups]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomProductsRelatedGroups](
	[RelatedGroupId] [nvarchar](255) NOT NULL,
	[RelatedGroupName] [nvarchar](255) NULL,
	[RelatedGroupLanguageId] [nvarchar](50) NOT NULL,
	[RelatedGroupSortOrder] [int] NULL,
	[RelatedGroupAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomProductVatGroups]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomProductVatGroups](
	[ProductVatGroupID] [int] IDENTITY(1,1) NOT NULL,
	[ProductVatGroupProductID] [nvarchar](30) NOT NULL,
	[ProductVatGroupProductVariantID] [nvarchar](255) NOT NULL,
	[ProductVatGroupVatGroupID] [nvarchar](50) NOT NULL,
	[ProductVatGroupCountryID] [nvarchar](2) NULL,
 CONSTRAINT [PK_EcomProductVatGroups] PRIMARY KEY CLUSTERED 
(
	[ProductVatGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomRecurringOrder]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomRecurringOrder](
	[RecurringOrderId] [int] IDENTITY(1,1) NOT NULL,
	[RecurringOrderUserID] [int] NOT NULL,
	[RecurringOrderBaseOrderID] [nvarchar](50) NULL,
	[RecurringOrderStartDate] [datetime] NULL,
	[RecurringOrderEndDate] [datetime] NULL,
	[RecurringOrderInterval] [int] NOT NULL,
	[RecurringOrderIntervalUnit] [int] NOT NULL,
	[RecurringOrderCanceledDeliveries] [nvarchar](max) NULL,
	[RecurringOrderLastDelivery] [datetime] NULL,
 CONSTRAINT [DW_PK_RecurringOrders] PRIMARY KEY CLUSTERED 
(
	[RecurringOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomRelatedSmartSearches]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomRelatedSmartSearches](
	[RelatedGroupId] [nvarchar](255) NOT NULL,
	[RelatedProductId] [nvarchar](30) NOT NULL,
	[RelatedLanguageId] [nvarchar](50) NOT NULL,
	[RelatedSmartSearchRelId] [nvarchar](50) NOT NULL,
	[RelatedSmartSearchAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomRmaCommentImages]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomRmaCommentImages](
	[RmaCommentImageId] [int] IDENTITY(1,1) NOT NULL,
	[RmaCommentImageCommentId] [int] NOT NULL,
	[RmaCommentImagePath] [nvarchar](255) NOT NULL,
 CONSTRAINT [DW_PK_EcomRmaCommentImages] PRIMARY KEY CLUSTERED 
(
	[RmaCommentImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomRmaComments]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomRmaComments](
	[RmaCommentId] [int] IDENTITY(1,1) NOT NULL,
	[RmaCommentRmaId] [nvarchar](50) NOT NULL,
	[RmaCommentNewRmaState] [int] NOT NULL,
	[RmaCommentText] [nvarchar](max) NULL,
	[RmaCommentCreated] [datetime] NOT NULL,
	[RmaCommentEvent] [nvarchar](255) NULL,
 CONSTRAINT [DW_PK_EcomRmaComments] PRIMARY KEY CLUSTERED 
(
	[RmaCommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomRmaEmailConfigurationEventRelation]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomRmaEmailConfigurationEventRelation](
	[RmaEmailConfigurationEventRelationId] [int] IDENTITY(1,1) NOT NULL,
	[RmaEmailConfigurationEventRelationEmailConfigurationId] [int] NOT NULL,
	[RmaEmailConfigurationEventRelationEventType] [nvarchar](255) NOT NULL,
 CONSTRAINT [DW_PK_EcomRmaEmailConfigurationEventRelation] PRIMARY KEY CLUSTERED 
(
	[RmaEmailConfigurationEventRelationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomRmaEmailConfigurationReplacementOrderProviderRelation]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomRmaEmailConfigurationReplacementOrderProviderRelation](
	[RmaEmailConfigurationReplacementOrderProviderRelationId] [int] IDENTITY(1,1) NOT NULL,
	[RmaEmailConfigurationReplacementOrderProviderRelationEmailConfigurationId] [int] NOT NULL,
	[RmaEmailConfigurationReplacementOrderProviderRelationReplacementOrderProviderClassName] [nvarchar](260) NOT NULL,
 CONSTRAINT [DW_PK_EcomRmaEmailConfigurationReplacementOrderProviderRelation] PRIMARY KEY CLUSTERED 
(
	[RmaEmailConfigurationReplacementOrderProviderRelationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomRmaEmailConfigurations]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomRmaEmailConfigurations](
	[RmaEmailConfigurationId] [int] IDENTITY(1,1) NOT NULL,
	[RmaEmailConfigurationLanguage] [nvarchar](50) NOT NULL,
	[RmaEmailConfigurationForCustomer] [bit] NOT NULL,
	[RmaEmailConfigurationRecipient] [nvarchar](255) NULL,
	[RmaEmailConfigurationSubject] [nvarchar](255) NULL,
	[RmaEmailConfigurationSenderName] [nvarchar](255) NULL,
	[RmaEmailConfigurationSenderEmail] [nvarchar](255) NULL,
	[RmaEmailConfigurationTemplate] [nvarchar](max) NULL,
 CONSTRAINT [DW_PK_RmaEmailConfigurations] PRIMARY KEY CLUSTERED 
(
	[RmaEmailConfigurationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomRmaEmailConfigurationStateRelation]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomRmaEmailConfigurationStateRelation](
	[RmaEmailConfigurationStateRelationId] [int] IDENTITY(1,1) NOT NULL,
	[RmaEmailConfigurationStateRelationEmailConfigurationId] [int] NOT NULL,
	[RmaEmailConfigurationStateRelationStateId] [int] NOT NULL,
 CONSTRAINT [DW_PK_EcomRmaEmailConfigurationStateRelation] PRIMARY KEY CLUSTERED 
(
	[RmaEmailConfigurationStateRelationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomRmaEvents]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomRmaEvents](
	[RmaEventId] [int] IDENTITY(1,1) NOT NULL,
	[RmaEventType] [nvarchar](255) NOT NULL,
	[RmaEventDescription] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomRmaEventTranslations]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomRmaEventTranslations](
	[RmaEventTranslationEventType] [nvarchar](255) NOT NULL,
	[RmaEventTranslationLanguageId] [nvarchar](50) NOT NULL,
	[RmaEventTranslatedDescription] [nvarchar](max) NOT NULL,
	[RmaEventTranslationAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomRmaOrderLines]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomRmaOrderLines](
	[RmaOrderLineId] [int] IDENTITY(1,1) NOT NULL,
	[RmaOrderLineRmaId] [nvarchar](50) NOT NULL,
	[RmaOrderLineOrderLineId] [nvarchar](50) NOT NULL,
	[RmaOrderLineSerialNumber] [nvarchar](max) NULL,
 CONSTRAINT [DW_PK_EcomRmaOrderLines] PRIMARY KEY CLUSTERED 
(
	[RmaOrderLineId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomRmas]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomRmas](
	[RmaId] [nvarchar](50) NOT NULL,
	[RmaReplacementOrderId] [nvarchar](50) NULL,
	[RmaEmailNotificationLanguage] [nvarchar](50) NOT NULL,
	[RmaStateId] [int] NOT NULL,
	[RmaClosed] [bit] NOT NULL,
	[RmaDeleted] [bit] NOT NULL,
	[RmaCustomerNumber] [nvarchar](255) NULL,
	[RmaCustomerCompany] [nvarchar](255) NULL,
	[RmaCustomerName] [nvarchar](255) NULL,
	[RmaCustomerAddress] [nvarchar](255) NULL,
	[RmaCustomerAddress2] [nvarchar](255) NULL,
	[RmaCustomerZip] [nvarchar](50) NULL,
	[RmaCustomerCity] [nvarchar](255) NULL,
	[RmaCustomerCountry] [nvarchar](50) NULL,
	[RmaCustomerRegion] [nvarchar](50) NULL,
	[RmaCustomerPhone] [nvarchar](50) NULL,
	[RmaCustomerFax] [nvarchar](50) NULL,
	[RmaCustomerEmail] [nvarchar](255) NULL,
	[RmaCustomerCell] [nvarchar](50) NULL,
	[RmaCustomerRefId] [nvarchar](255) NULL,
	[RmaCustomerEAN] [nvarchar](255) NULL,
	[RmaCustomerVatRegNumber] [nvarchar](255) NULL,
	[RmaDeliveryCompany] [nvarchar](255) NULL,
	[RmaDeliveryName] [nvarchar](255) NULL,
	[RmaDeliveryAddress] [nvarchar](255) NULL,
	[RmaDeliveryAddress2] [nvarchar](255) NULL,
	[RmaDeliveryZip] [nvarchar](50) NULL,
	[RmaDeliveryCity] [nvarchar](255) NULL,
	[RmaDeliveryCountry] [nvarchar](50) NULL,
	[RmaDeliveryRegion] [nvarchar](50) NULL,
	[RmaDeliveryPhone] [nvarchar](50) NULL,
	[RmaDeliveryFax] [nvarchar](50) NULL,
	[RmaDeliveryEmail] [nvarchar](255) NULL,
	[RmaDeliveryCell] [nvarchar](50) NULL,
	[RmaType] [int] NULL,
	[RmaAutoId] [int] IDENTITY(1,1) NOT NULL,
	[RmaCustomerCountryCode] [nvarchar](50) NULL,
	[RmaDeliveryCountryCode] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomRmaStates]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomRmaStates](
	[RmaStateId] [int] IDENTITY(1,1) NOT NULL,
	[RmaStateDefaultName] [nvarchar](255) NOT NULL,
	[RmaStateDefaultDescription] [nvarchar](max) NULL,
	[RmaStateTypeRelation] [nvarchar](max) NULL,
	[RmaStateIsDefaultStateForNewRma] [bit] NULL,
 CONSTRAINT [DW_PK_EcomRmaStates] PRIMARY KEY CLUSTERED 
(
	[RmaStateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomRmaStateTranslations]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomRmaStateTranslations](
	[RmaStateId] [int] NOT NULL,
	[RmaStateLanguageId] [nvarchar](50) NOT NULL,
	[RmaStateName] [nvarchar](255) NULL,
	[RmaStateDescription] [nvarchar](max) NULL,
	[RmaStateTranslationAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomRoundings]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomRoundings](
	[RoundingId] [nvarchar](50) NOT NULL,
	[RoundingName] [nvarchar](255) NULL,
	[RoundingModIntegerPart] [int] NULL,
	[RoundingModDecimalPart] [int] NULL,
	[RoundingModIntegerCorrection] [int] NULL,
	[RoundingModDecimalCorrection] [int] NULL,
	[RoundingMethod] [int] NULL,
	[RoundingDecimals] [int] NULL,
	[RoundingAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomSalesDiscount]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomSalesDiscount](
	[SalesDiscountId] [nvarchar](50) NOT NULL,
	[SalesDiscountName] [nvarchar](255) NULL,
	[SalesDiscountDiscountType] [nvarchar](255) NULL,
	[SalesDiscountCustomersAndGroups] [ntext] NULL,
	[SalesDiscountParameters] [ntext] NULL,
	[SalesDiscountActive] [bit] NULL,
	[SalesDiscountDescription] [nvarchar](max) NULL,
	[SalesDiscountValueType] [nvarchar](50) NULL,
	[SalesDiscountValueFixed] [float] NULL,
	[SalesDiscountValuePercentage] [float] NULL,
	[SalesDiscountValueProducts] [nvarchar](max) NULL,
	[SalesDiscountDateFrom] [bigint] NULL,
	[SalesDiscountDateTo] [bigint] NULL,
	[SalesDiscountConvertedToNewFormat] [bit] NULL,
	[SalesDiscountXMLParamsBackup] [nvarchar](max) NULL,
	[SalesDiscountShop] [nvarchar](255) NULL,
	[SalesDiscountCountries] [nvarchar](max) NULL,
	[SalesDiscountAutoId] [int] IDENTITY(1,1) NOT NULL,
	[SalesDiscountMinimumBasketSize] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomSalesDiscountCurrencies]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomSalesDiscountCurrencies](
	[SalesDiscountCurrenciesDiscountId] [nvarchar](50) NOT NULL,
	[SalesDiscountCurrenciesCurrencyCode] [nvarchar](3) NOT NULL,
	[SalesDiscountCurrenciesDiscountValue] [float] NOT NULL,
	[SalesDiscountCurrencyAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomSalesDiscountLanguages]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomSalesDiscountLanguages](
	[SalesDiscountLanguagesDiscountId] [nvarchar](50) NOT NULL,
	[SalesDiscountLanguagesLanguageId] [nvarchar](50) NOT NULL,
	[SalesDiscountLanguagesName] [nvarchar](255) NULL,
	[SalesDiscountLanguagesDescription] [nvarchar](max) NULL,
	[SalesDiscountLanguageAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomSavedForLater]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomSavedForLater](
	[SavedForLaterId] [int] IDENTITY(1,1) NOT NULL,
	[SavedForLaterProductId] [nvarchar](30) NOT NULL,
	[SavedForLaterVariantId] [nvarchar](255) NOT NULL,
	[SavedForLaterLanguageId] [nvarchar](50) NOT NULL,
	[SavedForLaterSessionId] [int] NULL,
	[SavedForLaterDateAdded] [datetime] NULL,
 CONSTRAINT [DW_PK_EcomSavedForLater] PRIMARY KEY CLUSTERED 
(
	[SavedForLaterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomShippings]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomShippings](
	[ShippingId] [nvarchar](50) NOT NULL,
	[ShippingLanguageId] [nvarchar](50) NOT NULL,
	[ShippingName] [nvarchar](255) NULL,
	[ShippingDescription] [nvarchar](max) NULL,
	[ShippingPriceOverMaxWeight] [float] NULL,
	[ShippingFreeFeeAmount] [float] NULL,
	[ShippingServiceSystemName] [nvarchar](max) NULL,
	[ShippingServiceParameters] [nvarchar](max) NULL,
	[ShippingSorting] [int] NULL,
	[ShippingAutoId] [int] IDENTITY(1,1) NOT NULL,
	[ShippingFeeSelection] [nvarchar](10) NULL,
	[ShippingIcon] [nvarchar](255) NULL,
	[ShippingLimitsUseLogic] [int] NOT NULL,
	[ShippingFeeRulesSource] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomShopGroupRelation]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomShopGroupRelation](
	[ShopGroupShopId] [nvarchar](255) NOT NULL,
	[ShopGroupGroupId] [nvarchar](255) NOT NULL,
	[ShopGroupRelationsSorting] [int] NULL,
	[ShopGroupRelationAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomShopLanguageRelation]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomShopLanguageRelation](
	[ShopId] [nvarchar](255) NOT NULL,
	[LanguageId] [nvarchar](50) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [DW_PK_EcomShopLanguageRelation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomShops]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomShops](
	[ShopId] [nvarchar](255) NOT NULL,
	[ShopName] [nvarchar](255) NULL,
	[ShopCreated] [datetime] NULL CONSTRAINT [DW_DF_EcomShops_Created]  DEFAULT (getdate()),
	[ShopDefault] [bit] NULL CONSTRAINT [DW_DF_EcomShops_Default]  DEFAULT ((0)),
	[ShopIcon] [nvarchar](255) NULL,
	[ShopOrderFlowId] [int] NULL,
	[ShopStockStateId] [nvarchar](255) NULL,
	[ShopOrderContextId] [nvarchar](50) NULL,
	[ShopAutoId] [int] IDENTITY(1,1) NOT NULL,
	[ShopStockLocationID] [bigint] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomShopStockLocationRelation]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomShopStockLocationRelation](
	[ShopRelationStockLocationId] [int] NOT NULL,
	[ShopRelationShopId] [nvarchar](255) NOT NULL,
	[ShopStockLocationRelationAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomStockGroups]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomStockGroups](
	[StockGroupId] [nvarchar](50) NOT NULL,
	[StockGroupName] [nvarchar](255) NULL,
	[StockGroupAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomStockLocation]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomStockLocation](
	[StockLocationId] [int] IDENTITY(1,1) NOT NULL,
	[StockLocationName] [nvarchar](255) NOT NULL,
	[StockLocationDescription] [nvarchar](max) NULL,
	[StockLocationLanguageId] [nvarchar](50) NULL,
	[StockSortOrder] [int] NULL,
	[StockLocationGroupId] [bigint] NOT NULL,
 CONSTRAINT [DW_PK_EcomStockLocation] PRIMARY KEY CLUSTERED 
(
	[StockLocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomStockStatusLanguageValue]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomStockStatusLanguageValue](
	[StockStatusLanguageValueId] [nvarchar](50) NOT NULL,
	[StockStatusLanguageValueLinesId] [nvarchar](50) NOT NULL,
	[StockStatusLanguageValueLanguageId] [nvarchar](50) NOT NULL,
	[StockStatusLanguageValueText] [nvarchar](255) NOT NULL,
	[StockStatusLanguageValueDeliveryValue] [nvarchar](255) NOT NULL,
	[StockStatusLanguageValueDeliveryText] [nvarchar](255) NOT NULL,
	[StockStatusLanguageValueAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomStockStatusLine]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomStockStatusLine](
	[StockStatusLinesId] [nvarchar](50) NOT NULL,
	[StockStatusLinesGroupId] [nvarchar](50) NOT NULL,
	[StockStatusLinesRate] [float] NOT NULL,
	[StockStatusLinesDefinition] [nvarchar](50) NOT NULL,
	[StockStatusLinesIcon] [nvarchar](255) NOT NULL,
	[StockStatusLineAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomStockUnit]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomStockUnit](
	[StockUnitProductId] [nvarchar](30) NOT NULL,
	[StockUnitVariantId] [nvarchar](255) NOT NULL,
	[StockUnitId] [nvarchar](50) NOT NULL,
	[StockUnitQuantity] [float] NULL,
	[StockUnitWeight] [float] NULL,
	[StockUnitVolume] [float] NULL,
	[StockUnitStockLocationId] [bigint] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [DW_PK_EcomStockUnit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomTaxSettings]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomTaxSettings](
	[TaxSettingId] [int] IDENTITY(1,1) NOT NULL,
	[TaxSettingName] [nvarchar](255) NULL,
	[TaxSettingActive] [bit] NOT NULL,
	[TaxSettingProviderSettings] [nvarchar](max) NULL,
 CONSTRAINT [DW_PK_EcomTaxSettings] PRIMARY KEY CLUSTERED 
(
	[TaxSettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomTrackAndTrace]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomTrackAndTrace](
	[TrackAndTraceId] [int] IDENTITY(1,1) NOT NULL,
	[TrackAndTraceName] [nvarchar](255) NOT NULL,
	[TrackAndTraceURL] [nvarchar](max) NOT NULL,
	[TrackAndTraceParameters] [nvarchar](max) NULL,
 CONSTRAINT [DW_PK_EcomTrackAndTrace] PRIMARY KEY CLUSTERED 
(
	[TrackAndTraceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomTree]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomTree](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL CONSTRAINT [DW_DF_EcomTree_ParentId]  DEFAULT ((0)),
	[Text] [nvarchar](50) NOT NULL,
	[Alt] [smallint] NULL CONSTRAINT [DW_DF_EcomTree_Alt]  DEFAULT ((0)),
	[TreeIcon] [nvarchar](255) NULL,
	[TreeIconOpen] [nvarchar](255) NULL,
	[TreeUrl] [nvarchar](255) NULL,
	[TreeChildPopulate] [nvarchar](50) NULL,
	[TreeSort] [smallint] NULL CONSTRAINT [DW_DF_EcomTree_Sort]  DEFAULT ((0)),
	[TreeHasAccessModuleSystemName] [nvarchar](255) NULL,
 CONSTRAINT [DW_PK_EcomTree] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomUserPermission]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomUserPermission](
	[UserPermissionTypeGUID] [uniqueidentifier] NOT NULL,
	[UserPermissionUserId] [int] NOT NULL,
	[UserPermissionRights] [int] NOT NULL,
	[UserPermissionAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomUserPermissionType]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomUserPermissionType](
	[UserPermissionType] [nvarchar](50) NOT NULL,
	[UserPermissionTypeId] [nvarchar](255) NOT NULL,
	[UserPermissionTypeGUID] [uniqueidentifier] NOT NULL,
	[UserPermissionTypeAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomValidationGroups]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomValidationGroups](
	[ValidationGroupId] [nvarchar](50) NOT NULL,
	[ValidationGroupName] [nvarchar](255) NULL,
	[ValidationGroupAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomValidationGroupsTranslation]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomValidationGroupsTranslation](
	[EcomValidationGroupsTranslationValidationGroupID] [nvarchar](50) NOT NULL,
	[EcomValidationGroupsTranslationValidationGroupLanguageID] [nvarchar](50) NOT NULL,
	[EcomValidationGroupsTranslationValidationGroupName] [nvarchar](255) NULL,
 CONSTRAINT [EcomValidationGroupsTranslation_PK] PRIMARY KEY CLUSTERED 
(
	[EcomValidationGroupsTranslationValidationGroupID] ASC,
	[EcomValidationGroupsTranslationValidationGroupLanguageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomValidationRules]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomValidationRules](
	[ValidationRuleId] [nvarchar](50) NOT NULL,
	[ValidationRuleValidationId] [nvarchar](50) NULL,
	[ValidationRuleType] [nvarchar](255) NULL,
	[ValidationRuleParameters] [nvarchar](max) NULL,
	[ValidationRuleAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomValidations]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomValidations](
	[ValidationId] [nvarchar](50) NOT NULL,
	[ValidationGroupId] [nvarchar](50) NULL,
	[ValidationFieldName] [nvarchar](255) NULL,
	[ValidationUseAndOperator] [bit] NULL,
	[ValidationFieldType] [nvarchar](255) NULL,
	[ValidationAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomVariantGroupOptionPropertyValue]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomVariantGroupOptionPropertyValue](
	[VariantGroupOptionPropertyValueOptionID] [nvarchar](50) NOT NULL,
	[VariantGroupOptionPropertyValuePropertyID] [nvarchar](50) NOT NULL,
	[VariantGroupOptionPropertyValueLanguageID] [nvarchar](50) NOT NULL,
	[VariantGroupOptionPropertyValue] [nvarchar](255) NULL,
 CONSTRAINT [DW_PK_VariantGroupOptionPropertyValues] PRIMARY KEY CLUSTERED 
(
	[VariantGroupOptionPropertyValueOptionID] ASC,
	[VariantGroupOptionPropertyValuePropertyID] ASC,
	[VariantGroupOptionPropertyValueLanguageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomVariantGroupProductRelation]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomVariantGroupProductRelation](
	[VariantGroupProductRelationId] [nvarchar](255) NOT NULL,
	[VariantGroupProductRelationProductId] [nvarchar](30) NULL,
	[VariantGroupProductRelationVariantGroupId] [nvarchar](255) NULL,
	[VariantGroupProductRelationSorting] [int] NULL,
	[VariantGroupProductRelationPriceDif] [bit] NULL,
	[VariantGroupProductRelationAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomVariantGroupProperty]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomVariantGroupProperty](
	[VariantGroupPropertyID] [nvarchar](50) NOT NULL,
	[VariantGroupPropertyGroupID] [nvarchar](255) NOT NULL,
	[VariantGroupPropertyName] [nvarchar](255) NULL,
	[VariantGroupPropertySystemName] [nvarchar](255) NULL,
 CONSTRAINT [DW_PK_VariantGroupProperties] PRIMARY KEY CLUSTERED 
(
	[VariantGroupPropertyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomVariantGroups]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomVariantGroups](
	[VariantGroupId] [nvarchar](255) NOT NULL,
	[VariantGroupLanguageId] [nvarchar](50) NOT NULL,
	[VariantGroupName] [nvarchar](255) NULL,
	[VariantGroupLabel] [nvarchar](255) NULL,
	[VariantGroupUnit] [bit] NULL,
	[VariantGroupAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomVariantOptionsProductRelation]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomVariantOptionsProductRelation](
	[VariantOptionsProductRelationProductId] [nvarchar](30) NOT NULL,
	[VariantOptionsProductRelationVariantId] [nvarchar](255) NOT NULL,
	[VariantOptionsProductRelationAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomVariantsOptions]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomVariantsOptions](
	[VariantOptionId] [nvarchar](255) NOT NULL,
	[VariantOptionLanguageId] [nvarchar](50) NOT NULL,
	[VariantOptionGroupId] [nvarchar](255) NULL,
	[VariantOptionName] [nvarchar](255) NULL,
	[VariantOptionImgSmall] [nvarchar](255) NULL,
	[VariantOptionImgMedium] [nvarchar](255) NULL,
	[VariantOptionImgLarge] [nvarchar](255) NULL,
	[VariantOptionSortOrder] [int] NULL,
	[VariantOptionAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomVatCountryRelations]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomVatCountryRelations](
	[VatCountryRelGroupId] [nvarchar](50) NOT NULL,
	[VatCountryRelCountryId] [nvarchar](3) NOT NULL,
	[VatCountryRelLangId] [nvarchar](50) NOT NULL,
	[VatCountryRelVat] [float] NULL,
	[VatCountryRelAutoId] [int] IDENTITY(1,1) NOT NULL,
	[VatCountryRelReverseChargeForVat] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomVatGroups]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomVatGroups](
	[VatGroupId] [nvarchar](50) NOT NULL,
	[VatGroupName] [nvarchar](255) NULL,
	[VatGroupLanguageId] [nvarchar](50) NOT NULL,
	[VatGroupVatName] [nvarchar](255) NULL,
	[VatGroupConfigurableVatProviderSettings] [nvarchar](max) NULL,
	[VatGroupAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomVoucherLists]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomVoucherLists](
	[VoucherListId] [int] IDENTITY(1,1) NOT NULL,
	[VoucherListName] [nvarchar](255) NOT NULL,
	[VoucherListActive] [bit] NOT NULL,
 CONSTRAINT [DW_PK_EcomVoucherLists] PRIMARY KEY CLUSTERED 
(
	[VoucherListId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EcomVouchers]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EcomVouchers](
	[VoucherId] [int] IDENTITY(1,1) NOT NULL,
	[VoucherListId] [int] NOT NULL,
	[VoucherCode] [nvarchar](36) NOT NULL,
	[VoucherDateUsed] [datetime] NULL,
	[VoucherUsedOrderId] [nvarchar](50) NULL,
	[VoucherAccessUserId] [int] NULL,
	[VoucherStatus] [nvarchar](50) NULL,
 CONSTRAINT [DW_PK_EcomVouchers] PRIMARY KEY CLUSTERED 
(
	[VoucherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EditorConfiguration]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditorConfiguration](
	[EditorConfigurationId] [int] IDENTITY(1,1) NOT NULL,
	[EditorConfigurationName] [nvarchar](255) NOT NULL,
	[EditorConfigurationXML] [ntext] NULL,
	[EditorConfigurationType] [nvarchar](50) NULL,
	[EditorConfigurationAddInProviderName] [nvarchar](max) NULL,
	[EditorConfigurationIsDefault] [bit] NULL,
 CONSTRAINT [DW_PK_EditorConfiguration] PRIMARY KEY CLUSTERED 
(
	[EditorConfigurationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmailAction]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailAction](
	[ActionId] [int] IDENTITY(1,1) NOT NULL,
	[ActionSessionId] [nvarchar](50) NOT NULL,
	[ActionTimestamp] [datetime] NOT NULL,
	[ActionType] [nvarchar](255) NOT NULL,
	[ActionMessageId] [int] NULL,
	[ActionMessageIdString] [nvarchar](50) NULL,
	[ActionRecipientId] [int] NULL,
	[ActionRecipientIdString] [nvarchar](50) NULL,
 CONSTRAINT [DW_PK_EmailAction] PRIMARY KEY CLUSTERED 
(
	[ActionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmailDeliveryProvider]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailDeliveryProvider](
	[DeliveryProviderId] [int] IDENTITY(1,1) NOT NULL,
	[DeliveryProviderName] [nvarchar](255) NOT NULL,
	[DeliveryProviderConfiguration] [nvarchar](max) NOT NULL,
 CONSTRAINT [DW_PK_EmailDeliveryProvider] PRIMARY KEY CLUSTERED 
(
	[DeliveryProviderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmailMarketingEmail]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailMarketingEmail](
	[EmailId] [int] IDENTITY(1,1) NOT NULL,
	[EmailPageId] [int] NULL,
	[EmailRecipientProviderConfiguration] [nvarchar](max) NULL,
	[EmailTemplate] [nvarchar](255) NULL,
	[EmailSenderName] [nvarchar](255) NOT NULL,
	[EmailSenderEmail] [nvarchar](255) NOT NULL,
	[EmailSubject] [nvarchar](255) NOT NULL,
	[EmailFileAttachmentPath] [nvarchar](255) NULL,
	[EmailEncoding] [nvarchar](50) NOT NULL,
	[EmailTrackingProviderConfiguration] [nvarchar](max) NULL,
	[EmailUnsubscribePageId] [int] NULL,
	[EmailMessageId] [int] NULL,
	[EmailDomainName] [nvarchar](255) NULL,
	[EmailVariationName] [nvarchar](255) NULL,
	[EmailVariationEmail] [nvarchar](255) NULL,
	[EmailVariationSubject] [nvarchar](255) NULL,
	[EmailVariationPageId] [int] NULL,
	[EmailVariationMessageId] [int] NULL,
	[EmailSplitTestIsSent] [bit] NOT NULL,
	[EmailFolderId] [int] NULL,
	[EmailCreatedDate] [datetime] NULL,
	[EmailTopFolderId] [int] NULL,
	[EmailDeliveryProviderId] [int] NULL,
	[OriginalMessageId] [int] NULL,
	[EmailOriginalMessageId] [int] NULL,
	[EmailIsTemplate] [bit] NULL,
	[EmailTemplateName] [nvarchar](255) NULL,
	[EmailTemplateDescription] [nvarchar](max) NULL,
	[EmailUnsubscribeText] [nvarchar](255) NULL,
	[EmailVariationUnsubscribeText] [nvarchar](255) NULL,
	[EmailScheduledActive] [bit] NOT NULL,
	[EmailScheduledSendTime] [datetime] NULL,
	[EmailOriginalPreHeader] [nvarchar](max) NULL,
	[EmailVariantPreHeader] [nvarchar](max) NULL,
	[EmailScheduledRepeatInterval] [int] NULL,
	[EmailScheduledEndTime] [datetime] NULL,
	[EmailRequireUniqueRecipients] [bit] NOT NULL,
	[EmailRecipientSpecificContent] [bit] NOT NULL,
	[EmailLastExportDate] [datetime] NULL,
	[EmailQuarantinePeriod] [int] NULL,
	[EmailIncludePlainTextContent] [bit] NULL,
	[EmailPlainTextContent] [nvarchar](max) NULL,
 CONSTRAINT [DW_PK_EmailMarketingEmail] PRIMARY KEY CLUSTERED 
(
	[EmailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmailMarketingEngagementIndex]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailMarketingEngagementIndex](
	[EngagementIndexId] [int] IDENTITY(1,1) NOT NULL,
	[EngagementIndexEmailId] [int] NULL,
	[EngagementIndexOpenMailIndex] [int] NULL,
	[EngagementIndexOpenMailActive] [bit] NULL,
	[EngagementIndexClickLinkIndex] [int] NULL,
	[EngagementIndexClickLinkActive] [bit] NULL,
	[EngagementIndexAddingProductsIndex] [int] NULL,
	[EngagementIndexAddingProductsActive] [bit] NULL,
	[EngagementIndexPlacingOrderIndex] [int] NULL,
	[EngagementIndexPlacingOrderActive] [bit] NULL,
	[EngagementIndexSigningEmailIndex] [int] NULL,
	[EngagementIndexSigningEmailActive] [bit] NULL,
	[EngagementIndexUnsubscribesEmailIndex] [int] NULL,
	[EngagementIndexUnsubscribesEmailActive] [bit] NULL,
	[EngagementIndexOriginalLinks] [nvarchar](max) NULL,
	[EngagementIndexVariantLinks] [nvarchar](max) NULL,
	[EngagementIndexTopFolderId] [int] NULL,
 CONSTRAINT [DW_PK_EmailMarketingEngagementIndex] PRIMARY KEY CLUSTERED 
(
	[EngagementIndexId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmailMarketingFolder]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailMarketingFolder](
	[FolderId] [int] IDENTITY(1,1) NOT NULL,
	[FolderParentId] [int] NULL,
	[FolderName] [nvarchar](255) NULL,
	[FolderTopFolderId] [int] NULL,
 CONSTRAINT [DW_PK_EmailMarketingFolder] PRIMARY KEY CLUSTERED 
(
	[FolderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmailMarketingSplitTest]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailMarketingSplitTest](
	[SplitTestId] [int] IDENTITY(1,1) NOT NULL,
	[SplitTestEmailId] [int] NULL,
	[SplitTestName] [nvarchar](255) NULL,
	[SplitTestIncludes] [int] NULL,
	[SplitTestIncludesUnits] [int] NOT NULL,
	[SplitTestGoalType] [nvarchar](50) NOT NULL,
	[SplitTestActive] [bit] NULL,
	[SplitTestStartDate] [datetime] NULL,
	[SplitTestEndDate] [datetime] NULL,
	[SplitTestEndType] [int] NOT NULL,
	[SplitTestOpenedEmails] [int] NULL,
	[SplitTestOpenedEmailsUnits] [int] NOT NULL,
	[SplitTestHoursTillEnd] [int] NULL,
	[SplitTestAfterEndSendBest] [bit] NULL,
	[SplitTestAfterEndNotify] [bit] NULL,
	[SplitTestAfterEndActionEmail] [nvarchar](255) NULL,
	[SplitTestStartDateTimeZoneId] [nvarchar](256) NULL,
	[SplitTestEndDateTimeZoneId] [nvarchar](256) NULL,
	[SplitTestScheduledSendActive] [bit] NOT NULL,
	[SplitTestScheduledSendTime] [datetime] NULL,
	[SplitTestScheduledPickWinnerActive] [bit] NOT NULL,
	[SplitTestScheduledPickWinnerTime] [datetime] NULL,
	[SplitTestWinnerEndDate] [datetime] NULL,
 CONSTRAINT [DW_PK_EmailMarketingSplitTest] PRIMARY KEY CLUSTERED 
(
	[SplitTestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmailMarketingTopFolder]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailMarketingTopFolder](
	[TopFolderId] [int] IDENTITY(1,1) NOT NULL,
	[TopFolderName] [nvarchar](255) NULL,
	[TopFolderSenderName] [nvarchar](255) NULL,
	[TopFolderSenderEmail] [nvarchar](255) NULL,
	[TopFolderSubject] [nvarchar](255) NULL,
	[TopFolderDomainName] [nvarchar](255) NULL,
	[TopFolderTrackingProviderConfiguration] [nvarchar](max) NULL,
	[TopFolderUnsubscribePageId] [int] NULL,
	[TopFolderDeliveryProviderId] [int] NULL,
	[TopFolderUnsubscribeText] [nvarchar](255) NULL,
	[TopFolderRecipientSpecificContent] [bit] NOT NULL,
	[TopFolderRecipientProviderConfiguration] [nvarchar](max) NULL,
	[TopFolderQuarantinePeriod] [int] NULL,
 CONSTRAINT [DW_PK_EmailMarketingTopFolder] PRIMARY KEY CLUSTERED 
(
	[TopFolderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmailMessage]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailMessage](
	[MessageId] [int] IDENTITY(1,1) NOT NULL,
	[MessageSubject] [nvarchar](255) NULL,
	[MessageSenderName] [nvarchar](255) NULL,
	[MessageSenderEmail] [nvarchar](255) NOT NULL,
	[MessageDomainUrl] [nvarchar](255) NOT NULL,
	[MessageRecipientsSource] [nvarchar](255) NOT NULL,
	[MessageHtmlBody] [nvarchar](max) NULL,
	[MessagePreprocessedHtmlBody] [nvarchar](max) NULL,
	[MessageFileAttachmentPaths] [nvarchar](max) NULL,
	[MessageDeliveryProviderId] [int] NULL,
	[MessageRequireUniqueRecipients] [bit] NOT NULL,
	[MessageRecipientSpecificContent] [bit] NOT NULL,
	[MessageRecipientContentProvider] [nvarchar](max) NULL,
	[MessageQuarantinePeriod] [int] NULL,
	[MessageIncludePlainTextBody] [bit] NULL,
	[MessagePlainTextBody] [nvarchar](max) NULL,
 CONSTRAINT [DW_PK_EmailMessage] PRIMARY KEY CLUSTERED 
(
	[MessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmailMessageTag]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailMessageTag](
	[MessageTagId] [int] IDENTITY(1,1) NOT NULL,
	[MessageTagMessageId] [int] NOT NULL,
	[MessageTagName] [nvarchar](255) NOT NULL,
	[MessageTagValue] [nvarchar](max) NULL,
	[MessageTagDataType] [nvarchar](255) NOT NULL,
 CONSTRAINT [DW_PK_EmailMessageTag] PRIMARY KEY CLUSTERED 
(
	[MessageTagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmailRecipient]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailRecipient](
	[RecipientId] [int] IDENTITY(1,1) NOT NULL,
	[RecipientKey] [nvarchar](255) NOT NULL,
	[RecipientName] [nvarchar](255) NULL,
	[RecipientEmailAddress] [nvarchar](255) NULL,
	[RecipientMessageId] [int] NOT NULL,
	[RecipientSentTime] [datetime] NULL,
	[RecipientErrorMessage] [nvarchar](max) NULL,
	[RecipientErrorTime] [datetime] NULL,
	[RecipientTags] [nvarchar](max) NULL,
	[RecipientSecret] [nvarchar](50) NULL,
 CONSTRAINT [DW_PK_EmailRecipient] PRIMARY KEY CLUSTERED 
(
	[RecipientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExternalLoginProvider]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalLoginProvider](
	[ProviderId] [int] IDENTITY(1,1) NOT NULL,
	[ProviderName] [nvarchar](255) NULL,
	[ProviderType] [nvarchar](255) NULL,
	[ProviderFullType] [nvarchar](max) NULL,
	[ProviderParameters] [nvarchar](max) NULL,
	[ProviderCreated] [datetime] NULL,
	[ProviderUpdated] [datetime] NULL,
	[ProviderActive] [bit] NOT NULL,
 CONSTRAINT [DW_PK_ExternalLoginProvider] PRIMARY KEY CLUSTERED 
(
	[ProviderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Form]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Form](
	[FormId] [int] IDENTITY(1,1) NOT NULL,
	[FormName] [nvarchar](255) NULL,
	[FormEmailFieldId] [int] NULL,
	[FormColumnShiftFormFieldId] [int] NULL,
	[FormLabelOverField] [bit] NOT NULL,
	[FormLabelBold] [bit] NOT NULL,
	[FormLabelRequired] [nvarchar](255) NULL,
	[FormAttenoDependencyFieldId] [int] NULL,
	[FormAttenoEmailFieldId] [int] NULL,
	[FormAttenoSettings] [nvarchar](255) NULL,
	[FormMaxSubmits] [int] NULL,
	[FormDefaultTemplate] [nvarchar](255) NULL,
	[FormCssClass] [nvarchar](255) NULL,
	[FormCreatedDate] [datetime] NULL,
	[FormUpdatedDate] [datetime] NULL,
	[FormCreatedBy] [int] NULL,
	[FormUpdatedBy] [int] NULL,
	[FormFieldSize] [int] NULL,
	[FormUniqueId] UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),
 CONSTRAINT [DW_PK_Form] PRIMARY KEY CLUSTERED 
(
	[FormId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FormField]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormField](
	[FormFieldId] [int] IDENTITY(1,1) NOT NULL,
	[FormFieldFormId] [int] NULL,
	[FormFieldName] [nvarchar](255) NULL,
	[FormFieldType] [nvarchar](50) NULL,
	[FormFieldDefaultValue] [nvarchar](255) NULL,
	[FormFieldMaxLength] [int] NULL,
	[FormFieldSize] [int] NULL,
	[FormFieldRequired] [bit] NOT NULL,
	[FormFieldTextareaHeight] [int] NULL,
	[FormFieldSort] [int] NULL,
	[FormFieldActive] [bit] NOT NULL,
	[FormFieldText] [ntext] NULL,
	[FormFieldImage] [nvarchar](255) NULL,
	[FormFieldColor] [nvarchar](50) NULL,
	[FormFieldAutoValue] [nvarchar](255) NULL,
	[FormFieldSystemName] [nvarchar](255) NULL,
	[FormFieldAttenoFieldName] [nvarchar](255) NULL,
	[FormFieldCreatedDate] [datetime] NULL,
	[FormFieldUpdatedDate] [datetime] NULL,
	[FormFieldCreatedBy] [int] NULL,
	[FormFieldUpdatedBy] [int] NULL,
	[FormFieldGroupID] [int] NULL,
	[FormFieldCssClass] [nvarchar](255) NULL,
	[FormFieldPlaceholder] [nvarchar](255) NULL,
	[FormFieldDescription] [nvarchar](max) NULL,
	[FormFieldPrepend] [nvarchar](255) NULL,
	[FormFieldAppend] [nvarchar](255) NULL,
	[FormFieldUniqueId] UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),
 CONSTRAINT [DW_PK_FormField] PRIMARY KEY CLUSTERED 
(
	[FormFieldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FormFieldOption]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormFieldOption](
	[FormFieldOptionId] [int] IDENTITY(1,1) NOT NULL,
	[FormFieldOptionFieldId] [int] NULL,
	[FormFieldOptionText] [nvarchar](255) NULL,
	[FormFieldOptionValue] [nvarchar](255) NULL,
	[FormFieldOptionDefault] [bit] NULL,
	[FormFieldOptionActive] [bit] NULL,
	[FormFieldOptionSort] [int] NULL,
 CONSTRAINT [DW_PK_FormFieldOption] PRIMARY KEY CLUSTERED 
(
	[FormFieldOptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FormOptions]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormOptions](
	[FormOptionsId] [int] IDENTITY(1,1) NOT NULL,
	[FormOptionsFormFieldId] [int] NULL,
	[FormOptionsText] [nvarchar](255) NULL,
	[FormOptionsValue] [nvarchar](255) NULL,
	[FormOptionsDefaultSelected] [bit] NOT NULL,
	[FormOptionsSort] [int] NULL,
	[FormOptionsActive] [bit] NOT NULL,
	[FormOptionsUniqueId] UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),
 CONSTRAINT [DW_PK_FormOptions] PRIMARY KEY CLUSTERED 
(
	[FormOptionsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FormSubmit]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormSubmit](
	[FormSubmitID] [int] IDENTITY(1,1) NOT NULL,
	[FormSubmitFormID] [int] NULL,
	[FormSubmitDate] [datetime] NULL,
	[FormSubmitIp] [nvarchar](30) NULL,
	[FormSubmitSessionId] [nvarchar](30) NULL,
	[FormSubmitPageId] [int] NULL,
	[FormSubmitUserId] [int] NULL,
 CONSTRAINT [DW_PK_FormSubmit] PRIMARY KEY CLUSTERED 
(
	[FormSubmitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FormSubmitData]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormSubmitData](
	[FormSubmitDataID] [int] IDENTITY(1,1) NOT NULL,
	[FormSubmitDataSubmitID] [int] NULL,
	[FormSubmitDataFieldID] [int] NULL,
	[FormSubmitDataFieldname] [nvarchar](255) NULL,
	[FormSubmitDataValue] [nvarchar](max) NULL,
 CONSTRAINT [DW_PK_FormSubmitData] PRIMARY KEY CLUSTERED 
(
	[FormSubmitDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FormTemplate]    Script Date: 08.02.2019 14:32:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormTemplate](
	[FormTemplateId] [int] IDENTITY(1,1) NOT NULL,
	[FormTemplateAreadId] [int] NOT NULL DEFAULT ((0)),
	[FormTemplateType] [int] NOT NULL DEFAULT ((0)),
	[FormTemplateTemplate] [nvarchar](255) NULL,
 CONSTRAINT [PK_FormTemplate] PRIMARY KEY CLUSTERED 
(
	[FormTemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ForumAnswerVotes]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForumAnswerVotes](
	[ForumMessageId] [int] NOT NULL,
	[ForumUserId] [int] NOT NULL,
	[ForumAnswerVoteAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ForumCategory]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForumCategory](
	[ForumCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[ForumCategoryName] [nvarchar](250) NULL,
	[ForumCategoryDescription] [ntext] NULL,
	[ForumCategoryActive] [bit] NOT NULL,
	[ForumCategoryAreaId] [int] NULL,
	[ForumCategoryCreatedDate] [datetime] NULL,
 CONSTRAINT [DW_PK_ForumCategory] PRIMARY KEY CLUSTERED 
(
	[ForumCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ForumMessage]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForumMessage](
	[ForumMessageId] [int] IDENTITY(1,1) NOT NULL,
	[ForumMessageParentId] [int] NULL,
	[ForumMessageCategoryId] [int] NULL,
	[ForumMessageName] [nvarchar](250) NULL,
	[ForumMessageBody] [ntext] NULL,
	[ForumMessageCreated] [datetime] NULL,
	[ForumMessageAuthor] [nvarchar](250) NULL,
	[ForumMessageAuthorEmail] [nvarchar](250) NULL,
	[ForumMessageAuthorId] [int] NULL,
	[ForumMessageNotifyAuthor] [bit] NOT NULL,
	[ForumMessageIsSticky] [bit] NULL,
	[ForumMessageIsAnswer] [bit] NULL,
	[ForumMessageAnswerVotes] [int] NULL,
	[ForumMessageIsActive] [bit] NOT NULL,
 CONSTRAINT [DW_PK_ForumMessage] PRIMARY KEY CLUSTERED 
(
	[ForumMessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [DW_IX_ForumMessage_ParentId_CategoryID_IsActive] ON [dbo].[ForumMessage]([ForumMessageParentId], [ForumMessageCategoryID], [ForumMessageIsActive]) INCLUDE ([ForumMessageCreated]);
GO
/****** Object:  Table [dbo].[ForumUserRelation]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForumUserRelation](
	[ForumUserRelationId] [int] IDENTITY(1,1) NOT NULL,
	[ForumUserRelationUserId] [int] NOT NULL,
	[ForumUserRelationForumCategoryId] [int] NOT NULL,
	[ForumUserRelationThreadId] [int] NULL,
	[ForumUserRelationName] [nvarchar](255) NULL,
	[ForumUserRelationEmail] [nvarchar](255) NULL,
	[ForumUserRelationType] [int] NULL,
 CONSTRAINT [DW_PK_ForumUserRelation] PRIMARY KEY CLUSTERED 
(
	[ForumUserRelationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [DW_IX_ForumUserRelation_UserID] ON [dbo].[ForumUserRelation]([ForumUserRelationUserID]);
GO
/****** Object:  Table [dbo].[GeneralLog]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeneralLog](
	[LogId] [int] IDENTITY(1,1) NOT NULL,
	[LogAction] [nvarchar](250) NULL,
	[LogDescription] [ntext] NULL,
	[LogUsername] [nvarchar](250) NULL,
	[LogDate] [datetime] NULL,
 CONSTRAINT [DW_PK_GeneralLog] PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IndexScheduledUpdate]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndexScheduledUpdate](
	[IndexScheduledUpdateId] [int] IDENTITY(1,1) NOT NULL,
	[IndexScheduledUpdatePath] [nvarchar](255) NOT NULL,
	[IndexScheduledUpdateType] [int] NULL,
	[IndexScheduledUpdateInterval] [int] NULL,
	[IndexScheduledUpdateStartDate] [datetime] NULL,
	[IndexScheduledUpdateLastExecuted] [datetime] NULL,
	[IndexScheduledUpdateIsFullUpdate] [bit] NULL,
 CONSTRAINT [DW_PK_IndexScheduledUpdate] PRIMARY KEY CLUSTERED 
(
	[IndexScheduledUpdateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ItemList]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemList](
	[ItemListId] [int] IDENTITY(1,1) NOT NULL,
	[ItemListItemType] [nvarchar](255) NOT NULL,
 CONSTRAINT [ItemList_PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ItemListId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ItemListRelation]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemListRelation](
	[ItemListRelationId] [int] IDENTITY(1,1) NOT NULL,
	[ItemListRelationItemListId] [int] NOT NULL,
	[ItemListRelationItemId] [nvarchar](255) NOT NULL,
	[ItemListRelationSort] [int] NOT NULL,
 CONSTRAINT [ItemListRelation_PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ItemListRelationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ItemNamedItemList]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemNamedItemList](
	[ItemNamedItemListId] [int] IDENTITY(1,1) NOT NULL,
	[ItemNamedItemListName] [nvarchar](255) NOT NULL,
	[ItemNamedItemListSourceType] [nvarchar](50) NOT NULL,
	[ItemNamedItemListSourceId] [bigint] NOT NULL,
	[ItemNamedItemListItemListId] [int] NOT NULL,
 CONSTRAINT [DW_PK_ItemNamedItemList] PRIMARY KEY CLUSTERED 
(
	[ItemNamedItemListId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ItemTypeDefinitions]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemTypeDefinitions](
	[ItemTypeDefinitionsSystemName] [nvarchar](255) NOT NULL,
	[ItemTypeDefinitionsMetadata] [nvarchar](max) NOT NULL,
	[ItemTypeDefinitionsModified] [datetime] NOT NULL,
	[ItemTypeDefinitionAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ItemTypeId]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemTypeId](
	[ItemType] [nvarchar](255) NOT NULL,
	[Current] [int] NOT NULL,
	[Seed] [int] NULL,
	[ItemTypeIdAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ManagementTree]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManagementTree](
	[ManagementTreeId] [int] IDENTITY(1,1) NOT NULL,
	[ManagementTreeSystemId] [nvarchar](30) NULL,
	[ManagementTreeSystemParentId] [nvarchar](30) NULL,
	[ManagementTreeName] [nvarchar](255) NULL,
	[ManagementTreeLink] [nvarchar](255) NULL,
	[ManagementTreeTarget] [nvarchar](20) NULL,
	[ManagementTreeIcon] [nvarchar](255) NULL,
	[ManagementTreeSort] [int] NULL,
 CONSTRAINT [DW_PK_ManagementTree] PRIMARY KEY CLUSTERED 
(
	[ManagementTreeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ManagementTreeAccessRule]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManagementTreeAccessRule](
	[ManagementTreeAccessRuleId] [int] IDENTITY(1,1) NOT NULL,
	[ManagementTreeAccessRulePath] [nvarchar](max) NOT NULL,
	[ManagementTreeAccessRuleType] [nvarchar](30) NOT NULL,
 CONSTRAINT [DW_PK_ManagementTreeAccessRule] PRIMARY KEY CLUSTERED 
(
	[ManagementTreeAccessRuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ManagementTreeAccessRuleEntry]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManagementTreeAccessRuleEntry](
	[ManagementTreeAccessRuleEntryId] [int] IDENTITY(1,1) NOT NULL,
	[ManagementTreeAccessRuleEntryRuleId] [int] NOT NULL,
	[ManagementTreeAccessRuleEntryType] [nvarchar](255) NOT NULL,
 CONSTRAINT [DW_PK_ManagementTreeAccessRuleEntry] PRIMARY KEY CLUSTERED 
(
	[ManagementTreeAccessRuleEntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Module]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Module](
	[ModuleId] [int] IDENTITY(1,1) NOT NULL,
	[ModuleSystemName] [nvarchar](50) NULL,
	[ModuleName] [nvarchar](100) NULL,
	[ModuleAccess] [bit] NOT NULL CONSTRAINT [DW_DF_Module_Access]  DEFAULT ((0)),
	[ModuleScript] [nvarchar](255) NULL,
	[ModuleSort] [int] NULL CONSTRAINT [DW_DF_Module_Sort]  DEFAULT ((0)),
	[ModuleParagraph] [bit] NOT NULL CONSTRAINT [DW_DF_Module_Paragraph]  DEFAULT ((0)),
	[ModuleDatabase] [nvarchar](255) NULL,
	[ModuleTable] [nvarchar](50) NULL,
	[ModuleFieldId] [nvarchar](50) NULL,
	[ModuleFieldName] [nvarchar](255) NULL,
	[ModuleWhere] [nvarchar](255) NULL,
	[ModuleSearch] [bit] NOT NULL CONSTRAINT [DW_DF_Module_Search]  DEFAULT ((0)),
	[ModuleControlPanel] [nvarchar](250) NULL,
	[ModuleHiddenMode] [int] NULL CONSTRAINT [DW_DF_Module_HiddenMode]  DEFAULT ((0)),
	[ModuleSearchIn] [ntext] NULL,
	[ModuleDescription] [ntext] NULL,
	[ModuleEcomNotInstalledAccess] [int] NULL,
	[ModuleIsBeta] [bit] NOT NULL CONSTRAINT [DW_DF_Module_IsBeta]  DEFAULT ((0)),
	[ModuleParagraphEditPath] [nvarchar](255) NULL,
	[ModuleDefaultPermissions] [nvarchar](max) NULL,
	[ModuleIconClass] [nvarchar](255) NULL,
 CONSTRAINT [DW_PK_Module] PRIMARY KEY CLUSTERED 
(
	[ModuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MyPageLink]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MyPageLink](
	[MyPageLinkId] [int] IDENTITY(1,1) NOT NULL,
	[MyPageLinkSort] [int] NULL,
	[MyPageLinkLink] [nvarchar](250) NULL,
 CONSTRAINT [DW_PK_MyPageLink] PRIMARY KEY CLUSTERED 
(
	[MyPageLinkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MyPageModule]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MyPageModule](
	[MyPageModuleId] [int] IDENTITY(1,1) NOT NULL,
	[MyPageModuleSortNumber] [int] NOT NULL,
	[MyPageModuleModuleSystemName] [nvarchar](50) NOT NULL,
 CONSTRAINT [DW_PK_MyPageModule] PRIMARY KEY CLUSTERED 
(
	[MyPageModuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[News]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[NewsID] [int] IDENTITY(1,1) NOT NULL,
	[NewsCategoryID] [int] NULL,
	[NewsActiveFrom] [datetime] NULL,
	[NewsActiveTo] [datetime] NULL,
	[NewsActive] [bit] NOT NULL,
	[NewsArchive] [bit] NOT NULL,
	[NewsHeading] [nvarchar](255) NULL,
	[NewsManchet] [ntext] NULL,
	[NewsAuthor] [nvarchar](255) NULL,
	[NewsText] [ntext] NULL,
	[NewsImage] [nvarchar](255) NULL,
	[NewsInitials] [nvarchar](255) NULL,
	[NewsCreatedDate] [datetime] NULL,
	[NewsUpdatedDate] [datetime] NULL,
	[NewsDate] [datetime] NULL,
	[NewsTemplateID] [int] NULL,
	[NewsSmallImage] [nvarchar](255) NULL,
	[NewsLink] [nvarchar](255) NULL,
	[NewsApprovalType] [int] NULL,
	[NewsApprovalState] [int] NULL,
	[NewsVersionTimeStamp] [datetime] NULL,
	[NewsLinkPopup] [bit] NOT NULL,
	[NewsUserCreate] [int] NULL,
	[NewsUserEdit] [int] NULL,
	[NewsImageText] [nvarchar](255) NULL,
	[NewsVersionParentID] [int] NULL,
	[NewsVersionNumber] [int] NULL,
	[NewsWorkflowID] [int] NULL,
	[NewsWorkflowState] [int] NULL,
	[NewsVersionComments] [ntext] NULL,
	[NewsMetaURL] [nvarchar](255) NULL,
 CONSTRAINT [DW_PK_News] PRIMARY KEY CLUSTERED 
(
	[NewsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NonBrowserSession]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NonBrowserSession](
	[SessionId] [int] IDENTITY(1,1) NOT NULL,
	[SessionSessionId] [nvarchar](50) NOT NULL,
	[SessionTimestamp] [datetime] NOT NULL,
	[SessionIP] [nvarchar](50) NULL,
	[SessionIPCountry] [nvarchar](50) NULL,
	[SessionUserAgentString] [nvarchar](255) NULL,
	[SessionUserAgentName] [nvarchar](25) NULL,
	[SessionUserAgentFamily] [nvarchar](25) NULL,
	[SessionUserAgentOperatingSystem] [nvarchar](25) NULL,
	[SessionUserAgentPlatform] [nvarchar](25) NULL,
	[SessionUserAgentIsMobile] [bit] NULL,
	[SessionUserAgentIsTablet] [bit] NULL,
	[SessionUserAgentEmailClient] [nvarchar](50) NULL,
 CONSTRAINT [DW_PK_NonBrowserSession] PRIMARY KEY CLUSTERED 
(
	[SessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OMCContentRestriction]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OMCContentRestriction](
	[OMCContentRestrictionId] [int] IDENTITY(1,1) NOT NULL,
	[OMCContentRestrictionItemId] [nvarchar](255) NOT NULL,
	[OMCContentRestrictionItemType] [nvarchar](100) NOT NULL,
	[OMCContentRestrictionPresetId] [int] NULL,
	[OMCContentRestrictionReference] [nvarchar](255) NULL,
	[OMCContentRestrictionEvaluationType] [int] NULL,
	[OMCContentRestrictionApplyMode] [int] NULL,
	[OMCContentRestrictionProfileApplyMode] [int] NULL,
 CONSTRAINT [DW_PK_OMCContentRestriction] PRIMARY KEY CLUSTERED 
(
	[OMCContentRestrictionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OMCContentRestrictionPreset]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OMCContentRestrictionPreset](
	[OMCContentRestrictionPresetId] [int] IDENTITY(1,1) NOT NULL,
	[OMCContentRestrictionPresetItemType] [nvarchar](100) NOT NULL,
	[OMCContentRestrictionPresetName] [nvarchar](255) NOT NULL,
	[OMCContentRestrictionPresetEvaluationType] [int] NULL,
	[OMCContentRestrictionPresetApplyMode] [int] NULL,
 CONSTRAINT [DW_PK_OMCContentRestrictionPreset] PRIMARY KEY CLUSTERED 
(
	[OMCContentRestrictionPresetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OMCContentRestrictionPresetData]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OMCContentRestrictionPresetData](
	[OMCContentRestrictionPresetDataId] [int] IDENTITY(1,1) NOT NULL,
	[OMCContentRestrictionPresetDataPresetId] [int] NOT NULL,
	[OMCContentRestrictionPresetDataReference] [nvarchar](255) NOT NULL,
	[OMCContentRestrictionPresetDataApplyMode] [int] NULL,
 CONSTRAINT [DW_PK_OMCContentRestrictionPresetData] PRIMARY KEY CLUSTERED 
(
	[OMCContentRestrictionPresetDataId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OMCEmailNotification]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OMCEmailNotification](
	[OMCEmailNotificationId] [int] IDENTITY(1,1) NOT NULL,
	[OMCEmailNotificationProfileId] [int] NOT NULL,
	[OMCEmailNotificationName] [nvarchar](255) NOT NULL,
	[OMCEmailNotificationType] [nvarchar](255) NULL,
 CONSTRAINT [DW_PK_OMCEmailNotification] PRIMARY KEY CLUSTERED 
(
	[OMCEmailNotificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OMCEmailNotificationRecipient]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OMCEmailNotificationRecipient](
	[OMCEmailNotificationRecipientId] [int] IDENTITY(1,1) NOT NULL,
	[OMCEmailNotificationRecipientNotificationId] [int] NOT NULL,
	[OMCEmailNotificationRecipientName] [nvarchar](255) NULL,
	[OMCEmailNotificationRecipientEmail] [nvarchar](255) NOT NULL,
 CONSTRAINT [DW_PK_OMCEmailNotificationRecipient] PRIMARY KEY CLUSTERED 
(
	[OMCEmailNotificationRecipientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OMCEmailProfile]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OMCEmailProfile](
	[OMCEmailProfileId] [int] IDENTITY(1,1) NOT NULL,
	[OMCEmailProfileSenderName] [nvarchar](255) NULL,
	[OMCEmailProfileSenderEmail] [nvarchar](255) NOT NULL,
	[OMCEmailProfileSubject] [nvarchar](255) NULL,
	[OMCEmailProfileTemplate] [nvarchar](255) NULL,
	[OMCEmailProfileEncoding] [nvarchar](100) NULL,
 CONSTRAINT [DW_PK_OMCEmailProfile] PRIMARY KEY CLUSTERED 
(
	[OMCEmailProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OMCExperiment]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OMCExperiment](
	[OMCExperimentId] [int] IDENTITY(1,1) NOT NULL,
	[OMCExperimentPageId] [int] NULL,
	[OMCExperimentName] [nvarchar](255) NULL,
	[OMCExperimentCreatedDate] [datetime] NULL,
	[OMCExperimentEditedDate] [datetime] NULL,
	[OMCExperimentUserCreate] [int] NULL,
	[OMCExperimentUserEdit] [int] NULL,
	[OMCExperimentType] [int] NULL,
	[OMCExperimentActive] [bit] NULL,
	[OMCExperimentAlternatePage] [nvarchar](100) NULL,
	[OMCExperimentGoalType] [nvarchar](50) NULL,
	[OMCExperimentGoalValue] [nvarchar](3500) NULL,
	[OMCExperimentCombinations] [int] NULL,
	[OMCExperimentIncludes] [int] NULL,
	[OMCExperimentPattern] [int] NULL,
	[OMCExperimentConversionMetric] [int] NULL,
	[OMCExperimentShowToBots] [int] NULL,
	[OMCExperimentIsCustomProvider] [bit] NULL,
	[OMCExperimentEndingType] [int] NULL,
	[OMCExperimentEndingValue] [int] NULL,
	[OMCExperimentEndingDate] [datetime] NULL,
	[OMCExperimentEndingDateTimeZoneId] [nvarchar](255) NULL,
	[OMCExperimentEndingAction] [int] NULL,
	[OMCExperimentEndingNotifyEmails] [nvarchar](max) NULL,
	[OMCExperimentEndingIsNeedToStop] [bit] NULL,
	[OMCExperimentEmailTemplate] [nvarchar](255) NULL,
 CONSTRAINT [DW_PK_OMCExperiment] PRIMARY KEY CLUSTERED 
(
	[OMCExperimentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OMCExperimentView]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OMCExperimentView](
	[OMCExperimentViewId] [int] IDENTITY(1,1) NOT NULL,
	[OMCExperimentViewExperimentId] [int] NULL,
	[OMCExperimentViewTime] [datetime] NULL,
	[OMCExperimentViewVisitorId] [nvarchar](255) NULL,
	[OMCExperimentViewCombinationId] [int] NULL,
	[OMCExperimentViewGoalTime] [datetime] NULL,
	[OMCExperimentViewGoalType] [nvarchar](50) NULL,
	[OMCExperimentViewGoalValue] [nvarchar](50) NULL,
 CONSTRAINT [DW_PK_OMCExperimentView] PRIMARY KEY CLUSTERED 
(
	[OMCExperimentViewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OMCLeadAuthorToken]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OMCLeadAuthorToken](
	[LeadAuthorTokenId] [int] IDENTITY(1,1) NOT NULL,
	[LeadAuthorTokenVisitorId] [nvarchar](255) NULL,
	[LeadAuthorTokenToken] [nvarchar](255) NULL,
	[LeadAuthorTokenSentDate] [datetime] NULL,
 CONSTRAINT [DW_PK_OMCLeadAuthorToken] PRIMARY KEY CLUSTERED 
(
	[LeadAuthorTokenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OMCLeadEmail]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OMCLeadEmail](
	[LeadEmailId] [int] IDENTITY(1,1) NOT NULL,
	[LeadEmailVisitorId] [nvarchar](255) NULL,
	[LeadEmailSenderName] [nvarchar](255) NULL,
	[LeadEmailSenderEmail] [nvarchar](255) NULL,
	[LeadEmailSubject] [nvarchar](255) NULL,
	[LeadEmailRecipientEmails] [nvarchar](max) NULL,
	[LeadEmailSentDate] [datetime] NULL,
	[LeadEmailAdditionalMessage] [nvarchar](max) NULL,
	[LeadEmailSendParameter] [int] NULL,
	[LeadEmailLeadsLimit] [int] NULL,
	[LeadEmailTemplate] [nvarchar](255) NULL,
	[LeadEmailWebsite] [nvarchar](255) NULL,
	[LeadEmailIsActionAllowed] [bit] NULL,
	[LeadEmailScheduledDate] [datetime] NULL,
	[LeadEmailRepeatPeriod] [int] NULL,
	[LeadEmailRepeatUnits] [int] NULL,
	[LeadEmailIsScheduledActive] [bit] NULL,
	[LeadEmailLeadStates] [nvarchar](max) NULL,
 CONSTRAINT [DW_PK_OMCLeadEmail] PRIMARY KEY CLUSTERED 
(
	[LeadEmailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OMCLink]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OMCLink](
	[LinkId] [int] IDENTITY(1,1) NOT NULL,
	[LinkUrl] [nvarchar](max) NOT NULL,
	[LinkReferenceType] [nvarchar](255) NOT NULL,
	[LinkReferenceKey] [nvarchar](255) NOT NULL,
 CONSTRAINT [DW_PK_OMCLink] PRIMARY KEY CLUSTERED 
(
	[LinkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OMCLinkClick]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OMCLinkClick](
	[LinkClickId] [int] IDENTITY(1,1) NOT NULL,
	[LinkClickLinkId] [int] NOT NULL,
	[LinkClickClickerKey] [nvarchar](255) NOT NULL,
	[LinkClickClickTime] [datetime] NOT NULL,
	[LinkClickSessionId] [nvarchar](255) NULL,
 CONSTRAINT [DW_PK_OMCLinkClick] PRIMARY KEY CLUSTERED 
(
	[LinkClickId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OMCParagraphSegment]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OMCParagraphSegment](
	[ParagraphSegmentID] [int] IDENTITY(1,1) NOT NULL,
	[ParagraphSegmentParagraphID] [int] NOT NULL,
	[ParagraphSegmentShowAsDefault] [bit] NOT NULL,
 CONSTRAINT [DW_PK_OMCParagraphSegment] PRIMARY KEY CLUSTERED 
(
	[ParagraphSegmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OMCParagraphSegmentSelection]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OMCParagraphSegmentSelection](
	[ParagraphSegmentSelectionID] [int] IDENTITY(1,1) NOT NULL,
	[ParagraphSegmentSelectionSegmentID] [int] NOT NULL,
	[ParagraphSegmentSelectionSmartSearchID] [nvarchar](50) NOT NULL,
	[ParagraphSegmentSelectionSelected] [bit] NOT NULL,
 CONSTRAINT [DW_PK_OMCParagraphSegmentSelection] PRIMARY KEY CLUSTERED 
(
	[ParagraphSegmentSelectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OMCProfileDynamics]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OMCProfileDynamics](
	[OMCProfileDynamicsId] [int] IDENTITY(1,1) NOT NULL,
	[OMCProfileDynamicsItemId] [nvarchar](255) NOT NULL,
	[OMCProfileDynamicsItemType] [nvarchar](100) NOT NULL,
	[OMCProfileDynamicsPresetId] [int] NULL,
	[OMCProfileDynamicsReference] [nvarchar](255) NULL,
	[OMCProfileDynamicsGrowth] [int] NULL,
 CONSTRAINT [DW_PK_OMCProfileDynamics] PRIMARY KEY CLUSTERED 
(
	[OMCProfileDynamicsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OMCProfileDynamicsPreset]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OMCProfileDynamicsPreset](
	[OMCProfileDynamicsPresetId] [int] IDENTITY(1,1) NOT NULL,
	[OMCProfileDynamicsPresetItemType] [nvarchar](100) NOT NULL,
	[OMCProfileDynamicsPresetName] [nvarchar](255) NOT NULL,
 CONSTRAINT [DW_PK_OMCProfileDynamicsPreset] PRIMARY KEY CLUSTERED 
(
	[OMCProfileDynamicsPresetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OMCProfileDynamicsPresetData]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OMCProfileDynamicsPresetData](
	[OMCProfileDynamicsPresetDataId] [int] IDENTITY(1,1) NOT NULL,
	[OMCProfileDynamicsPresetDataPresetId] [int] NOT NULL,
	[OMCProfileDynamicsPresetDataReference] [nvarchar](255) NOT NULL,
	[OMCProfileDynamicsPresetDataGrowth] [int] NULL,
 CONSTRAINT [DW_PK_OMCProfileDynamicsPresetData] PRIMARY KEY CLUSTERED 
(
	[OMCProfileDynamicsPresetDataId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OMCRenamedLead]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OMCRenamedLead](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IPAddress] [nvarchar](15) NOT NULL,
	[Company] [nvarchar](255) NOT NULL,
 CONSTRAINT [DW_PK_OMCRenamedLead] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OMCReturningVisitorNotification]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OMCReturningVisitorNotification](
	[OMCReturningVisitorNotificationId] [int] IDENTITY(1,1) NOT NULL,
	[OMCReturningVisitorNotificationVisitorId] [nvarchar](255) NOT NULL,
	[OMCReturningVisitorNotificationSettingsId] [int] NOT NULL,
 CONSTRAINT [DW_PK_OMCReturningVisitorNotification] PRIMARY KEY CLUSTERED 
(
	[OMCReturningVisitorNotificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Page]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Page](
	[PageId] [int] IDENTITY(1,1) NOT NULL,
	[PageParentPageId] [int] NULL,
	[PageAreaId] [int] NULL,
	[PageSort] [int] NULL,
	[PageMenuText] [nvarchar](255) NULL,
	[PageActive] [bit] NOT NULL,
	[PageMouseOver] [nvarchar](255) NULL,
	[PageImageMouseOver] [nvarchar](255) NULL,
	[PageImageMouseOut] [nvarchar](255) NULL,
	[PageImageActivePage] [nvarchar](255) NULL,
	[PageTopImage] [nvarchar](255) NULL,
	[PageTextAndImage] [bit] NOT NULL,
	[PageProtect] [bit] NOT NULL,
	[PagePassword] [nvarchar](50) NULL,
	[PageCreatedDate] [datetime] NULL,
	[PageUpdatedDate] [datetime] NULL,
	[PageShowTopImage] [bit] NOT NULL,
	[PageStylesheet] [int] NULL,
	[PageBackgroundImage] [nvarchar](255) NULL,
	[PageTopLogoImage] [nvarchar](255) NULL,
	[PageActiveFrom] [datetime] NULL,
	[PageActiveTo] [datetime] NULL,
	[PageShortCut] [nvarchar](255) NULL,
	[PageShortCutRedirect] [bit] NOT NULL,
	[PagePermission] [nvarchar](max) NULL,
	[PagePermissionType] [int] NULL,
	[PagePermissionTemplate] [nvarchar](255) NULL,
	[PageAllowsearch] [bit] NOT NULL,
	[PageShowInSitemap] [bit] NOT NULL,
	[PageAllowClick] [bit] NOT NULL,
	[PageMenuLogoImage] [nvarchar](255) NULL,
	[PageFooterImage] [nvarchar](255) NULL,
	[PageDescription] [ntext] NULL,
	[PageKeywords] [ntext] NULL,
	[PageUserCreate] [int] NULL,
	[PageUserEdit] [int] NULL,
	[PageRotation] [nvarchar](255) NULL,
	[PageDublinCore] [ntext] NULL,
	[PageShowUpdateDate] [bit] NOT NULL,
	[PageManager] [int] NULL,
	[PageManageFrequence] [int] NULL,
	[PageWorkflowId] [int] NULL,
	[PageWorkflowState] [int] NULL,
	[PageShowInLegend] [bit] NOT NULL,
	[PageShowFavorites] [bit] NOT NULL,
	[PageVersionParentId] [int] NULL,
	[PageVersionNumber] [int] NULL,
	[PageCacheMode] [int] NULL,
	[PageCacheFrequence] [int] NULL,
	[PageInheritId] [int] NULL,
	[PageInheritUpdateDate] [datetime] NULL,
	[PageInheritStatus] [int] NULL,
	[PageApprovalType] [int] NULL,
	[PageApprovalState] [int] NULL,
	[PageVersionTimeStamp] [datetime] NULL,
	[PageApprovalStep] [int] NULL,
	[PageTopLevelIntegration] [bit] NOT NULL,
	[PageForIntegration] [bit] NOT NULL,
	[PageRotationType] [int] NULL,
	[PageMasterPageId] [int] NULL,
	[PageTopLogoImageAlt] [nvarchar](255) NULL,
	[PageNavigation_UseEcomGroups] [bit] NULL,
	[PageNavigationParentType] [nvarchar](50) NULL,
	[PageNavigationGroupSelector] [nvarchar](max) NULL,
	[PageNavigationMaxLevels] [nvarchar](50) NULL,
	[PageNavigationProductPage] [nvarchar](max) NULL,
	[PageNavigationShopSelector] [nvarchar](max) NULL,
	[PageUserManagementPermissions] [nvarchar](max) NULL,
	[PageUrlName] [nvarchar](50) NULL,
	[PageHidden] [bit] NULL,
	[PageIsTemplate] [bit] NULL,
	[PageTemplateDescription] [nvarchar](255) NULL,
	[PageMetaTitle] [nvarchar](255) NULL,
	[PageCopyOf] [int] NULL,
	[PageLayout] [nvarchar](255) NULL,
	[PageDisableAutoMeta] [bit] NULL,
	[PageMasterType] [int] NULL,
	[PageRobots404] [bit] NULL,
	[PageLayoutApplyToSubPages] [int] NULL,
	[PageNavigationTag] [nvarchar](255) NULL,
	[PageLayoutPhone] [nvarchar](255) NULL,
	[PageLayoutTablet] [nvarchar](255) NULL,
	[PageHideForPhones] [bit] NULL,
	[PageHideForTablets] [bit] NULL,
	[PageHideForDesktops] [bit] NULL,
	[PageHasExperiment] [bit] NULL,
	[PageSSLMode] [int] NULL,
	[PageUrlIgnoreForChildren] [bit] NULL,
	[PageUrlUseAsWritten] [bit] NULL,
	[PageUrlDataProvider] [NVARCHAR](255) NULL,
    [PageUrlDataProviderParameters] [NVARCHAR](max) NULL,
	[PageItemType] [nvarchar](255) NULL,
	[PageItemId] [nvarchar](255) NULL,
	[PagePropertyItemId] [nvarchar](255) NULL,
	[PageMetaCanonical] [nvarchar](255) NULL,
	[PageExactUrl] [nvarchar](255) NULL,
	[PageNoindex] [bit] NULL,
	[PageNofollow] [bit] NULL,
	[PageContentType] [nvarchar](50) NULL,
	[PageCreationRules] [nvarchar](max) NULL,
	[PageIsFolder] [bit] NULL,
	[PageNavigationIncludeProducts] [bit] NULL,
	[PageNavigationProvider] [nvarchar](255) NULL,
	[PageUniqueId] UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),
 CONSTRAINT [DW_PK_Page] PRIMARY KEY CLUSTERED 
(
	[PageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Paragraph]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paragraph](
	[ParagraphId] [int] IDENTITY(1,1) NOT NULL,
	[ParagraphPageId] [int] NULL,
	[ParagraphModuleSystemName] [nvarchar](50) NULL,
	[ParagraphIndex] [bit] NOT NULL,
	[ParagraphSort] [int] NULL,
	[ParagraphHeader] [nvarchar](255) NULL,
	[ParagraphShowHeader] [bit] NOT NULL,
	[ParagraphShowParagraph] [bit] NOT NULL,
	[ParagraphSubHeader] [ntext] NULL,
	[ParagraphText] [ntext] NULL,
	[ParagraphIgnoreBreaks] [bit] NOT NULL,
	[ParagraphImage] [nvarchar](255) NULL,
	[ParagraphImageURL] [nvarchar](255) NULL,
	[ParagraphImageTarget] [nvarchar](250) NULL,
	[ParagraphImageNewWindow] [bit] NOT NULL,
	[ParagraphImageMouseOver] [nvarchar](255) NULL,
	[ParagraphImageCaption] [nvarchar](255) NULL,
	[ParagraphImageResize] [bit] NOT NULL,
	[ParagraphImageVAlign] [nvarchar](255) NULL,
	[ParagraphImageVSpace] [int] NULL,
	[ParagraphImageHAlign] [nvarchar](50) NULL,
	[ParagraphImageHSpace] [int] NULL,
	[ParagraphTemplateId] [int] NULL,
	[ParagraphValidFrom] [datetime] NULL,
	[ParagraphValidTo] [datetime] NULL,
	[ParagraphCreatedDate] [datetime] NULL,
	[ParagraphUpdatedDate] [datetime] NULL,
	[ParagraphBottomSpace] [int] NULL,
	[ParagraphModuleSettings] [ntext] NULL,
	[ParagraphUserCreate] [int] NULL,
	[ParagraphUserEdit] [int] NULL,
	[ParagraphImageLinkTarget] [nvarchar](255) NULL,
	[ParagraphWorkflowId] [int] NULL,
	[ParagraphWorkflowState] [int] NULL,
	[ParagraphInheritId] [int] NULL,
	[ParagraphInheritUpdateDate] [datetime] NULL,
	[ParagraphInheritStatus] [int] NULL,
	[ParagraphApprovalType] [int] NULL,
	[ParagraphApprovalState] [int] NULL,
	[ParagraphVersionTimeStamp] [datetime] NULL,
	[ParagraphGlobalId] [int] NULL,
	[ParagraphMasterParagraphId] [int] NULL,
	[ParagraphPreview] [bit] NOT NULL,
	[ParagraphCopyOf] [int] NULL,
	[ParagraphModuleCSS] [nvarchar](max) NULL,
	[ParagraphModuleJS] [nvarchar](max) NULL,
	[ParagraphContainer] [nvarchar](255) NULL,
	[ParagraphTemplate] [nvarchar](255) NULL,
	[ParagraphPermission] [nvarchar](max) NULL,
	[ParagraphMasterType] [int] NULL,
	[ParagraphVariation] [int] NULL,
	[ParagraphItemType] [nvarchar](255) NULL,
	[ParagraphItemId] [nvarchar](255) NULL,
	[ParagraphHideForPhones] [bit] NULL,
	[ParagraphHideForTablets] [bit] NULL,
	[ParagraphHideForDesktops] [bit] NULL,
	[ParagraphUniqueId] UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),
	[ParagraphColumnsLarge] INT NULL,
	[ParagraphColumnsMedium] INT NULL,
	[ParagraphColumnsSmall] INT NULL,
	[ParentContainer] [nvarchar](max) NULL,
	[ContainerId] [nvarchar](max) NULL
 CONSTRAINT [DW_PK_Paragraph] PRIMARY KEY CLUSTERED 
(
	[ParagraphId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PersonalSettings]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonalSettings](
	[PersonalSettingsId] [int] IDENTITY(1,1) NOT NULL,
	[PersonalSettingsUserId] [int] NOT NULL,
	[PersonalSettingsPagePath] [nvarchar](max) NOT NULL,
	[PersonalSettingsControlId] [nvarchar](100) NULL,
	[PersonalSettingsData] [nvarchar](max) NULL,
 CONSTRAINT [DW_PK_PersonalSettings] PRIMARY KEY CLUSTERED 
(
	[PersonalSettingsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RecommendationModel]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecommendationModel](
	[RecommendationModelId] [int] IDENTITY(1,1) NOT NULL,
	[RecommendationModelServiceUrl] [nvarchar](255) NULL,
	[RecommendationModelServiceClientId] [nvarchar](255) NULL,
	[RecommendationModelServiceModelId] [nvarchar](255) NULL,
	[RecommendationModelServiceModelParameters] [nvarchar](max) NULL,
	[RecommendationModelName] [nvarchar](255) NULL,
	[RecommendationModelExportDataType] [nvarchar](255) NULL,
	[RecommendationModelExportStartTime] [datetime] NULL,
	[RecommendationModelExportInterval] [int] NULL,
	[RecommendationModelExportStatus] [nvarchar](255) NULL,
	[RecommendationModelExportStartedAt] [datetime] NULL,
	[RecommendationModelExportFinishedAt] [datetime] NULL,
	[RecommendationModelServiceModelData] [nvarchar](max) NULL,
	[RecommendationModelRecommendationsCacheLifetime] [int] NULL,
	[RecommendationModelExportRebuildServiceModel] [bit] NULL,
 CONSTRAINT [DW_PK_RecommendationModel] PRIMARY KEY CLUSTERED 
(
	[RecommendationModelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RecycleBin]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecycleBin](
	[RecycleBinID] [int] IDENTITY(1,1) NOT NULL,
	[RecycleBinType] [nvarchar](250) NOT NULL,
	[RecycleBinObjectID] [nvarchar](250) NOT NULL,
	[RecycleBinDescription] [nvarchar](250) NOT NULL,
	[RecycleBinData] [nvarchar](max) NOT NULL,
	[RecycleBinDeletedBy] [nvarchar](50) NOT NULL,
	[RecycleBinDeletedAt] [date] NOT NULL,
	[RecycleBinUnitID] [uniqueidentifier] NOT NULL,
	[RecycleBinUnitPrimary] [bit] NOT NULL,
 CONSTRAINT [PK_RecycleBin] PRIMARY KEY CLUSTERED 
(
	[RecycleBinID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ScheduledTask]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduledTask](
	[TaskId] [int] IDENTITY(1,1) NOT NULL,
	[TaskName] [nvarchar](255) NOT NULL,
	[TaskBegin] [datetime] NOT NULL,
	[TaskEnd] [datetime] NOT NULL,
	[TaskLastRun] [datetime] NOT NULL,
	[TaskNextRun] [datetime] NOT NULL,
	[TaskEnabled] [bit] NOT NULL,
	[TaskType] [int] NOT NULL,
	[TaskMinute] [int] NOT NULL CONSTRAINT [DW_DF_ScheduledTask_Minute]  DEFAULT ((-1)),
	[TaskHour] [int] NOT NULL CONSTRAINT [DW_DF_ScheduledTask_Hour]  DEFAULT ((-1)),
	[TaskDay] [int] NOT NULL CONSTRAINT [DW_DF_ScheduledTask_Day]  DEFAULT ((-1)),
	[TaskWday] [int] NOT NULL CONSTRAINT [DW_DF_ScheduledTask_Wday]  DEFAULT ((-1)),
	[TaskTarget] [nvarchar](2550) NULL,
	[TaskAssembly] [nvarchar](255) NULL,
	[TaskNamespace] [nvarchar](255) NULL,
	[TaskClass] [nvarchar](255) NULL,
	[TaskParam0] [nvarchar](255) NULL,
	[TaskParam1] [nvarchar](255) NULL,
	[TaskParam2] [nvarchar](255) NULL,
	[TaskParam3] [nvarchar](255) NULL,
	[TaskParam4] [nvarchar](255) NULL,
	[TaskAddInSettings] [ntext] NULL,
 CONSTRAINT [DW_PK_ScheduledTask] PRIMARY KEY CLUSTERED 
(
	[TaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ScheduledTaskType]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduledTaskType](
	[TypeId] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](255) NOT NULL,
 CONSTRAINT [DW_PK_ScheduledTaskType] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SeoPhrase]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeoPhrase](
	[SeoPhraseId] [int] IDENTITY(1,1) NOT NULL,
	[SeoPhrasePageId] [int] NOT NULL,
	[SeoPhraseText] [nvarchar](255) NULL,
	[SeoPhraseUrlId] [int] NULL,
 CONSTRAINT [DW_PK_SeoPhrase] PRIMARY KEY CLUSTERED 
(
	[SeoPhraseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SmsMessage]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmsMessage](
	[SmsMessageID] [int] IDENTITY(1,1) NOT NULL,
	[SmsMessageName] [nvarchar](max) NULL,
	[SmsMessageText] [nvarchar](max) NULL,
	[SmsMessageSendToGroup] [nvarchar](max) NULL,
	[SmsMessageCreated] [datetime] NULL,
	[SmsMessageUpdated] [datetime] NULL,
	[SmsMessageCreatedBy] [int] NULL,
	[SmsMessageUpdatedBy] [int] NULL,
	[SmsMessageRecipientCount] [int] NULL,
	[SmsMessageFirstMessageSent] [datetime] NULL,
	[SmsMessageLastMessageSent] [datetime] NULL,
	[SmsMessageDeliveredCount] [int] NULL,
 CONSTRAINT [SmsMessage_PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[SmsMessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SocialChannel]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialChannel](
	[ChannelId] [int] IDENTITY(1,1) NOT NULL,
	[ChannelName] [nvarchar](255) NULL,
	[ChannelType] [nvarchar](max) NULL,
	[ChannelParameters] [nvarchar](max) NULL,
	[ChannelCreated] [datetime] NULL,
	[ChannelUpdated] [datetime] NULL,
	[ChannelActive] [bit] NOT NULL,
 CONSTRAINT [DW_PK_SocialChannel] PRIMARY KEY CLUSTERED 
(
	[ChannelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SocialFolder]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialFolder](
	[FolderId] [int] IDENTITY(1,1) NOT NULL,
	[FolderParentId] [int] NULL,
	[FolderName] [nvarchar](255) NULL,
	[FolderTopFolderId] [int] NULL,
 CONSTRAINT [SocialFolder_PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[FolderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SocialMessage]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialMessage](
	[MessageId] [int] IDENTITY(1,1) NOT NULL,
	[MessageName] [nvarchar](255) NULL,
	[MessageText] [nvarchar](max) NULL,
	[MessageImage] [nvarchar](255) NULL,
	[MessageLink] [nvarchar](255) NULL,
	[MessageLinkId] [int] NULL,
	[MessageCreated] [datetime] NULL,
	[MessageUpdated] [datetime] NULL,
	[MessagePublished] [datetime] NULL,
	[MessageDisableParseLinks] [bit] NULL,
	[MessageLinkDomain] [nvarchar](max) NULL,
	[MessageFolderId] [int] NULL,
	[MessageTopFolderId] [int] NULL,
 CONSTRAINT [DW_PK_SocialMessage] PRIMARY KEY CLUSTERED 
(
	[MessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SocialPost]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialPost](
	[PostId] [int] IDENTITY(1,1) NOT NULL,
	[PostMessageId] [int] NULL,
	[PostChannelId] [int] NULL,
	[PostName] [nvarchar](255) NULL,
	[PostText] [nvarchar](max) NULL,
	[PostImage] [nvarchar](255) NULL,
	[PostLink] [nvarchar](255) NULL,
	[PostCreated] [datetime] NULL,
	[PostUpdated] [datetime] NULL,
	[PostPublished] [datetime] NULL,
	[PostResultSuccess] [bit] NULL,
	[PostResultStatusText] [nvarchar](max) NULL,
	[PostResultChannelPostLink] [nvarchar](max) NULL,
	[PostResultChannelPostIdentifier] [nvarchar](max) NULL,
	[PostParsedText] [nvarchar](max) NULL,
 CONSTRAINT [DW_PK_SocialPost] PRIMARY KEY CLUSTERED 
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SocialTask]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialTask](
	[SocialTaskId] [int] IDENTITY(1,1) NOT NULL,
	[SocialTaskMessageId] [int] NOT NULL,
	[SocialTaskType] [tinyint] NOT NULL,
	[SocialTaskActive] [bit] NOT NULL,
	[SocialTaskUrl] [nvarchar](1024) NOT NULL,
	[SocialTaskStartDate] [datetime] NOT NULL,
 CONSTRAINT [DW_PK_SocialTask] PRIMARY KEY CLUSTERED 
(
	[SocialTaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SocialTopFolder]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialTopFolder](
	[TopFolderId] [int] IDENTITY(1,1) NOT NULL,
	[TopFolderName] [nvarchar](255) NULL,
	[TopFolderChannelIds] [nvarchar](max) NULL,
 CONSTRAINT [SocialTopFolder_PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[TopFolderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StatExtranet]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatExtranet](
	[StatExtranetID] [int] IDENTITY(1,1) NOT NULL,
	[StatExtranetAccessUserID] [int] NULL,
	[StatExtranetTimeStamp] [datetime] NULL,
	[StatExtranetPageID] [int] NULL,
 CONSTRAINT [DW_PK_StatExtranetID] PRIMARY KEY CLUSTERED 
(
	[StatExtranetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Statv2Exclude]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statv2Exclude](
	[Statv2ExcludeId] [int] IDENTITY(1,1) NOT NULL,
	[Statv2ExcludeDescription] [nvarchar](255) NULL,
	[Statv2ExcludeFromIP] [nvarchar](255) NULL,
	[Statv2ExcludeToIP] [nvarchar](255) NULL,
 CONSTRAINT [DW_PK_Statv2Exclude] PRIMARY KEY CLUSTERED 
(
	[Statv2ExcludeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Statv2NotFound]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statv2NotFound](
	[Statv2NotFoundId] [int] IDENTITY(1,1) NOT NULL,
	[Statv2NotFoundPath] [nvarchar](255) NOT NULL,
	[Statv2NotFoundReferer] [nvarchar](255) NOT NULL,
	[Statv2NotFoundTimestamp] [datetime] NULL,
 CONSTRAINT [DW_PK_Statv2NotFound] PRIMARY KEY CLUSTERED 
(
	[Statv2NotFoundId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Statv2Object]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statv2Object](
	[Statv2ObjectId] [int] IDENTITY(1,1) NOT NULL,
	[Statv2ObjectSessionId] [nvarchar](50) NULL,
	[Statv2ObjectType] [nvarchar](255) NULL,
	[Statv2ObjectElement] [nvarchar](255) NULL,
	[Statv2ObjectTimestamp] [datetime] NULL,
	[StatV2ObjectVisitorId] [nvarchar](255) NULL,
	[Statv2ObjectOvnerId] [nvarchar](50) NULL,
	[Statv2ObjectPageId] [nvarchar](255) NULL,
	[Statv2ObjectValue] [nvarchar](255) NULL,
 CONSTRAINT [DW_PK_Statv2Object] PRIMARY KEY CLUSTERED 
(
	[Statv2ObjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Statv2Page]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statv2Page](
	[Statv2PageId] [int] IDENTITY(1,1) NOT NULL,
	[Statv2PagePageId] [int] NULL,
	[Statv2PageSessionId] [int] NOT NULL,
	[Statv2PageObjectId] [int] NULL,
 CONSTRAINT [DW_PK_Statv2Page] PRIMARY KEY CLUSTERED 
(
	[Statv2PageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Statv2Report]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statv2Report](
	[Statv2ReportId] [int] NOT NULL,
	[Statv2ReportType] [int] NOT NULL,
	[Statv2ReportName] [nvarchar](255) NULL,
	[Statv2ReportModuleSystemName] [nvarchar](max) NULL,
 CONSTRAINT [DW_PK_Statv2Report] PRIMARY KEY CLUSTERED 
(
	[Statv2ReportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Statv2Session]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statv2Session](
	[Statv2SessionId] [int] IDENTITY(1,1) NOT NULL,
	[Statv2SessionSessionId] [nvarchar](255) NULL,
	[Statv2SessionTimestamp] [datetime] NULL,
	[Statv2SessionTimestampEnd] [datetime] NULL,
	[Statv2SessionAreaId] [smallint] NULL,
	[Statv2SessionYear] [smallint] NULL,
	[Statv2SessionMonth] [smallint] NULL,
	[Statv2SessionWeek] [smallint] NULL,
	[Statv2SessionDay] [smallint] NULL,
	[Statv2SessionHour] [smallint] NULL,
	[Statv2SessionMinute] [smallint] NULL,
	[Statv2SessionUserAgentId] [int] NULL,
	[Statv2SessionBot] [bit] NOT NULL,
	[Statv2SessionFirstpage] [int] NULL,
	[Statv2SessionLastpage] [int] NULL,
	[Statv2SessionPageviews] [smallint] NULL,
	[Statv2SessionTimePrPage] [smallint] NULL,
	[Statv2SessionPath] [nvarchar](255) NULL,
	[Statv2SessionLastvisitDate] [datetime] NULL,
	[Statv2SessionGwCountry] [nvarchar](5) NULL,
	[Statv2SessionGwOwner] [nvarchar](255) NULL,
	[Statv2SessionGwDnsName] [nvarchar](100) NULL,
	[Statv2SessionGwIP] [nvarchar](15) NULL,
	[Statv2SessionGwIPDbl] [float] NULL,
	[Statv2SessionRefererUrl] [nvarchar](255) NULL,
	[Statv2SessionRefererDomain] [nvarchar](255) NULL,
	[Statv2SessionRefererTld] [nvarchar](10) NULL,
	[Statv2SessionRefererSearchWord] [nvarchar](255) NULL,
	[Statv2SessionRefererSearchWordPagenumber] [int] NULL,
	[Statv2SessionAdminUserId] [int] NULL,
	[Statv2SessionExtranetUserId] [int] NULL,
	[Statv2SessionResolution] [nvarchar](15) NULL,
	[Statv2SessionConnectionType] [nvarchar](20) NULL,
	[Statv2SessionUserLanguage] [nvarchar](5) NULL,
	[Statv2SessionColorDepth] [smallint] NULL,
	[Statv2SessionCampaign] [nvarchar](255) NULL,
	[Statv2SessionRefererSearchWordRank] [int] NULL,
	[Statv2SessionRefererSearchKeywords] [nvarchar](255) NULL,
	[Statv2SessionUserAgentIsMobile] [bit] NULL,
	[Statv2SessionUserAgentOriginalString] [nvarchar](255) NULL,
	[Statv2SessionUserAgentName] [nvarchar](25) NULL,
	[Statv2SessionUserAgentFamily] [nvarchar](25) NULL,
	[Statv2SessionUserAgentOperatingSystem] [nvarchar](25) NULL,
	[Statv2SessionUserAgentPlatform] [nvarchar](25) NULL,
	[Statv2SessionVisitorId] [nvarchar](255) NULL,
	[Statv2SessionIsLead] [int] NULL,
	[Statv2SessionEngagement] [float] NULL,
	[Statv2SessionLastVisitNotified] [bit] NULL,
	[Statv2SessionUtmSource] [nvarchar](255) NULL,
	[Statv2SessionUtmMedium] [nvarchar](255) NULL,
	[Statv2SessionUtmTerm] [nvarchar](255) NULL,
	[Statv2SessionUtmCampaign] [nvarchar](100) NULL,
	[Statv2SessionPrimaryProfile] [nvarchar](255) NULL,
	[Statv2SessionSecondaryProfile] [nvarchar](255) NULL,
	[Statv2SessionProfileEstimate] [nvarchar](max) NULL,
	[Statv2SessionRefererPath] [nvarchar](max) NULL,
	[Statv2SessionLeadState] [nvarchar](255) NULL,
	[Statv2SessionLeadStateChanged] [datetime] NULL,
	[Statv2SessionProfileDynamics] [nvarchar](max) NULL,
	[Statv2SessionFirstGroup] [nvarchar](50) NULL,
	[Statv2SessionLastGroup] [nvarchar](50) NULL,
	[Statv2SessionGroupPath] [nvarchar](max) NULL,
	[Statv2SessionIsLandingGroup] [bit] NULL,
	[Statv2SessionIsExitGroup] [bit] NULL,
	[Statv2SessionSourceType] [nvarchar](50) NULL,
 CONSTRAINT [DW_PK_Statv2Session] PRIMARY KEY CLUSTERED 
(
	[Statv2SessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Statv2SessionBot]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statv2SessionBot](
	[Statv2SessionID] [int] IDENTITY(1,1) NOT NULL,
	[Statv2SessionSessionId] [nvarchar](255) NULL,
	[Statv2SessionTimestamp] [datetime] NULL,
	[Statv2SessionAreaId] [smallint] NULL,
	[Statv2SessionYear] [smallint] NULL,
	[Statv2SessionMonth] [smallint] NULL,
	[Statv2SessionWeek] [smallint] NULL,
	[Statv2SessionDay] [smallint] NULL,
	[Statv2SessionUserAgentId] [int] NULL,
	[Statv2SessionFirstpage] [int] NULL,
	[Statv2SessionGwIP] [nvarchar](15) NULL,
	[Statv2SessionGwIPDbl] [float] NULL,
	[Statv2SessionUserAgentIsMobile] [bit] NULL,
	[Statv2SessionUserAgentOriginalString] [nvarchar](255) NULL,
	[Statv2SessionUserAgentName] [nvarchar](25) NULL,
	[Statv2SessionUserAgentFamily] [nvarchar](25) NULL,
	[Statv2SessionUserAgentOperatingSystem] [nvarchar](25) NULL,
	[Statv2SessionUserAgentPlatform] [nvarchar](25) NULL,
 CONSTRAINT [DW_PK_Statv2SessionBot] PRIMARY KEY CLUSTERED 
(
	[Statv2SessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Statv2Settings]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statv2Settings](
	[Statv2SettingsId] [int] IDENTITY(1,1) NOT NULL,
	[Statv2SettingsUserId] [int] NULL CONSTRAINT [DW_DF_Statv2Settings_UserId]  DEFAULT ((0)),
	[Statv2SettingsCrawlers] [bit] NOT NULL CONSTRAINT [DW_DF_Statv2Settings_Crawlers]  DEFAULT ((0)),
	[Statv2SettingsAdmins] [bit] NOT NULL CONSTRAINT [DW_DF_Statv2Settings_Admins]  DEFAULT ((0)),
	[Statv2SettingsOnePv] [bit] NOT NULL CONSTRAINT [DW_DF_Statv2Settings_OnePv]  DEFAULT ((0)),
	[Statv2SettingsExtranetusers] [bit] NOT NULL CONSTRAINT [DW_DF_Statv2Settings_ExtranetUsers]  DEFAULT ((0)),
	[Statv2SettingsIPfiltering] [bit] NOT NULL CONSTRAINT [DW_DF_Statv2Settings_IPfiltering]  DEFAULT ((0)),
	[Statv2SettingsFillbar] [bit] NOT NULL CONSTRAINT [DW_DF_Statv2Settings_Fillbar]  DEFAULT ((0)),
 CONSTRAINT [DW_PK_Statv2Settings] PRIMARY KEY CLUSTERED 
(
	[Statv2SettingsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Statv2Type]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statv2Type](
	[Statv2TypeId] [int] NOT NULL,
	[Statv2TypeName] [nvarchar](50) NULL,
 CONSTRAINT [DW_PK_Statv2Type] PRIMARY KEY CLUSTERED 
(
	[Statv2TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Statv2UserAgents]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statv2UserAgents](
	[Statv2UserAgentsID] [int] IDENTITY(1,1) NOT NULL,
	[Statv2UserAgentsUA] [nvarchar](255) NULL,
	[Statv2UserAgentsBrowser] [nvarchar](20) NULL,
	[Statv2UserAgentsBrowserType] [nvarchar](20) NULL,
	[Statv2UserAgentsOs] [nvarchar](20) NULL,
	[Statv2UserAgentsOsType] [nvarchar](20) NULL,
 CONSTRAINT [DW_PK_Statv2UserAgents] PRIMARY KEY CLUSTERED 
(
	[Statv2UserAgentsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SystemField]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemField](
	[SystemFieldSystemName] [nvarchar](50) NOT NULL,
	[SystemFieldTableName] [nvarchar](255) NOT NULL,
	[SystemFieldType] [nvarchar](50) NOT NULL,
	[SystemFieldName] [nvarchar](255) NOT NULL,
	[SystemFieldOptions] [nvarchar](max) NULL,
	[SystemFieldIsFrontendEditable] [bit] NOT NULL,
	[SystemFieldAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SystemFieldValue]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemFieldValue](
	[SystemFieldValueSystemName] [nvarchar](50) NOT NULL,
	[SystemFieldValueTableName] [nvarchar](255) NOT NULL,
	[SystemFieldValueItemId] [int] NOT NULL,
	[SystemFieldValueValue] [nvarchar](max) NULL,
	[SystemFieldValueAutoId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaskManager]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskManager](
	[TaskId] [int] IDENTITY(1,1) NOT NULL,
	[TaskHeader] [nvarchar](255) NULL,
	[TaskDeadline] [datetime] NULL,
	[TaskCreated] [datetime] NULL,
	[TaskGiverId] [int] NULL,
	[TaskTakerId] [int] NULL,
	[TaskNotification] [bit] NOT NULL,
	[TaskStatus] [int] NULL,
	[TaskDescription] [ntext] NULL,
	[TaskComments] [ntext] NULL,
	[TaskPriority] [int] NULL,
 CONSTRAINT [DW_PK_TaskManager] PRIMARY KEY CLUSTERED 
(
	[TaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Template]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Template](
	[TemplateId] [int] IDENTITY(1,1) NOT NULL,
	[TemplateCategoryId] [int] NULL,
	[TemplateName] [nvarchar](100) NULL,
	[TemplateFile] [nvarchar](100) NULL,
	[TemplateIcon] [nvarchar](50) NULL,
	[TemplateIsProtected] [int] NULL,
	[TemplateIsDefault] [int] NULL,
	[TemplateTypeId] [int] NULL,
	[TemplatePutInTable] [nvarchar](50) NULL,
	[TemplateSettings] [nvarchar](50) NULL,
	[TemplateImageColumns] [int] NULL,
	[TemplateImageWidth] [int] NULL,
	[TemplateDescription] [ntext] NULL,
	[TemplateActive] [bit] NOT NULL,
	[TemplateSort] [int] NULL,
	[TemplateAutoResize] [bit] NOT NULL,
	[TemplateImageHeight] [int] NULL,
	[TemplateImageLargeHeight] [int] NULL,
	[TemplateImageLargeWidth] [int] NULL,
	[TemplateImageThumbnailHeight] [int] NULL,
	[TemplateImageThumbnailWidth] [int] NULL,
	[TemplateModifiedDate] [datetime] NULL,
 CONSTRAINT [DW_PK_Template] PRIMARY KEY CLUSTERED 
(
	[TemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TemplateCategory]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateCategory](
	[TemplateCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[TemplateCategoryName] [nvarchar](100) NULL,
	[TemplateCatgeoryDirectory] [nvarchar](50) NULL,
	[TemplateCategoryIsProtected] [int] NULL,
	[TemplateCategorySort] [int] NULL,
 CONSTRAINT [DW_PK_TemplateCategory] PRIMARY KEY CLUSTERED 
(
	[TemplateCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TemplateMenu]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateMenu](
	[TemplateMenuId] [int] IDENTITY(1,1) NOT NULL,
	[TemplateMenuTemplateId] [int] NULL,
	[TemplateMenuName] [nvarchar](255) NULL,
	[TemplateMenuType] [int] NULL,
	[TemplateMenuParentId] [int] NULL,
	[TemplateMenuStartLevel] [int] NULL,
	[TemplateMenuStopLevel] [int] NULL,
	[TemplateMenuDepth] [int] NULL,
	[TemplateMenuThread] [int] NULL,
	[TemplateMenuXSLTTemplate] [nvarchar](255) NULL,
	[TemplateMenuEcomTreeType] [int] NULL,
	[TemplateMenuEcomShopId] [nvarchar](255) NULL,
	[TemplateMenuEcomGroupId] [nvarchar](255) NULL,
	[TemplateMenuEcomMaxLevel] [int] NULL,
	[TemplateMenuEcomProductPage] [nvarchar](255) NULL,
 CONSTRAINT [DW_PK_TemplateMenu] PRIMARY KEY CLUSTERED 
(
	[TemplateMenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TemplateMenuType]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateMenuType](
	[TemplateMenuTypeId] [int] IDENTITY(1,1) NOT NULL,
	[TemplateMenuTypeName] [nvarchar](50) NULL,
 CONSTRAINT [DW_PK_TemplateMenuType] PRIMARY KEY CLUSTERED 
(
	[TemplateMenuTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TrashBin]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrashBin](
	[TrashBinTrashId] [int] IDENTITY(1,1) NOT NULL,
	[TrashBinUnitOfWork] [int] NULL,
	[TrashBinType] [int] NULL,
	[TrashBinId] [int] NULL,
	[TrashBinDescription] [nvarchar](255) NULL,
	[TrashBinData] [nvarchar](255) NULL,
	[TrashBinUserId] [nvarchar](255) NULL,
	[TrashBinTrashDate] [datetime] NULL,
	[TrashBinXMLData] [ntext] NULL,
	[TrashbinMasterId] [int] NULL,
	[TrashBinItemType] [nvarchar](255) NULL,
	[TrashBinItemId] [nvarchar](255) NULL,
	[TrashBinItemValue] [nvarchar](max) NULL,
 CONSTRAINT [DW_PK_TrashBin] PRIMARY KEY CLUSTERED 
(
	[TrashBinTrashId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UrlPath]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrlPath](
	[UrlPathId] [int] IDENTITY(1,1) NOT NULL,
	[UrlPathPath] [nvarchar](255) NOT NULL,
	[UrlPathRedirect] [nvarchar](255) NOT NULL,
	[UrlPathStatus] [int] NULL,
	[UrlPathCreated] [datetime] NULL,
	[UrlPathUpdated] [datetime] NULL,
	[UrlPathActive] [bit] NOT NULL,
	[UrlPathAreaId] [int] NULL,
	[UrlPathVisitsCount] [int] NOT NULL,
 CONSTRAINT [DW_PK_UrlPath] PRIMARY KEY CLUSTERED 
(
	[UrlPathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VersionData]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VersionData](
	[VersionDataId] [int] IDENTITY(1,1) NOT NULL,
	[VersionDataType] [nvarchar](25) NULL,
	[VersionDataTypeId] [int] NULL,
	[VersionDataCreated] [datetime] NULL,
	[VersionDataEdit] [datetime] NULL,
	[VersionDataPublishedTime] [datetime] NULL,
	[VersionDataPublished] [bit] NOT NULL,
	[VersionDataXML] [ntext] NULL,
	[VersionDataTypeIdString] [nvarchar](255) NULL,
 CONSTRAINT [DW_PK_VersionData] PRIMARY KEY CLUSTERED 
(
	[VersionDataId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  View [dbo].[DWVersionRequirements]    Script Date: 01-11-2016 11:44:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DWVersionRequirements]
	AS SELECT 862 AS [Updates], 339 AS [Ecom], '8.4.1.0' AS [Version]


GO
SET IDENTITY_INSERT [dbo].[AccessElementType] ON 

INSERT [dbo].[AccessElementType] ([AccessElementTypeId], [AccessElementType]) VALUES (1, N'folder')
INSERT [dbo].[AccessElementType] ([AccessElementTypeId], [AccessElementType]) VALUES (2, N'emailfolder')
SET IDENTITY_INSERT [dbo].[AccessElementType] OFF
SET IDENTITY_INSERT [dbo].[AccessUser] ON 

INSERT [dbo].[AccessUser] ([AccessUserId], [AccessUserParentId], [AccessUserUserName], [AccessUserPassword], [AccessUserName], [AccessUserDepartment], [AccessUserEmail], [AccessUserPhone], [AccessUserFax], [AccessUserGroups], [AccessUserType], [AccessUserValidFrom], [AccessUserValidTo], [AccessUserPages], [AccessUserAreas], [AccessUserSettings], [AccessUserModules], [AccessUserInformation], [AccessUserMyFolder], [AccessUserAddress], [AccessUserAddress2], [AccessUserZip], [AccessUserCity], [AccessUserCountry], [AccessUserJobTitle], [AccessUserCompany], [AccessUserPhonePriv], [AccessUserMobile], [AccessUserCustomerNumber], [AccessUserRedirectOnLogin], [AccessUserCurrencyCharacter], [AccessUserRead], [AccessUserAdsiMap], [AccessUserPasswordDate], [AccessUserLastName], [AccessUserMiddleName], [AccessUserActive], [AccessUserImage], [AccessUserBusiness], [AccessUserInitials], [AccessUserComment], [AccessUserLevel], [AccessUserInheritAddress], [AccessUserWeb], [AccessUserSort], [AccessUserStatus], [AccessUserStatusBegin], [AccessUserStatusEnd], [AccessUserStatusComment], [AccessUserEditorConfigurationId], [AccessUserHideStat], [AccessUserCartId], [AccessUserAllowBackend], [AccessUserApprovalKey], [AccessUserShopId], [AccessUserExternalId], [AccessUserSortXML], [AccessUserGeoLocationLat], [AccessUserGeoLocationLng], [AccessUserGeoLocationIsCustom], [AccessUserGeoLocationImage], [AccessUserGeoLocationHash], [AccessUserNewsletterAllowed], [AccessUserCreatedOn], [AccessUserUpdatedOn], [AccessUserCreatedBy], [AccessUserUpdatedBy], [AccessUserEmailPermissionGivenOn], [AccessUserEmailPermissionUpdatedOn], [AccessUserState], [AccessUserVatRegNumber], [AccessUserDisableLivePrices], [AccessUserLastLoginOn], [AccessUserAdministratorInGroups], [AccessUserTitle], [AccessUserFirstName], [AccessUserHouseNumber], [AccessUserLastOrderDate], [AccessUserPasswordRecoveryToken], [AccessUserPasswordRecoveryTokenExpirationTime], [AccessUserGroupSmartSearch], [AccessUserGroupSmartSearchLastCalculatedTime], [AccessUserExported], [AccessUserItemType], [AccessUserItemId], [AccessUserDefaultUserItemType], [AccessUserStockLocationID], [AccessUserCountryCode], [AccessUserPointBalance]) VALUES (1, 0, N'Angel', N'529a88622c10845fa51153705cb5b1d7', N'Angel', NULL, NULL, NULL, NULL, NULL, 0, CAST(N'2016-10-31 15:03:30.850' AS DateTime), CAST(N'2100-01-01 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AccessUser] ([AccessUserId], [AccessUserParentId], [AccessUserUserName], [AccessUserPassword], [AccessUserName], [AccessUserDepartment], [AccessUserEmail], [AccessUserPhone], [AccessUserFax], [AccessUserGroups], [AccessUserType], [AccessUserValidFrom], [AccessUserValidTo], [AccessUserPages], [AccessUserAreas], [AccessUserSettings], [AccessUserModules], [AccessUserInformation], [AccessUserMyFolder], [AccessUserAddress], [AccessUserAddress2], [AccessUserZip], [AccessUserCity], [AccessUserCountry], [AccessUserJobTitle], [AccessUserCompany], [AccessUserPhonePriv], [AccessUserMobile], [AccessUserCustomerNumber], [AccessUserRedirectOnLogin], [AccessUserCurrencyCharacter], [AccessUserRead], [AccessUserAdsiMap], [AccessUserPasswordDate], [AccessUserLastName], [AccessUserMiddleName], [AccessUserActive], [AccessUserImage], [AccessUserBusiness], [AccessUserInitials], [AccessUserComment], [AccessUserLevel], [AccessUserInheritAddress], [AccessUserWeb], [AccessUserSort], [AccessUserStatus], [AccessUserStatusBegin], [AccessUserStatusEnd], [AccessUserStatusComment], [AccessUserEditorConfigurationId], [AccessUserHideStat], [AccessUserCartId], [AccessUserAllowBackend], [AccessUserApprovalKey], [AccessUserShopId], [AccessUserExternalId], [AccessUserSortXML], [AccessUserGeoLocationLat], [AccessUserGeoLocationLng], [AccessUserGeoLocationIsCustom], [AccessUserGeoLocationImage], [AccessUserGeoLocationHash], [AccessUserNewsletterAllowed], [AccessUserCreatedOn], [AccessUserUpdatedOn], [AccessUserCreatedBy], [AccessUserUpdatedBy], [AccessUserEmailPermissionGivenOn], [AccessUserEmailPermissionUpdatedOn], [AccessUserState], [AccessUserVatRegNumber], [AccessUserDisableLivePrices], [AccessUserLastLoginOn], [AccessUserAdministratorInGroups], [AccessUserTitle], [AccessUserFirstName], [AccessUserHouseNumber], [AccessUserLastOrderDate], [AccessUserPasswordRecoveryToken], [AccessUserPasswordRecoveryTokenExpirationTime], [AccessUserGroupSmartSearch], [AccessUserGroupSmartSearchLastCalculatedTime], [AccessUserExported], [AccessUserItemType], [AccessUserItemId], [AccessUserDefaultUserItemType], [AccessUserStockLocationID], [AccessUserCountryCode], [AccessUserPointBalance]) VALUES (2, 1, N'Administrator', N'52620bb8715f7ed218d08e5329fcd936', N'Administrator', NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2016-10-31 15:03:30.850' AS DateTime), CAST(N'2100-01-01 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AccessUser] ([AccessUserId], [AccessUserParentId], [AccessUserUserName], [AccessUserPassword], [AccessUserName], [AccessUserDepartment], [AccessUserEmail], [AccessUserPhone], [AccessUserFax], [AccessUserGroups], [AccessUserType], [AccessUserValidFrom], [AccessUserValidTo], [AccessUserPages], [AccessUserAreas], [AccessUserSettings], [AccessUserModules], [AccessUserInformation], [AccessUserMyFolder], [AccessUserAddress], [AccessUserAddress2], [AccessUserZip], [AccessUserCity], [AccessUserCountry], [AccessUserJobTitle], [AccessUserCompany], [AccessUserPhonePriv], [AccessUserMobile], [AccessUserCustomerNumber], [AccessUserRedirectOnLogin], [AccessUserCurrencyCharacter], [AccessUserRead], [AccessUserAdsiMap], [AccessUserPasswordDate], [AccessUserLastName], [AccessUserMiddleName], [AccessUserActive], [AccessUserImage], [AccessUserBusiness], [AccessUserInitials], [AccessUserComment], [AccessUserLevel], [AccessUserInheritAddress], [AccessUserWeb], [AccessUserSort], [AccessUserStatus], [AccessUserStatusBegin], [AccessUserStatusEnd], [AccessUserStatusComment], [AccessUserEditorConfigurationId], [AccessUserHideStat], [AccessUserCartId], [AccessUserAllowBackend], [AccessUserApprovalKey], [AccessUserShopId], [AccessUserExternalId], [AccessUserSortXML], [AccessUserGeoLocationLat], [AccessUserGeoLocationLng], [AccessUserGeoLocationIsCustom], [AccessUserGeoLocationImage], [AccessUserGeoLocationHash], [AccessUserNewsletterAllowed], [AccessUserCreatedOn], [AccessUserUpdatedOn], [AccessUserCreatedBy], [AccessUserUpdatedBy], [AccessUserEmailPermissionGivenOn], [AccessUserEmailPermissionUpdatedOn], [AccessUserState], [AccessUserVatRegNumber], [AccessUserDisableLivePrices], [AccessUserLastLoginOn], [AccessUserAdministratorInGroups], [AccessUserTitle], [AccessUserFirstName], [AccessUserHouseNumber], [AccessUserLastOrderDate], [AccessUserPasswordRecoveryToken], [AccessUserPasswordRecoveryTokenExpirationTime], [AccessUserGroupSmartSearch], [AccessUserGroupSmartSearchLastCalculatedTime], [AccessUserExported], [AccessUserItemType], [AccessUserItemId], [AccessUserDefaultUserItemType], [AccessUserStockLocationID], [AccessUserCountryCode], [AccessUserPointBalance]) VALUES (3, 0, N'Admin', N'e3274be5c857fb42ab72d786e281b4b8', N'Admin', NULL, NULL, NULL, NULL, NULL, 3, CAST(N'2016-10-31 15:03:30.850' AS DateTime), CAST(N'2100-01-01 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[AccessUser] OFF
SET IDENTITY_INSERT [dbo].[AccessWorkflow] ON 

INSERT [dbo].[AccessWorkflow] ([AccessWorkflowId], [AccessWorkflowTitle], [AccessWorkflowCreatedDate], [AccessWorkflowNotifyTemplate], [AccessWorkflowRequiredTemplate]) VALUES (1, N'Draft', CAST(N'2016-10-31 15:03:30.850' AS DateTime), N'NotifyOnly.html', N'Required.html')
SET IDENTITY_INSERT [dbo].[AccessWorkflow] OFF
SET IDENTITY_INSERT [dbo].[Area] ON 

INSERT [dbo].[Area] ([AreaId], [AreaStyleId], [AreaName], [AreaDomain], [AreaEncoding], [AreaPermission], [AreaPermissionTemplate], [AreaTitle], [AreaKeywords], [AreaDescription], [AreaFrontpage], [AreaDateformat], [AreaCodepage], [AreaLanguage], [StyleId], [AreaMasterTemplate], [AreaHtmlType], [AreaCulture], [AreaApprovalType], [AreaEcomLanguageId], [AreaEcomCurrencyId], [AreaActive], [AreaSort], [AreaMasterAreaId], [AreaRobotsTxt], [AreaRobotsTxtIncludeSitemap], [AreaDomainLock], [AreaUserManagementPermissions], [AreaUrlName], [AreaUpdatedDate], [AreaCreatedDate], [AreaCopyOf], [AreaLayout], [AreaNotFound], [AreaRedirectFirstPage], [AreaLayoutPhone], [AreaLayoutTablet], [AreaLockPagesToDomain], [AreaEcomCountryCode], [AreaEcomShopId], [AreaUrlIgnoreForChildren], [AreaItemType], [AreaItemId], [AreaCookieWarningTemplate], [AreaCookieCustomNotifications], [AreaItemTypePageProperty], [AreaIncludeProductsInSitemap], [AreaSSLMode], [AreaEcomPricesWithVat], [AreaIsCdnActive], [AreaCdnHost], [AreaCdnImageHost], [AreaStockLocationID], [AreaUniqueId]) VALUES (1, 0, N'Standard', N'', N'', N'', N'', N'', N'', N'', N'', N'dd-mm-yyyy', 0, NULL, NULL, N'', N'xhtml 1.0', N'da-DK', 0, N'', N'', 1, 1, 0, N'', 0, N'', N'', N'', CAST(N'2016-10-31 15:04:17.607' AS DateTime), CAST(N'2016-10-31 15:03:30.850' AS DateTime), 0, N'Designs/Dynamicweb/Dw_Page.cshtml', N'', 0, N'', N'', 0, N'  ', N'', 0, N'', N'', NULL, 0, N'', 0, 0, N'', NULL, N'', N'', 0, N'1DB2B79D-E755-4ED2-9AF6-E4CA3B709782')
SET IDENTITY_INSERT [dbo].[Area] OFF
SET IDENTITY_INSERT [dbo].[AreaEncoding] ON 

INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (1, N'ASMO-708', N'Arabic (ASMO 708)', 708)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (2, N'big5', N'Chinese Traditional (Big5)', 950)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (3, N'cp866', N'Cyrillic (DOS)', 866)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (4, N'csISO2022JP', N'Japanese (JIS-Allow 1 byte Kana)', 50221)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (5, N'DOS-720', N'Arabic (DOS)', 720)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (6, N'DOS-862', N'Hebrew (DOS)', 862)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (7, N'EUC-CN', N'Chinese Simplified (EUC)', 51936)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (8, N'euc-jp', N'Japanese (EUC)', 51932)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (9, N'euc-kr', N'Korean (EUC)', 51949)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (10, N'gb2312', N'Chinese Simplified (GB2312)', 936)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (11, N'hz-gb-2312', N'Chinese Simplified (HZ)', 52936)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (12, N'IBM437', N'OEM United States', 437)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (13, N'ibm737', N'Greek (DOS)', 737)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (14, N'ibm775', N'Baltic (DOS)', 775)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (15, N'ibm850', N'Western European (DOS)', 850)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (16, N'ibm852', N'Central European (DOS)', 852)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (17, N'ibm857', N'Turkish (DOS)', 857)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (18, N'ibm861', N'Icelandic (DOS)', 861)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (19, N'ibm869', N'Greek, Modern (DOS)', 869)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (20, N'iso-2022-jp', N'Japanese (JIS)', 50220)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (21, N'iso-2022-kr', N'Korean (ISO)', 50225)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (22, N'iso-8859-1', N'Western European (ISO)', 28591)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (23, N'iso-8859-15', N'Latin 9 (ISO)', 28605)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (24, N'iso-8859-2', N'Central European (ISO)', 28592)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (25, N'iso-8859-3', N'Latin 3 (ISO)', 28593)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (26, N'iso-8859-4', N'Baltic (ISO)', 28594)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (27, N'iso-8859-5', N'Cyrillic (ISO)', 28595)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (28, N'iso-8859-6', N'Arabic (ISO)', 28596)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (29, N'iso-8859-7', N'Greek (ISO)', 28597)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (30, N'iso-8859-8', N'Hebrew (ISO-Visual)', 28598)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (31, N'iso-8859-8-i', N'Hebrew (ISO-Logical)', 38598)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (32, N'iso-8859-9', N'Turkish (ISO)', 28599)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (33, N'Johab', N'Korean (Johab)', 1361)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (34, N'koi8-r', N'Cyrillic (KOI8-R)', 20866)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (35, N'koi8-u', N'Cyrillic (KOI8-U)', 21866)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (36, N'ks_c_5601-1987', N'Korean', 949)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (37, N'macintosh', N'Western European (Mac)', 10000)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (38, N'shift_jis', N'Japanese (Shift-JIS)', 932)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (39, N'unicode', N'Unicode', 1200)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (40, N'unicodeFFFE', N'Unicode (Big-Endian)', 1201)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (41, N'us-ascii', N'US-ASCII', 20127)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (42, N'utf-7', N'Unicode (UTF-7)', 65000)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (43, N'utf-8', N'Unicode (UTF-8)', 65001)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (44, N'windows-1250', N'Central European (Windows)', 1250)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (45, N'windows-1251', N'Cyrillic (Windows)', 1251)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (46, N'Windows-1252', N'Western European (Windows)', 1252)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (47, N'windows-1253', N'Greek (Windows)', 1253)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (48, N'windows-1254', N'Turkish (Windows)', 1254)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (49, N'windows-1255', N'Hebrew (Windows)', 1255)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (50, N'windows-1256', N'Arabic (Windows)', 1256)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (51, N'windows-1257', N'Baltic (Windows)', 1257)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (52, N'windows-1258', N'Vietnamese (Windows)', 1258)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (53, N'windows-874', N'Thai (Windows)', 874)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (54, N'x-Chinese-CNS', N'Chinese Traditional (CNS)', 20000)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (55, N'x-Chinese-Eten', N'Chinese Traditional (Eten)', 20002)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (56, N'x-Europa', N'Europa', 29001)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (57, N'x-IA5', N'Western European (IA5)', 20105)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (58, N'x-IA5-German', N'German (IA5)', 20106)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (59, N'x-IA5-Norwegian', N'Norwegian (IA5)', 20108)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (60, N'x-IA5-Swedish', N'Swedish (IA5)', 20107)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (61, N'x-iscii-as', N'ISCII Assamese', 57006)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (62, N'x-iscii-be', N'ISCII Bengali', 57003)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (63, N'x-iscii-de', N'ISCII Devanagari', 57002)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (64, N'x-iscii-gu', N'ISCII Gujarathi', 57010)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (65, N'x-iscii-ka', N'ISCII Kannada', 57008)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (66, N'x-iscii-ma', N'ISCII Malayalam', 57009)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (67, N'x-iscii-or', N'ISCII Oriya', 57007)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (68, N'x-iscii-pa', N'ISCII Panjabi', 57011)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (69, N'x-iscii-ta', N'ISCII Tamil', 57004)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (70, N'x-iscii-te', N'ISCII Telugu', 57005)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (71, N'x-mac-arabic', N'Arabic (Mac)', 10004)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (72, N'x-mac-ce', N'Central European (Mac)', 10029)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (73, N'x-mac-chinesesimp', N'Chinese Simplified (Mac)', 10008)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (74, N'x-mac-chinesetrad', N'Chinese Traditional (Mac)', 10002)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (75, N'x-mac-cyrillic', N'Cyrillic (Mac)', 10007)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (76, N'x-mac-greek', N'Greek (Mac)', 10006)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (77, N'x-mac-hebrew', N'Hebrew (Mac)', 10005)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (78, N'x-mac-icelandic', N'Icelandic (Mac)', 10079)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (79, N'x-mac-japanese', N'Japanese (Mac)', 10001)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (80, N'x-mac-korean', N'Korean (Mac)', 10003)
INSERT [dbo].[AreaEncoding] ([AreaEncodingId], [AreaEncodingCharSet], [AreaEncodingName], [AreaEncodingCodepage]) VALUES (81, N'x-mac-turkish', N'Turkish (Mac)', 10081)
SET IDENTITY_INSERT [dbo].[AreaEncoding] OFF
SET IDENTITY_INSERT [dbo].[Ecom7Tree] ON 

INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (1, NULL, N'Dynamicweb eCommerce', NULL, N'tree/Home_small.gif', NULL, N'Main.aspx', N'ROOT', 0, NULL)
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (2, 93, N'Shops', NULL, N'tree/btn_shop.png', NULL, N'Lists/EcomShop_List.aspx', N'SHOPS', 10, N'eCom_Catalog, eCom_Center')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (3, 1, N'Varekatalog', 9, N'tree/Module_eCom_Catalog_small.gif', NULL, N'Lists/EcomShop_List.aspx', N'GROUPS', 1, N'eCom_Catalog')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (13, 1, N'Indstillinger', NULL, N'tree/Settings_small.gif', NULL, NULL, N'ROOT_SET', 3, NULL)
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (14, 91, N'Sprog', 7, N'tree/btn_languages.png', NULL, N'Lists/EcomLang_List.aspx', N'LANGUAGES', 20, NULL)
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (15, 1, N'Opsætning', NULL, N'tree/ControlPanel_small.gif', NULL, NULL, N'ROOT_CP', 4, NULL)
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (16, 1, N'Rapporter', 7, N'tree/btn_reports.png', NULL, NULL, N'ROOT', 5, N'eCom_Reports')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (17, 1, N'Statistik', 7, N'tree/btn_stats.png', NULL, NULL, N'STAT', 6, N'eCom_Statistics')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (19, 91, N'Valuta', 7, N'tree/btn_currency.png', NULL, N'Lists/EcomCurrency_List.aspx', N'CURRENCIES', 30, NULL)
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (20, 93, N'Vareenheder', 7, N'tree/btn_unit.png', NULL, N'Lists/EcomUnit_List.aspx', N'UNITS', 70, N'eCom_Units')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (21, 93, N'Publication periods', 7, N'tree/btn_period.png', NULL, N'Lists/EcomPeriod_List.aspx', N'PERIODS', 30, N'eCom_Catalog')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (25, 94, N'Auto-nummerering', 7, N'tree/btn_number.png', NULL, N'Lists/EcomNumber_List.aspx', N'NUMBERS', 90, N'eCom_Cart, eCom_CartV2')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (27, 93, N'Producenter', 7, N'tree/btn_manufactor.png', NULL, N'Lists/EcomManu_List.aspx', N'MANUFACTORS', 20, N'eCom_Catalog')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (28, 93, N'Varianter', 7, N'tree/btn_vargrp.png', NULL, N'Lists/EcomVariantGrp_List.aspx', N'VARIANTGROUPS', 50, N'eCom_Variants, eCom_VariantsExtended')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (29, 91, N'Lande', 7, N'tree/btn_country.png', NULL, N'Lists/EcomCountry_List.aspx', N'COUNTRIES', 10, NULL)
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (30, 92, N'Betaling', 7, N'tree/btn_payment.png', NULL, N'Lists/EcomPayment_List.aspx', N'PAYMENT', 10, N'eCom_Cart, eCom_CartV2')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (31, 92, N'Forsendelse', 7, N'tree/btn_shipping.png', NULL, N'Lists/EcomShipping_List.aspx', N'SHIPPING', 20, N'eCom_Cart, eCom_CartV2')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (35, 92, N'Lagerstatus', 7, N'tree/btn_stockgrp.png', NULL, N'Lists/EcomStockGrp_List.aspx', N'STOCKGRP', 30, N'eCom_Catalog')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (36, 94, N'Afrunding', 7, N'tree/btn_roundings.png', NULL, N'Lists/EcomRounding_List.aspx', N'ROUNDING', 80, N'eCom_Pricing, eCom_PricingExtended')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (37, 91, N'VAT groups', 7, N'tree/btn_vatgroups.png', NULL, N'Lists/EcomVatGroup_List.aspx', N'VATGRP', 40, N'eCom_Pricing, eCom_PricingExtended')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (38, 93, N'Relation groups', 7, N'tree/btn_relgroups.png', NULL, N'Lists/EcomRelGrp_List.aspx', N'RELGRP', 60, N'eCom_Related')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (41, 93, N'Vare felter', 7, N'tree/btn_field.png', NULL, N'Lists/EcomField_List.aspx', N'FIELD', 80, N'eCom_Catalog')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (46, 92, N'Ordre felter', 7, N'tree/btn_orderfield.png', NULL, N'Lists/EcomOrderField_List.aspx', N'ORDERFIELD', 50, N'eCom_Cart, eCom_CartV2')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (47, 93, N'Varegruppe felter', 7, N'tree/btn_groupfield.png', NULL, N'Lists/EcomGroupField_List.aspx', N'GROUPFIELD', 90, N'eCom_Catalog')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (48, 92, N'Valideringsgrupper', 7, N'tree/btn_validationgroups.png', NULL, N'Lists/EcomValidationGroup_List.aspx', N'VALIDATIONGROUPS', 110, N'eCom_Cart, eCom_CartV2')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (49, 92, N'Ordreliniefelter', 7, N'tree/btn_orderlinefield.png', NULL, N'Lists/EcomOrderLineField_List.aspx', N'ORDERLINEFIELDS', 60, N'eCom_Cart, eCom_CartV2')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (50, 94, N'Generelt', NULL, N'/Admin/Module/eCom_Catalog/images/buttons/btn_general.png', NULL, N'/Admin/Module/Ecom_cpl.aspx?cmd=1', N'Ecom7General', 10, N'eCom_Cart, eCom_CartV2')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (51, 94, N'Fields', NULL, N'/Admin/Images/Ribbon/Icons/Small/Font.png', NULL, N'/Admin/Module/Ecom_cpl.aspx?cmd=2', N'Ecom7Language', 20, N'eCom_Cart, eCom_CartV2')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (52, 94, N'Priser', NULL, N'/Admin/Module/eCom_Catalog/images/buttons/btn_money.gif', NULL, N'/Admin/Module/Ecom_cpl.aspx?cmd=3', N'Ecom7Priser', 30, N'eCom_Cart, eCom_CartV2')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (53, 94, N'Lager', NULL, N'/Admin/Images/Ribbon/Icons/Small/index.png', NULL, N'/Admin/Module/Ecom_cpl.aspx?cmd=4', N'Ecom7Lager', 40, N'eCom_Cart, eCom_CartV2')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (54, 94, N'Images', NULL, N'/Admin/Images/eCom/eCom_Media_small.gif', NULL, N'/Admin/Module/Ecom_cpl.aspx?cmd=6', N'Ecom7Images', 50, N'eCom_Cart, eCom_CartV2')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (55, 94, N'Cart', NULL, N'/Admin/Module/eCom_Catalog/images/buttons/shoppingcart.png', NULL, N'/Admin/Module/Ecom_cpl.aspx?cmd=7', N'Ecom7Cart', 60, N'eCom_Cart, eCom_CartV2')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (56, 94, N'Rabat', NULL, N'/Admin/Module/eCom_Catalog/images/buttons/btn_discount.gif', NULL, N'/Admin/Module/Ecom_cpl.aspx?cmd=5', N'Ecom7Rabat', 70, N'eCom_SalesDiscountExtended')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (57, 93, N'Product categories', 7, N'tree/btn_properties.png', NULL, N'Lists/EcomProductCategory_List.aspx', N'CATEGORIES', 120, N'eCom_Catalog')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (61, 92, N'Order flows', 7, N'tree/btn_checks.png', NULL, N'Lists/EcomOrderFlow_List.aspx', N'ORDERFLOW', 70, N'eCom_Cart, eCom_CartV2')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (62, 92, N'Track & Trace', 7, N'tree/btn_trace.png', NULL, N'Lists/EcomTrackAndTrace_List.aspx', N'TRACKANDTRACE', 80, N'eCom_Cart, eCom_CartV2')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (78, 93, N'Taxes', 7, N'tree/btn_taxsetting.png', NULL, N'Lists/EcomTaxSetting_List.aspx', N'TAXSETTING', 45, N'eCom_CartV2')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (80, 95, N'States', 7, N'tree/btn_rma_states.png', NULL, N'Lists/EcomRmaState_List.aspx', N'RMASTATES', 100, NULL)
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (81, 95, N'Events', 7, N'tree/btn_rma_events.png', NULL, N'Lists/EcomRmaEvent_List.aspx', N'RMAEVENTS', 200, NULL)
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (82, 95, N'Email configuration', 7, N'tree/btn_rma_email_configuration.png', NULL, N'Lists/EcomRmaEmailConfiguration_List.aspx', N'RMAEMAILCONFIGS', 200, NULL)
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (85, 92, N'Address validation', 7, N'tree/btn_address_book.png', NULL, N'Lists/EcomAddressValidator_List.aspx', N'ADDRESSVALIDATOR', 90, N'eCom_CartV2')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (89, 92, N'Order contexts', 7, N'tree/btn_cart.gif', NULL, N'Lists/EcomOrderContext_List.aspx', N'ORDERCONTEXT', 75, N'eCom_CartV2, eCom_MultiShopAdvanced')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (90, 93, N'Stock location', 7, N'tree/btn_stockgrp.png', NULL, N'Lists/EcomStockLocation_List.aspx', N'STOCKLOCATION', 71, N'eCom_Catalog')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (91, 94, N'Assortments', NULL, N'/Admin/Images/eCom/Module_eCom_Assortments_small.gif', NULL, N'/Admin/Module/Ecom_cpl.aspx?cmd=9', N'ASSORTMENTS', 75, N'eCom_Assortments')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (92, 94, N'Loyalty points', NULL, N'/Admin/Module/eCom_Catalog/dw7/images/tree/eCom_LoyaltyPoints_Settings_small.png', NULL, N'/Admin/Module/eCom_Catalog/dw7/edit/EcomAdvConfigLoyaltyPoints_Edit.aspx', N'LOYALTYPOINTS', 73, N'LoyaltyPoints')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (93, 94, N'Boosting', 7, N'/Admin/Images/Ribbon/Icons/Small/data_find.png', NULL, N'/Admin/Module/eCom_Catalog/dw7/edit/EcomAdvConfigBoosting_Edit.aspx', N'BOOSTING', 130, N'')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (95, 94, N'Order discounts', NULL, N'/Admin/Module/eCom_Catalog/images/buttons/btn_discount.gif', NULL, N'/Admin/Module/eCom_Catalog/dw7/edit/EcomAdvConfigOrderDiscounts_Edit.aspx', N'ORDERDISCOUNTS', 72, N'')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (97, 92, N'Quote flows', 7, N'tree/btn_quotes.png', NULL, N'Lists/EcomOrderFlow_List.aspx?OrderType=quotes', N'QUOTESFLOW', 72, N'eCom_CartV2')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (98, 96, N'Models', 7, N'/Admin/Module/Recommendation/images/tree/recommendation_models.jpg', NULL, N'/Admin/Module/Recommendation/ModelList.aspx', N'RECOMMENDATIONMODELS', 10, N'Recommendation')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (99, 92, N'Cart flows', NULL, N'/Admin/Module/eCom_Catalog/images/buttons/shoppingcart.png', NULL, N'Lists/EcomOrderFlow_List.aspx?OrderType=cart', N'CARTSFLOW', 71, N'eCom_CartV2')
INSERT [dbo].[Ecom7Tree] ([id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (100, 94, N'GiftCards', NULL, N'/Admin/Module/eCom_Catalog/images/buttons/btn_giftcard.gif', NULL, N'/Admin/Module/eCom_Catalog/dw7/GiftCards/GiftCardsAdvancedSettings.aspx', N'GIFTCARDS', 74, N'eCom_CartV2')
SET IDENTITY_INSERT [dbo].[Ecom7Tree] OFF
SET IDENTITY_INSERT [dbo].[EcomFieldType] ON 

INSERT [dbo].[EcomFieldType] ([FieldTypeId], [FieldTypeName], [FieldTypeDW], [FieldTypeSort], [FieldTypeDBSQL], [FieldTypeAdvanced]) VALUES (1, N'Tekst (255)', N'Text', 5, N'NVARCHAR(255) NULL', NULL)
INSERT [dbo].[EcomFieldType] ([FieldTypeId], [FieldTypeName], [FieldTypeDW], [FieldTypeSort], [FieldTypeDBSQL], [FieldTypeAdvanced]) VALUES (2, N'Lang tekst', N'LargeText', 6, N'NVARCHAR(MAX) NULL', NULL)
INSERT [dbo].[EcomFieldType] ([FieldTypeId], [FieldTypeName], [FieldTypeDW], [FieldTypeSort], [FieldTypeDBSQL], [FieldTypeAdvanced]) VALUES (3, N'Checkboks', N'Checkbox', 7, N'BIT', NULL)
INSERT [dbo].[EcomFieldType] ([FieldTypeId], [FieldTypeName], [FieldTypeDW], [FieldTypeSort], [FieldTypeDBSQL], [FieldTypeAdvanced]) VALUES (4, N'Dato', N'Date', 8, N'DATETIME NULL', NULL)
INSERT [dbo].[EcomFieldType] ([FieldTypeId], [FieldTypeName], [FieldTypeDW], [FieldTypeSort], [FieldTypeDBSQL], [FieldTypeAdvanced]) VALUES (5, N'Dato/tid', N'DateTime', 9, N'DATETIME NULL', NULL)
INSERT [dbo].[EcomFieldType] ([FieldTypeId], [FieldTypeName], [FieldTypeDW], [FieldTypeSort], [FieldTypeDBSQL], [FieldTypeAdvanced]) VALUES (6, N'Heltal', N'Integer', 10, N'INT NULL', NULL)
INSERT [dbo].[EcomFieldType] ([FieldTypeId], [FieldTypeName], [FieldTypeDW], [FieldTypeSort], [FieldTypeDBSQL], [FieldTypeAdvanced]) VALUES (7, N'Kommatal', N'Double', 11, N'FLOAT DEFAULT 0.0', NULL)
INSERT [dbo].[EcomFieldType] ([FieldTypeId], [FieldTypeName], [FieldTypeDW], [FieldTypeSort], [FieldTypeDBSQL], [FieldTypeAdvanced]) VALUES (8, N'Link', N'Link', 12, N'NVARCHAR(255) NULL', NULL)
INSERT [dbo].[EcomFieldType] ([FieldTypeId], [FieldTypeName], [FieldTypeDW], [FieldTypeSort], [FieldTypeDBSQL], [FieldTypeAdvanced]) VALUES (9, N'Filarkiv', N'Filemanager', 13, N'NVARCHAR(255) NULL', NULL)
INSERT [dbo].[EcomFieldType] ([FieldTypeId], [FieldTypeName], [FieldTypeDW], [FieldTypeSort], [FieldTypeDBSQL], [FieldTypeAdvanced]) VALUES (10, N'Tekst (100)', N'Text', 4, N'NVARCHAR(100) NULL', NULL)
INSERT [dbo].[EcomFieldType] ([FieldTypeId], [FieldTypeName], [FieldTypeDW], [FieldTypeSort], [FieldTypeDBSQL], [FieldTypeAdvanced]) VALUES (11, N'Tekst (50)', N'Text', 3, N'NVARCHAR(50) NULL', NULL)
INSERT [dbo].[EcomFieldType] ([FieldTypeId], [FieldTypeName], [FieldTypeDW], [FieldTypeSort], [FieldTypeDBSQL], [FieldTypeAdvanced]) VALUES (12, N'Tekst (20)', N'Text', 2, N'NVARCHAR(20) NULL', NULL)
INSERT [dbo].[EcomFieldType] ([FieldTypeId], [FieldTypeName], [FieldTypeDW], [FieldTypeSort], [FieldTypeDBSQL], [FieldTypeAdvanced]) VALUES (13, N'Tekst (5)', N'Text', 1, N'NVARCHAR(5) NULL', NULL)
INSERT [dbo].[EcomFieldType] ([FieldTypeId], [FieldTypeName], [FieldTypeDW], [FieldTypeSort], [FieldTypeDBSQL], [FieldTypeAdvanced]) VALUES (14, N'Editor', N'EditorText', 14, N'NVARCHAR(MAX) NULL', 1)
INSERT [dbo].[EcomFieldType] ([FieldTypeId], [FieldTypeName], [FieldTypeDW], [FieldTypeSort], [FieldTypeDBSQL], [FieldTypeAdvanced]) VALUES (15, N'List box', N'List', 15, N'NVARCHAR(512) NULL', NULL)
SET IDENTITY_INSERT [dbo].[EcomFieldType] OFF
SET IDENTITY_INSERT [dbo].[EcomGlobalIso] ON 

INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (1, N'AF', N'AFG', N'Afghanistan', N'Afghanistan', 4, N'AFA', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (2, N'AL', N'ALB', N'Albanien', N'Albania', 8, N'ALL', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (3, N'DZ', N'DZA', N'Algeriet', N'Algeria', 12, N'DZD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (4, N'VI', N'VIR', N'De Amerikanske Jomfruøer', N'Virgin Islands, U.S.', 840, N'USD', NULL, NULL, 1)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (5, N'AS', N'ASM', N'Amerikansk Oceanien', N'American Samoa', 840, N'USD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (6, N'AD', N'AND', N'Andorra', N'Andorra', 978, N'EUR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (7, N'AO', N'AGO', N'Angola', N'Angola', 973, N'AON', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (8, N'AI', N'AIA', N'Anguilla', N'Anguilla', 951, N'XCD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (9, N'AQ', N'ATA', N'Antarktis', N'Antarctica', 578, N'NOK', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (10, N'AG', N'ATG', N'Antigua og Barbuda', N'Antigua and Barbuda', 951, N'XCD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (11, N'AR', N'ARG', N'Argentina', N'Argentina', 32, N'ARS', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (12, N'AM', N'ARM', N'Armenien', N'Armenia', 51, N'AMD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (13, N'AW', N'ABW', N'Aruba', N'Aruba', 533, N'AWG', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (14, N'AU', N'AUS', N'Australien', N'Australia', 36, N'AUD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (15, N'AZ', N'AZE', N'Aserbajdsjan', N'Azerbaijan', 31, N'AZM', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (16, N'BS', N'BHS', N'Bahamaøerne', N'Bahamas', 44, N'BSD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (17, N'BH', N'BHR', N'Bahrain', N'Bahrain', 48, N'BHD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (18, N'BD', N'BGD', N'Bangladesh', N'Bangladesh', 50, N'BDT', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (19, N'BB', N'BRB', N'Barbados', N'Barbados', 52, N'BBD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (20, N'BY', N'BLR', N'Belarus', N'Belarus', 974, N'BYR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (21, N'BE', N'BEL', N'Belgien', N'Belgium', 978, N'EUR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (22, N'BZ', N'BLZ', N'Belize', N'Belize', 84, N'BZD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (23, N'BJ', N'BEN', N'Benin', N'Benin', 952, N'XAF', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (24, N'BM', N'BMU', N'Bermudaøerne', N'Bermuda', 60, N'BMD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (25, N'BT', N'BTN', N'Bhutan', N'Bhutan', 64, N'BTN', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (26, N'BO', N'BOL', N'Bolivia', N'Bolivia', 68, N'BOB', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (27, N'BA', N'BIH', N'Bosnien-Hercegovina', N'Bosnia and Herzegovina', 978, N'EUR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (28, N'BW', N'BWA', N'Botswana', N'Botswana', 72, N'BWP', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (29, N'BV', N'BVT', N'Bouvet øerne', N'Bouvet Island', 578, N'NOK', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (30, N'BR', N'BRA', N'Brasilien', N'Brazil', 986, N'BRL', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (31, N'VG', N'VGB', N'De Britiske Jomfruøer', N'British Virgin Islands', 840, N'USD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (32, N'IO', N'IOT', N'Britiske områder i det Indiske Ocean', N'British Indian Ocean Territory', 826, N'GBP', NULL, NULL, 1)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (33, N'BN', N'BRN', N'Brunei Darussalam', N'Brunei Darussalam', 96, N'BND', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (34, N'BG', N'BGR', N'Bulgarien', N'Bulgaria', 100, N'BGL', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (35, N'BF', N'BFA', N'Burkina Faso', N'Burkina Faso', 952, N'BFF', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (36, N'BI', N'BDI', N'Burundi', N'Burundi', 108, N'BIF', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (37, N'KH', N'KHM', N'Cambodia', N'Cambodia', 116, N'KHR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (38, N'CM', N'CMR', N'Cameroon', N'Cameroon', 950, N'XAF', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (39, N'CA', N'CAN', N'Canada', N'Canada', 124, N'CAD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (40, N'KY', N'CYM', N'Caymanøerne', N'Cayman Islands', 136, N'KYD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (41, N'CF', N'CAF', N'Central Afrikanske Republik', N'Central African Republic', 950, N'XAF', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (42, N'CL', N'CHL', N'Chile', N'Chile', 990, N'CLF', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (43, N'CX', N'CXR', N'Christmasøerne', N'Christmas Island', 36, N'AUD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (44, N'CC', N'CCK', N'Cocos øerne', N'Cocos Islands', 36, N'AUD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (45, N'CO', N'COL', N'Colombia', N'Colombia', 170, N'COP', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (46, N'KM', N'COM', N'Comorerne', N'Comoros', 174, N'KMF', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (47, N'CG', N'COG', N'Congo', N'Congo', 976, N'CDF', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (48, N'CK', N'COK', N'Cook øerne', N'Cook Islands', 554, N'NZD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (49, N'CR', N'CRI', N'Costa Rica', N'Costa Rica', 188, N'CRC', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (50, N'CU', N'CUB', N'Cuba', N'Cuba', 192, N'CUP', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (51, N'CY', N'CYP', N'Cypern', N'Cyprus', 196, N'CYP', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (52, N'DK', N'DNK', N'Danmark', N'Denmark', 208, N'DKK', 25, N'da-DK', 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (53, N'DJ', N'DJI', N'Djibouti', N'Djibouti', 262, N'DJF', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (54, N'DM', N'DMA', N'Dominica', N'Dominica', 951, N'XCD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (55, N'DO', N'DOM', N'Dominikanske Republik', N'Dominican Republic', 214, N'DOP', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (56, N'EC', N'ECU', N'Ecuador', N'Ecuador', 840, N'USD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (57, N'SV', N'SLV', N'El Salvador', N'El Salvador', 222, N'SVC', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (58, N'CI', N'CIV', N'Elfenbenskysten', N'Cote D''Ivoire', 952, N'XOF', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (59, N'ER', N'ERI', N'Eritrea', N'Eritrea', 232, N'ERN', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (60, N'EE', N'EST', N'Estland', N'Estonia', 233, N'EEK', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (61, N'ET', N'ETH', N'Ethiopien', N'Ethiopia', 230, N'ETB', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (62, N'FK', N'FLK', N'Falklandsøerne (Malvinas)', N'Falkland Islands (Malvinas)', 238, N'FKP', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (63, N'FJ', N'FJI', N'Fiji', N'Fiji', 242, N'FJD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (64, N'FI', N'FIN', N'Finland', N'Finland', 978, N'EUR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (65, N'AE', N'ARE', N'Forenede Arabiske Emirater', N'United Arab Emirates', 784, N'AED', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (66, N'FR', N'FRA', N'Frankrig', N'France', 978, N'EUR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (67, N'FX', N'FXX', N'Frankrig', N'France', 978, N'EUR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (68, N'GF', N'GUF', N'Fransk Guiana', N'French Guiana', 978, N'EUR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (69, N'PF', N'PYF', N'Fransk Polynesien', N'French Polynesia', 953, N'XPF', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (70, N'TF', N'ATF', N'Frankrig Sydlige Territorier', N'French Southern Territories', 978, N'EUR', NULL, NULL, 1)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (71, N'FO', N'FRO', N'Færøerne', N'Faroe Islands', 208, N'DKK', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (72, N'GA', N'GAB', N'Gabon', N'Gabon', 950, N'XAF', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (73, N'GM', N'GMB', N'Gambia', N'Gambia', 270, N'GMD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (74, N'GE', N'GEO', N'Georgien', N'Georgia', 981, N'GEL', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (75, N'GH', N'GHA', N'Ghana', N'Ghana', 288, N'GHC', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (76, N'GI', N'GIB', N'Gibraltar', N'Gibraltar', 292, N'GIP', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (77, N'GR', N'GRC', N'Grækenland', N'Greece', 978, N'EUR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (78, N'GL', N'GRL', N'Grønland', N'Greenland', 208, N'DKK', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (79, N'GD', N'GRD', N'Grenada', N'Grenada', 951, N'XCD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (80, N'GP', N'GLP', N'Guadeloupe', N'Guadeloupe', 978, N'EUR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (81, N'GU', N'GUM', N'Guam', N'Guam', 840, N'USD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (82, N'GT', N'GTM', N'Guatemala', N'Guatemala', 320, N'GTQ', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (83, N'GN', N'GIN', N'Guinea', N'Guinea', 324, N'GNF', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (84, N'GW', N'GNB', N'Guinea-Bissau', N'Guinea-Bissau', 624, N'GWP', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (85, N'GQ', N'GNO', N'Guinea-kvatorial', N'Equatorial Guinea', 950, N'XAF', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (86, N'GY', N'GUY', N'Guyana', N'Guyana', 328, N'GYD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (87, N'HT', N'HTI', N'Haiti', N'Haiti', 332, N'HTG', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (88, N'HM', N'HMD', N'Heard og McDonald øerne', N'Heard Island and Mcdonald Islands', 36, N'AUD', NULL, NULL, 1)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (89, N'NL', N'NLD', N'Holland', N'Netherlands', 978, N'EUR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (90, N'AN', N'ANT', N'Hollandske Antiller', N'Netherlands Antilles', 532, N'ANG', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (91, N'HN', N'HND', N'Honduras', N'Honduras', 340, N'HNL', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (92, N'HK', N'HKG', N'Hong Kong', N'Hong Kong', 344, N'HKD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (93, N'IS', N'ISL', N'Island', N'Iceland', 352, N'ISK', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (94, N'IN', N'IND', N'Indien', N'India', 356, N'INR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (95, N'ID', N'IDN', N'Indonesien', N'Indonesia', 360, N'IDR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (96, N'R ', N'IRN', N'Iran', N'Iran, Islamic Republic of', 364, N'IRR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (97, N'IQ', N'IRQ', N'Irak', N'Iraq', 368, N'IQD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (98, N'IE', N'IRL', N'Irland', N'Ireland', 978, N'EUR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (99, N'IL', N'ISR', N'Israel', N'Israe', 376, N'ILS', NULL, NULL, 0)
GO
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (100, N'IT', N'ITA', N'Italien', N'Italy', 978, N'EUR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (101, N'JM', N'JAM', N'Jamaica', N'Jamaica', 388, N'JMD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (102, N'JP', N'JPN', N'Japan', N'Japan', 392, N'JPY', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (103, N'JO', N'JOR', N'Jordan', N'Jordan', 400, N'JOD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (104, N'CS', N'SCG', N'Serbien og Montenegro', N'Serbia and Montenegro', 891, N'CSD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (105, N'CV', N'CPV', N'Kap Verde', N'Cape Verde', 132, N'CVE', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (106, N'KZ', N'KAZ', N'Kasakhstan', N'Kazakhstan', 398, N'KZT', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (107, N'KE', N'KEN', N'Kenya', N'Kenya', 404, N'KES', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (108, N'CN', N'CHN', N'Kina', N'China', 156, N'CNY', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (109, N'KI', N'KIR', N'Kiribati', N'Kiribati', 36, N'AUD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (110, N'KG', N'KGZ', N'Kirgisistan', N'Kyrgyzstan', 417, N'KGS', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (111, N'HR', N'HRV', N'Kroatien', N'Croatia', 191, N'HRK', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (112, N'KW', N'KWT', N'Kuwait', N'Kuwait', 414, N'KWD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (113, N'LA', N'LAO', N'Laos', N'Lao People''s Democratic Republic', 418, N'LAK', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (114, N'LV', N'LVA', N'Letland', N'Latvia', 428, N'LVL', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (115, N'LS', N'LSO', N'Lesotho', N'Lesotho', 426, N'LSL', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (116, N'LB', N'LBN', N'Libanon', N'Lebanon', 422, N'LBP', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (117, N'LR', N'LBR', N'Liberia', N'Liberia', 430, N'LRD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (118, N'LY', N'LBY', N'Libyen', N'Libyan Arab Jamahiriya', 434, N'LYD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (119, N'LI', N'LIE', N'Liechtenstein', N'Liechtenstein', 756, N'CHF', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (120, N'LT', N'LTU', N'Litauen', N'Lithuania', 440, N'LTL', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (121, N'LU', N'LUX', N'Luxembourg', N'Luxembourg', 978, N'EUR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (122, N'MO', N'MAC', N'Macao', N'Macao', 446, N'MOP', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (123, N'MG', N'MDG', N'Madagascar', N'Madagascar', 450, N'MGF', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (124, N'MK', N'MKD', N'Makedonien', N'Macedonia, the Former Yugoslav Republic of', 807, N'MKD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (125, N'MW', N'MWI', N'Malawi', N'Malawi', 454, N'MWK', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (126, N'MY', N'MYS', N'Malaysia', N'Malaysia', 458, N'MYR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (127, N'MV', N'MDV', N'Maldiverne', N'Maldives', 462, N'MVR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (128, N'ML', N'MLI', N'Mali', N'Mali', 952, N'XOF', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (129, N'MT', N'MLT', N'Malta', N'Malta', 470, N'MTL', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (130, N'MP', N'MNP', N'Mariana øerne (Nordlige)', N'Northern Mariana Islands', 840, N'USD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (131, N'MA', N'MAR', N'Marokko', N'Morocco', 504, N'MAD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (132, N'MH', N'MHL', N'Marshall øerne', N'Marshall Islands', 840, N'USD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (133, N'MQ', N'MTQ', N'Martinique', N'Martinique', 978, N'EUR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (134, N'MR', N'MRT', N'Mauritanien', N'Mauritania', 478, N'MRO', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (135, N'MU', N'MUS', N'Mauritius', N'Mauritius', 480, N'MUR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (136, N'YT', N'MYT', N'Mayotte', N'Mayotte', 978, N'EUR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (137, N'MX', N'MEX', N'Mexico', N'Mexico', 484, N'MXN', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (138, N'FM', N'FSM', N'Micronesien', N'Micronesia, Federated States of', 840, N'USD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (139, N'MD', N'MDA', N'Moldavien', N'Moldova, Republic of', 498, N'MDL', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (140, N'MC', N'MCO', N'Monaco', N'Monaco', 978, N'EUR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (141, N'MN', N'MNG', N'Mongoliet', N'Mongolia', 496, N'MNT', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (142, N'MS', N'MSR', N'Montserrat', N'Montserrat', 951, N'XCD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (143, N'MZ', N'MOZ', N'Mozambique', N'Mozambique', 508, N'MZM', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (144, N'MM', N'MMR', N'Myanmar (Burma)', N'Myanmar', 104, N'MMK', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (145, N'NA', N'NAM', N'Namibia', N'Namibia', 516, N'NAD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (146, N'NR', N'NRU', N'Nauru', N'Nauru', 36, N'AUD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (147, N'NP', N'NPL', N'Nepal', N'Nepal', 524, N'NPR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (148, N'NZ', N'NZL', N'New Zealand', N'New Zealand', 554, N'NZD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (149, N'NI', N'NIC', N'Nicaragua', N'Nicaragua', 558, N'NIO', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (150, N'NE', N'NER', N'Niger', N'Niger', 952, N'XOF', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (151, N'NG', N'NGA', N'Nigeria', N'Nigeria', 566, N'NGN', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (152, N'NU', N'NIU', N'Niue', N'Niue', 554, N'NZD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (153, N'KP', N'PRK', N'Nord Korea', N'Korea, Democratic People''s Republic of', 408, N'KPW', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (154, N'NF', N'NFK', N'Norfolk øerne', N'Norfolk Island', 36, N'AUD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (155, N'NO', N'NOR', N'Norge', N'Norway', 578, N'NOK', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (156, N'NC', N'NCL', N'Ny Caledonien', N'New Caledonia', 953, N'XPF', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (157, N'OM', N'OMN', N'Oman', N'Oman', 512, N'OMR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (158, N'PK', N'PAK', N'Pakistan', N'Pakistan', 586, N'PKR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (159, N'PW', N'PLW', N'Palau', N'Palau', 840, N'USD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (160, N'PA', N'PAN', N'Panama', N'Panama', 590, N'PAB', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (161, N'PG', N'PNG', N'Papua Ny Guinea', N'Papua New Guinea', 598, N'PGK', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (162, N'PY', N'PRY', N'Paraguay', N'Paraguay', 600, N'PYG', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (163, N'PE', N'PER', N'Peru', N'Peru', 604, N'PEI', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (164, N'PH', N'PHL', N'Philippinerne', N'Philippines', 608, N'PHP', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (165, N'PN', N'PCN', N'Pitcairn', N'Pitcairn', 554, N'NZD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (166, N'PL', N'POL', N'Polen', N'Poland', 985, N'PLN', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (167, N'PT', N'PRT', N'Portugal', N'Portugal', 978, N'EUR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (168, N'PR', N'PRI', N'Puerto Rico', N'Puerto Rico', 840, N'USD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (169, N'QA', N'QAT', N'Qatar', N'Qatar', 634, N'QAR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (170, N'RE', N'REU', N'Reunion', N'Reunion', 978, N'EUR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (171, N'RO', N'ROU', N'Rumnien', N'Romania', 642, N'ROL', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (172, N'RU', N'RUS', N'Rusland', N'Russian Federation', 810, N'RUR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (173, N'RW', N'RWA', N'Rwanda', N'Rwanda', 646, N'RWF', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (174, N'KN', N'KNA', N'Saint Kitts og Nevis', N'Saint Kitts and Nevis', 951, N'XCD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (175, N'LC', N'LCA', N'Saint Lucia', N'Saint Lucia', 951, N'XCD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (176, N'VC', N'VCT', N'Saint Vincent og Grenadines', N'Saint Vincent and the Grenadines', 951, N'XCD', NULL, NULL, 1)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (177, N'WS', N'WSM', N'Samoa', N'Samoa', 882, N'WST', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (178, N'SM', N'SMR', N'San Marino', N'San Marino', 978, N'EUR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (179, N'ST', N'STP', N'Sao Tome og Principe', N'Sao Tome and Principe', 678, N'STD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (180, N'SA', N'SAU', N'Saudi Arabien', N'Saudi Arabia', 682, N'SAR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (181, N'SN', N'SEN', N'Senegal', N'Senegal', 952, N'XOF', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (182, N'SC', N'SYC', N'Seychellerne', N'Seychelles', 690, N'SCR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (183, N'SL', N'SLE', N'Sierra Leone', N'Sierra Leone', 694, N'SLL', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (184, N'SG', N'SGP', N'Singapore', N'Singapore', 702, N'SGD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (185, N'SK', N'SVK', N'Slovakiet', N'Slovakia', 703, N'SKK', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (186, N'SI', N'SVN', N'Slovenien', N'Slovenia', 705, N'SIT', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (187, N'SB', N'SLB', N'Solomon øerne', N'Solomon Islands', 90, N'SBD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (188, N'SO', N'SOM', N'Somalia', N'Somalia', 706, N'SOS', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (189, N'ZA', N'ZAF', N'Syd Afrika', N'South Africa', 710, N'ZAR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (190, N'GS', N'SGS', N'Syd Georgien og de sydlige Sandwichøer', N'South Georgia and the South Sandwich Islands', 826, N'GBP', NULL, NULL, 1)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (191, N'ES', N'ESP', N'Spanien', N'Spain', 978, N'EUR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (192, N'LK', N'LKA', N'Sri Lanka', N'Sri Lanka', 144, N'LKR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (193, N'SH', N'SHN', N'St. Helena', N'Saint Helena', 654, N'SHP', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (194, N'PM', N'SPM', N'St. Pierre og Miquelon', N'Saint Pierre and Miquelon', 978, N'EUR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (195, N'GB', N'GBR', N'Storbritanien', N'United Kingdom', 826, N'GBP', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (196, N'SD', N'SDN', N'Sudan', N'Sudan', 736, N'SDP', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (197, N'SR', N'SUR', N'Surinam', N'Suriname', 740, N'SRG', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (198, N'KR', N'KOR', N'Syd Korea', N'Korea, Republic of', 410, N'KRW', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (199, N'SJ', N'SJM', N'Svalbard og Jan Mayen', N'Svalbard and Jan Mayen', 578, N'NOK', NULL, NULL, 1)
GO
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (200, N'SZ', N'SWZ', N'Swaziland', N'Swaziland', 748, N'SZL', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (201, N'SE', N'SWE', N'Sverige', N'Sweden', 752, N'SEK', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (202, N'CH', N'CHE', N'Schweiz', N'Switzerland', 756, N'CHF', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (203, N'SY', N'SYR', N'Syrien', N'Syrian Arab Republic', 760, N'SYP', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (204, N'TW', N'TWN', N'Taiwan', N'Taiwan, Province of China', 901, N'TWD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (205, N'TJ', N'TJK', N'Tadsjikistan', N'Tajikistan', 972, N'TJR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (206, N'TZ', N'TZA', N'Tanzania', N'Tanzania, United Republic of', 834, N'TZS', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (207, N'TH', N'THA', N'Thailand', N'Thailand', 764, N'THB', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (208, N'TG', N'TGO', N'Togo', N'Togo', 952, N'XAF', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (209, N'TK', N'TKL', N'Tokelau', N'Tokelau', 554, N'NZD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (210, N'TO', N'TON', N'Tonga', N'Tonga', 776, N'TOP', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (211, N'TT', N'TTO', N'Trinidad og Tobago', N'Trinidad and Tobago', 780, N'TTD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (212, N'TN', N'TUN', N'Tunisien', N'Tunisia', 788, N'TND', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (213, N'TR', N'TUR', N'Tyrkiet', N'Turkey', 949, N'TRY', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (214, N'TM', N'TKM', N'Turkmenistan', N'Turkmenistan', 795, N'TMM', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (215, N'TC', N'TCA', N'Turks og Caicos øerne', N'Turks and Caicos Islands', 840, N'USD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (216, N'TV', N'TUV', N'Tubalu', N'Tuvalu', 36, N'AUD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (217, N'UG', N'UGA', N'Uganda', N'Uganda', 800, N'UGS', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (218, N'UA', N'UKR', N'Ukraine', N'Ukraine', 980, N'UAH', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (219, N'HU', N'HUN', N'Ungarn', N'Hungary', 348, N'HUF', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (220, N'TD', N'TCD', N'Tchad', N'Chad', 950, N'XAF', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (221, N'CZ', N'CZE', N'Tjekkiet', N'Czech Republic', 203, N'CZK', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (222, N'DE', N'DEU', N'Tyskland', N'Germany', 978, N'EUR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (223, N'US', N'USA', N'USA', N'United States', 840, N'USD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (224, N'UM', N'UMI', N'USA''s besiddelser i Stillehavet', N'United States Minor Outlying Islands', 840, N'USD', NULL, NULL, 1)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (225, N'UY', N'URY', N'Uruguay', N'Uruguay', 858, N'UYU', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (226, N'UZ', N'UZB', N'Usbekistan', N'Uzbekistan', 860, N'UZS', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (227, N'VU', N'VUT', N'Vanuatu', N'Vanuatu', 548, N'VUV', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (228, N'VA', N'VAT', N'Vatikanstaten', N'Holy See (Vatican City State)', 978, N'EUR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (229, N'VE', N'VEN', N'Venezuela', N'Venezuela', 862, N'VEB', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (230, N'VN', N'VNM', N'Viet Nam', N'Viet Nam', 704, N'VND', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (231, N'EH', N'ESH', N'Vest Sahara', N'Western Sahara', 504, N'MAD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (232, N'WF', N'WLF', N'Wallis og Futuna øerne', N'Wallis and Futuna', 953, N'XPF', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (233, N'YE', N'YEM', N'Yemen', N'Yemen', 886, N'YER', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (234, N'ZW', N'ZWE', N'Zimbabwe', N'Zimbabwe', 716, N'ZWD', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (235, N'ZM', N'ZMB', N'Zambia', N'Zambia', 894, N'ZMK', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (237, N'EG', N'EGY', N'Ægypten', N'Egypt', 818, N'EGP', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (238, N'AT', N'AUT', N'Østrig', N'Austria', 978, N'EUR', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (239, N'TP', N'TMP', N'Øst Timor', N'East Timor', 626, N'TPE', NULL, NULL, 0)
INSERT [dbo].[EcomGlobalIso] ([IsoId], [IsoCode2], [IsoCode3], [IsoCountryNameDK], [IsoCountryNameUK], [IsoCurrencyCode], [IsoCurrencySymbol], [IsoVat], [IsoCultureInfo], [IsoDisabled]) VALUES (240, N'RS', N'SRB', N'Serbien', N'Serbia', 941, N'RSD', NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[EcomGlobalIso] OFF
SET IDENTITY_INSERT [dbo].[EcomLanguages] ON 

INSERT [dbo].[EcomLanguages] ([LanguageId], [LanguageCode2], [LanguageName], [LanguageNativeName], [LanguageIsDefault], [LanguageAutoId]) VALUES (N'LANG1', N'US', N'English', N'English', 1, 1)
SET IDENTITY_INSERT [dbo].[EcomLanguages] OFF
SET IDENTITY_INSERT [dbo].[EcomNumbers] ON 

INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'1', N'FEE', N'Gebyr', 0, N'FEE', N'', 1, 0, 1)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'2', N'SHIP', N'Forsendelser', 0, N'SHIP', N'', 1, 0, 2)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'3', N'PAY', N'Betalingsmetoder', 0, N'PAY', N'', 1, 0, 3)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'4', N'VARGRP', N'Variant grupper', 0, N'VARGRP', N'', 1, 0, 4)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'5', N'PROD', N'Produkter', 0, N'PROD', N'', 1, 0, 5)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'6', N'GROUP', N'Produkt grupper', 0, N'GROUP', N'', 1, 0, 6)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'7', N'VO', N'Varianter muligheder (Optioner)', 0, N'VO', N'', 1, 0, 7)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'8', N'SALESDISCNT', N'Salgs rabat', 0, N'SALESDISCNT', N'', 1, 0, 8)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'9', N'STOCKGRP', N'Lager grupper', 0, N'STOCKGRP', N'', 1, 0, 9)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'10', N'COUNTRYREL', N'Lande relationer', 0, N'CREL', N'', 1, 0, 10)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'11', N'ROUNDING', N'Afrundingsmetoder', 0, N'ROUNDING', N'', 1, 0, 11)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'12', N'PROD', N'Produkt', 0, N'PROD', N'', 1, 0, 12)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'13', N'VATGRP', N'Moms grupper', 0, N'VATGRP', N'', 1, 0, 13)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'14', N'PRICE', N'Priser', 0, N'PRICE', N'', 1, 0, 14)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'15', N'RELGRP', N'Produkt relations grupper', 0, N'RELGRP', N'', 1, 0, 15)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'16', N'VARGRPPRODREL', N'Variant gruppe produkt relation', 0, N'VARGRPPRODREL', N'', 1, 0, 16)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'17', N'VAROPTPRODREL', N'Variant produkt relation', 0, N'VAROPTPRODREL', N'', 1, 0, 17)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'18', N'SHOP', N'Shop', 1, N'SHOP', N'', 1, 0, 18)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'19', N'LANG', N'Sprog', 1, N'LANG', N'', 1, 0, 19)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'20', N'PERIOD', N'Perioder', 0, N'PERIOD', N'', 1, 0, 20)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'21', N'MANU', N'Producenter', 0, N'MANU', N'', 1, 0, 21)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'22', N'OS', N'Ordre stadier', 4, N'OS', N'', 1, 0, 22)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'23', N'ORDER', N'Ordrer', 0, N'ORDER', N'', 1, 1, 23)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'24', N'OL', N'Ordre linier', 0, N'OL', N'', 1, 0, 24)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'25', N'DETAIL', N'Detaljer medier', 0, N'DETAIL', N'', 1, 0, 25)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'26', N'PROPTYPE', N'Egenskabs typer', 0, N'PROPTYPE', N'', 1, 0, 26)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'27', N'PROPGRP', N'Egenskabs grupper', 0, N'PROPGRP', N'', 1, 0, 27)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'28', N'PROPFIELD', N'Egenskabs felter', 0, N'PROPFIELD', N'', 1, 0, 28)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'29', N'PROPFIELDOPT', N'Egenskabs felter optioner', 0, N'PROPFIELDOPT', N'', 1, 0, 29)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'30', N'PROPVALUE', N'Egenskabs vrdier', 0, N'PROPVALUE', N'', 1, 0, 30)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'31', N'FIELD', N'Varefelter', 2, N'FIELD', N'', 1, 0, 31)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'32', N'PRODITEM', N'Styklister / Konfigurator', 0, N'PRODITEM', N'', 1, 0, 32)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'33', N'ORDERFIELD', N'Ordrefelter', 0, N'ORDERFIELD', N'', 1, 0, 33)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'34', N'CART', N'Indkøbskurv / Pre ordre', 0, N'CART', N'', 1, 0, 34)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'36', N'GROUPFIELD', N'Varegruppe felter', 0, N'GROUPFIELD', N'', 1, 0, 36)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'37', N'VALIDATIONGROUP', N'Valideringsgruppe', 0, N'VALIDATIONGROUP', N'', 1, 1, 37)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'38', N'VALIDATION', N'Validering', 0, N'VALIDATION', N'', 1, 1, 38)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'39', N'VALIDATIONRULE', N'Valideringsregel', 0, N'VALIDATIONRULE', N'', 1, 1, 39)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'40', N'ORDERGATEWAYUNIQUEID', N'Unique ID for orders used by payment gateways', 1000, N'', N'', 1, 1, 40)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'43', N'FIELDOPT', N'Field option', 0, N'FIELDOPT', N'', 1, 0, 43)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'45', N'RMA', N'Return merchandise authorization', 0, N'RMA', N'', 1, 0, 45)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'46', N'LANGUAGEVALUE', N'Language Value', 0, N'LANGUAGEVALUE', N'', 1, 0, 46)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'47', N'STOCKSTATUSLINE', N'StockStatus Line', 0, N'STOCKSTATUSLINE', N'', 1, 0, 47)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'48', N'ORDERCONTEXT', N'Order context', 0, N'ORDERCONTEXT', N'', 1, 0, 48)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'49', N'ASSORTMENT', N'Assortments', 0, N'ASSORTMENT', N'', 1, 0, 49)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'50', N'QUOTE', N'Quote', 0, N'QUOTE', N'', 1, 0, 50)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'51', N'GIFTCARD', N'Gift Cards', 0, N'GIFTCARD', N'', 1, 0, 51)
INSERT [dbo].[EcomNumbers] ([NumberId], [NumberType], [NumberDescription], [NumberCounter], [NumberPrefix], [NumberPostFix], [NumberAdd], [NumberEditable], [NumberAutoId]) VALUES (N'52', N'REC', N'Recurring Orders', 0, N'REC', N'', 1, 0, 52)
SET IDENTITY_INSERT [dbo].[EcomNumbers] OFF
SET IDENTITY_INSERT [dbo].[EcomOrderFlow] ON 

INSERT [dbo].[EcomOrderFlow] ([OrderFlowId], [OrderFlowIsDefault], [OrderFlowName], [OrderFlowDescription], [OrderFlowOrderType]) VALUES (1, 1, N'Default order flow', N'', 0)
SET IDENTITY_INSERT [dbo].[EcomOrderFlow] OFF
SET IDENTITY_INSERT [dbo].[EcomOrderStates] ON 

INSERT [dbo].[EcomOrderStates] ([OrderStateId], [OrderStateName], [OrderStateDescription], [OrderStateIsDefault], [OrderStateDontUseInstatistics], [OrderStateIsDeleted], [OrderStateMailTemplate], [OrderFlowId], [OrderStateMailSender], [OrderStateMailSenderName], [OrderStateMailSubject], [OrderStateAutoId], [OrderStateSendToCustomer], [OrderStateOthersMailTemplate], [OrderStateOthersRecipients], [OrderStateSortOrder], [OrderStateOrderType], [OrderStateAllowOrder]) VALUES (N'OS1', N'New', N'New orders', 1, 0, 0, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[EcomOrderStates] ([OrderStateId], [OrderStateName], [OrderStateDescription], [OrderStateIsDefault], [OrderStateDontUseInstatistics], [OrderStateIsDeleted], [OrderStateMailTemplate], [OrderFlowId], [OrderStateMailSender], [OrderStateMailSenderName], [OrderStateMailSubject], [OrderStateAutoId], [OrderStateSendToCustomer], [OrderStateOthersMailTemplate], [OrderStateOthersRecipients], [OrderStateSortOrder], [OrderStateOrderType], [OrderStateAllowOrder]) VALUES (N'OS2', N'Completed', N'Completed orders', 0, 0, 0, NULL, 1, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[EcomOrderStates] ([OrderStateId], [OrderStateName], [OrderStateDescription], [OrderStateIsDefault], [OrderStateDontUseInstatistics], [OrderStateIsDeleted], [OrderStateMailTemplate], [OrderFlowId], [OrderStateMailSender], [OrderStateMailSenderName], [OrderStateMailSubject], [OrderStateAutoId], [OrderStateSendToCustomer], [OrderStateOthersMailTemplate], [OrderStateOthersRecipients], [OrderStateSortOrder], [OrderStateOrderType], [OrderStateAllowOrder]) VALUES (N'OS3', N'Rejected', N'Rejected orders', 0, 1, 0, NULL, 1, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, 0, 1)
INSERT [dbo].[EcomOrderStates] ([OrderStateId], [OrderStateName], [OrderStateDescription], [OrderStateIsDefault], [OrderStateDontUseInstatistics], [OrderStateIsDeleted], [OrderStateMailTemplate], [OrderFlowId], [OrderStateMailSender], [OrderStateMailSenderName], [OrderStateMailSubject], [OrderStateAutoId], [OrderStateSendToCustomer], [OrderStateOthersMailTemplate], [OrderStateOthersRecipients], [OrderStateSortOrder], [OrderStateOrderType], [OrderStateAllowOrder]) VALUES (N'OS4', N'Deleted', N'Deleted orders', 0, 1, 1, NULL, 1, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 0, 1)
SET IDENTITY_INSERT [dbo].[EcomOrderStates] OFF
SET IDENTITY_INSERT [dbo].[EcomRmaEvents] ON 

INSERT [dbo].[EcomRmaEvents] ([RmaEventId], [RmaEventType], [RmaEventDescription]) VALUES (1, N'Closed', N'The RMA has been closed.')
INSERT [dbo].[EcomRmaEvents] ([RmaEventId], [RmaEventType], [RmaEventDescription]) VALUES (2, N'CommentAdded', N'A comment has been added to the RMA.')
INSERT [dbo].[EcomRmaEvents] ([RmaEventId], [RmaEventType], [RmaEventDescription]) VALUES (3, N'Created', N'RMA Created.')
INSERT [dbo].[EcomRmaEvents] ([RmaEventId], [RmaEventType], [RmaEventDescription]) VALUES (4, N'Deleted', N'The RMA has been deleted.')
INSERT [dbo].[EcomRmaEvents] ([RmaEventId], [RmaEventType], [RmaEventDescription]) VALUES (5, N'ReplacementOrderSet', N'The replacement order has been set.')
INSERT [dbo].[EcomRmaEvents] ([RmaEventId], [RmaEventType], [RmaEventDescription]) VALUES (6, N'StateChanged', N'The state of the RMA has been changed.')
INSERT [dbo].[EcomRmaEvents] ([RmaEventId], [RmaEventType], [RmaEventDescription]) VALUES (7, N'UserInfoChanged', N'User information has been updated.')
SET IDENTITY_INSERT [dbo].[EcomRmaEvents] OFF
SET IDENTITY_INSERT [dbo].[EcomRmaStates] ON 

INSERT [dbo].[EcomRmaStates] ([RmaStateId], [RmaStateDefaultName], [RmaStateDefaultDescription], [RmaStateTypeRelation], [RmaStateIsDefaultStateForNewRma]) VALUES (1, N'Waiting for product(s) from customer', N'This state indicates a newly created RMA where product(s) have not been received yet.', N'1,2,3', 1)
INSERT [dbo].[EcomRmaStates] ([RmaStateId], [RmaStateDefaultName], [RmaStateDefaultDescription], [RmaStateTypeRelation], [RmaStateIsDefaultStateForNewRma]) VALUES (2, N'Received from customer', N'This state indicates that the product has been received from the customer.', N'1,2,3', 0)
INSERT [dbo].[EcomRmaStates] ([RmaStateId], [RmaStateDefaultName], [RmaStateDefaultDescription], [RmaStateTypeRelation], [RmaStateIsDefaultStateForNewRma]) VALUES (3, N'Rejected', N'This state indicates that the RMA has been rejected.', N'1,2,3', 0)
INSERT [dbo].[EcomRmaStates] ([RmaStateId], [RmaStateDefaultName], [RmaStateDefaultDescription], [RmaStateTypeRelation], [RmaStateIsDefaultStateForNewRma]) VALUES (4, N'Sent for repair', N'This state indicates that the product has been sent to be repaired.', N'2', 0)
INSERT [dbo].[EcomRmaStates] ([RmaStateId], [RmaStateDefaultName], [RmaStateDefaultDescription], [RmaStateTypeRelation], [RmaStateIsDefaultStateForNewRma]) VALUES (5, N'Received from repair', N'This state indicates that the product has been received from repair.', N'2', 0)
INSERT [dbo].[EcomRmaStates] ([RmaStateId], [RmaStateDefaultName], [RmaStateDefaultDescription], [RmaStateTypeRelation], [RmaStateIsDefaultStateForNewRma]) VALUES (6, N'Returned to customer', N'This state indicates that the product has been sent back to the customer.', N'1,2,3', 0)
INSERT [dbo].[EcomRmaStates] ([RmaStateId], [RmaStateDefaultName], [RmaStateDefaultDescription], [RmaStateTypeRelation], [RmaStateIsDefaultStateForNewRma]) VALUES (7, N'Sent replacement to customer', N'This state indicates that a replacement product has been sent to the customer.', N'2,3', 0)
SET IDENTITY_INSERT [dbo].[EcomRmaStates] OFF
SET IDENTITY_INSERT [dbo].[EcomShops] ON 

INSERT [dbo].[EcomShops] ([ShopId], [ShopName], [ShopCreated], [ShopDefault], [ShopIcon], [ShopOrderFlowId], [ShopStockStateId], [ShopOrderContextId], [ShopAutoId], [ShopStockLocationID]) VALUES (N'SHOP1', N'SHOP1', CAST(N'2016-10-31 15:03:30.850' AS DateTime), 0, NULL, 1, NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[EcomShops] OFF
SET IDENTITY_INSERT [dbo].[EcomTree] ON 

INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (1, NULL, N'Dynamicweb eCommerce', NULL, N'tree/Home_small.gif', NULL, N'Main.aspx', N'ROOT', 0, NULL)
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (2, 13, N'Shops', NULL, N'tree/btn_shop.png', NULL, N'Lists/EcomList.aspx?type=SHOP', N'SHOPS', 1, N'eCom_Catalog, eCom_Center')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (3, 1, N'Varekatalog', 9, N'tree/Module_eCom_Catalog_small.gif', NULL, N'Lists/EcomList.aspx?type=SHOP', N'GROUPS', 1, N'eCom_Catalog')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (5, 1, N'Carts', NULL, N'/Admin/Module/eCom_Catalog/dw7/images/buttons/shoppingcart.png', NULL, N'Lists/EcomList.aspx?type=CART', N'CARTS', 5, N'eCom_Catalog')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (6, 1, N'Ordrer', NULL, N'tree/btn_orders.png', NULL, N'Lists/EcomList.aspx?type=ORDER', N'ORDERS', 2, N'eCom_Catalog')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (13, 1, N'Indstillinger', NULL, N'tree/Settings_small.gif', NULL, NULL, N'ROOT_SET', 3, NULL)
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (14, 15, N'Sprog', 7, N'tree/btn_languages.png', NULL, N'Lists/EcomList.aspx?type=LANG', N'LANGUAGES', 2, N'eCom_International, eCom_Light, eCom_Light, eCom_Light, eCom_Light, eCom_Light')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (15, 1, N'Opsætning', NULL, N'tree/ControlPanel_small.gif', NULL, NULL, N'ROOT_CP', 4, NULL)
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (16, 1, N'Rapporter', 7, N'tree/btn_reports.png', NULL, NULL, N'ROOT', 5, N'eCom_Reports')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (17, 1, N'Statistik', 7, N'tree/btn_stats.png', NULL, NULL, N'STAT', 7, N'eCom_Statistics')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (19, 15, N'Valuta', 7, N'tree/btn_currency.png', NULL, N'Lists/EcomList.aspx?type=CURR', N'CURRENCIES', 3, N'eCom_Pricing, eCom_PricingExtended, eCom_Light, eCom_Light, eCom_Light, eCom_Light, eCom_Light')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (20, 13, N'Vareenheder', 7, N'tree/btn_unit.png', NULL, N'Lists/EcomList.aspx?type=UNIT', N'UNITS', 4, N'eCom_Units')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (21, 13, N'Publication periods', 7, N'tree/btn_period.png', NULL, N'Lists/EcomList.aspx?type=PERIOD', N'PERIODS', 5, N'eCom_Catalog')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (25, 15, N'Auto-nummerering', 7, N'tree/btn_number.png', NULL, N'Lists/EcomList.aspx?type=NUM', N'NUMBERS', 1, N'eCom_Cart')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (27, 13, N'Producenter', 7, N'tree/btn_manufactor.png', NULL, N'Lists/EcomList.aspx?type=MANU', N'MANUFACTORS', 6, N'eCom_Catalog')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (28, 13, N'Varianter', 7, N'tree/btn_vargrp.png', NULL, N'Lists/EcomList.aspx?type=VARIANTGRP', N'VARIANTGROUPS', 7, N'eCom_Variants, eCom_VariantsExtended')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (29, 15, N'Lande', 7, N'tree/btn_country.png', NULL, N'Lists/EcomList.aspx?type=COUNTRY', N'COUNTRIES', 8, NULL)
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (30, 15, N'Betaling', 7, N'tree/btn_payment.png', NULL, N'Lists/EcomList.aspx?type=PAYMENT', N'PAYMENT', 9, N'eCom_Cart')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (31, 15, N'Forsendelse', 7, N'tree/btn_shipping.png', NULL, N'Lists/EcomList.aspx?type=SHIPPING', N'SHIPPING', 10, N'eCom_Cart')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (32, 13, N'Rabatter', 7, N'tree/btn_salesdiscount.png', NULL, N'Lists/EcomList.aspx?type=SALESDISCNT', N'SALESDISCNT', 11, N'eCom_SalesDiscount, eCom_SalesDiscountExtended')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (33, 1, N'Import/eksport', 7, N'tree/btn_impexp.png', NULL, N'Lists/EcomList.aspx?type=IMPEXP', N'IMPEXP', 7, N'DW_Integration_ImportExport, DW_Integration_ImportExportExtended')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (35, 15, N'Lagerstatus', 7, N'tree/btn_stockgrp.png', NULL, N'Lists/EcomList.aspx?type=STOCKGRP', N'STOCKGRP', 12, N'eCom_Catalog')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (36, 15, N'Afrunding', 7, N'tree/btn_roundings.png', NULL, N'Lists/EcomList.aspx?type=ROUNDING', N'ROUNDING', 2, N'eCom_Pricing, eCom_PricingExtended')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (37, 15, N'Moms', 7, N'tree/btn_vatgroups.png', NULL, N'Lists/EcomList.aspx?type=VATGRP', N'VATGRP', 13, N'eCom_Pricing, eCom_PricingExtended')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (38, 13, N'Relaterede varer', 7, N'tree/btn_relgroups.png', NULL, N'Lists/EcomList.aspx?type=RELGRP', N'RELGRP', 14, N'eCom_Related')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (40, 15, N'Ordrestatus', 7, N'tree/btn_orderstates.png', NULL, N'Lists/EcomList.aspx?type=ORDERSTATE', N'ORDERSTATES', 2, N'eCom_Cart')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (41, 13, N'Vare felter', 7, N'tree/btn_field.png', NULL, N'Lists/EcomList.aspx?type=FIELD', N'FIELD', 15, N'eCom_Catalog')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (45, 13, N'Gruppe felter', 7, N'tree/btn_properties.png', NULL, N'Lists/EcomList.aspx?type=PROPTYPE', N'PROPTYPE', 17, N'eCom_Catalog')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (46, 13, N'Ordre felter', 7, N'tree/btn_orderfield.png', NULL, N'Lists/EcomList.aspx?type=ORDERFIELD', N'ORDERFIELD', 18, N'eCom_Cart')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (47, 13, N'Varegruppe felter', 7, N'tree/btn_groupfield.png', NULL, N'Lists/EcomList.aspx?type=GROUPFIELD', N'GROUPFIELD', 16, N'eCom_Catalog')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (48, 15, N'Valideringsgrupper', 7, N'tree/btn_validationgroups.png', NULL, N'Lists/EcomList.aspx?type=VALIDATIONGROUPS', N'VALIDATIONGROUPS', 19, N'eCom_Cart')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (49, 13, N'Ordreliniefelter', 7, N'tree/btn_orderlinefield.png', NULL, N'Lists/EcomList.aspx?type=ORDERLINEFIELDS', N'ORDERLINEFIELDS', 20, N'eCom_Cart')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (51, 1, N'RMA', NULL, N'tree/btn_rma.png', NULL, N'RmaList.aspx', N'RMAS', 6, NULL)
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (52, 1, N'Quotes', NULL, NULL, NULL, NULL, N'QUOTES', 4, N'eCom_Quotes')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (53, 1, N'Recurring orders', 0, NULL, NULL, NULL, N'RECURRINGORDERS', 5, N'eCom_RecurringOrders')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (54, 1, N'Vouchers', 7, N'tree/btn_vouchers.png', NULL, N'/Admin/Module/eCom_Catalog/dw7/Vouchers/VouchersManagerMain.aspx', N'VOUCHERS', 11, N'eCom_Catalog')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (55, 1, N'Loyalty points', 0, N'/Admin/Module/eCom_Catalog/dw7/images/tree/eCom_LoyaltyPoints_Settings_small.png', NULL, N'/Admin/Module/eCom_Catalog/dw7/Lists/EcomReward_List.aspx?update=true', N'LOYALTYPOINTS', 10, N'LoyaltyPoints')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (56, 1, N'Order discounts', 0, N'/Admin/Module/eCom_Catalog/images/buttons/btn_discount.gif', NULL, N'/Admin/Module/eCom_Catalog/dw7/lists/EcomOrderDiscount_List.aspx', N'ORDERDISCOUNTS', 8, N'')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (57, 1, N'Rabatter', 7, N'tree/btn_salesdiscount.png', NULL, N'/Admin/Module/eCom_Catalog/dw7/Lists/EcomSalesDiscount_List.aspx', N'SALESDISCOUNTS', 9, N'eCom_SalesDiscount, eCom_SalesDiscountExtended')
INSERT [dbo].[EcomTree] ([Id], [ParentId], [Text], [Alt], [TreeIcon], [TreeIconOpen], [TreeUrl], [TreeChildPopulate], [TreeSort], [TreeHasAccessModuleSystemName]) VALUES (58, 1, N'GiftCards', 0, N'/Admin/Module/eCom_Catalog/images/buttons/btn_giftcard.gif', NULL, N'/Admin/Module/eCom_Catalog/dw7/GiftCards/GiftCardsList.aspx', N'GIFTCARDS', 12, N'eCom_CartV2')
SET IDENTITY_INSERT [dbo].[EcomTree] OFF
SET IDENTITY_INSERT [dbo].[EditorConfiguration] ON 

INSERT [dbo].[EditorConfiguration] ([EditorConfigurationId], [EditorConfigurationName], [EditorConfigurationXML], [EditorConfigurationType], [EditorConfigurationAddInProviderName], [EditorConfigurationIsDefault]) VALUES (1, N'Default', N'<?xml version="1.0" encoding="utf-8"?><Parameters><Parameter addin="Dynamicweb.TextEditorAddIns.CKEditor" name="Apply stylesheet in editor if editor.css does not exist" value="True" /><Parameter addin="Dynamicweb.TextEditorAddIns.CKEditor" name="Configuration Source" value="file" /><Parameter addin="Dynamicweb.TextEditorAddIns.CKEditor" name="Configuration File" value="System/Editor/ckeditor/config/default.js" /><Parameter addin="Dynamicweb.TextEditorAddIns.CKEditor" name="Document" value="" /><Parameter addin="Dynamicweb.TextEditorAddIns.CKEditor" name="Clipboard" value="" /><Parameter addin="Dynamicweb.TextEditorAddIns.CKEditor" name="Editing" value="" /><Parameter addin="Dynamicweb.TextEditorAddIns.CKEditor" name="Basic Styles" value="" /><Parameter addin="Dynamicweb.TextEditorAddIns.CKEditor" name="Paragraph" value="" /><Parameter addin="Dynamicweb.TextEditorAddIns.CKEditor" name="Links" value="" /><Parameter addin="Dynamicweb.TextEditorAddIns.CKEditor" name="Insert" value="" /><Parameter addin="Dynamicweb.TextEditorAddIns.CKEditor" name="Styles" value="" /><Parameter addin="Dynamicweb.TextEditorAddIns.CKEditor" name="Tools" value="" /><Parameter addin="Dynamicweb.TextEditorAddIns.CKEditor" name="Format list" value="address,div,h1,h2,h3,h4,h5,h6,p,pre" /></Parameters>', N'User', N'Dynamicweb.TextEditorAddIns.CKEditor', 1)
SET IDENTITY_INSERT [dbo].[EditorConfiguration] OFF
SET IDENTITY_INSERT [dbo].[EmailMarketingFolder] ON 

INSERT [dbo].[EmailMarketingFolder] ([FolderId], [FolderParentId], [FolderName], [FolderTopFolderId]) VALUES (1, NULL, N'Drafts', NULL)
INSERT [dbo].[EmailMarketingFolder] ([FolderId], [FolderParentId], [FolderName], [FolderTopFolderId]) VALUES (2, NULL, N'Scheduled', NULL)
INSERT [dbo].[EmailMarketingFolder] ([FolderId], [FolderParentId], [FolderName], [FolderTopFolderId]) VALUES (3, NULL, N'Split Tests', NULL)
INSERT [dbo].[EmailMarketingFolder] ([FolderId], [FolderParentId], [FolderName], [FolderTopFolderId]) VALUES (4, NULL, N'Sent', NULL)
SET IDENTITY_INSERT [dbo].[EmailMarketingFolder] OFF
SET IDENTITY_INSERT [dbo].[Module] ON 

INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (1, N'Area', N'Websites', 1, N'../Area/List.aspx', 15, 0, N'Dynamic.mdb', N'Area', N'AreaID', N'AreaName', NULL, 0, NULL, 0, NULL, N'Ikke alle taler samme sprog. Og du kan med Sprogpakke let oprette et nyt sprogområde, hvor al indhold fra hovedside kan kopieres til og efterfølgende kan oversættes.', NULL, 0, NULL, NULL, N'Layers')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (39, N'Update', N'Opdateringsaftale', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, N'Websider er i konstant udvikling, det samme er softwaren. Og her kan du med en Opdate¬rings¬aftale sikre løbende tilgang af nye funktionaliteter. Og at den nyeste version altid er tilgængelig på din løsning.', NULL, 0, NULL, NULL, N'Clipboard')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (88, N'Workflow', N'Godkendelse', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, N'Styrer hvem, der må hvad, på din webside. Det er muligt at tildele forskellige roller til brugere. Du kan også opstille regler til styring af arbejdsgange og forretningsgange.', NULL, 0, NULL, NULL, N'PlayInstall')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (89, N'VersionControl', N'Versionstyring', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, N'Hold styr på hvilken version, der er offentliggjort af dokumenter på din webside. Du kan oprette kategorier til mere detaljeret styring af dokumenter.', NULL, 0, NULL, NULL, N'Filter9')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (92, N'Filepublish', N'Fil publicering', 1, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, N'Via en enkelt side på websiden kan alle dele fælles dokumenter og filer. Det er ikke længere nødvendigt at alle er på samme fysiske lokation for at tilgå fx de nyeste salgsmaterialer.', NULL, 0, NULL, NULL, N'FolderOpen')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (156, N'Searchv1', N'Søg, vægtet', 1, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, N'Ønsker en bruger, at finde et specifikt område på din webside, kan de med Søg let finde det ønskede.', NULL, 0, NULL, NULL, N'Search')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (166, N'eCom_NotInstalled', N'eCom ikke installeret', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (167, N'eCom_Standard', N'eCom standard', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (168, N'eCom_Extended', N'eCom udvidet', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (169, N'eCom_Search', N'eCom søgning', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, N'Search')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (170, N'eCom_Units', N'eCom enheder', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, N'CircleO')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (171, N'eCom_Related', N'eCom relaterede varer', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, N'GroupWork')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (172, N'eCom_Assortments', N'eCom sortimenter', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, N'ViewQuilt')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (173, N'eCom_Statistics', N'eCom statistik', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, N'PieChart')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (174, N'eCom_Reports', N'eCom rapporter', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 0, 1, NULL, NULL, NULL)
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (175, N'eCom_CustomerArea', N'eCom kundecenter', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 0, 1, NULL, NULL, NULL)
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (176, N'eCom_Payment', N'eCom betalingsinterface', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, N'Payment')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (177, N'eCom_International', N'eCom internationalisering', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, N'Public')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (179, N'eCom_Pricing', N'eCom priser', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, N'Money')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (180, N'eCom_PricingExtended', N'eCom priser', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, N'Money')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (181, N'eCom_Variants', N'eCom varianter', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, N'HdrWeak')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (182, N'eCom_VariantsExtended', N'eCom varianter', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, N'HdrWeak')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (183, N'eCom_PartsLists', N'eCom styklister', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, N'List')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (184, N'eCom_PartsListsExtended', N'eCom styklister', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, N'List')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (185, N'eCom_Catalog', N'Ecom varekatalog', 1, N'eCom_Catalog/EcomFrame.aspx', 0, 1, N'Ecom.mdb', N'EcomShops', N'ShopID', N'ShopName', NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, N'Archive')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (188, N'SitemapV2', N'Sitemap', 1, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, N'Sitemap_cpl.aspx', 0, NULL, NULL, NULL, 0, NULL, NULL, N'Sitemap')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (203, N'eCom_SalesDiscountExtended', N'eCom salgsrabat', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, N'Tag')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (213, N'eCom_C5Integration', N'C5 Integration', 0, N'eCom_C5Integration/eCom_C5Integration_Edit.aspx', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (215, N'eCom_Light', N'eCom Light', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (216, N'eCom_SalesDiscount', N'eCom salgsrabat', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, N'Tag')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (233, N'DM_Form', N'DataManagement Form', 1, N'/Admin/Module/DataManagement/Default.aspx', 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, N'Provides the ability to create and insert forms on pages', NULL, 0, N'/Admin/Module/DataManagement/Form', NULL, N'Tasks')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (234, N'DM_Form_Extended', N'DataManagement Form', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, N'Provides the ability to create and insert forms on pages', NULL, 0, NULL, NULL, N'Tasks')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (235, N'DM_Publishing', N'DataManagement Publishing', 1, N'/Admin/Module/DataManagement/Default.aspx', 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, N'Provides the ability to create and insert data list on pages', NULL, 0, N'/Admin/Module/DataManagement/Publishing', NULL, N'List')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (240, N'UserManagementFrontend', N'Extranet', 1, N'UserManagement/Main.aspx', 0, 1, NULL, NULL, NULL, NULL, NULL, 0, N'UserManagement_cpl.aspx', 0, NULL, N'Provides an engine and a user interface for frontend users', NULL, 0, N'/Admin/Module/UserManagement', NULL, N'Lock')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (242, N'UserManagementBackend', N'Brugere', 1, N'UserManagement/Main.aspx', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, N'UserManagement_cpl.aspx', 0, NULL, N'Provides an engine and a user interface for backend users', NULL, 0, NULL, NULL, N'Person')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (271, N'Gallery', N'Gallery', 1, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, N'Gallery module', NULL, 0, NULL, NULL, N'PhotoLibrary')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (272, N'SeoExpress', N'Seo Express', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, N'Seo Express', NULL, 0, NULL, NULL, N'Tachometer')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (273, N'eCom_CartV2', N'Shopping Cart', 1, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, N'Cart for Dynamicweb eCommerce', 0, 0, N'/Admin/Module/eCom_CartV2', NULL, N'ShoppingCart')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (277, N'eCom_PowerPack', N'PowerPack', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, N'PowerPack', 0, 0, NULL, NULL, N'FlashOn')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (278, N'eCom_SearchExtended', N'Product search', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, N'Product search (Extended)', 0, 0, NULL, NULL, N'Search')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (279, N'eCom_economic', N'e-conomic Integration', 0, N'eCom_economic/eCom_economic_edit.aspx', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, N'AccountBalanceWallet')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (289, N'LanguageManagement', N'Language management', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, N'LanguageManagement_cpl.aspx', 0, NULL, N'Language management', NULL, 0, NULL, NULL, N'Language')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (291, N'BasicForum', N'Basic forum', 1, N'/Admin/Module/BasicForum/Default.aspx', 0, 1, NULL, NULL, NULL, NULL, NULL, 0, N'/Admin/Module/BasicForum/BasicForum_cpl.aspx', 0, NULL, N'Basic implementation of the forum.', NULL, 0, NULL, NULL, N'Forum')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (292, N'OMC', N'Marketing', 1, N'/Admin/Module/OMC/Default.aspx', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, N'Equalizer')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (295, N'eCom_Basic', N'Basic', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (296, N'eCom_Professional', N'Professional', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (297, N'eCom_Enterprise', N'Enterprise', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (299, N'ImportExport_DW8', N'Import Export DW8 edition', 1, N'IntegrationV2/jobList.aspx', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, N'SignIn')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (321, N'eCom_CustomerCenter', N'Customer Center', 1, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, N'Display order history, favorite products etc.', 0, 0, NULL, NULL, N'AssignmentInd')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (326, N'RemoteHttp', N'Content integrator', 1, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, N'LibraryBooks')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (331, N'Maps', N'Maps', 1, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, N'Maps_cpl.aspx', 0, NULL, NULL, NULL, 0, N'/Admin/Module/Maps/', NULL, N'MapMaker')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (332, N'eCom_DataIntegrationERPBatch', N'Data Integration ERP Batch', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, N'ImportExport')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (333, N'eCom_DataIntegrationERPLiveIntegration', N'ERP Live Integration', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, N'ImportExport')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (334, N'ItemPublisher', N'Item publisher', 1, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, N'Cube')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (335, N'EmailMarketing', N'Email Marketing', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, N'Email')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (337, N'Leads', N'Leads', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, N'Flag')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (338, N'eCom_MultiShopAdvanced', N'Multi Shop Advanced', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, N'Store')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (339, N'eCom_IntegrationCustomerCenter', N'Integration Customer Center', 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, N'AssignmentInd')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (340, N'eCom_ContextOrderRenderer', N'Context Order Renderer', 1, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, N'Assignment')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (341, N'Campaigns', N'Campaigns', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (342, N'SocialMediaPublishing', N'Social Media Publishing', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, N'Users')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (343, N'ItemCreator', N'Item creator', 1, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, N'Cube')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (344, N'Profiling', N'Personalization', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, N'AccountBox')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (345, N'eCom_BackCatalog', N'Back Catalog', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, N'Archive')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (346, N'eCom_Vouchers', N'Vouchers', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, N'Ticket')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (347, N'eCom_ContextVoucherRenderer', N'Voucher renderer', 1, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, N'Ticket')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (349, N'Sms', N'Sms', 1, N'', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, N'Sms')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (351, N'LoadBalancing', N'Load balancing', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, N'CodeFork')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (352, N'BasicForms', N'Forms for editors', 1, N'BasicForms/ListForms.aspx', 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, N'Tasks')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (353, N'QueryPublisher', N'Query publisher', 1, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, N'/Admin/Module/QueryPublisher', NULL, N'FilterList')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (354, N'eCom_Quotes', N'Quotes', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, N'AssignmentTurnedIn')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (355, N'LoyaltyPoints', N'Loyalty points', 1, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, N'Loyalty')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (356, N'eCom_DiscountMatrix', N'Discount matrix', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, N'Tags')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (357, N'GiftCards', N'GiftCards', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, N'WalletGiftcard')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (358, N'eCom_RecurringOrders', N'Recurring Orders', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, N'AvTimer')
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (362, N'eCom_ShowList', N'Show List', 1, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Module] ([ModuleId], [ModuleSystemName], [ModuleName], [ModuleAccess], [ModuleScript], [ModuleSort], [ModuleParagraph], [ModuleDatabase], [ModuleTable], [ModuleFieldId], [ModuleFieldName], [ModuleWhere], [ModuleSearch], [ModuleControlPanel], [ModuleHiddenMode], [ModuleSearchIn], [ModuleDescription], [ModuleEcomNotInstalledAccess], [ModuleIsBeta], [ModuleParagraphEditPath], [ModuleDefaultPermissions], [ModuleIconClass]) VALUES (363, N'Form', N'Convert old forms to forms for editors', 1, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, N'', NULL, NULL, 0, NULL, NULL, N'ViewModule')
SET IDENTITY_INSERT [dbo].[Module] OFF
SET IDENTITY_INSERT [dbo].[OMCEmailProfile] ON 

INSERT [dbo].[OMCEmailProfile] ([OMCEmailProfileId], [OMCEmailProfileSenderName], [OMCEmailProfileSenderEmail], [OMCEmailProfileSubject], [OMCEmailProfileTemplate], [OMCEmailProfileEncoding]) VALUES (1, NULL, N'noreply@dynamicweb.dk', N'Marketing - Leads', N'/Files/Templates/OMC/Notifications/EmailLeads.html', N'UTF-8')
INSERT [dbo].[OMCEmailProfile] ([OMCEmailProfileId], [OMCEmailProfileSenderName], [OMCEmailProfileSenderEmail], [OMCEmailProfileSubject], [OMCEmailProfileTemplate], [OMCEmailProfileEncoding]) VALUES (2, NULL, N'noreply@dynamicweb.dk', N'Marketing - Reports', N'/Files/Templates/OMC/Notifications/EmailReports.html', N'UTF-8')
INSERT [dbo].[OMCEmailProfile] ([OMCEmailProfileId], [OMCEmailProfileSenderName], [OMCEmailProfileSenderEmail], [OMCEmailProfileSubject], [OMCEmailProfileTemplate], [OMCEmailProfileEncoding]) VALUES (3, NULL, N'noreply@dynamicweb.dk', N'Marketing - Split tests', N'/Files/Templates/OMC/Notifications/EmailSplitTests.html', N'UTF-8')
SET IDENTITY_INSERT [dbo].[OMCEmailProfile] OFF
SET IDENTITY_INSERT [dbo].[ScheduledTask] ON 

INSERT [dbo].[ScheduledTask] ([TaskId], [TaskName], [TaskBegin], [TaskEnd], [TaskLastRun], [TaskNextRun], [TaskEnabled], [TaskType], [TaskMinute], [TaskHour], [TaskDay], [TaskWday], [TaskTarget], [TaskAssembly], [TaskNamespace], [TaskClass], [TaskParam0], [TaskParam1], [TaskParam2], [TaskParam3], [TaskParam4], [TaskAddInSettings]) VALUES (1, N'Repository task handler', CAST(N'2016-10-31 15:03:47.000' AS DateTime), CAST(N'2999-12-31 00:00:00.000' AS DateTime), CAST(N'2000-01-01 00:00:00.000' AS DateTime), CAST(N'2016-10-31 15:08:47.000' AS DateTime), 1, 4, 5, -1, -1, -1, N'RunTasks', N'Dynamicweb.Indexing, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null', N'Dynamicweb.Repositories.Tasks', N'TaskRunner', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ScheduledTask] OFF
SET IDENTITY_INSERT [dbo].[ScheduledTaskType] ON 

INSERT [dbo].[ScheduledTaskType] ([TypeId], [TypeName]) VALUES (1, N'Dynamicweb page')
INSERT [dbo].[ScheduledTaskType] ([TypeId], [TypeName]) VALUES (2, N'File from DW file archive')
INSERT [dbo].[ScheduledTaskType] ([TypeId], [TypeName]) VALUES (3, N'URL')
INSERT [dbo].[ScheduledTaskType] ([TypeId], [TypeName]) VALUES (4, N'Method in a class')
INSERT [dbo].[ScheduledTaskType] ([TypeId], [TypeName]) VALUES (5, N'DB Integration Job')
INSERT [dbo].[ScheduledTaskType] ([TypeId], [TypeName]) VALUES (6, N'Add-in')
SET IDENTITY_INSERT [dbo].[ScheduledTaskType] OFF
SET IDENTITY_INSERT [dbo].[SocialFolder] ON 

INSERT [dbo].[SocialFolder] ([FolderId], [FolderParentId], [FolderName], [FolderTopFolderId]) VALUES (1, 0, N'Drafts', 1)
INSERT [dbo].[SocialFolder] ([FolderId], [FolderParentId], [FolderName], [FolderTopFolderId]) VALUES (2, 0, N'Scheduled', 1)
INSERT [dbo].[SocialFolder] ([FolderId], [FolderParentId], [FolderName], [FolderTopFolderId]) VALUES (3, 0, N'Published', 1)
SET IDENTITY_INSERT [dbo].[SocialFolder] OFF
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (2, 1, N'Visitors - Day', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (3, 1, N'Visitors - Week', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (4, 1, N'Visitors - Month', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (5, 1, N'Visitors - Year', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (6, 1, N'Visitors - Weekdays', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (7, 1, N'Visitors - Hour', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (8, 1, N'Visitors - UniqueVisitor', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (9, 1, N'Visitors - Averege time per visit', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (10, 1, N'Visitors - New visits', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (11, 2, N'Visitors - Last # visitors', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (12, 1, N'Visitors - Language', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (13, 1, N'PageViews - Most visited pages', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (14, 1, N'PageViews - Day', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (15, 1, N'PageViews - Week', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (16, 1, N'PageViews - Month', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (17, 1, N'PageViews - Year', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (18, 1, N'PageViews - Entry pages', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (19, 1, N'PageViews - Exit pages', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (20, 1, N'PageViews - Per visit', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (21, 1, N'PageViews - Pages with one visit', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (22, 1, N'PageViews - Time per page', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (23, 3, N'PageViews - Sitemap', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (24, 1, N'Files-Download', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (25, 1, N'Referrals - URL', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (26, 1, N'Referrals - Domain', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (27, 1, N'Referrals - Entry pages', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (28, 1, N'System - Browser', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (29, 1, N'System - OS', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (30, 1, N'System - Browser by operating system (OS)', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (31, 1, N'System - Browser by platform', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (32, 1, N'System - Operating system (OS) by browsers', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (33, 1, N'System - Resolution', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (34, 1, N'System - Resolution, ordered', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (35, 1, N'System - Colors', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (36, 1, N'System - Connection speed', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (37, 1, N'Search - Indexing', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (38, 1, N'Search - Indexing per week', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (39, 1, N'Search - Pages', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (40, 1, N'Search - Engines', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (41, 1, N'Search - Engines per week', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (42, 1, N'Search - Keyword', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (43, 1, N'Search -  Keywords by search engine', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (44, 1, N'Modules-Search v1', N'Searchv1')
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (45, 1, N'Modules-Extranet', N'Extranet,ExtranetExtended')
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (46, 1, N'Modules-Extranet, per week', N'Extranet,ExtranetExtended')
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (47, 2, N'Modules-Extranet, latest', N'Extranet,ExtranetExtended')
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (48, 1, N'Modules-News', N'News,NewsV2')
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (49, 1, N'Modules-Poll', N'Poll')
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (50, 1, N'Modules-Forms', N'Form')
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (51, 1, N'Unique Ips - Day', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (52, 1, N'Unique Ips - Week', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (53, 1, N'Unique Ips - Month', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (54, 1, N'Unique Ips - Year', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (55, 1, N'Unique Ips - WeekDay', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (56, 1, N'Unique Ips - Hour', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (57, 2, N'Summary - Last # visitors', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (58, 1, N'Summary - Per day', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (59, 2, N'Modules - Newsletters', N'NewsLetterV3')
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (60, 5, N'Modules - Newsletter recipient', N'NewsLetterV3')
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (61, 1, N'Stylesheets - Default', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (62, 1, N'Templates - Page', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (63, 1, N'Templates - Paragraph', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (64, 1, N'Templates - News', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (65, 2, N'Not found - Pages', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (66, 2, N'Not found - Documents', NULL)
INSERT [dbo].[Statv2Report] ([Statv2ReportId], [Statv2ReportType], [Statv2ReportName], [Statv2ReportModuleSystemName]) VALUES (67, 2, N'Not found - Others', NULL)
SET IDENTITY_INSERT [dbo].[Statv2Settings] ON 

INSERT [dbo].[Statv2Settings] ([Statv2SettingsId], [Statv2SettingsUserId], [Statv2SettingsCrawlers], [Statv2SettingsAdmins], [Statv2SettingsOnePv], [Statv2SettingsExtranetusers], [Statv2SettingsIPfiltering], [Statv2SettingsFillbar]) VALUES (1, 0, 0, 1, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Statv2Settings] OFF
INSERT [dbo].[Statv2Type] ([Statv2TypeId], [Statv2TypeName]) VALUES (1, N'Graph')
INSERT [dbo].[Statv2Type] ([Statv2TypeId], [Statv2TypeName]) VALUES (2, N'Summary')
INSERT [dbo].[Statv2Type] ([Statv2TypeId], [Statv2TypeName]) VALUES (3, N'Sitemap')
INSERT [dbo].[Statv2Type] ([Statv2TypeId], [Statv2TypeName]) VALUES (5, N'Report Tree')
/****** Object:  Index [DW_PK_AccessUserSecondaryRelation]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[AccessUserSecondaryRelation] ADD  CONSTRAINT [DW_PK_AccessUserSecondaryRelation] PRIMARY KEY NONCLUSTERED 
(
	[AccessUserSecondaryRelationUserId] ASC,
	[AccessUserSecondaryRelationSecondaryUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_AreaEncoding]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[AreaEncoding] ADD  CONSTRAINT [DW_PK_AreaEncoding] PRIMARY KEY NONCLUSTERED 
(
	[AreaEncodingCharSet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_CampaignContext]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[CampaignContext] ADD  CONSTRAINT [DW_PK_CampaignContext] PRIMARY KEY NONCLUSTERED 
(
	[CampaignContextCampaignId] ASC,
	[CampaignContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_CustomField]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[CustomField] ADD  CONSTRAINT [DW_PK_CustomField] PRIMARY KEY NONCLUSTERED 
(
	[CustomFieldSystemName] ASC,
	[CustomFieldTableName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_EcomAssortmentGroupRelations]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomAssortmentGroupRelations] ADD  CONSTRAINT [PK_EcomAssortmentGroupRelations] PRIMARY KEY NONCLUSTERED 
(
	[AssortmentGroupRelationAssortmentID] ASC,
	[AssortmentGroupRelationGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_EcomAssortmentItems]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomAssortmentItems] ADD  CONSTRAINT [PK_EcomAssortmentItems] PRIMARY KEY NONCLUSTERED 
(
	[AssortmentItemAssortmentID] ASC,
	[AssortmentItemRelationAutoID] ASC,
	[AssortmentItemRelationType] ASC,
	[AssortmentItemLanguageID] ASC,
	[AssortmentItemProductID] ASC,
	[AssortmentItemProductVariantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_EcomAssortmentPermissions]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomAssortmentPermissions] ADD  CONSTRAINT [PK_EcomAssortmentPermissions] PRIMARY KEY NONCLUSTERED 
(
	[AssortmentPermissionAssortmentID] ASC,
	[AssortmentPermissionAccessUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_EcomAssortmentProductRelations]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomAssortmentProductRelations] ADD  CONSTRAINT [PK_EcomAssortmentProductRelations] PRIMARY KEY NONCLUSTERED 
(
	[AssortmentProductRelationAssortmentID] ASC,
	[AssortmentProductRelationProductID] ASC,
	[AssortmentProductRelationProductVariantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_EcomAssortments]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomAssortments] ADD  CONSTRAINT [PK_EcomAssortments] PRIMARY KEY NONCLUSTERED 
(
	[AssortmentID] ASC,
	[AssortmentLanguageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_EcomAssortmentShopRelations]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomAssortmentShopRelations] ADD  CONSTRAINT [PK_EcomAssortmentShopRelations] PRIMARY KEY NONCLUSTERED 
(
	[AssortmentShopRelationAssortmentID] ASC,
	[AssortmentShopRelationShopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomCalculatedProductFieldValue]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomCalculatedProductFieldValue] ADD  CONSTRAINT [DW_PK_EcomCalculatedProductFieldValue] PRIMARY KEY NONCLUSTERED 
(
	[CalculatedProductFieldValueFieldId] ASC,
	[CalculatedProductFieldValueProductId] ASC,
	[CalculatedProductFieldValueProductVariantId] ASC,
	[CalculatedProductFieldValueProductLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomCountries]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomCountries] ADD  CONSTRAINT [DW_PK_EcomCountries] PRIMARY KEY NONCLUSTERED 
(
	[CountryCode2] ASC,
	[CountryRegionCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomCountryText]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomCountryText] ADD  CONSTRAINT [DW_PK_EcomCountryText] PRIMARY KEY NONCLUSTERED 
(
	[CountryTextCode2] ASC,
	[CountryTextRegionCode] ASC,
	[CountryTextLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomCurrencies]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomCurrencies] ADD  CONSTRAINT [DW_PK_EcomCurrencies] PRIMARY KEY NONCLUSTERED 
(
	[CurrencyCode] ASC,
	[CurrencyLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomCustomerFavoriteProducts]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomCustomerFavoriteProducts] ADD  CONSTRAINT [DW_PK_EcomCustomerFavoriteProducts] PRIMARY KEY NONCLUSTERED 
(
	[FavoriteListId] ASC,
	[ProductId] ASC,
	[ProductLanguageId] ASC,
	[ProductVariantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomDetails]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomDetails] ADD  CONSTRAINT [DW_PK_EcomDetails] PRIMARY KEY NONCLUSTERED 
(
	[DetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomFees]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomFees] ADD  CONSTRAINT [DW_PK_EcomFees] PRIMARY KEY NONCLUSTERED 
(
	[FeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomFieldOption]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomFieldOption] ADD  CONSTRAINT [DW_PK_EcomFieldOption] PRIMARY KEY NONCLUSTERED 
(
	[FieldOptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomFilterDefinitionTranslation]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomFilterDefinitionTranslation] ADD  CONSTRAINT [DW_PK_EcomFilterDefinitionTranslation] PRIMARY KEY NONCLUSTERED 
(
	[EcomFilterDefinitionTranslationFilterDefinitionId] ASC,
	[EcomFilterDefinitionTranslationFilterDefinitionLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomGroupProductRelation]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomGroupProductRelation] ADD  CONSTRAINT [DW_PK_EcomGroupProductRelation] PRIMARY KEY NONCLUSTERED 
(
	[GroupProductRelationGroupId] ASC,
	[GroupProductRelationProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomGroupRelations]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomGroupRelations] ADD  CONSTRAINT [DW_PK_EcomGroupRelations] PRIMARY KEY NONCLUSTERED 
(
	[GroupRelationsGroupId] ASC,
	[GroupRelationsParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomGroups]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomGroups] ADD  CONSTRAINT [DW_PK_EcomGroups] PRIMARY KEY NONCLUSTERED 
(
	[GroupId] ASC,
	[GroupLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomLanguages]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomLanguages] ADD  CONSTRAINT [DW_PK_EcomLanguages] PRIMARY KEY NONCLUSTERED 
(
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomLoyaltyRewardTranslation]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomLoyaltyRewardTranslation] ADD  CONSTRAINT [DW_PK_EcomLoyaltyRewardTranslation] PRIMARY KEY NONCLUSTERED 
(
	[LoyaltyRewardTranslationLanguageId] ASC,
	[LoyaltyRewardTranslationRewardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomManufacturers]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomManufacturers] ADD  CONSTRAINT [DW_PK_EcomManufacturers] PRIMARY KEY NONCLUSTERED 
(
	[ManufacturerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomMethodCountryRelation]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomMethodCountryRelation] ADD  CONSTRAINT [DW_PK_EcomMethodCountryRelation] PRIMARY KEY NONCLUSTERED 
(
	[MethodCountryRelCode2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomNumbers]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomNumbers] ADD  CONSTRAINT [DW_PK_EcomNumbers] PRIMARY KEY NONCLUSTERED 
(
	[NumberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomOrderContextAccessUserRelation]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomOrderContextAccessUserRelation] ADD  CONSTRAINT [DW_PK_EcomOrderContextAccessUserRelation] PRIMARY KEY NONCLUSTERED 
(
	[OrderContextAccessUserAccessUserId] ASC,
	[OrderContextAccessUserOrderContextId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomOrderContexts]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomOrderContexts] ADD  CONSTRAINT [DW_PK_EcomOrderContexts] PRIMARY KEY NONCLUSTERED 
(
	[OrderContextId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomOrderContextShopRelation]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomOrderContextShopRelation] ADD  CONSTRAINT [DW_PK_EcomOrderContextShopRelation] PRIMARY KEY NONCLUSTERED 
(
	[OrderContextShopRelationContextId] ASC,
	[OrderContextShopRelationShopId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomOrderField]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomOrderField] ADD  CONSTRAINT [DW_PK_EcomOrderField] PRIMARY KEY NONCLUSTERED 
(
	[OrderFieldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomOrderLineFieldGroupRelation]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomOrderLineFieldGroupRelation] ADD  CONSTRAINT [DW_PK_EcomOrderLineFieldGroupRelation] PRIMARY KEY NONCLUSTERED 
(
	[OrderLineFieldGroupRelationSystemName] ASC,
	[OrderLineFieldGroupRelationGroupId] ASC,
	[OrderLineFieldGroupRelationShopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomOrderLineFields]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomOrderLineFields] ADD  CONSTRAINT [DW_PK_EcomOrderLineFields] PRIMARY KEY NONCLUSTERED 
(
	[OrderLineFieldSystemName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomOrderLines]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomOrderLines] ADD  CONSTRAINT [DW_PK_EcomOrderLines] PRIMARY KEY NONCLUSTERED 
(
	[OrderLineId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomOrders]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomOrders] ADD  CONSTRAINT [DW_PK_EcomOrders] PRIMARY KEY NONCLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomOrderStates]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomOrderStates] ADD  CONSTRAINT [DW_PK_EcomOrderStates] PRIMARY KEY NONCLUSTERED 
(
	[OrderStateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomPayments]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomPayments] ADD  CONSTRAINT [DW_PK_EcomPayments] PRIMARY KEY NONCLUSTERED 
(
	[PaymentId] ASC,
	[PaymentLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomPeriods]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomPeriods] ADD  CONSTRAINT [DW_PK_EcomPeriods] PRIMARY KEY NONCLUSTERED 
(
	[PeriodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomPrices]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomPrices] ADD  CONSTRAINT [DW_PK_EcomPrices] PRIMARY KEY NONCLUSTERED 
(
	[PriceId] ASC,
	[PriceCurrency] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomProductCategory]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomProductCategory] ADD  CONSTRAINT [DW_PK_EcomProductCategory] PRIMARY KEY NONCLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomProductCategoryField]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomProductCategoryField] ADD  CONSTRAINT [DW_PK_EcomProductCategoryField] PRIMARY KEY NONCLUSTERED 
(
	[FieldId] ASC,
	[FieldCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomProductCategoryFieldTranslation]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomProductCategoryFieldTranslation] ADD  CONSTRAINT [DW_PK_EcomProductCategoryFieldTranslation] PRIMARY KEY NONCLUSTERED 
(
	[FieldTranslationFieldId] ASC,
	[FieldTranslationFieldCategoryId] ASC,
	[FieldTranslationLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomProductCategoryFieldValue]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomProductCategoryFieldValue] ADD  CONSTRAINT [DW_PK_EcomProductCategoryFieldValue] PRIMARY KEY NONCLUSTERED 
(
	[FieldValueFieldId] ASC,
	[FieldValueFieldCategoryId] ASC,
	[FieldValueProductId] ASC,
	[FieldValueProductVariantId] ASC,
	[FieldValueProductLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomProductCategoryTranslation]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomProductCategoryTranslation] ADD  CONSTRAINT [DW_PK_EcomProductCategoryTranslation] PRIMARY KEY NONCLUSTERED 
(
	[CategoryTranslationCategoryId] ASC,
	[CategoryTranslationLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomProductField]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomProductField] ADD  CONSTRAINT [DW_PK_EcomProductField] PRIMARY KEY NONCLUSTERED 
(
	[ProductFieldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomProductGroupField]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomProductGroupField] ADD  CONSTRAINT [DW_PK_EcomProductGroupField] PRIMARY KEY NONCLUSTERED 
(
	[ProductGroupFieldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomProductItems]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomProductItems] ADD  CONSTRAINT [DW_PK_EcomProductItems] PRIMARY KEY NONCLUSTERED 
(
	[ProductItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomProducts]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomProducts] ADD  CONSTRAINT [DW_PK_EcomProducts] PRIMARY KEY NONCLUSTERED 
(
	[ProductId] ASC,
	[ProductLanguageId] ASC,
	[ProductVariantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomProductsRelated]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomProductsRelated] ADD  CONSTRAINT [DW_PK_EcomProductsRelated] PRIMARY KEY NONCLUSTERED 
(
	[ProductRelatedProductId] ASC,
	[ProductRelatedProductRelId] ASC,
	[ProductRelatedGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_IX_EcomProductsRelatedGroups]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomProductsRelatedGroups] ADD  CONSTRAINT [DW_IX_EcomProductsRelatedGroups] PRIMARY KEY NONCLUSTERED 
(
	[RelatedGroupId] ASC,
	[RelatedGroupLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomRelatedSmartSearches]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomRelatedSmartSearches] ADD  CONSTRAINT [DW_PK_EcomRelatedSmartSearches] PRIMARY KEY NONCLUSTERED 
(
	[RelatedGroupId] ASC,
	[RelatedProductId] ASC,
	[RelatedLanguageId] ASC,
	[RelatedSmartSearchRelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomRmaEvents]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomRmaEvents] ADD  CONSTRAINT [DW_PK_EcomRmaEvents] PRIMARY KEY NONCLUSTERED 
(
	[RmaEventType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomRmaEventTranslations]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomRmaEventTranslations] ADD  CONSTRAINT [DW_PK_EcomRmaEventTranslations] PRIMARY KEY NONCLUSTERED 
(
	[RmaEventTranslationEventType] ASC,
	[RmaEventTranslationLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomRmas]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomRmas] ADD  CONSTRAINT [DW_PK_EcomRmas] PRIMARY KEY NONCLUSTERED 
(
	[RmaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomRmaStateTranslations]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomRmaStateTranslations] ADD  CONSTRAINT [DW_PK_EcomRmaStateTranslations] PRIMARY KEY NONCLUSTERED 
(
	[RmaStateId] ASC,
	[RmaStateLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomRoundings]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomRoundings] ADD  CONSTRAINT [DW_PK_EcomRoundings] PRIMARY KEY NONCLUSTERED 
(
	[RoundingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomSalesDiscount]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomSalesDiscount] ADD  CONSTRAINT [DW_PK_EcomSalesDiscount] PRIMARY KEY NONCLUSTERED 
(
	[SalesDiscountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomSalesDiscountCurrencies]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomSalesDiscountCurrencies] ADD  CONSTRAINT [DW_PK_EcomSalesDiscountCurrencies] PRIMARY KEY NONCLUSTERED 
(
	[SalesDiscountCurrenciesDiscountId] ASC,
	[SalesDiscountCurrenciesCurrencyCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomSalesDiscountLanguages]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomSalesDiscountLanguages] ADD  CONSTRAINT [DW_PK_EcomSalesDiscountLanguages] PRIMARY KEY NONCLUSTERED 
(
	[SalesDiscountLanguagesDiscountId] ASC,
	[SalesDiscountLanguagesLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomShippings]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomShippings] ADD  CONSTRAINT [DW_PK_EcomShippings] PRIMARY KEY NONCLUSTERED 
(
	[ShippingId] ASC,
	[ShippingLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomShopGroupRelation]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomShopGroupRelation] ADD  CONSTRAINT [DW_PK_EcomShopGroupRelation] PRIMARY KEY NONCLUSTERED 
(
	[ShopGroupShopId] ASC,
	[ShopGroupGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO

GO
/****** Object:  Index [DW_PK_EcomShops]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomShops] ADD  CONSTRAINT [DW_PK_EcomShops] PRIMARY KEY NONCLUSTERED 
(
	[ShopId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomShopStockLocationRelation]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomShopStockLocationRelation] ADD  CONSTRAINT [DW_PK_EcomShopStockLocationRelation] PRIMARY KEY NONCLUSTERED 
(
	[ShopRelationStockLocationId] ASC,
	[ShopRelationShopId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomStockGroups]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomStockGroups] ADD  CONSTRAINT [DW_PK_EcomStockGroups] PRIMARY KEY NONCLUSTERED 
(
	[StockGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomStockStatusLanguageValue]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomStockStatusLanguageValue] ADD  CONSTRAINT [DW_PK_EcomStockStatusLanguageValue] PRIMARY KEY NONCLUSTERED 
(
	[StockStatusLanguageValueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomStockStatusLine]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomStockStatusLine] ADD  CONSTRAINT [DW_PK_EcomStockStatusLine] PRIMARY KEY NONCLUSTERED 
(
	[StockStatusLinesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [DW_PK_EcomUserPermission]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomUserPermission] ADD  CONSTRAINT [DW_PK_EcomUserPermission] PRIMARY KEY NONCLUSTERED 
(
	[UserPermissionTypeGUID] ASC,
	[UserPermissionUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomUserPermissionType]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomUserPermissionType] ADD  CONSTRAINT [DW_PK_EcomUserPermissionType] PRIMARY KEY NONCLUSTERED 
(
	[UserPermissionType] ASC,
	[UserPermissionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomValidationGroups]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomValidationGroups] ADD  CONSTRAINT [DW_PK_EcomValidationGroups] PRIMARY KEY NONCLUSTERED 
(
	[ValidationGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomValidationRules]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomValidationRules] ADD  CONSTRAINT [DW_PK_EcomValidationRules] PRIMARY KEY NONCLUSTERED 
(
	[ValidationRuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomValidations]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomValidations] ADD  CONSTRAINT [DW_PK_EcomValidations] PRIMARY KEY NONCLUSTERED 
(
	[ValidationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomVariantGroupProductRelation]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomVariantGroupProductRelation] ADD  CONSTRAINT [DW_PK_EcomVariantGroupProductRelation] PRIMARY KEY NONCLUSTERED 
(
	[VariantGroupProductRelationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomVariantGroups]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomVariantGroups] ADD  CONSTRAINT [DW_PK_EcomVariantGroups] PRIMARY KEY NONCLUSTERED 
(
	[VariantGroupId] ASC,
	[VariantGroupLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomVariantOptionsProductRelation]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomVariantOptionsProductRelation] ADD  CONSTRAINT [DW_PK_EcomVariantOptionsProductRelation] PRIMARY KEY NONCLUSTERED 
(
	[VariantOptionsProductRelationVariantId] ASC,
	[VariantOptionsProductRelationProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomVariantsOptions]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomVariantsOptions] ADD  CONSTRAINT [DW_PK_EcomVariantsOptions] PRIMARY KEY NONCLUSTERED 
(
	[VariantOptionId] ASC,
	[VariantOptionLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomVatCountryRelations]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomVatCountryRelations] ADD  CONSTRAINT [DW_PK_EcomVatCountryRelations] PRIMARY KEY NONCLUSTERED 
(
	[VatCountryRelGroupId] ASC,
	[VatCountryRelCountryId] ASC,
	[VatCountryRelLangId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_EcomVatGroups]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomVatGroups] ADD  CONSTRAINT [DW_PK_EcomVatGroups] PRIMARY KEY NONCLUSTERED 
(
	[VatGroupId] ASC,
	[VatGroupLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_UC_EcomVoucherLists_Name]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomVoucherLists] ADD  CONSTRAINT [DW_UC_EcomVoucherLists_Name] UNIQUE NONCLUSTERED 
(
	[VoucherListName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_UC_EcomVouchers_Code]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[EcomVouchers] ADD  CONSTRAINT [DW_UC_EcomVouchers_Code] UNIQUE NONCLUSTERED 
(
	[VoucherCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [DW_PK_ForumAnswerVotes]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[ForumAnswerVotes] ADD  CONSTRAINT [DW_PK_ForumAnswerVotes] PRIMARY KEY NONCLUSTERED 
(
	[ForumMessageId] ASC,
	[ForumUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_ItemTypeDefinitions]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[ItemTypeDefinitions] ADD  CONSTRAINT [DW_PK_ItemTypeDefinitions] PRIMARY KEY NONCLUSTERED 
(
	[ItemTypeDefinitionsSystemName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_ItemTypeId]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[ItemTypeId] ADD  CONSTRAINT [DW_PK_ItemTypeId] PRIMARY KEY NONCLUSTERED 
(
	[ItemType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_SystemField]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[SystemField] ADD  CONSTRAINT [DW_PK_SystemField] PRIMARY KEY NONCLUSTERED 
(
	[SystemFieldSystemName] ASC,
	[SystemFieldTableName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [DW_PK_SystemFieldValue]    Script Date: 01-11-2016 11:44:36 ******/
ALTER TABLE [dbo].[SystemFieldValue] ADD  CONSTRAINT [DW_PK_SystemFieldValue] PRIMARY KEY NONCLUSTERED 
(
	[SystemFieldValueSystemName] ASC,
	[SystemFieldValueTableName] ASC,
	[SystemFieldValueItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AccessUserAddress] ADD  CONSTRAINT [DW_DF_AccessUserAddress_Type]  DEFAULT ((0)) FOR [AccessUserAddressType]
GO
ALTER TABLE [dbo].[AccessUserAddress] ADD  DEFAULT ((0)) FOR [AccessUserAddressDefaultAddressCustomFields]
GO
ALTER TABLE [dbo].[AccessUserCard] ADD  DEFAULT (getdate()) FOR [AccessUserCardUsedDate]
GO
ALTER TABLE [dbo].[AccessUserCard] ADD  CONSTRAINT [DW_DF_AccessUserCard_IsDefault]  DEFAULT ((0)) FOR [AccessUserCardIsDefault]
GO
ALTER TABLE [dbo].[AccessWorkflowUser] ADD  CONSTRAINT [DW_DF_AccessWorkflowUser_Notify]  DEFAULT ((0)) FOR [AccessWorkflowUserNotify]
GO
ALTER TABLE [dbo].[AccessWorkflowUser] ADD  CONSTRAINT [DW_DF_AccessWorkflowUser_Required]  DEFAULT ((0)) FOR [AccessWorkflowUserRequired]
GO
ALTER TABLE [dbo].[Campaign] ADD  CONSTRAINT [DW_DF_Campaign_NextActionIndex]  DEFAULT ((0)) FOR [CampaignNextActionIndex]
GO
ALTER TABLE [dbo].[Campaign] ADD  CONSTRAINT [DW_DF_Campaing_State]  DEFAULT ((1)) FOR [CampaignState]
GO
ALTER TABLE [dbo].[ClusteringInstance] ADD  DEFAULT ((0)) FOR [InstanceEnabled]
GO
ALTER TABLE [dbo].[EcomAssortments] ADD  DEFAULT ((0)) FOR [AssortmentRebuildRequired]
GO
ALTER TABLE [dbo].[EcomAssortments] ADD  DEFAULT ((1)) FOR [AssortmentActive]
GO
ALTER TABLE [dbo].[EcomAssortments] ADD  DEFAULT ((0)) FOR [AssortmentIncludeSubgroups]
GO
ALTER TABLE [dbo].[EcomAssortments] ADD  DEFAULT ((0)) FOR [AssortmentAllowAnonymousUsers]
GO
ALTER TABLE [dbo].[EcomCalculatedField] ADD  CONSTRAINT [DW_DF_EcomCalculatedField_LastUpdateTime]  DEFAULT (NULL) FOR [CalculatedFieldLastUpdateTime]
GO
ALTER TABLE [dbo].[EcomCountries] ADD  CONSTRAINT [DW_DF_EcomCountries_VAT]  DEFAULT ((0)) FOR [CountryVAT]
GO
ALTER TABLE [dbo].[EcomCountries] ADD  CONSTRAINT [DW_DF_EcomCountries_RegionCode]  DEFAULT (N'') FOR [CountryRegionCode]
GO
ALTER TABLE [dbo].[EcomCountryText] ADD  CONSTRAINT [DW_DF_EcomCountryText_RegionCode]  DEFAULT (N'') FOR [CountryTextRegionCode]
GO
ALTER TABLE [dbo].[EcomCurrencies] ADD  CONSTRAINT [DW_DF_EcomCurrencies_Rate]  DEFAULT ((0)) FOR [CurrencyRate]
GO
ALTER TABLE [dbo].[EcomCurrencies] ADD  CONSTRAINT [DW_DF_EcomCurrencies_IsDefault]  DEFAULT ((0)) FOR [CurrencyIsDefault]
GO
ALTER TABLE [dbo].[EcomCurrencies] ADD  CONSTRAINT [DW_DF_EcomCurrencies_PayGatewayCode]  DEFAULT ((0)) FOR [CurrencyPayGatewayCode]
GO
ALTER TABLE [dbo].[EcomCurrencies] ADD  CONSTRAINT [DW_DF_EcomCurrencies_SymbolPlace]  DEFAULT ((0)) FOR [CurrencySymbolPlace]
GO
ALTER TABLE [dbo].[EcomCustomerFavoriteLists] ADD  DEFAULT ((0)) FOR [IsPublished]
GO
ALTER TABLE [dbo].[EcomCustomerFavoriteLists] ADD  DEFAULT ((0)) FOR [IsDefault]
GO
ALTER TABLE [dbo].[EcomDetails] ADD  CONSTRAINT [DW_DF_EcomDetails_Type]  DEFAULT ((0)) FOR [DetailType]
GO
ALTER TABLE [dbo].[EcomDiscount] ADD  CONSTRAINT [DW_DF_EcomDiscount_Type]  DEFAULT ((0)) FOR [DiscountType]
GO
ALTER TABLE [dbo].[EcomDiscount] ADD  CONSTRAINT [DW_DF_EcomDiscount_Active]  DEFAULT ((1)) FOR [DiscountActive]
GO
ALTER TABLE [dbo].[EcomDiscount] ADD  CONSTRAINT [DW_DF_EcomDiscount_DiscountType]  DEFAULT ((0)) FOR [DiscountDiscountType]
GO
ALTER TABLE [dbo].[EcomDiscount] ADD  CONSTRAINT [DW_DF_EcomDiscount_ProductQuantification]  DEFAULT ((0)) FOR [DiscountProductQuantification]
GO
ALTER TABLE [dbo].[EcomDiscount] ADD  CONSTRAINT [DW_DF_EcomDiscount_OrderTotalPriceCondition]  DEFAULT ((5)) FOR [DiscountOrderTotalPriceCondition]
GO
ALTER TABLE [dbo].[EcomDiscount] ADD  DEFAULT ('[some]') FOR [DiscountExcludedProductsAndGroups]
GO
ALTER TABLE [dbo].[EcomDiscount] ADD  DEFAULT ('[some]') FOR [DiscountProductsAndGroups]
GO
ALTER TABLE [dbo].[EcomDiscount] ADD  DEFAULT ((0)) FOR [DiscountAssignableFromProducts]
GO
ALTER TABLE [dbo].[EcomFees] ADD  CONSTRAINT [DW_DF_EcomFees_Value]  DEFAULT ((0)) FOR [FeeValue]
GO
ALTER TABLE [dbo].[EcomFees] ADD  CONSTRAINT [DW_DF_EcomFees_Type]  DEFAULT ((0)) FOR [FeeType]
GO
ALTER TABLE [dbo].[EcomFees] ADD  CONSTRAINT [DW_DF_EcomFees_WeightLimit]  DEFAULT ((0)) FOR [FeeWeightLimit]
GO
ALTER TABLE [dbo].[EcomFees] ADD  CONSTRAINT [DW_DF_EcomFees_Volume]  DEFAULT ((0)) FOR [FeeVolume]
GO
ALTER TABLE [dbo].[EcomFees] ADD  CONSTRAINT [DW_DF_EcomFees_RegionCode]  DEFAULT (N'') FOR [FeeRegionCode]
GO
ALTER TABLE [dbo].[EcomFees] ADD  CONSTRAINT [DW_DF_EcomFees_OrderPrice]  DEFAULT ((0)) FOR [FeeOrderPrice]
GO
ALTER TABLE [dbo].[EcomFees] ADD  CONSTRAINT [DW_DF_Fee_Active]  DEFAULT ((1)) FOR [FeeActive]
GO
ALTER TABLE [dbo].[EcomFees] ADD  CONSTRAINT [DW_DF_Fee_ProductsAndGroups]  DEFAULT ('[all]') FOR [FeeProductsAndGroups]
GO
ALTER TABLE [dbo].[EcomFieldOption] ADD  CONSTRAINT [DW_DF_EcomFieldOption_IsDefault]  DEFAULT ((0)) FOR [FieldOptionIsDefault]
GO
ALTER TABLE [dbo].[EcomFilterDefinition] ADD  CONSTRAINT [DW_DF_EcomFilterDefinition_IsActive]  DEFAULT ((1)) FOR [EcomFilterDefinitionIsActive]
GO
ALTER TABLE [dbo].[EcomFilterDefinition] ADD  CONSTRAINT [DW_DF_EcomFilterDefinition_VisibilityRule]  DEFAULT ((1)) FOR [EcomFilterDefinitionVisibilityRule]
GO
ALTER TABLE [dbo].[EcomGiftCard] ADD  DEFAULT (getdate()) FOR [GiftCardExpiryDate]
GO
ALTER TABLE [dbo].[EcomGiftCard] ADD  DEFAULT (NULL) FOR [GiftCardCurrency]
GO
ALTER TABLE [dbo].[EcomGiftCardTransaction] ADD  DEFAULT (NULL) FOR [GiftCardTransactionGiftCardId]
GO
ALTER TABLE [dbo].[EcomGiftCardTransaction] ADD  DEFAULT (getdate()) FOR [GiftCardTransactionDate]
GO
ALTER TABLE [dbo].[EcomGiftCardTransaction] ADD  DEFAULT ('') FOR [GiftCardTransactionOrderLineId]
GO
ALTER TABLE [dbo].[EcomGroupFilterSetting] ADD  CONSTRAINT [DW_DF_EcomGroupFilterSetting_LimitOptions]  DEFAULT ((0)) FOR [EcomGroupFilterSettingLimitOptions]
GO
ALTER TABLE [dbo].[EcomGroupProductRelation] ADD  CONSTRAINT [DW_DF_EcomGroupProductRelation_Sorting]  DEFAULT ((0)) FOR [GroupProductRelationSorting]
GO
ALTER TABLE [dbo].[EcomGroupProductRelation] ADD  CONSTRAINT [DW_DF_EcomGroupProductRelation_IsPrimary]  DEFAULT ((0)) FOR [GroupProductRelationIsPrimary]
GO
ALTER TABLE [dbo].[EcomGroupRelations] ADD  CONSTRAINT [DW_DF_EcomGroupRelations_Sorting]  DEFAULT ((0)) FOR [GroupRelationsSorting]
GO
ALTER TABLE [dbo].[EcomGroupRelations] ADD  CONSTRAINT [DF_EcomGroupRelations_GroupRelationsInheritCategories]  DEFAULT ((0)) FOR [GroupRelationsInheritCategories]
GO
ALTER TABLE [dbo].[EcomGroups] ADD  CONSTRAINT [DW_DF_EcomGroups_PageIDRel]  DEFAULT ((0)) FOR [GroupPageIDRel]
GO
ALTER TABLE [dbo].[EcomGroups] ADD  CONSTRAINT [DW_DF_EcomGroups_Assortment]  DEFAULT ((0)) FOR [GroupAssortment]
GO
ALTER TABLE [dbo].[EcomLoyaltyReward] ADD  DEFAULT ((1)) FOR [LoyaltyRewardActive]
GO
ALTER TABLE [dbo].[EcomLoyaltyReward] ADD  DEFAULT (NULL) FOR [LoyaltyRewardPoints]
GO
ALTER TABLE [dbo].[EcomLoyaltyReward] ADD  DEFAULT (NULL) FOR [LoyaltyRewardCurrencyCode]
GO
ALTER TABLE [dbo].[EcomLoyaltyReward] ADD  DEFAULT (NULL) FOR [LoyaltyRewardRoundingId]
GO
ALTER TABLE [dbo].[EcomLoyaltyReward] ADD  DEFAULT (NULL) FOR [LoyaltyRewardPercentage]
GO
ALTER TABLE [dbo].[EcomLoyaltyReward] ADD  DEFAULT ((0)) FOR [LoyaltyRewardArchived]
GO
ALTER TABLE [dbo].[EcomLoyaltyRewardRule] ADD  DEFAULT (NULL) FOR [LoyaltyRewardRuleShopId]
GO
ALTER TABLE [dbo].[EcomLoyaltyRewardRule] ADD  DEFAULT (NULL) FOR [LoyaltyRewardRuleGroupId]
GO
ALTER TABLE [dbo].[EcomLoyaltyRewardRule] ADD  DEFAULT (NULL) FOR [LoyaltyRewardRuleProductId]
GO
ALTER TABLE [dbo].[EcomLoyaltyRewardRule] ADD  DEFAULT (NULL) FOR [LoyaltyRewardRuleProductVariantId]
GO
ALTER TABLE [dbo].[EcomLoyaltyRewardRule] ADD  DEFAULT (NULL) FOR [LoyaltyRewardRuleProductLanguageId]
GO
ALTER TABLE [dbo].[EcomLoyaltyRewardRule] ADD  CONSTRAINT [DW_DF_LoyaltyRewardRule_Active]  DEFAULT ((1)) FOR [LoyaltyRewardRuleActive]
GO
ALTER TABLE [dbo].[EcomLoyaltyRewardRule] ADD  DEFAULT ('[all]') FOR [LoyaltyRewardRuleProductsAndGroups]
GO
ALTER TABLE [dbo].[EcomLoyaltyRewardRule] ADD  CONSTRAINT [DW_DF_EcomLoyaltyRewardRule_ProductQuantification]  DEFAULT ((0)) FOR [LoyaltyRewardRuleProductQuantification]
GO
ALTER TABLE [dbo].[EcomLoyaltyRewardRule] ADD  CONSTRAINT [DW_DF_EcomLoyaltyRewardRule_OrderTotalPriceCondition]  DEFAULT ((5)) FOR [LoyaltyRewardRuleOrderTotalPriceCondition]
GO
ALTER TABLE [dbo].[EcomLoyaltyUserTransaction] ADD  DEFAULT (getdate()) FOR [LoyaltyUserTransactionDate]
GO
ALTER TABLE [dbo].[EcomLoyaltyUserTransaction] ADD  DEFAULT (NULL) FOR [LoyaltyUserTransactionObjectType]
GO
ALTER TABLE [dbo].[EcomLoyaltyUserTransaction] ADD  DEFAULT (NULL) FOR [LoyaltyUserTransactionObjectElement]
GO
ALTER TABLE [dbo].[EcomLoyaltyUserTransaction] ADD  DEFAULT (NULL) FOR [LoyaltyUserTransactionComment]
GO
ALTER TABLE [dbo].[EcomMethodCountryRelation] ADD  CONSTRAINT [DW_DF_EcomMethodCountryRelation_IsDefault]  DEFAULT ((0)) FOR [MethodCountryRelIsDefault]
GO
ALTER TABLE [dbo].[EcomMethodCountryRelation] ADD  CONSTRAINT [DW_DF_EcomMethodCountryRelation_RegionCode]  DEFAULT (N'') FOR [MethodCountryRelRegionCode]
GO
ALTER TABLE [dbo].[EcomOrderField] ADD  CONSTRAINT [DW_DF_EcomOrderField_TypeId]  DEFAULT ((0)) FOR [OrderFieldTypeId]
GO
ALTER TABLE [dbo].[EcomOrderField] ADD  CONSTRAINT [DW_DF_EcomOrderField_Locked]  DEFAULT ((0)) FOR [OrderFieldLocked]
GO
ALTER TABLE [dbo].[EcomOrderLineFieldGroupRelation] ADD  DEFAULT ('') FOR [OrderLineFieldGroupRelationShopID]
GO
ALTER TABLE [dbo].[EcomOrderLines] ADD  CONSTRAINT [DW_DF_EcomOrderLines_BOM]  DEFAULT ((0)) FOR [OrderLineBOM]
GO
ALTER TABLE [dbo].[EcomOrderLines] ADD  CONSTRAINT [DW_DF_EcomOrderLines_UnitPrice]  DEFAULT ((0)) FOR [OrderLineUnitPrice]
GO
ALTER TABLE [dbo].[EcomOrderLines] ADD  CONSTRAINT [DW_DF_EcomOrderLines_VatPercent]  DEFAULT ((0)) FOR [OrderLineVatPercent]
GO
ALTER TABLE [dbo].[EcomOrderLines] ADD  CONSTRAINT [DW_DF_EcomOrderLines_VatPrice]  DEFAULT ((0)) FOR [OrderLineVatPrice]
GO
ALTER TABLE [dbo].[EcomOrderLines] ADD  CONSTRAINT [DW_DF_EcomOrderLines_Quantity]  DEFAULT ((0)) FOR [OrderLineQuantity]
GO
ALTER TABLE [dbo].[EcomOrderLines] ADD  DEFAULT ((0)) FOR [OrderLineWishListId]
GO
ALTER TABLE [dbo].[EcomOrderLines] ADD  DEFAULT (NULL) FOR [OrderLineUnitPoints]
GO
ALTER TABLE [dbo].[EcomOrderLines] ADD  DEFAULT (NULL) FOR [OrderLineUnitRewardPoints]
GO
ALTER TABLE [dbo].[EcomOrderLines] ADD  DEFAULT (NULL) FOR [OrderLinePoints]
GO
ALTER TABLE [dbo].[EcomOrderLines] ADD  DEFAULT (NULL) FOR [OrderLineRewardPoints]
GO
ALTER TABLE [dbo].[EcomOrderLines] ADD  DEFAULT (NULL) FOR [OrderLineRewardId]
GO
ALTER TABLE [dbo].[EcomOrders] ADD  CONSTRAINT [DW_DF_EcomOrders_Complete]  DEFAULT ((0)) FOR [OrderComplete]
GO
ALTER TABLE [dbo].[EcomOrders] ADD  CONSTRAINT [DW_DF_EcomOrders_Deleted]  DEFAULT ((0)) FOR [OrderDeleted]
GO
ALTER TABLE [dbo].[EcomOrders] ADD  CONSTRAINT [DW_DF_EcomOrders_VAT]  DEFAULT ((0)) FOR [OrderVAT]
GO
ALTER TABLE [dbo].[EcomOrders] ADD  CONSTRAINT [DW_DF_EcomOrders_TransactionAmount]  DEFAULT ((0)) FOR [OrderTransactionAmount]
GO
ALTER TABLE [dbo].[EcomOrders] ADD  CONSTRAINT [DW_DF_EcomOrders_ShippingMethodFee]  DEFAULT ((0)) FOR [OrderShippingMethodFee]
GO
ALTER TABLE [dbo].[EcomOrders] ADD  CONSTRAINT [DW_DF_EcomOrders_PaymentMethodFee]  DEFAULT ((0)) FOR [OrderPaymentMethodFee]
GO
ALTER TABLE [dbo].[EcomOrders] ADD  CONSTRAINT [DW_DF_EcomOrders_SalesDiscount]  DEFAULT ((0)) FOR [OrderSalesDiscount]
GO
ALTER TABLE [dbo].[EcomOrders] ADD  CONSTRAINT [DW_DF_EcomOrders_CurrencyRate]  DEFAULT ((0)) FOR [OrderCurrencyRate]
GO
ALTER TABLE [dbo].[EcomOrders] ADD  CONSTRAINT [DW_DF_EcomOrders_Cart]  DEFAULT ((0)) FOR [OrderCart]
GO
ALTER TABLE [dbo].[EcomOrders] ADD  CONSTRAINT [DW_DF_EcomOrders_TotalPrice]  DEFAULT ((0)) FOR [OrderTotalPrice]
GO
ALTER TABLE [dbo].[EcomOrders] ADD  CONSTRAINT [DW_DF_EcomOrders_TransactionMailSend]  DEFAULT ((0)) FOR [OrderTransactionMailSend]
GO
ALTER TABLE [dbo].[EcomOrders] ADD  CONSTRAINT [DW_DF_EcomOrders_CustomerNewsletterSubscribe]  DEFAULT ((0)) FOR [OrderCustomerNewsletterSubcribe]
GO
ALTER TABLE [dbo].[EcomOrders] ADD  DEFAULT (NULL) FOR [OrderTotalPoints]
GO
ALTER TABLE [dbo].[EcomOrders] ADD  DEFAULT (NULL) FOR [OrderTotalRewardPoints]
GO
ALTER TABLE [dbo].[EcomOrders] ADD  DEFAULT ((0)) FOR [OrderIsQuote]
GO
ALTER TABLE [dbo].[EcomOrders] ADD  DEFAULT ((0)) FOR [OrderCheckoutPageID]
GO
ALTER TABLE [dbo].[EcomOrders] ADD  DEFAULT ((0)) FOR [OrderPriceCalculatedByProvider]
GO
ALTER TABLE [dbo].[EcomOrders] ADD  DEFAULT ((0)) FOR [OrderVoucherUseType]
GO
ALTER TABLE [dbo].[EcomOrders] ADD  DEFAULT ((0)) FOR [OrderGiftcardTransactionFailed]
GO
ALTER TABLE [dbo].[EcomPayments] ADD  CONSTRAINT [DW_DF_EcomPayments_Sorting]  DEFAULT ((0)) FOR [PaymentSorting]
GO
ALTER TABLE [dbo].[EcomPeriods] ADD  CONSTRAINT [DW_DF_EcomPeriods_Always]  DEFAULT ((0)) FOR [PeriodAlways]
GO
ALTER TABLE [dbo].[EcomPeriods] ADD  CONSTRAINT [DW_DF_EcomPeriods_Active]  DEFAULT ((1)) FOR [PeriodActive]
GO
ALTER TABLE [dbo].[EcomPeriods] ADD  DEFAULT ((0)) FOR [PeriodHidden]
GO
ALTER TABLE [dbo].[EcomPrices] ADD  CONSTRAINT [DW_DF_EcomPrices_Quantity]  DEFAULT ((0)) FOR [PriceQuantity]
GO
ALTER TABLE [dbo].[EcomPrices] ADD  CONSTRAINT [DW_DF_EcomPrices_Amount]  DEFAULT ((0)) FOR [PriceAmount]
GO
ALTER TABLE [dbo].[EcomPrices] ADD  CONSTRAINT [DW_DF_EcomPrices_Priority]  DEFAULT ((0)) FOR [PricePriority]
GO
ALTER TABLE [dbo].[EcomProductGroupField] ADD  CONSTRAINT [DW_DF_EcomProductGroupField_TypeId]  DEFAULT ((0)) FOR [ProductGroupFieldTypeId]
GO
ALTER TABLE [dbo].[EcomProductGroupField] ADD  CONSTRAINT [DW_DF_EcomProductGroupField_Locked]  DEFAULT ((0)) FOR [ProductGroupFieldLocked]
GO
ALTER TABLE [dbo].[EcomProductGroupField] ADD  CONSTRAINT [DW_DF_EcomProductGroupField_Sort]  DEFAULT ((0)) FOR [ProductGroupFieldSort]
GO
ALTER TABLE [dbo].[EcomProductItems] ADD  CONSTRAINT [DW_DF_EcomProductItems_Quantity]  DEFAULT ((0)) FOR [ProductItemQuantity]
GO
ALTER TABLE [dbo].[EcomProductItems] ADD  CONSTRAINT [DW_DF_EcomProductItems_Required]  DEFAULT ((0)) FOR [ProductItemRequired]
GO
ALTER TABLE [dbo].[EcomProductItems] ADD  CONSTRAINT [DW_DF_EcomProductItems_BomVariantId]  DEFAULT (N'') FOR [ProductItemBomVariantId]
GO
ALTER TABLE [dbo].[EcomProducts] ADD  CONSTRAINT [DW_DF_EcomProducts_Price]  DEFAULT ((0)) FOR [ProductPrice]
GO
ALTER TABLE [dbo].[EcomProducts] ADD  CONSTRAINT [DW_DF_EcomProducts_Stock]  DEFAULT ((0)) FOR [ProductStock]
GO
ALTER TABLE [dbo].[EcomProducts] ADD  CONSTRAINT [DW_DF_EcomProducts_Weight]  DEFAULT ((0)) FOR [ProductWeight]
GO
ALTER TABLE [dbo].[EcomProducts] ADD  CONSTRAINT [DW_DF_EcomProducts_Volume]  DEFAULT ((0)) FOR [ProductVolume]
GO
ALTER TABLE [dbo].[EcomProducts] ADD  CONSTRAINT [DW_DF_EcomProducts_Active]  DEFAULT ((1)) FOR [ProductActive]
GO
ALTER TABLE [dbo].[EcomProducts] ADD  CONSTRAINT [DW_DF_EcomProducts_Type]  DEFAULT ((0)) FOR [ProductType]
GO
ALTER TABLE [dbo].[EcomProducts] ADD  CONSTRAINT [DW_DF_EcomProducts_PriceType]  DEFAULT ((0)) FOR [ProductPriceType]
GO
ALTER TABLE [dbo].[EcomProducts] ADD  CONSTRAINT [DW_DF_EcomProducts_PriceCounter]  DEFAULT ((0)) FOR [ProductPriceCounter]
GO
ALTER TABLE [dbo].[EcomProducts] ADD  CONSTRAINT [DW_DF_EcomProducts_VariantCounter]  DEFAULT ((0)) FOR [ProductVariantCounter]
GO
ALTER TABLE [dbo].[EcomProducts] ADD  CONSTRAINT [DW_DF_EcomProducts_VariantProdCounter]  DEFAULT ((0)) FOR [ProductVariantProdCounter]
GO
ALTER TABLE [dbo].[EcomProducts] ADD  CONSTRAINT [DW_DF_EcomProducts_VariantGroupCounter]  DEFAULT ((0)) FOR [ProductVariantGroupCounter]
GO
ALTER TABLE [dbo].[EcomProducts] ADD  CONSTRAINT [DW_DF_EcomProducts_RelatedCounter]  DEFAULT ((0)) FOR [ProductRelatedCounter]
GO
ALTER TABLE [dbo].[EcomProducts] ADD  CONSTRAINT [DW_DF_EcomProducts_UnitCounter]  DEFAULT ((0)) FOR [ProductUnitCounter]
GO
ALTER TABLE [dbo].[EcomProducts] ADD  CONSTRAINT [DW_DF_EcomProducts_PriceMatrixUnit]  DEFAULT ((0)) FOR [ProductPriceMatrixUnit]
GO
ALTER TABLE [dbo].[EcomProducts] ADD  CONSTRAINT [DW_DF_EcomProducts_PriceMatrixVariant]  DEFAULT ((0)) FOR [ProductPriceMatrixVariant]
GO
ALTER TABLE [dbo].[EcomProducts] ADD  CONSTRAINT [DW_DF_EcomProducts_PriceMatrixPeriod]  DEFAULT ((0)) FOR [ProductPriceMatrixPeriod]
GO
ALTER TABLE [dbo].[EcomProducts] ADD  CONSTRAINT [DW_DF_EcomProducts_PriceMatrixMultiplePrices]  DEFAULT ((0)) FOR [ProductPriceMatrixMultiplePrices]
GO
ALTER TABLE [dbo].[EcomProducts] ADD  CONSTRAINT [DW_DF_EcomProducts_ExcludeFromIndex]  DEFAULT ((0)) FOR [ProductExcludeFromIndex]
GO
ALTER TABLE [dbo].[EcomProducts] ADD  CONSTRAINT [DW_DF_EcomProducts_ExcludeFromCustomizedUrls]  DEFAULT ((0)) FOR [ProductExcludeFromCustomizedUrls]
GO
ALTER TABLE [dbo].[EcomProducts] ADD  CONSTRAINT [DW_DF_EcomProducts_ExcludeFromAllProducts]  DEFAULT ((0)) FOR [ProductExcludeFromAllProducts]
GO
ALTER TABLE [dbo].[EcomProducts] ADD  DEFAULT (NULL) FOR [ProductPoints]
GO
ALTER TABLE [dbo].[EcomProductsRelated] ADD  CONSTRAINT [DW_DF_EcomProductsRelated_SortOrder]  DEFAULT ((0)) FOR [ProductRelatedSortOrder]
GO
ALTER TABLE [dbo].[EcomProductsRelated] ADD  DEFAULT ('') FOR [ProductRelatedProductRelVariantID]
GO
ALTER TABLE [dbo].[EcomProductsRelatedGroups] ADD  CONSTRAINT [DW_DF_EcomProductsRelatedGroup_SortOrder]  DEFAULT ((0)) FOR [RelatedGroupSortOrder]
GO
ALTER TABLE [dbo].[EcomRoundings] ADD  CONSTRAINT [DW_DF_EcomRoundings_ModIntegerPart]  DEFAULT ((0)) FOR [RoundingModIntegerPart]
GO
ALTER TABLE [dbo].[EcomRoundings] ADD  CONSTRAINT [DW_DF_EcomRoundings_ModDecimalPart]  DEFAULT ((0)) FOR [RoundingModDecimalPart]
GO
ALTER TABLE [dbo].[EcomRoundings] ADD  CONSTRAINT [DW_DF_EcomRoundings_ModIntegerCorrection]  DEFAULT ((0)) FOR [RoundingModIntegerCorrection]
GO
ALTER TABLE [dbo].[EcomRoundings] ADD  CONSTRAINT [DW_DF_EcomRoundings_ModDecimalCorrection]  DEFAULT ((0)) FOR [RoundingModDecimalCorrection]
GO
ALTER TABLE [dbo].[EcomRoundings] ADD  CONSTRAINT [DW_DF_EcomRoundings_Method]  DEFAULT ((0)) FOR [RoundingMethod]
GO
ALTER TABLE [dbo].[EcomRoundings] ADD  CONSTRAINT [DW_DF_EcomRoundings_Decimals]  DEFAULT ((0)) FOR [RoundingDecimals]
GO
ALTER TABLE [dbo].[EcomSavedForLater] ADD  CONSTRAINT [DW_DF_EcomSavedForLater_DateAdded]  DEFAULT (NULL) FOR [SavedForLaterDateAdded]
GO
ALTER TABLE [dbo].[EcomShippings] ADD  CONSTRAINT [DW_DF_EcomShippings_PriceOverMaxWeight]  DEFAULT ((0)) FOR [ShippingPriceOverMaxWeight]
GO
ALTER TABLE [dbo].[EcomShippings] ADD  CONSTRAINT [DW_DF_EcomShippings_Sorting]  DEFAULT ((0)) FOR [ShippingSorting]
GO
ALTER TABLE [dbo].[EcomShippings] ADD  CONSTRAINT [DW_DF_Shipping_LimitsUseLogic]  DEFAULT ((2)) FOR [ShippingLimitsUseLogic]
GO
ALTER TABLE [dbo].[EcomShippings] ADD  CONSTRAINT [DW_DF_Shipping_FeeRulesSource]  DEFAULT ((1)) FOR [ShippingFeeRulesSource]
GO
ALTER TABLE [dbo].[EcomShopGroupRelation] ADD  CONSTRAINT [DW_DF_EcomShopGroupRelation_Sorting]  DEFAULT ((0)) FOR [ShopGroupRelationsSorting]
GO
ALTER TABLE [dbo].[EcomShopLanguageRelation] ADD  CONSTRAINT [DW_DF_EcomShopLanguageRelation_IsDefault]  DEFAULT ((0)) FOR [IsDefault]
GO
ALTER TABLE [dbo].[EcomStockLocation] ADD  CONSTRAINT [EcomStockLocation_DefaultValueGroupID]  DEFAULT ((0)) FOR [StockLocationGroupId]
GO
ALTER TABLE [dbo].[EcomStockUnit] ADD  CONSTRAINT [DW_DF_EcomStockUnit_Quantity]  DEFAULT ((0)) FOR [StockUnitQuantity]
GO
ALTER TABLE [dbo].[EcomStockUnit] ADD  CONSTRAINT [DW_DF_EcomStockUnit_Weight]  DEFAULT ((0)) FOR [StockUnitWeight]
GO
ALTER TABLE [dbo].[EcomStockUnit] ADD  CONSTRAINT [DW_DF_EcomStockUnit_Volume]  DEFAULT ((0)) FOR [StockUnitVolume]
GO
ALTER TABLE [dbo].[EcomUserPermissionType] ADD  CONSTRAINT [DW_DF_EcomUserPermissionType_UserPermissionTypeGUId]  DEFAULT (newid()) FOR [UserPermissionTypeGUID]
GO
ALTER TABLE [dbo].[EcomVariantGroupProductRelation] ADD  CONSTRAINT [DW_DF_EcomVariantGroupProductRelation_Sorting]  DEFAULT ((0)) FOR [VariantGroupProductRelationSorting]
GO
ALTER TABLE [dbo].[EcomVariantGroupProductRelation] ADD  CONSTRAINT [DW_DF_EcomVariantGroupProductRelation_PriceDif]  DEFAULT ((0)) FOR [VariantGroupProductRelationPriceDif]
GO
ALTER TABLE [dbo].[EcomVariantGroups] ADD  CONSTRAINT [DW_DF_EcomVariantGroups_Unit]  DEFAULT ((0)) FOR [VariantGroupUnit]
GO
ALTER TABLE [dbo].[EcomVariantsOptions] ADD  CONSTRAINT [DW_DF_EcomVariantOptions_SortOrder]  DEFAULT ((0)) FOR [VariantOptionSortOrder]
GO
ALTER TABLE [dbo].[EcomVatCountryRelations] ADD  CONSTRAINT [DW_DF_EcomVatCountryRelations_Vat]  DEFAULT ((0)) FOR [VatCountryRelVat]
GO
ALTER TABLE [dbo].[EmailMarketingEmail] ADD  CONSTRAINT [DW_DF_EmailMarketingEmail_ScheduledActive]  DEFAULT ((0)) FOR [EmailScheduledActive]
GO
ALTER TABLE [dbo].[EmailMarketingEmail] ADD  CONSTRAINT [DW_DF_EmailMarketingEmail_RequireUniqueRecipients]  DEFAULT ((1)) FOR [EmailRequireUniqueRecipients]
GO
ALTER TABLE [dbo].[EmailMarketingEmail] ADD  CONSTRAINT [DW_DF_EmailMarketingEmail_RecipientSpecificContent]  DEFAULT ((0)) FOR [EmailRecipientSpecificContent]
GO
ALTER TABLE [dbo].[EmailMarketingSplitTest] ADD  CONSTRAINT [DW_DF_EmailMarketingSplitTest_ScheduledSendActive]  DEFAULT ((0)) FOR [SplitTestScheduledSendActive]
GO
ALTER TABLE [dbo].[EmailMarketingSplitTest] ADD  CONSTRAINT [DW_DF_EmailMarketingSplitTest_ScheduledPickWinnerActive]  DEFAULT ((0)) FOR [SplitTestScheduledPickWinnerActive]
GO
ALTER TABLE [dbo].[EmailMarketingTopFolder] ADD  CONSTRAINT [DW_DF_EmailMarketingTopFolder_RecipientSpecificContent]  DEFAULT ((0)) FOR [TopFolderRecipientSpecificContent]
GO
ALTER TABLE [dbo].[EmailMessage] ADD  CONSTRAINT [DW_DF_EmailMessage_RequireUniqueRecipients]  DEFAULT ((1)) FOR [MessageRequireUniqueRecipients]
GO
ALTER TABLE [dbo].[EmailMessage] ADD  CONSTRAINT [DW_DF_EmailMessage_RecipientSpecificContent]  DEFAULT ((0)) FOR [MessageRecipientSpecificContent]
GO
ALTER TABLE [dbo].[ExternalLoginProvider] ADD  CONSTRAINT [DW_DF_ExternalLoginProvider_Active]  DEFAULT ((0)) FOR [ProviderActive]
GO
ALTER TABLE [dbo].[Form] ADD  CONSTRAINT [DW_DF_Form_EmailFieldId]  DEFAULT ((0)) FOR [FormEmailFieldId]
GO
ALTER TABLE [dbo].[Form] ADD  CONSTRAINT [DW_DF_Form_LabelOverField]  DEFAULT ((0)) FOR [FormLabelOverField]
GO
ALTER TABLE [dbo].[Form] ADD  CONSTRAINT [DW_DF_Form_LabelBold]  DEFAULT ((0)) FOR [FormLabelBold]
GO
ALTER TABLE [dbo].[FormField] ADD  CONSTRAINT [DW_DF_FormField_FormId]  DEFAULT ((0)) FOR [FormFieldFormId]
GO
ALTER TABLE [dbo].[FormField] ADD  CONSTRAINT [DW_DF_FormField_MaxLength]  DEFAULT ((0)) FOR [FormFieldMaxLength]
GO
ALTER TABLE [dbo].[FormField] ADD  CONSTRAINT [DW_DF_FormField_Size]  DEFAULT ((0)) FOR [FormFieldSize]
GO
ALTER TABLE [dbo].[FormField] ADD  CONSTRAINT [DW_DF_FormField_Required]  DEFAULT ((0)) FOR [FormFieldRequired]
GO
ALTER TABLE [dbo].[FormField] ADD  CONSTRAINT [DW_DF_FormField_TextareaHeight]  DEFAULT ((0)) FOR [FormFieldTextareaHeight]
GO
ALTER TABLE [dbo].[FormField] ADD  CONSTRAINT [DW_DF_FormField_Sort]  DEFAULT ((0)) FOR [FormFieldSort]
GO
ALTER TABLE [dbo].[FormField] ADD  CONSTRAINT [DW_DF_FormField_Active]  DEFAULT ((0)) FOR [FormFieldActive]
GO
ALTER TABLE [dbo].[FormOptions] ADD  CONSTRAINT [DW_DF_FormOptions_FormFieldId]  DEFAULT ((0)) FOR [FormOptionsFormFieldId]
GO
ALTER TABLE [dbo].[FormOptions] ADD  CONSTRAINT [DW_DF_FormOptions_DefaultSelected]  DEFAULT ((0)) FOR [FormOptionsDefaultSelected]
GO
ALTER TABLE [dbo].[FormOptions] ADD  CONSTRAINT [DW_DF_FormOptions_Sort]  DEFAULT ((0)) FOR [FormOptionsSort]
GO
ALTER TABLE [dbo].[FormOptions] ADD  CONSTRAINT [DW_DF_FormOptions_Active]  DEFAULT ((1)) FOR [FormOptionsActive]
GO
ALTER TABLE [dbo].[FormSubmit] ADD  DEFAULT ((0)) FOR [FormSubmitFormID]
GO
ALTER TABLE [dbo].[FormSubmit] ADD  DEFAULT (getdate()) FOR [FormSubmitDate]
GO
ALTER TABLE [dbo].[FormSubmitData] ADD  DEFAULT ((0)) FOR [FormSubmitDataSubmitID]
GO
ALTER TABLE [dbo].[FormSubmitData] ADD  DEFAULT ((0)) FOR [FormSubmitDataFieldID]
GO
ALTER TABLE [dbo].[ForumCategory] ADD  CONSTRAINT [DW_DF_ForumCategory_Active]  DEFAULT ((1)) FOR [ForumCategoryActive]
GO
ALTER TABLE [dbo].[ForumCategory] ADD  CONSTRAINT [DW_DF_ForumCategory_AreaId]  DEFAULT ((0)) FOR [ForumCategoryAreaId]
GO
ALTER TABLE [dbo].[ForumMessage] ADD  CONSTRAINT [DW_DF_ForumMessage_ParentId]  DEFAULT ((0)) FOR [ForumMessageParentId]
GO
ALTER TABLE [dbo].[ForumMessage] ADD  CONSTRAINT [DW_DF_ForumMessage_CategoryId]  DEFAULT ((0)) FOR [ForumMessageCategoryId]
GO
ALTER TABLE [dbo].[ForumMessage] ADD  CONSTRAINT [DW_DF_ForumMessage_Created]  DEFAULT (getdate()) FOR [ForumMessageCreated]
GO
ALTER TABLE [dbo].[ForumMessage] ADD  CONSTRAINT [DW_DF_ForumMessage_AuthorId]  DEFAULT ((0)) FOR [ForumMessageAuthorId]
GO
ALTER TABLE [dbo].[ForumMessage] ADD  CONSTRAINT [DW_DF_ForumMessage_NotifyAuthor]  DEFAULT ((0)) FOR [ForumMessageNotifyAuthor]
GO
ALTER TABLE [dbo].[ForumMessage] ADD  DEFAULT ((1)) FOR [ForumMessageIsActive]
GO
ALTER TABLE [dbo].[IndexScheduledUpdate] ADD  CONSTRAINT [DW_DF_IndexScheduledUpdate_Type]  DEFAULT ((0)) FOR [IndexScheduledUpdateType]
GO
ALTER TABLE [dbo].[IndexScheduledUpdate] ADD  CONSTRAINT [DW_DF_IndexScheduledUpdate_Interval]  DEFAULT ((0)) FOR [IndexScheduledUpdateInterval]
GO
ALTER TABLE [dbo].[IndexScheduledUpdate] ADD  CONSTRAINT [DW_DF_IndexScheduledUpdate_IsFullUpdate]  DEFAULT ((0)) FOR [IndexScheduledUpdateIsFullUpdate]
GO
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [DW_DF_News_NewsCategoryID]  DEFAULT ((0)) FOR [NewsCategoryID]
GO
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [DW_DF_News_NewsActive]  DEFAULT ((1)) FOR [NewsActive]
GO
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [DW_DF_News_NewsArchive]  DEFAULT ((0)) FOR [NewsArchive]
GO
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [DW_DF_News_NewsTemplateID]  DEFAULT ((0)) FOR [NewsTemplateID]
GO
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [DW_DF_News_NewsLinkPopup]  DEFAULT ((0)) FOR [NewsLinkPopup]
GO
ALTER TABLE [dbo].[OMCExperiment] ADD  CONSTRAINT [DW_DF_OMCExperiment_Active]  DEFAULT ((1)) FOR [OMCExperimentActive]
GO
ALTER TABLE [dbo].[OMCParagraphSegment] ADD  DEFAULT ((1)) FOR [ParagraphSegmentShowAsDefault]
GO
ALTER TABLE [dbo].[OMCParagraphSegmentSelection] ADD  DEFAULT ((0)) FOR [ParagraphSegmentSelectionSelected]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_ParentPageId]  DEFAULT ((0)) FOR [PageParentPageId]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_AreaId]  DEFAULT ((1)) FOR [PageAreaId]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_Sort]  DEFAULT ((0)) FOR [PageSort]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_Active]  DEFAULT ((0)) FOR [PageActive]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_TextAndImage]  DEFAULT ((0)) FOR [PageTextAndImage]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_Protect]  DEFAULT ((0)) FOR [PageProtect]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_ShowTopImage]  DEFAULT ((0)) FOR [PageShowTopImage]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_ShortcutRedirect]  DEFAULT ((0)) FOR [PageShortCutRedirect]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_PermissionType]  DEFAULT ((1)) FOR [PagePermissionType]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_Allowsearch]  DEFAULT ((1)) FOR [PageAllowsearch]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_ShowInSitemap]  DEFAULT ((0)) FOR [PageShowInSitemap]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_Allowclick]  DEFAULT ((1)) FOR [PageAllowClick]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_UserCreate]  DEFAULT ((0)) FOR [PageUserCreate]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_UserEdit]  DEFAULT ((0)) FOR [PageUserEdit]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_ShowUpdateDate]  DEFAULT ((0)) FOR [PageShowUpdateDate]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_Manager]  DEFAULT ((0)) FOR [PageManager]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_ManageFrequence]  DEFAULT ((0)) FOR [PageManageFrequence]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_WorkflowId]  DEFAULT ((0)) FOR [PageWorkflowId]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_WorkflowState]  DEFAULT ((0)) FOR [PageWorkflowState]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_ShowInLegend]  DEFAULT ((0)) FOR [PageShowInLegend]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_ShowFavorites]  DEFAULT ((0)) FOR [PageShowFavorites]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_VersionParentId]  DEFAULT ((0)) FOR [PageVersionParentId]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_VersionNumber]  DEFAULT ((0)) FOR [PageVersionNumber]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_InheritId]  DEFAULT ((0)) FOR [PageInheritId]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_InheritStatus]  DEFAULT ((0)) FOR [PageInheritStatus]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_ApprovalType]  DEFAULT ((0)) FOR [PageApprovalType]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_ApprovalState]  DEFAULT ((0)) FOR [PageApprovalState]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_TopLevelIntegration]  DEFAULT ((0)) FOR [PageTopLevelIntegration]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_ForIntegration]  DEFAULT ((0)) FOR [PageForIntegration]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_MasterPageId]  DEFAULT ((0)) FOR [PageMasterPageId]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_LayoutApplyToSubPages]  DEFAULT ((0)) FOR [PageLayoutApplyToSubPages]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_HasExperiment]  DEFAULT ((0)) FOR [PageHasExperiment]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_IsFolder]  DEFAULT ((0)) FOR [PageIsFolder]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DW_DF_Page_NavigationIncludeProducts]  DEFAULT ((0)) FOR [PageNavigationIncludeProducts]
GO
ALTER TABLE [dbo].[Paragraph] ADD  CONSTRAINT [DW_DF_Paragraph_PageId]  DEFAULT ((0)) FOR [ParagraphPageId]
GO
ALTER TABLE [dbo].[Paragraph] ADD  CONSTRAINT [DW_DF_Paragraph_Index]  DEFAULT ((0)) FOR [ParagraphIndex]
GO
ALTER TABLE [dbo].[Paragraph] ADD  CONSTRAINT [DW_DF_Paragraph_Sort]  DEFAULT ((0)) FOR [ParagraphSort]
GO
ALTER TABLE [dbo].[Paragraph] ADD  CONSTRAINT [DW_DF_Paragraph_ShowHeader]  DEFAULT ((0)) FOR [ParagraphShowHeader]
GO
ALTER TABLE [dbo].[Paragraph] ADD  CONSTRAINT [DW_DF_Paragraph_ShowParagraph]  DEFAULT ((0)) FOR [ParagraphShowParagraph]
GO
ALTER TABLE [dbo].[Paragraph] ADD  CONSTRAINT [DW_DF_Paragraph_IgnoreBreaks]  DEFAULT ((0)) FOR [ParagraphIgnoreBreaks]
GO
ALTER TABLE [dbo].[Paragraph] ADD  CONSTRAINT [DW_DF_Paragraph_ImageNewWindow]  DEFAULT ((0)) FOR [ParagraphImageNewWindow]
GO
ALTER TABLE [dbo].[Paragraph] ADD  CONSTRAINT [DW_DF_Paragraph_ImageResize]  DEFAULT ((0)) FOR [ParagraphImageResize]
GO
ALTER TABLE [dbo].[Paragraph] ADD  CONSTRAINT [DW_DF_Paragraph_TemplateId]  DEFAULT ((0)) FOR [ParagraphTemplateId]
GO
ALTER TABLE [dbo].[Paragraph] ADD  CONSTRAINT [DW_DF_Paragraph_CreatedDate]  DEFAULT (getdate()) FOR [ParagraphCreatedDate]
GO
ALTER TABLE [dbo].[Paragraph] ADD  CONSTRAINT [DW_DF_Paragraph_UserCreate]  DEFAULT ((0)) FOR [ParagraphUserCreate]
GO
ALTER TABLE [dbo].[Paragraph] ADD  CONSTRAINT [DW_DF_Paragraph_UserEdit]  DEFAULT ((0)) FOR [ParagraphUserEdit]
GO
ALTER TABLE [dbo].[Paragraph] ADD  CONSTRAINT [DW_DF_Paragraph_WorkflowId]  DEFAULT ((0)) FOR [ParagraphWorkflowId]
GO
ALTER TABLE [dbo].[Paragraph] ADD  CONSTRAINT [DW_DF_Paragraph_WorkflowState]  DEFAULT ((0)) FOR [ParagraphWorkflowState]
GO
ALTER TABLE [dbo].[Paragraph] ADD  CONSTRAINT [DW_DF_Paragraph_InheritId]  DEFAULT ((0)) FOR [ParagraphInheritId]
GO
ALTER TABLE [dbo].[Paragraph] ADD  CONSTRAINT [DW_DF_Paragraph_InheritStatus]  DEFAULT ((0)) FOR [ParagraphInheritStatus]
GO
ALTER TABLE [dbo].[Paragraph] ADD  CONSTRAINT [DW_DF_Paragraph_ApprovalType]  DEFAULT ((0)) FOR [ParagraphApprovalType]
GO
ALTER TABLE [dbo].[Paragraph] ADD  CONSTRAINT [DW_DF_Paragraph_ApprovalState]  DEFAULT ((0)) FOR [ParagraphApprovalState]
GO
ALTER TABLE [dbo].[Paragraph] ADD  CONSTRAINT [DW_DF_Paragraph_MastParagraphId]  DEFAULT ((0)) FOR [ParagraphMasterParagraphId]
GO
ALTER TABLE [dbo].[Paragraph] ADD  CONSTRAINT [DW_DF_Paragraph_Preview]  DEFAULT ((0)) FOR [ParagraphPreview]
GO
ALTER TABLE [dbo].[SocialChannel] ADD  CONSTRAINT [DW_DF_SocialChannel_Active]  DEFAULT ((1)) FOR [ChannelActive]
GO
ALTER TABLE [dbo].[Statv2Session] ADD  CONSTRAINT [DW_DF_Statv2Session_Timestamp]  DEFAULT (getdate()) FOR [Statv2SessionTimestamp]
GO
ALTER TABLE [dbo].[Statv2Session] ADD  CONSTRAINT [DW_DF_Statv2Session_AreaId]  DEFAULT ((0)) FOR [Statv2SessionAreaId]
GO
ALTER TABLE [dbo].[Statv2Session] ADD  CONSTRAINT [DW_DF_Statv2Session_Year]  DEFAULT ((0)) FOR [Statv2SessionYear]
GO
ALTER TABLE [dbo].[Statv2Session] ADD  CONSTRAINT [DW_DF_Statv2Session_Month]  DEFAULT ((0)) FOR [Statv2SessionMonth]
GO
ALTER TABLE [dbo].[Statv2Session] ADD  CONSTRAINT [DW_DF_Statv2Session_Week]  DEFAULT ((0)) FOR [Statv2SessionWeek]
GO
ALTER TABLE [dbo].[Statv2Session] ADD  CONSTRAINT [DW_DF_Statv2Session_Day]  DEFAULT ((0)) FOR [Statv2SessionDay]
GO
ALTER TABLE [dbo].[Statv2Session] ADD  CONSTRAINT [DW_DF_Statv2Session_Hour]  DEFAULT ((0)) FOR [Statv2SessionHour]
GO
ALTER TABLE [dbo].[Statv2Session] ADD  CONSTRAINT [DW_DF_Statv2Session_Minute]  DEFAULT ((0)) FOR [Statv2SessionMinute]
GO
ALTER TABLE [dbo].[Statv2Session] ADD  CONSTRAINT [DW_DF_Statv2Session_UserAgentId]  DEFAULT ((0)) FOR [Statv2SessionUserAgentId]
GO
ALTER TABLE [dbo].[Statv2Session] ADD  CONSTRAINT [DW_DF_Statv2Session_Bot]  DEFAULT ((0)) FOR [Statv2SessionBot]
GO
ALTER TABLE [dbo].[Statv2Session] ADD  CONSTRAINT [DW_DF_Statv2Session_Firstpage]  DEFAULT ((0)) FOR [Statv2SessionFirstpage]
GO
ALTER TABLE [dbo].[Statv2Session] ADD  CONSTRAINT [DW_DF_Statv2Session_Lastpage]  DEFAULT ((0)) FOR [Statv2SessionLastpage]
GO
ALTER TABLE [dbo].[Statv2Session] ADD  CONSTRAINT [DW_DF_Statv2Session_Pageviews]  DEFAULT ((0)) FOR [Statv2SessionPageviews]
GO
ALTER TABLE [dbo].[Statv2Session] ADD  CONSTRAINT [DW_DF_Statv2Session_TimePrPage]  DEFAULT ((0)) FOR [Statv2SessionTimePrPage]
GO
ALTER TABLE [dbo].[Statv2Session] ADD  CONSTRAINT [DW_DF_Statv2Session_GwIPDbl]  DEFAULT ((0)) FOR [Statv2SessionGwIPDbl]
GO
ALTER TABLE [dbo].[Statv2Session] ADD  CONSTRAINT [DW_DF_Statv2Session_RefererSearchWordPagenumber]  DEFAULT ((0)) FOR [Statv2SessionRefererSearchWordPagenumber]
GO
ALTER TABLE [dbo].[Statv2Session] ADD  CONSTRAINT [DW_DF_Statv2Session_ExtranetUserId]  DEFAULT ((0)) FOR [Statv2SessionExtranetUserId]
GO
ALTER TABLE [dbo].[Statv2Session] ADD  CONSTRAINT [DW_DF_Statv2Session_ColorDepth]  DEFAULT ((0)) FOR [Statv2SessionColorDepth]
GO
ALTER TABLE [dbo].[Statv2SessionBot] ADD  CONSTRAINT [DW_DF_Statv2SessionBot_Timestamp]  DEFAULT (getdate()) FOR [Statv2SessionTimestamp]
GO
ALTER TABLE [dbo].[Statv2SessionBot] ADD  CONSTRAINT [DW_DF_Statv2SessionBot_AreaId]  DEFAULT ((0)) FOR [Statv2SessionAreaId]
GO
ALTER TABLE [dbo].[Statv2SessionBot] ADD  CONSTRAINT [DW_DF_Statv2SessionBot_Year]  DEFAULT ((0)) FOR [Statv2SessionYear]
GO
ALTER TABLE [dbo].[Statv2SessionBot] ADD  CONSTRAINT [DW_DF_Statv2SessionBot_Month]  DEFAULT ((0)) FOR [Statv2SessionMonth]
GO
ALTER TABLE [dbo].[Statv2SessionBot] ADD  CONSTRAINT [DW_DF_Statv2SessionBot_Week]  DEFAULT ((0)) FOR [Statv2SessionWeek]
GO
ALTER TABLE [dbo].[Statv2SessionBot] ADD  CONSTRAINT [DW_DF_Statv2SessionBot_Day]  DEFAULT ((0)) FOR [Statv2SessionDay]
GO
ALTER TABLE [dbo].[Statv2SessionBot] ADD  CONSTRAINT [DW_DF_Statv2SessionBot_UserAgentId]  DEFAULT ((0)) FOR [Statv2SessionUserAgentId]
GO
ALTER TABLE [dbo].[Statv2SessionBot] ADD  CONSTRAINT [DW_DF_Statv2SessionBot_Firstpage]  DEFAULT ((0)) FOR [Statv2SessionFirstpage]
GO
ALTER TABLE [dbo].[TaskManager] ADD  CONSTRAINT [DW_DF_TaskManager_GiverId]  DEFAULT ((0)) FOR [TaskGiverId]
GO
ALTER TABLE [dbo].[TaskManager] ADD  CONSTRAINT [DW_DF_TaskManager_TakerId]  DEFAULT ((0)) FOR [TaskTakerId]
GO
ALTER TABLE [dbo].[TaskManager] ADD  CONSTRAINT [DW_DF_TaskManager_Notification]  DEFAULT ((0)) FOR [TaskNotification]
GO
ALTER TABLE [dbo].[TaskManager] ADD  CONSTRAINT [DW_DF_TaskManager_Status]  DEFAULT ((0)) FOR [TaskStatus]
GO
ALTER TABLE [dbo].[TaskManager] ADD  CONSTRAINT [DW_DF_TaskManager_Priority]  DEFAULT ((0)) FOR [TaskPriority]
GO
ALTER TABLE [dbo].[Template] ADD  CONSTRAINT [DW_DF_Template_CategoryId]  DEFAULT ((0)) FOR [TemplateCategoryId]
GO
ALTER TABLE [dbo].[Template] ADD  CONSTRAINT [DW_DF_Template_IsProtected]  DEFAULT ((0)) FOR [TemplateIsProtected]
GO
ALTER TABLE [dbo].[Template] ADD  CONSTRAINT [DW_DF_Template_IsDefault]  DEFAULT ((0)) FOR [TemplateIsDefault]
GO
ALTER TABLE [dbo].[Template] ADD  CONSTRAINT [DW_DF_Template_TypeId]  DEFAULT ((0)) FOR [TemplateTypeId]
GO
ALTER TABLE [dbo].[Template] ADD  CONSTRAINT [DW_DF_Template_PutInTable]  DEFAULT ('1') FOR [TemplatePutInTable]
GO
ALTER TABLE [dbo].[Template] ADD  CONSTRAINT [DW_DF_Template_ImageColumns]  DEFAULT ((0)) FOR [TemplateImageColumns]
GO
ALTER TABLE [dbo].[Template] ADD  CONSTRAINT [DW_DF_Template_ImageWidth]  DEFAULT ((0)) FOR [TemplateImageWidth]
GO
ALTER TABLE [dbo].[Template] ADD  CONSTRAINT [DW_DF_Template_Active]  DEFAULT ((0)) FOR [TemplateActive]
GO
ALTER TABLE [dbo].[Template] ADD  CONSTRAINT [DW_DF_Template_AutoResize]  DEFAULT ((0)) FOR [TemplateAutoResize]
GO
ALTER TABLE [dbo].[TemplateCategory] ADD  CONSTRAINT [DW_DF_TemplateCategory_IsProtected]  DEFAULT ((0)) FOR [TemplateCategoryIsProtected]
GO
ALTER TABLE [dbo].[TemplateMenu] ADD  CONSTRAINT [DW_DF_TemplateMenu_TemplateId]  DEFAULT ((0)) FOR [TemplateMenuTemplateId]
GO
ALTER TABLE [dbo].[TemplateMenu] ADD  CONSTRAINT [DW_DF_TemplateMenu_Type]  DEFAULT ((0)) FOR [TemplateMenuType]
GO
ALTER TABLE [dbo].[TemplateMenu] ADD  CONSTRAINT [DW_DF_TemplateMenu_ParentId]  DEFAULT ((0)) FOR [TemplateMenuParentId]
GO
ALTER TABLE [dbo].[TemplateMenu] ADD  CONSTRAINT [DW_DF_TemplateMenu_StartLevel]  DEFAULT ((0)) FOR [TemplateMenuStartLevel]
GO
ALTER TABLE [dbo].[TemplateMenu] ADD  CONSTRAINT [DW_DF_TemplateMenu_StopLevel]  DEFAULT ((0)) FOR [TemplateMenuStopLevel]
GO
ALTER TABLE [dbo].[TemplateMenu] ADD  CONSTRAINT [DW_DF_TemplateMenu_Depth]  DEFAULT ((0)) FOR [TemplateMenuDepth]
GO
ALTER TABLE [dbo].[TemplateMenu] ADD  CONSTRAINT [DW_DF_TemplateMenu_EcomTreeType]  DEFAULT ((0)) FOR [TemplateMenuEcomTreeType]
GO
ALTER TABLE [dbo].[TemplateMenu] ADD  CONSTRAINT [DW_DF_TemplateMenu_EcomMaxLevel]  DEFAULT ((0)) FOR [TemplateMenuEcomMaxLevel]
GO
ALTER TABLE [dbo].[UrlPath] ADD  CONSTRAINT [DW_DF_UrlPath_Active]  DEFAULT ((1)) FOR [UrlPathActive]
GO
ALTER TABLE [dbo].[UrlPath] ADD  CONSTRAINT [DW_DF_UrlPath_VisitsCount]  DEFAULT ((0)) FOR [UrlPathVisitsCount]
GO
ALTER TABLE [dbo].[VersionData] ADD  CONSTRAINT [DW_DF_VersionData_TypeId]  DEFAULT ((0)) FOR [VersionDataTypeId]
GO
ALTER TABLE [dbo].[VersionData] ADD  CONSTRAINT [DW_DF_VersionData_Published]  DEFAULT ((0)) FOR [VersionDataPublished]
GO
ALTER TABLE [dbo].[VersionData] ADD  CONSTRAINT [DW_DF_VersionData_TypeIdString]  DEFAULT (N'') FOR [VersionDataTypeIdString]
GO
ALTER TABLE [dbo].[EcomAssortmentItems]  WITH CHECK ADD  CONSTRAINT [FK_EcomAssortmentItems_EcomAssortments] FOREIGN KEY([AssortmentItemAssortmentID], [AssortmentItemLanguageID])
REFERENCES [dbo].[EcomAssortments] ([AssortmentID], [AssortmentLanguageID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EcomAssortmentItems] CHECK CONSTRAINT [FK_EcomAssortmentItems_EcomAssortments]
GO
ALTER TABLE [dbo].[EcomAssortmentPermissions]  WITH CHECK ADD  CONSTRAINT [FK_EcomAssortmentPermissions_AccessUser] FOREIGN KEY([AssortmentPermissionAccessUserID])
REFERENCES [dbo].[AccessUser] ([AccessUserId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EcomAssortmentPermissions] CHECK CONSTRAINT [FK_EcomAssortmentPermissions_AccessUser]
GO
ALTER TABLE [dbo].[EcomAssortments]  WITH CHECK ADD  CONSTRAINT [FK_EcomAssortments_EcomLanguages] FOREIGN KEY([AssortmentLanguageID])
REFERENCES [dbo].[EcomLanguages] ([LanguageId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EcomAssortments] CHECK CONSTRAINT [FK_EcomAssortments_EcomLanguages]
GO
ALTER TABLE [dbo].[EcomAssortments]  WITH CHECK ADD  CONSTRAINT [FK_EcomAssortments_EcomPeriods] FOREIGN KEY([AssortmentPeriodID])
REFERENCES [dbo].[EcomPeriods] ([PeriodId])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[EcomAssortments] CHECK CONSTRAINT [FK_EcomAssortments_EcomPeriods]
GO
ALTER TABLE [dbo].[EcomAssortmentShopRelations]  WITH CHECK ADD  CONSTRAINT [FK_EcomAssortmentShopRelations_EcomShops] FOREIGN KEY([AssortmentShopRelationShopID])
REFERENCES [dbo].[EcomShops] ([ShopId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EcomAssortmentShopRelations] CHECK CONSTRAINT [FK_EcomAssortmentShopRelations_EcomShops]
GO
ALTER TABLE [dbo].[EcomCountryText]  WITH CHECK ADD  CONSTRAINT [DW_FK_EcomCountryText_EcomCountries] FOREIGN KEY([CountryTextCode2], [CountryTextRegionCode])
REFERENCES [dbo].[EcomCountries] ([CountryCode2], [CountryRegionCode])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EcomCountryText] CHECK CONSTRAINT [DW_FK_EcomCountryText_EcomCountries]
GO
ALTER TABLE [dbo].[EcomCountryText]  WITH CHECK ADD  CONSTRAINT [DW_FK_EcomCountryText_EcomLanguages] FOREIGN KEY([CountryTextLanguageId])
REFERENCES [dbo].[EcomLanguages] ([LanguageId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EcomCountryText] CHECK CONSTRAINT [DW_FK_EcomCountryText_EcomLanguages]
GO
ALTER TABLE [dbo].[EcomCurrencies]  WITH CHECK ADD  CONSTRAINT [DW_FK_EcomCurrencies_EcomLanguages] FOREIGN KEY([CurrencyLanguageId])
REFERENCES [dbo].[EcomLanguages] ([LanguageId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EcomCurrencies] CHECK CONSTRAINT [DW_FK_EcomCurrencies_EcomLanguages]
GO
ALTER TABLE [dbo].[EcomCustomerFavoriteLists]  WITH CHECK ADD  CONSTRAINT [DW_FK_EcomCustomerFavoriteLists_AccessUser] FOREIGN KEY([AccessUserId])
REFERENCES [dbo].[AccessUser] ([AccessUserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EcomCustomerFavoriteLists] CHECK CONSTRAINT [DW_FK_EcomCustomerFavoriteLists_AccessUser]
GO
ALTER TABLE [dbo].[EcomCustomerFavoriteProducts]  WITH CHECK ADD  CONSTRAINT [DW_FK_EcomCustomerFavoriteProducts_EcomCustomerFavoriteLists] FOREIGN KEY([FavoriteListId])
REFERENCES [dbo].[EcomCustomerFavoriteLists] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EcomCustomerFavoriteProducts] CHECK CONSTRAINT [DW_FK_EcomCustomerFavoriteProducts_EcomCustomerFavoriteLists]
GO
ALTER TABLE [dbo].[EcomCustomerFavoriteProducts]  WITH CHECK ADD  CONSTRAINT [DW_FK_EcomCustomerFavoriteProducts_EcomProducts] FOREIGN KEY([ProductId], [ProductLanguageId], [ProductVariantId])
REFERENCES [dbo].[EcomProducts] ([ProductId], [ProductLanguageId], [ProductVariantId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EcomCustomerFavoriteProducts] CHECK CONSTRAINT [DW_FK_EcomCustomerFavoriteProducts_EcomProducts]
GO
ALTER TABLE [dbo].[EcomCustomersSettings]  WITH CHECK ADD  CONSTRAINT [DW_FK_EcomCustomersSettings_AccessUser] FOREIGN KEY([AccessUserId])
REFERENCES [dbo].[AccessUser] ([AccessUserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EcomCustomersSettings] CHECK CONSTRAINT [DW_FK_EcomCustomersSettings_AccessUser]
GO
ALTER TABLE [dbo].[EcomDiscount]  WITH CHECK ADD  CONSTRAINT [FK_EcomDiscount_EcomOrderContexts] FOREIGN KEY([DiscountOrderContextId])
REFERENCES [dbo].[EcomOrderContexts] ([OrderContextId])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[EcomDiscount] CHECK CONSTRAINT [FK_EcomDiscount_EcomOrderContexts]
GO
ALTER TABLE [dbo].[EcomGroups]  WITH CHECK ADD  CONSTRAINT [DW_FK_EcomGroups_EcomLanguages] FOREIGN KEY([GroupLanguageId])
REFERENCES [dbo].[EcomLanguages] ([LanguageId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EcomGroups] CHECK CONSTRAINT [DW_FK_EcomGroups_EcomLanguages]
GO
ALTER TABLE [dbo].[EcomOrderField]  WITH CHECK ADD  CONSTRAINT [DW_FK_EcomOrderField_EcomFieldType] FOREIGN KEY([OrderFieldTypeId])
REFERENCES [dbo].[EcomFieldType] ([FieldTypeId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EcomOrderField] CHECK CONSTRAINT [DW_FK_EcomOrderField_EcomFieldType]
GO
ALTER TABLE [dbo].[EcomOrderLines]  WITH CHECK ADD  CONSTRAINT [DW_FK_EcomOrderLines_EcomOrders] FOREIGN KEY([OrderLineOrderId])
REFERENCES [dbo].[EcomOrders] ([OrderId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EcomOrderLines] CHECK CONSTRAINT [DW_FK_EcomOrderLines_EcomOrders]
GO
ALTER TABLE [dbo].[EcomOrders]  WITH CHECK ADD  CONSTRAINT [DW_FK_EcomOrders_EcomOrderStates] FOREIGN KEY([OrderStateId])
REFERENCES [dbo].[EcomOrderStates] ([OrderStateId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[EcomOrders] CHECK CONSTRAINT [DW_FK_EcomOrders_EcomOrderStates]
GO
ALTER TABLE [dbo].[EcomProductField]  WITH CHECK ADD  CONSTRAINT [DW_FK_EcomProductField_EcomProductFieldType] FOREIGN KEY([ProductFieldTypeId])
REFERENCES [dbo].[EcomFieldType] ([FieldTypeId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EcomProductField] CHECK CONSTRAINT [DW_FK_EcomProductField_EcomProductFieldType]
GO
ALTER TABLE [dbo].[EcomProducts]  WITH CHECK ADD  CONSTRAINT [DW_FK_EcomProducts_EcomLanguages] FOREIGN KEY([ProductLanguageId])
REFERENCES [dbo].[EcomLanguages] ([LanguageId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EcomProducts] CHECK CONSTRAINT [DW_FK_EcomProducts_EcomLanguages]
GO
ALTER TABLE [dbo].[EcomShopGroupRelation]  WITH CHECK ADD  CONSTRAINT [DW_FK_EcomShopGroupRelation_EcomShops] FOREIGN KEY([ShopGroupShopId])
REFERENCES [dbo].[EcomShops] ([ShopId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EcomShopGroupRelation] CHECK CONSTRAINT [DW_FK_EcomShopGroupRelation_EcomShops]
GO
ALTER TABLE [dbo].[EcomShopLanguageRelation]  WITH CHECK ADD  CONSTRAINT [DW_FK_EcomShopLanguageRelation_EcomLanguages] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[EcomLanguages] ([LanguageId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EcomShopLanguageRelation] CHECK CONSTRAINT [DW_FK_EcomShopLanguageRelation_EcomLanguages]
GO
ALTER TABLE [dbo].[EcomShopLanguageRelation]  WITH CHECK ADD  CONSTRAINT [DW_FK_EcomShopLanguageRelation_EcomShops] FOREIGN KEY([ShopId])
REFERENCES [dbo].[EcomShops] ([ShopId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EcomShopLanguageRelation] CHECK CONSTRAINT [DW_FK_EcomShopLanguageRelation_EcomShops]
GO
ALTER TABLE [dbo].[EcomValidationGroupsTranslation]  WITH CHECK ADD  CONSTRAINT [EcomValidationGroupsTranslation_FKLanguageID] FOREIGN KEY([EcomValidationGroupsTranslationValidationGroupLanguageID])
REFERENCES [dbo].[EcomLanguages] ([LanguageId])
GO
ALTER TABLE [dbo].[EcomValidationGroupsTranslation] CHECK CONSTRAINT [EcomValidationGroupsTranslation_FKLanguageID]
GO
ALTER TABLE [dbo].[EcomValidationGroupsTranslation]  WITH CHECK ADD  CONSTRAINT [EcomValidationGroupsTranslation_FKValidationGroupID] FOREIGN KEY([EcomValidationGroupsTranslationValidationGroupID])
REFERENCES [dbo].[EcomValidationGroups] ([ValidationGroupId])
GO
ALTER TABLE [dbo].[EcomValidationGroupsTranslation] CHECK CONSTRAINT [EcomValidationGroupsTranslation_FKValidationGroupID]
GO
ALTER TABLE [dbo].[EcomVariantGroups]  WITH CHECK ADD  CONSTRAINT [DW_FK_EcomVariantGroups_EcomLanguages] FOREIGN KEY([VariantGroupLanguageId])
REFERENCES [dbo].[EcomLanguages] ([LanguageId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EcomVariantGroups] CHECK CONSTRAINT [DW_FK_EcomVariantGroups_EcomLanguages]
GO
ALTER TABLE [dbo].[EcomVouchers]  WITH CHECK ADD  CONSTRAINT [DW_FK_EcomVouchers_EcomVoucherLists] FOREIGN KEY([VoucherListId])
REFERENCES [dbo].[EcomVoucherLists] ([VoucherListId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EcomVouchers] CHECK CONSTRAINT [DW_FK_EcomVouchers_EcomVoucherLists]
GO
ALTER TABLE [dbo].[ItemListRelation]  WITH CHECK ADD  CONSTRAINT [ItemListRelation_FKItemListId] FOREIGN KEY([ItemListRelationItemListId])
REFERENCES [dbo].[ItemList] ([ItemListId])
GO
ALTER TABLE [dbo].[ItemListRelation] CHECK CONSTRAINT [ItemListRelation_FKItemListId]
GO
ALTER TABLE [dbo].[Template]  WITH CHECK ADD  CONSTRAINT [DW_FK_Template_TemplateCategory] FOREIGN KEY([TemplateCategoryId])
REFERENCES [dbo].[TemplateCategory] ([TemplateCategoryId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Template] CHECK CONSTRAINT [DW_FK_Template_TemplateCategory]
GO
ALTER TABLE [dbo].[TemplateMenu]  WITH CHECK ADD  CONSTRAINT [DW_FK_TemplateMenu_Template] FOREIGN KEY([TemplateMenuTemplateId])
REFERENCES [dbo].[Template] ([TemplateId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TemplateMenu] CHECK CONSTRAINT [DW_FK_TemplateMenu_Template]
GO
ALTER TABLE [dbo].[TemplateMenu]  WITH CHECK ADD  CONSTRAINT [DW_FK_TemplateMenu_TemplateMenuType] FOREIGN KEY([TemplateMenuType])
REFERENCES [dbo].[TemplateMenuType] ([TemplateMenuTypeId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TemplateMenu] CHECK CONSTRAINT [DW_FK_TemplateMenu_TemplateMenuType]
GO
