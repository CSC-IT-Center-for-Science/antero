USE [ANTERO]
GO

/****** Object:  Table [dw].[api_yamk_tutkinnot]    Script Date: 3.9.2020 16:55:40 ******/
DROP TABLE IF EXISTS [dw].[api_yamk_tutkinnot]
GO

/****** Object:  Table [dw].[api_yamk_tutkinnot]    Script Date: 3.9.2020 16:55:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dw].[api_yamk_tutkinnot](
	[Korkeakoulu] [nvarchar](255) NULL,
	[Tutkinnon suorittamisvuosi] [int] NULL,
	[Suorituskuukausi] [int] NULL,
	[Tutkinto] [nvarchar](200) NULL,
	[Tutkintokoodi] [varchar](6) NULL,
	[Tutkinnon laajuus op] [int] NULL,
	[Rahoituslahde] [varchar](150) NULL,
	[Tutkinnot lkm] [int] NULL,
	[Koulutusaste taso 1] [nvarchar](200) NULL,
	[Koulutusaste taso 2] [nvarchar](200) NULL,
	[Koulutusala taso 1] [nvarchar](200) NULL,
	[Koulutusala taso 2] [nvarchar](200) NULL,
	[Koulutusala taso 3] [nvarchar](200) NULL,
	[OKM ohjauksen ala] [nvarchar](200) NULL,
	[Rahoitusmallialat amk 2021-2024] [nvarchar](255) NULL,
	[defaultorder] [bigint] NULL
) ON [PRIMARY]

GO


