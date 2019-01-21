USE [VipunenTK_DW]
GO

/****** Object:  Table [dbo].[f_R4_16_Tyossakayvat_ammateittain]    Script Date: 14.11.2018 17:16:46 ******/
DROP TABLE [dbo].[f_R4_16_Tyossakayvat_ammateittain]
GO

/****** Object:  Table [dbo].[f_R4_16_Tyossakayvat_ammateittain]    Script Date: 14.11.2018 17:16:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[f_R4_16_Tyossakayvat_ammateittain](
	[tilv] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[sp] [nvarchar](10) NULL,
	[aikielir1] [nvarchar](10) NULL,
	[ika] [nvarchar](10) NULL,
	[opmast] [nvarchar](10) NULL,
	[kaste_t2] [nvarchar](10) NULL,
	[tutklaja] [nvarchar](10) NULL,
	[opmopa] [nvarchar](10) NULL,
	[iscfinarrow2013] [nvarchar](10) NULL,
	[amm2001_m1] [nvarchar](20) NULL,
	[amm2001_m2] [nvarchar](20) NULL,
	[amm2001_m] [nvarchar](20) NULL,
	[lkm] [int] NULL,
	[tietolahde] [nvarchar](10) NULL,
	[rivinumero] [int] NULL,
	[tmaak] [nvarchar](10) NULL,
	[amm2001_mnim] [nvarchar](10) NULL
) ON [PRIMARY]

GO


USE [ANTERO]