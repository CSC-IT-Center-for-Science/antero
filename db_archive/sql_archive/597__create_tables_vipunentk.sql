USE [VipunenTK]
GO

/****** Object:  Table [dbo].[d_aidinkieli_versio2]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_aidinkieli_versio2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_aidinkieli_versio2](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[aidinkieli_versio2_koodi] [nvarchar](2) NULL,
	[aidinkieli_versio2] [nvarchar](50) NULL,
	[aidinkieli_versio2_SV] [nvarchar](50) NULL,
	[aidinkieli_versio2_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_aidinkieli_versio2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_aidinkieli_versio3]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_aidinkieli_versio3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_aidinkieli_versio3](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[aidinkieli_versio3_koodi] [nvarchar](2) NULL,
	[aidinkieli_versio3] [nvarchar](50) NULL,
	[aidinkieli_versio3_SV] [nvarchar](50) NULL,
	[aidinkieli_versio3_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_aidinkieli_versio3] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_aikaisemmat_tutkinnot]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_aikaisemmat_tutkinnot]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_aikaisemmat_tutkinnot](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[aikaisemmat_tutkinnot_koodi] [nvarchar](2) NULL,
	[aikaisemmat_tutkinnot] [nvarchar](100) NULL,
	[aikaisemmat_tutkinnot_SV] [nvarchar](120) NULL,
	[aikaisemmat_tutkinnot_EN] [nvarchar](120) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_aikaisemmat_tutkinnot] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_aikaisempi_korkein_tutkinto]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_aikaisempi_korkein_tutkinto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_aikaisempi_korkein_tutkinto](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[aikaisempi_korkein_tutkinto_koodi] [nvarchar](2) NULL,
	[aikaisempi_korkein_tutkinto] [nvarchar](100) NULL,
	[aikaisempi_korkein_tutkinto_SV] [nvarchar](100) NULL,
	[aikaisempi_korkein_tutkinto_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_aikaisempi_korkein_tutkinto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_aikuisopiskelija]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_aikuisopiskelija]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_aikuisopiskelija](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[aikuisopiskelija_koodi] [nvarchar](10) NULL,
	[aikuisopiskelija] [nvarchar](250) NULL,
	[aikuisopiskelija_SV] [nvarchar](250) NULL,
	[aikuisopiskelija_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_aikuisopiskelija] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_aineisto]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_aineisto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_aineisto](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[aineisto_koodi] [nvarchar](2) NULL,
	[aineisto] [nvarchar](50) NULL,
	[aineisto_SV] [nvarchar](50) NULL,
	[aineisto_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_aineisto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_aineisto_OTV]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_aineisto_OTV]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_aineisto_OTV](
	[id] [int] NOT NULL,
	[aineisto_koodi] [nvarchar](8) NOT NULL,
	[tilastointivuosi] [nvarchar](4) NOT NULL,
	[alkaa] [datetime2](7) NOT NULL,
	[paattyy] [datetime2](7) NOT NULL,
	[aineisto] [nvarchar](150) NULL,
	[aineisto_SV] [nvarchar](150) NULL,
	[aineisto_EN] [nvarchar](150) NULL,
	[jarjestys] [smallint] NULL,
	[toisen_asteen_koulutus] [nchar](2) NULL,
	[kaikkien_asteiden_koulutus] [nchar](2) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_aineisto_OTV] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_alueluokitus]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_alueluokitus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_alueluokitus](
	[id] [int] NOT NULL,
	[alueluokitus_avain] [nvarchar](10) NOT NULL,
	[kunta_koodi] [nvarchar](3) NOT NULL,
	[liitoskunta_koodi] [nvarchar](3) NULL,
	[kunta] [nvarchar](255) NOT NULL,
	[kunta_SV] [nvarchar](255) NOT NULL,
	[kunta_EN] [nvarchar](255) NOT NULL,
	[maakunta_koodi] [nvarchar](2) NOT NULL,
	[maakunta] [nvarchar](255) NOT NULL,
	[maakunta_SV] [nvarchar](255) NOT NULL,
	[maakunta_EN] [nvarchar](255) NOT NULL,
	[avi_koodi] [nvarchar](2) NOT NULL,
	[avi] [nvarchar](255) NOT NULL,
	[avi_SV] [nvarchar](255) NOT NULL,
	[avi_EN] [nvarchar](255) NOT NULL,
	[ely_koodi] [nvarchar](2) NOT NULL,
	[ely] [nvarchar](255) NOT NULL,
	[ely_SV] [nvarchar](255) NOT NULL,
	[ely_EN] [nvarchar](255) NOT NULL,
	[seutukunta_koodi] [nvarchar](3) NOT NULL,
	[seutukunta] [nvarchar](255) NOT NULL,
	[seutukunta_SV] [nvarchar](255) NOT NULL,
	[seutukunta_EN] [nvarchar](255) NOT NULL,
	[suuralue_koodi] [nvarchar](2) NOT NULL,
	[suuralue] [nvarchar](255) NOT NULL,
	[suuralue_SV] [nvarchar](255) NOT NULL,
	[suuralue_EN] [nvarchar](255) NOT NULL,
	[kuntaryhma_koodi] [nvarchar](2) NOT NULL,
	[kuntaryhma] [nvarchar](255) NOT NULL,
	[kuntaryhma_SV] [nvarchar](255) NOT NULL,
	[kuntaryhma_EN] [nvarchar](255) NOT NULL,
	[laani_koodi] [nvarchar](2) NOT NULL,
	[laani] [nvarchar](255) NOT NULL,
	[laani_SV] [nvarchar](255) NOT NULL,
	[laani_EN] [nvarchar](255) NOT NULL,
	[tyovoima_elinkeinokeskus_koodi] [nvarchar](2) NOT NULL,
	[tyovoima_elinkeinokeskus] [nvarchar](255) NOT NULL,
	[tyovoima_elinkeinokeskus_SV] [nvarchar](255) NOT NULL,
	[tyovoima_elinkeinokeskus_EN] [nvarchar](255) NOT NULL,
	[kielisuhde_koodi] [nvarchar](2) NOT NULL,
	[kielisuhde] [nvarchar](255) NOT NULL,
	[kielisuhde_SV] [nvarchar](255) NOT NULL,
	[kielisuhde_EN] [nvarchar](255) NOT NULL,
	[mannersuomi_ahvenanmaa_koodi] [nvarchar](2) NOT NULL,
	[mannersuomi_ahvenanmaa] [nvarchar](255) NOT NULL,
	[mannersuomi_ahvenanmaa_SV] [nvarchar](255) NOT NULL,
	[mannersuomi_ahvenanmaa_EN] [nvarchar](255) NOT NULL,
	[SCD_alkaa] [datetime2](7) NULL,
	[SCD_paattyy] [datetime2](7) NULL,
	[jarjestys] [nvarchar](10) NULL,
	[jarjestys_maakunta] [nvarchar](10) NULL,
	[jarjestys_avi] [nvarchar](10) NULL,
	[jarjestys_ely] [nvarchar](10) NULL,
	[jarjestys_seutukunta] [nvarchar](10) NULL,
	[jarjestys_suuralue] [nvarchar](10) NULL,
	[jarjestys_kuntaryhma] [nvarchar](10) NULL,
	[jarjestys_laani] [nvarchar](10) NULL,
	[jarjestys_tyovoima_elinkeinokeskus] [nvarchar](10) NULL,
	[jarjestys_kielisuhde] [nvarchar](10) NULL,
	[jarjestys_mannersuomi_ahvenanmaa] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_alueluokitus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_alueluokitus_historia]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_alueluokitus_historia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_alueluokitus_historia](
	[id] [int] NOT NULL,
	[luotu] [date] NOT NULL,
	[alkaa] [date] NOT NULL,
	[paattyy] [date] NOT NULL,
	[alueluokitus_avain] [nvarchar](10) NOT NULL,
	[kunta_koodi] [nvarchar](3) NOT NULL,
	[viimeisin_tilv] [nvarchar](4) NOT NULL,
	[liitoskunta_koodi] [nvarchar](3) NULL,
	[kunta] [nvarchar](255) NOT NULL,
	[kunta_SV] [nvarchar](255) NOT NULL,
	[kunta_EN] [nvarchar](255) NOT NULL,
	[maakunta_koodi] [nvarchar](2) NOT NULL,
	[maakunta] [nvarchar](255) NOT NULL,
	[maakunta_SV] [nvarchar](255) NOT NULL,
	[maakunta_EN] [nvarchar](255) NOT NULL,
	[avi_koodi] [nvarchar](2) NOT NULL,
	[avi] [nvarchar](255) NOT NULL,
	[avi_SV] [nvarchar](255) NOT NULL,
	[avi_EN] [nvarchar](255) NOT NULL,
	[ely_koodi] [nvarchar](2) NOT NULL,
	[ely] [nvarchar](255) NOT NULL,
	[ely_SV] [nvarchar](255) NOT NULL,
	[ely_EN] [nvarchar](255) NOT NULL,
	[seutukunta_koodi] [nvarchar](3) NOT NULL,
	[seutukunta] [nvarchar](255) NOT NULL,
	[seutukunta_SV] [nvarchar](255) NOT NULL,
	[seutukunta_EN] [nvarchar](255) NOT NULL,
	[suuralue_koodi] [nvarchar](2) NOT NULL,
	[suuralue] [nvarchar](255) NOT NULL,
	[suuralue_SV] [nvarchar](255) NOT NULL,
	[suuralue_EN] [nvarchar](255) NOT NULL,
	[kuntaryhma_koodi] [nvarchar](2) NOT NULL,
	[kuntaryhma] [nvarchar](255) NOT NULL,
	[kuntaryhma_SV] [nvarchar](255) NOT NULL,
	[kuntaryhma_EN] [nvarchar](255) NOT NULL,
	[laani_koodi] [nvarchar](2) NOT NULL,
	[laani] [nvarchar](255) NOT NULL,
	[laani_SV] [nvarchar](255) NOT NULL,
	[laani_EN] [nvarchar](255) NOT NULL,
	[tyovoima_elinkeinokeskus_koodi] [nvarchar](2) NOT NULL,
	[tyovoima_elinkeinokeskus] [nvarchar](255) NOT NULL,
	[tyovoima_elinkeinokeskus_SV] [nvarchar](255) NOT NULL,
	[tyovoima_elinkeinokeskus_EN] [nvarchar](255) NOT NULL,
	[kielisuhde_koodi] [nvarchar](2) NOT NULL,
	[kielisuhde] [nvarchar](255) NOT NULL,
	[kielisuhde_SV] [nvarchar](255) NOT NULL,
	[kielisuhde_EN] [nvarchar](255) NOT NULL,
	[mannersuomi_ahvenanmaa_koodi] [nvarchar](2) NOT NULL,
	[mannersuomi_ahvenanmaa] [nvarchar](255) NOT NULL,
	[mannersuomi_ahvenanmaa_SV] [nvarchar](255) NOT NULL,
	[mannersuomi_ahvenanmaa_EN] [nvarchar](255) NOT NULL,
	[SCD_alkaa] [datetime2](7) NULL,
	[SCD_paattyy] [datetime2](7) NULL,
	[jarjestys] [nvarchar](10) NULL,
	[jarjestys_maakunta] [nvarchar](10) NULL,
	[jarjestys_avi] [nvarchar](10) NULL,
	[jarjestys_ely] [nvarchar](10) NULL,
	[jarjestys_seutukunta] [nvarchar](10) NULL,
	[jarjestys_suuralue] [nvarchar](10) NULL,
	[jarjestys_kuntaryhma] [nvarchar](10) NULL,
	[jarjestys_laani] [nvarchar](10) NULL,
	[jarjestys_tyovoima_elinkeinokeskus] [nvarchar](10) NULL,
	[jarjestys_kielisuhde] [nvarchar](10) NULL,
	[jarjestys_mannersuomi_ahvenanmaa] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_alueluokitus_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_alueluokitus_historia_27032014]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_alueluokitus_historia_27032014]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_alueluokitus_historia_27032014](
	[id] [int] NOT NULL,
	[luotu] [date] NOT NULL,
	[alkaa] [date] NOT NULL,
	[paattyy] [date] NOT NULL,
	[alueluokitus_avain] [nvarchar](10) NOT NULL,
	[kunta_koodi] [nvarchar](3) NOT NULL,
	[viimeisin_tilv] [nvarchar](4) NOT NULL,
	[liitoskunta_koodi] [nvarchar](3) NULL,
	[kunta] [nvarchar](255) NOT NULL,
	[kunta_SV] [nvarchar](255) NOT NULL,
	[kunta_EN] [nvarchar](255) NOT NULL,
	[maakunta_koodi] [nvarchar](2) NOT NULL,
	[maakunta] [nvarchar](255) NOT NULL,
	[maakunta_SV] [nvarchar](255) NOT NULL,
	[maakunta_EN] [nvarchar](255) NOT NULL,
	[avi_koodi] [nvarchar](2) NOT NULL,
	[avi] [nvarchar](255) NOT NULL,
	[avi_SV] [nvarchar](255) NOT NULL,
	[avi_EN] [nvarchar](255) NOT NULL,
	[ely_koodi] [nvarchar](2) NOT NULL,
	[ely] [nvarchar](255) NOT NULL,
	[ely_SV] [nvarchar](255) NOT NULL,
	[ely_EN] [nvarchar](255) NOT NULL,
	[seutukunta_koodi] [nvarchar](3) NOT NULL,
	[seutukunta] [nvarchar](255) NOT NULL,
	[seutukunta_SV] [nvarchar](255) NOT NULL,
	[seutukunta_EN] [nvarchar](255) NOT NULL,
	[suuralue_koodi] [nvarchar](2) NOT NULL,
	[suuralue] [nvarchar](255) NOT NULL,
	[suuralue_SV] [nvarchar](255) NOT NULL,
	[suuralue_EN] [nvarchar](255) NOT NULL,
	[kuntaryhma_koodi] [nvarchar](2) NOT NULL,
	[kuntaryhma] [nvarchar](255) NOT NULL,
	[kuntaryhma_SV] [nvarchar](255) NOT NULL,
	[kuntaryhma_EN] [nvarchar](255) NOT NULL,
	[laani_koodi] [nvarchar](2) NOT NULL,
	[laani] [nvarchar](255) NOT NULL,
	[laani_SV] [nvarchar](255) NOT NULL,
	[laani_EN] [nvarchar](255) NOT NULL,
	[tyovoima_elinkeinokeskus_koodi] [nvarchar](2) NOT NULL,
	[tyovoima_elinkeinokeskus] [nvarchar](255) NOT NULL,
	[tyovoima_elinkeinokeskus_SV] [nvarchar](255) NOT NULL,
	[tyovoima_elinkeinokeskus_EN] [nvarchar](255) NOT NULL,
	[kielisuhde_koodi] [nvarchar](2) NOT NULL,
	[kielisuhde] [nvarchar](255) NOT NULL,
	[kielisuhde_SV] [nvarchar](255) NOT NULL,
	[kielisuhde_EN] [nvarchar](255) NOT NULL,
	[mannersuomi_ahvenanmaa_koodi] [nvarchar](2) NOT NULL,
	[mannersuomi_ahvenanmaa] [nvarchar](255) NOT NULL,
	[mannersuomi_ahvenanmaa_SV] [nvarchar](255) NOT NULL,
	[mannersuomi_ahvenanmaa_EN] [nvarchar](255) NOT NULL,
	[SCD_alkaa] [datetime2](7) NULL,
	[SCD_paattyy] [datetime2](7) NULL,
	[jarjestys] [smallint] NULL,
	[jarjestys_maakunta] [smallint] NULL,
	[jarjestys_avi] [smallint] NULL,
	[jarjestys_ely] [smallint] NULL,
	[jarjestys_seutukunta] [smallint] NULL,
	[jarjestys_suuralue] [smallint] NULL,
	[jarjestys_kuntaryhma] [smallint] NULL,
	[jarjestys_laani] [smallint] NULL,
	[jarjestys_tyovoima_elinkeinokeskus] [smallint] NULL,
	[jarjestys_kielisuhde] [smallint] NULL,
	[jarjestys_mannersuomi_ahvenanmaa] [smallint] NULL,
	[virhetilanne] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_alueluokitus_historia_28032014]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_alueluokitus_historia_28032014]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_alueluokitus_historia_28032014](
	[id] [int] NOT NULL,
	[luotu] [date] NOT NULL,
	[alkaa] [date] NOT NULL,
	[paattyy] [date] NOT NULL,
	[alueluokitus_avain] [nvarchar](10) NOT NULL,
	[kunta_koodi] [nvarchar](3) NOT NULL,
	[viimeisin_tilv] [nvarchar](4) NOT NULL,
	[liitoskunta_koodi] [nvarchar](3) NULL,
	[kunta] [nvarchar](255) NOT NULL,
	[kunta_SV] [nvarchar](255) NOT NULL,
	[kunta_EN] [nvarchar](255) NOT NULL,
	[maakunta_koodi] [nvarchar](2) NOT NULL,
	[maakunta] [nvarchar](255) NOT NULL,
	[maakunta_SV] [nvarchar](255) NOT NULL,
	[maakunta_EN] [nvarchar](255) NOT NULL,
	[avi_koodi] [nvarchar](2) NOT NULL,
	[avi] [nvarchar](255) NOT NULL,
	[avi_SV] [nvarchar](255) NOT NULL,
	[avi_EN] [nvarchar](255) NOT NULL,
	[ely_koodi] [nvarchar](2) NOT NULL,
	[ely] [nvarchar](255) NOT NULL,
	[ely_SV] [nvarchar](255) NOT NULL,
	[ely_EN] [nvarchar](255) NOT NULL,
	[seutukunta_koodi] [nvarchar](3) NOT NULL,
	[seutukunta] [nvarchar](255) NOT NULL,
	[seutukunta_SV] [nvarchar](255) NOT NULL,
	[seutukunta_EN] [nvarchar](255) NOT NULL,
	[suuralue_koodi] [nvarchar](2) NOT NULL,
	[suuralue] [nvarchar](255) NOT NULL,
	[suuralue_SV] [nvarchar](255) NOT NULL,
	[suuralue_EN] [nvarchar](255) NOT NULL,
	[kuntaryhma_koodi] [nvarchar](2) NOT NULL,
	[kuntaryhma] [nvarchar](255) NOT NULL,
	[kuntaryhma_SV] [nvarchar](255) NOT NULL,
	[kuntaryhma_EN] [nvarchar](255) NOT NULL,
	[laani_koodi] [nvarchar](2) NOT NULL,
	[laani] [nvarchar](255) NOT NULL,
	[laani_SV] [nvarchar](255) NOT NULL,
	[laani_EN] [nvarchar](255) NOT NULL,
	[tyovoima_elinkeinokeskus_koodi] [nvarchar](2) NOT NULL,
	[tyovoima_elinkeinokeskus] [nvarchar](255) NOT NULL,
	[tyovoima_elinkeinokeskus_SV] [nvarchar](255) NOT NULL,
	[tyovoima_elinkeinokeskus_EN] [nvarchar](255) NOT NULL,
	[kielisuhde_koodi] [nvarchar](2) NOT NULL,
	[kielisuhde] [nvarchar](255) NOT NULL,
	[kielisuhde_SV] [nvarchar](255) NOT NULL,
	[kielisuhde_EN] [nvarchar](255) NOT NULL,
	[mannersuomi_ahvenanmaa_koodi] [nvarchar](2) NOT NULL,
	[mannersuomi_ahvenanmaa] [nvarchar](255) NOT NULL,
	[mannersuomi_ahvenanmaa_SV] [nvarchar](255) NOT NULL,
	[mannersuomi_ahvenanmaa_EN] [nvarchar](255) NOT NULL,
	[SCD_alkaa] [datetime2](7) NULL,
	[SCD_paattyy] [datetime2](7) NULL,
	[jarjestys] [smallint] NULL,
	[jarjestys_maakunta] [smallint] NULL,
	[jarjestys_avi] [smallint] NULL,
	[jarjestys_ely] [smallint] NULL,
	[jarjestys_seutukunta] [smallint] NULL,
	[jarjestys_suuralue] [smallint] NULL,
	[jarjestys_kuntaryhma] [smallint] NULL,
	[jarjestys_laani] [smallint] NULL,
	[jarjestys_tyovoima_elinkeinokeskus] [smallint] NULL,
	[jarjestys_kielisuhde] [smallint] NULL,
	[jarjestys_mannersuomi_ahvenanmaa] [smallint] NULL,
	[virhetilanne] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_alueluokitus_nykytila_27032014]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_alueluokitus_nykytila_27032014]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_alueluokitus_nykytila_27032014](
	[id] [int] NOT NULL,
	[alueluokitus_avain] [nvarchar](10) NOT NULL,
	[kunta_koodi] [nvarchar](3) NOT NULL,
	[liitoskunta_koodi] [nvarchar](3) NULL,
	[kunta] [nvarchar](255) NOT NULL,
	[kunta_SV] [nvarchar](255) NOT NULL,
	[kunta_EN] [nvarchar](255) NOT NULL,
	[maakunta_koodi] [nvarchar](2) NOT NULL,
	[maakunta] [nvarchar](255) NOT NULL,
	[maakunta_SV] [nvarchar](255) NOT NULL,
	[maakunta_EN] [nvarchar](255) NOT NULL,
	[avi_koodi] [nvarchar](2) NOT NULL,
	[avi] [nvarchar](255) NOT NULL,
	[avi_SV] [nvarchar](255) NOT NULL,
	[avi_EN] [nvarchar](255) NOT NULL,
	[ely_koodi] [nvarchar](2) NOT NULL,
	[ely] [nvarchar](255) NOT NULL,
	[ely_SV] [nvarchar](255) NOT NULL,
	[ely_EN] [nvarchar](255) NOT NULL,
	[seutukunta_koodi] [nvarchar](3) NOT NULL,
	[seutukunta] [nvarchar](255) NOT NULL,
	[seutukunta_SV] [nvarchar](255) NOT NULL,
	[seutukunta_EN] [nvarchar](255) NOT NULL,
	[suuralue_koodi] [nvarchar](2) NOT NULL,
	[suuralue] [nvarchar](255) NOT NULL,
	[suuralue_SV] [nvarchar](255) NOT NULL,
	[suuralue_EN] [nvarchar](255) NOT NULL,
	[kuntaryhma_koodi] [nvarchar](2) NOT NULL,
	[kuntaryhma] [nvarchar](255) NOT NULL,
	[kuntaryhma_SV] [nvarchar](255) NOT NULL,
	[kuntaryhma_EN] [nvarchar](255) NOT NULL,
	[laani_koodi] [nvarchar](2) NOT NULL,
	[laani] [nvarchar](255) NOT NULL,
	[laani_SV] [nvarchar](255) NOT NULL,
	[laani_EN] [nvarchar](255) NOT NULL,
	[tyovoima_elinkeinokeskus_koodi] [nvarchar](2) NOT NULL,
	[tyovoima_elinkeinokeskus] [nvarchar](255) NOT NULL,
	[tyovoima_elinkeinokeskus_SV] [nvarchar](255) NOT NULL,
	[tyovoima_elinkeinokeskus_EN] [nvarchar](255) NOT NULL,
	[kielisuhde_koodi] [nvarchar](2) NOT NULL,
	[kielisuhde] [nvarchar](255) NOT NULL,
	[kielisuhde_SV] [nvarchar](255) NOT NULL,
	[kielisuhde_EN] [nvarchar](255) NOT NULL,
	[mannersuomi_ahvenanmaa_koodi] [nvarchar](2) NOT NULL,
	[mannersuomi_ahvenanmaa] [nvarchar](255) NOT NULL,
	[mannersuomi_ahvenanmaa_SV] [nvarchar](255) NOT NULL,
	[mannersuomi_ahvenanmaa_EN] [nvarchar](255) NOT NULL,
	[SCD_alkaa] [datetime2](7) NULL,
	[SCD_paattyy] [datetime2](7) NULL,
	[jarjestys] [smallint] NULL,
	[jarjestys_maakunta] [smallint] NULL,
	[jarjestys_avi] [smallint] NULL,
	[jarjestys_ely] [smallint] NULL,
	[jarjestys_seutukunta] [smallint] NULL,
	[jarjestys_suuralue] [smallint] NULL,
	[jarjestys_kuntaryhma] [smallint] NULL,
	[jarjestys_laani] [smallint] NULL,
	[jarjestys_tyovoima_elinkeinokeskus] [smallint] NULL,
	[jarjestys_kielisuhde] [smallint] NULL,
	[jarjestys_mannersuomi_ahvenanmaa] [smallint] NULL,
	[virhetilanne] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_ammatillinen_koulutus_luokittelu]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_ammatillinen_koulutus_luokittelu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_ammatillinen_koulutus_luokittelu](
	[id] [int] NOT NULL,
	[ammatillisen_koulutuksen_luokittelu_avain] [nvarchar](10) NOT NULL,
	[oppisopimuskoulutus_koodi] [nvarchar](2) NOT NULL,
	[ammatillisen_koulutuksen_koulutuslaji_koodi] [nvarchar](2) NOT NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus_koodi] [nvarchar](2) NOT NULL,
	[ammatillisen_koulutuksen_luokittelu_4_7_4_8_avain] [nvarchar](10) NOT NULL,
	[ammatillisen_koulutuksen_luokittelu_4_7_4_8] [nvarchar](100) NULL,
	[ammatillisen_koulutuksen_luokittelu_4_7_4_8_SV] [nvarchar](100) NULL,
	[ammatillisen_koulutuksen_luokittelu_4_7_4_8_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_ammatillinen_koulutus_luokittelu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_ammatillinen_peruskoulutus_lisakoulutus]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_ammatillinen_peruskoulutus_lisakoulutus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_ammatillinen_peruskoulutus_lisakoulutus](
	[id] [int] NOT NULL,
	[alkaa] [date] NOT NULL,
	[paattyy] [date] NOT NULL,
	[ammatillinen_peruskoulutus_lisakoulutus_koodi] [nvarchar](2) NOT NULL,
	[ammatillinen_peruskoulutus_lisakoulutus] [nvarchar](50) NULL,
	[ammatillinen_peruskoulutus_lisakoulutus_SV] [nvarchar](50) NULL,
	[ammatillinen_peruskoulutus_lisakoulutus_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_ammatillinen_peruskoulutus_lisakoulutus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_ammatillisen_koulutuksen_koulutuslaji]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_ammatillisen_koulutuksen_koulutuslaji]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_ammatillisen_koulutuksen_koulutuslaji](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[ammatillisen_koulutuksen_koulutuslaji_koodi] [nvarchar](2) NULL,
	[ammatillisen_koulutuksen_koulutuslaji] [nvarchar](50) NULL,
	[ammatillisen_koulutuksen_koulutuslaji_SV] [nvarchar](50) NULL,
	[ammatillisen_koulutuksen_koulutuslaji_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_ammatillisen_koulutuksen_koulutuslaji] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_ammatillisen_koulutuksen_koulutuslaji_tutkintorekisterissa]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_ammatillisen_koulutuksen_koulutuslaji_tutkintorekisterissa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_ammatillisen_koulutuksen_koulutuslaji_tutkintorekisterissa](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[ammatillisen_koulutuksen_koulutuslaji_tutkintorekisterissa_koodi] [nvarchar](2) NULL,
	[ammatillisen_koulutuksen_koulutuslaji_tutkintorekisterissa] [nvarchar](300) NULL,
	[ammatillisen_koulutuksen_koulutuslaji_tutkintorekisterissa_SV] [nvarchar](300) NULL,
	[ammatillisen_koulutuksen_koulutuslaji_tutkintorekisterissa_EN] [nvarchar](300) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_ammatillisen_koulutuksen_koulutuslaji_tutkintorekisterissa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_ammattiasema]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_ammattiasema]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_ammattiasema](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[ammattiasema_koodi] [nvarchar](10) NULL,
	[ammattiasema] [nvarchar](50) NULL,
	[ammattiasema_SV] [nvarchar](50) NULL,
	[ammattiasema_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_ammattiasema] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_ammattiluokitus_2001]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_ammattiluokitus_2001]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_ammattiluokitus_2001](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[ammattiluokitus_2001_avain] [nvarchar](10) NULL,
	[ammattiluokitus_2001_koodi] [nvarchar](5) NULL,
	[ammattiluokitus_2001] [nvarchar](100) NULL,
	[ammattiluokitus_2001_SV] [nvarchar](100) NULL,
	[ammattiluokitus_2001_EN] [nvarchar](100) NULL,
	[taso] [nvarchar](2) NULL,
	[jarjestys] [smallint] NULL,
	[jarjestys_taso] [smallint] NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_ammattiluokitus_2001] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_ammattiluokitus_2010]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_ammattiluokitus_2010]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_ammattiluokitus_2010](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[ammattiluokitus_2010_avain] [nvarchar](10) NULL,
	[ammattiluokitus_2010] [nvarchar](150) NULL,
	[ammattiluokitus_2010_5_taso_koodi] [nvarchar](10) NULL,
	[ammattiluokitus_2010_5_taso] [nvarchar](150) NULL,
	[ammattiluokitus_2010_5_taso_SV] [nvarchar](150) NULL,
	[ammattiluokitus_2010_5_taso_EN] [nvarchar](150) NULL,
	[ammattiluokitus_2010_4_taso_koodi] [nvarchar](10) NULL,
	[ammattiluokitus_2010_4_taso] [nvarchar](150) NULL,
	[ammattiluokitus_2010_4_taso_SV] [nvarchar](150) NULL,
	[ammattiluokitus_2010_4_taso_EN] [nvarchar](150) NULL,
	[ammattiluokitus_2010_3_taso_koodi] [nvarchar](10) NULL,
	[ammattiluokitus_2010_3_taso] [nvarchar](150) NULL,
	[ammattiluokitus_2010_3_taso_SV] [nvarchar](150) NULL,
	[ammattiluokitus_2010_3_taso_EN] [nvarchar](150) NULL,
	[ammattiluokitus_2010_2_taso_koodi] [nvarchar](10) NULL,
	[ammattiluokitus_2010_2_taso] [nvarchar](150) NULL,
	[ammattiluokitus_2010_2_taso_SV] [nvarchar](150) NULL,
	[ammattiluokitus_2010_2_taso_EN] [nvarchar](150) NULL,
	[ammattiluokitus_2010_paataso_koodi] [nvarchar](10) NULL,
	[ammattiluokitus_2010_paataso] [nvarchar](150) NULL,
	[ammattiluokitus_2010_paataso_SV] [nvarchar](150) NULL,
	[ammattiluokitus_2010_paataso_EN] [nvarchar](150) NULL,
	[taso] [nvarchar](2) NULL,
	[jarjestys_ammattiluokitus_2010_avain] [nvarchar](10) NULL,
	[jarjestys_ammattiluokitus_2010_taso5] [nvarchar](10) NULL,
	[jarjestys_ammattiluokitus_2010_taso4] [nvarchar](10) NULL,
	[jarjestys_ammattiluokitus_2010_taso3] [nvarchar](10) NULL,
	[jarjestys_ammattiluokitus_2010_taso2] [nvarchar](10) NULL,
	[jarjestys_ammattiluokitus_2010_paataso] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_ammattiluokitus2010] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_asuinkunta_sama_vai_eri_kuin_aiemmin]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_asuinkunta_sama_vai_eri_kuin_aiemmin]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_asuinkunta_sama_vai_eri_kuin_aiemmin](
	[id] [int] NOT NULL,
	[asuinkunta_sama_vai_eri_kuin_aiemmin_koodi] [nvarchar](2) NULL,
	[asuinkunta_sama_vai_eri_kuin_aiemmin] [nvarchar](100) NULL,
	[asuinkunta_sama_vai_eri_kuin_aiemmin_SV] [nvarchar](100) NULL,
	[asuinkunta_sama_vai_eri_kuin_aiemmin_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_asuinkunta_sama_vai_eri_kuin_aiemmin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_asuinmaakunta_sama_kuin_tyopaikan]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_asuinmaakunta_sama_kuin_tyopaikan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_asuinmaakunta_sama_kuin_tyopaikan](
	[id] [int] NOT NULL,
	[asuinmaakunta_sama_kuin_tyopaikan_avain] [nvarchar](2) NULL,
	[asuinmaakunta_sama_kuin_tyopaikan] [nvarchar](255) NULL,
	[asuinmaakunta_sama_kuin_tyopaikan_SV] [nvarchar](255) NULL,
	[asuinmaakunta_sama_kuin_tyopaikan_EN] [nvarchar](255) NULL,
	[jarjestys] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_avoinvayla]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_avoinvayla]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_avoinvayla](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[avoinvayla_koodi] [nvarchar](2) NULL,
	[avoinvayla] [nvarchar](50) NULL,
	[avoinvayla_SV] [nvarchar](50) NULL,
	[avoinvayla_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_avoinvayla] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_edellisen_vuoden_opiskelu]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_edellisen_vuoden_opiskelu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_edellisen_vuoden_opiskelu](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[edellisen_vuoden_opiskelu_avain] [nvarchar](10) NULL,
	[edellisen_vuoden_opiskelu_koulutus] [nvarchar](100) NULL,
	[edellisen_vuoden_opiskelu_koulutus_SV] [nvarchar](100) NULL,
	[edellisen_vuoden_opiskelu_koulutus_EN] [nvarchar](100) NULL,
	[edellisen_vuoden_opiskelu_tarkennus] [nvarchar](100) NULL,
	[edellisen_vuoden_opiskelu_tarkennus_SV] [nvarchar](100) NULL,
	[edellisen_vuoden_opiskelu_tarkennus_EN] [nvarchar](100) NULL,
	[jarjestys_koulutus] [nvarchar](10) NULL,
	[jarjestys_tarkennus] [nvarchar](10) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_edellisen_vuoden_opiskelu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_edeltavan_vuoden_asuinpaikka]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_edeltavan_vuoden_asuinpaikka]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_edeltavan_vuoden_asuinpaikka](
	[id] [int] NOT NULL,
	[edeltavan_vuoden_asuinpaikka_koodi] [nvarchar](2) NULL,
	[edeltavan_vuoden_asuinpaikka] [nvarchar](30) NULL,
	[edeltavan_vuoden_asuinpaikka_SV] [nvarchar](30) NULL,
	[edeltavan_vuoden_asuinpaikka_EN] [nvarchar](30) NULL,
	[jarjestys] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_edeltavan_vuoden_asuinpaikka] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_elakkeelle_siirtynyt_tai_kuollut]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_elakkeelle_siirtynyt_tai_kuollut]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_elakkeelle_siirtynyt_tai_kuollut](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[elakkeelle_siirtynyt_tai_kuollut_koodi] [nvarchar](10) NULL,
	[elakkeelle_siirtynyt_tai_kuollut_ryhma] [nvarchar](250) NULL,
	[elakkeelle_siirtynyt_tai_kuollut_ryhma_SV] [nvarchar](250) NULL,
	[elakkeelle_siirtynyt_tai_kuollut_ryhma_EN] [nvarchar](250) NULL,
	[elakkeelle_siirtynyt_tai_kuollut] [nvarchar](250) NULL,
	[elakkeelle_siirtynyt_tai_kuollut_SV] [nvarchar](250) NULL,
	[elakkeelle_siirtynyt_tai_kuollut_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_elakkeelle_siirtynyt_tai_kuollut] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_ensisijainen_opintooikeus]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_ensisijainen_opintooikeus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_ensisijainen_opintooikeus](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[ensisijainen_opintooikeus_koodi] [nvarchar](2) NULL,
	[ensisijainen_opintooikeus] [nvarchar](50) NULL,
	[ensisijainen_opintooikeus_SV] [nvarchar](100) NULL,
	[ensisijainen_opintooikeus_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_ensisijainen_opintooikeus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_erityisopetuksen_peruste]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_erityisopetuksen_peruste]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_erityisopetuksen_peruste](
	[id] [int] NOT NULL,
	[erityisopetuksen_peruste_avain] [nvarchar](10) NULL,
	[erityisopetuksen_peruste] [nvarchar](250) NULL,
	[erityisopetuksen_peruste_SV] [nvarchar](250) NULL,
	[erityisopetuksen_peruste_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_erityisopetuksen_peruste] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_erityisoppilaan_opetusryhma]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_erityisoppilaan_opetusryhma]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_erityisoppilaan_opetusryhma](
	[id] [int] NOT NULL,
	[erityisoppilaan_opetusryhma_avain] [nvarchar](10) NULL,
	[erityisoppilaan_opetusryhma] [nvarchar](250) NULL,
	[erityisoppilaan_opetusryhma_SV] [nvarchar](250) NULL,
	[erityisoppilaan_opetusryhma_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_erityisoppilaan_opetusryhma] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_eu_etamaat]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_eu_etamaat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_eu_etamaat](
	[id] [int] NOT NULL,
	[eu_etamaat_avain] [nvarchar](10) NULL,
	[eu_etamaat] [nvarchar](100) NULL,
	[eu_etamaat_SV] [nvarchar](100) NULL,
	[eu_etamaat_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](10) NULL,
 CONSTRAINT [PK_d_eu_etamaat] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_hakukohde]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_hakukohde]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_hakukohde](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[hakukohde_avain] [nvarchar](10) NULL,
	[hakukohde] [nvarchar](250) NULL,
	[hakukohde_SV] [nvarchar](250) NULL,
	[hakukohde_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_hakukohde] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_hakukohde_erillisvalinta]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_hakukohde_erillisvalinta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_hakukohde_erillisvalinta](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[hakukohde_erillisvalinta_avain] [nvarchar](10) NULL,
	[hakukohde_erillisvalinta] [nvarchar](250) NULL,
	[hakukohde_erillisvalinta_SV] [nvarchar](250) NULL,
	[hakukohde_erillisvalinta_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_hakukohde_erillisvalinta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_hakukohteen_prioriteetti]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_hakukohteen_prioriteetti]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_hakukohteen_prioriteetti](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[hakukohteen_prioriteetti_avain] [nvarchar](10) NULL,
	[hakukohteen_prioriteetti] [nvarchar](250) NULL,
	[hakukohteen_prioriteetti_SV] [nvarchar](250) NULL,
	[hakukohteen_prioriteetti_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_hakukohteen_prioriteetti] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_hakukohteen_tulos]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_hakukohteen_tulos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_hakukohteen_tulos](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[hakukohde_hyvaksytty_koodi] [nvarchar](10) NULL,
	[hakukohde_hyvaksytty] [nvarchar](50) NULL,
	[hakukohde_hyvaksytty_SV] [nvarchar](50) NULL,
	[hakukohde_hyvaksytty_EN] [nvarchar](50) NULL,
	[jarjestys_hyvaksytty] [nvarchar](10) NULL,
	[hakukohde_vastaanotettu_koodi] [nvarchar](10) NULL,
	[hakukohde_vastaanotettu] [nvarchar](50) NULL,
	[hakukohde_vastaanotettu_SV] [nvarchar](50) NULL,
	[hakukohde_vastaanotettu_EN] [nvarchar](50) NULL,
	[jarjestys_vastaanotettu] [nvarchar](10) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_dhakukohteen_tulos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_hakukohteen_tutkinnon_taso]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_hakukohteen_tutkinnon_taso]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_hakukohteen_tutkinnon_taso](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[hakukohde_tutkinnon_taso_koodi] [nvarchar](10) NULL,
	[hakukohde_tutkinnon_taso] [nvarchar](100) NULL,
	[hakukohde_tutkinnon_taso_SV] [nvarchar](100) NULL,
	[hakukohde_tutkinnon_taso_EN] [nvarchar](100) NULL,
	[jarjestys_hakukohde_tutkinnon_taso] [nvarchar](10) NULL,
	[hakukohde_tutkinnon_taso_tarkennus_koodi] [nvarchar](10) NULL,
	[hakukohde_tutkinnon_taso_tarkennus] [nvarchar](100) NULL,
	[hakukohde_tutkinnon_taso_tarkennus_SV] [nvarchar](100) NULL,
	[hakukohde_tutkinnon_taso_tarkennus_EN] [nvarchar](100) NULL,
	[jarjestys_hakukohde_tutkinnon_taso_tarkennus] [nvarchar](10) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_hakukohteen_tutkinnon_taso] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_hallinnonala]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_hallinnonala]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_hallinnonala](
	[id] [int] NOT NULL,
	[alkaa] [date] NOT NULL,
	[paattyy] [date] NOT NULL,
	[hallinnonala_koodi] [nvarchar](2) NOT NULL,
	[hallinnonala] [nvarchar](200) NULL,
	[hallinnonala_SV] [nvarchar](200) NULL,
	[hallinnonala_EN] [nvarchar](200) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_hallinnonala] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_hallinnonala2]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_hallinnonala2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_hallinnonala2](
	[id] [int] NOT NULL,
	[alkaa] [date] NOT NULL,
	[paattyy] [date] NOT NULL,
	[hallinnonala_koodi] [nvarchar](2) NOT NULL,
	[hallinnonala] [nvarchar](200) NULL,
	[hallinnonala_SV] [nvarchar](200) NULL,
	[hallinnonala_EN] [nvarchar](200) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_hallinnonala2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_hetu_ok]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_hetu_ok]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_hetu_ok](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[hetu_ok_avain] [nvarchar](10) NULL,
	[hetu_ok] [nvarchar](50) NULL,
	[hetu_ok_SV] [nvarchar](50) NULL,
	[hetu_ok_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](10) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_hetu_ok] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_ika]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_ika]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_ika](
	[id] [int] NOT NULL,
	[ika_avain] [nvarchar](10) NOT NULL,
	[ika_int] [int] NULL,
	[ika] [nvarchar](50) NULL,
	[ika_SV] [nvarchar](50) NULL,
	[ika_EN] [nvarchar](50) NULL,
	[ika5v_int] [int] NULL,
	[ika5v] [nvarchar](50) NULL,
	[ika5v_SV] [nvarchar](50) NULL,
	[ika5v_EN] [nvarchar](50) NULL,
	[jarjestys_ika] [nvarchar](50) NULL,
	[jarjestys_ika5v] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_ika] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_jatkaa_opiskelua_alkuperaisella_koulutuksen_jarjestajalla]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_jatkaa_opiskelua_alkuperaisella_koulutuksen_jarjestajalla]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_jatkaa_opiskelua_alkuperaisella_koulutuksen_jarjestajalla](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[jatkaa_opiskelua_alkuperaisella_koulutuksen_jarjestajalla_koodi] [nchar](2) NULL,
	[jatkaa_opiskelua_alkuperaisella_koulutuksen_jarjestajalla] [nvarchar](100) NULL,
	[jatkaa_opiskelua_alkuperaisella_koulutuksen_jarjestajalla_SV] [nvarchar](100) NULL,
	[jatkaa_opiskelua_alkuperaisella_koulutuksen_jarjestajalla_EN] [nvarchar](100) NULL,
	[jarjestys_4e] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_jatkaa_opiskelua_alkuperaisella_koulutuksen_jarjestajalla] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_jatkaa_opiskelua_alkuperaisella_koulutusalalla_2002]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_jatkaa_opiskelua_alkuperaisella_koulutusalalla_2002]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_jatkaa_opiskelua_alkuperaisella_koulutusalalla_2002](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[jatkaa_opiskelua_alkuperaisella_koulutusalalla_2002_koodi] [nchar](2) NULL,
	[jatkaa_opiskelua_alkuperaisella_koulutusalalla_2002] [nvarchar](100) NULL,
	[jatkaa_opiskelua_alkuperaisella_koulutusalalla_2002_SV] [nvarchar](100) NULL,
	[jatkaa_opiskelua_alkuperaisella_koulutusalalla_2002_EN] [nvarchar](100) NULL,
	[jarjestys_2e] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_jatkaa_opiskelua_alkuperaisella_koulutusalalla_2002] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_jatkaa_opiskelua_alkuperaisella_koulutusasteella_2002]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_jatkaa_opiskelua_alkuperaisella_koulutusasteella_2002]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_jatkaa_opiskelua_alkuperaisella_koulutusasteella_2002](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[jatkaa_opiskelua_alkuperaisella_koulutusasteella_2002_koodi] [nchar](2) NULL,
	[jatkaa_opiskelua_alkuperaisella_koulutusasteella_2002] [nvarchar](100) NULL,
	[jatkaa_opiskelua_alkuperaisella_koulutusasteella_2002_SV] [nvarchar](100) NULL,
	[jatkaa_opiskelua_alkuperaisella_koulutusasteella_2002_EN] [nvarchar](100) NULL,
	[jarjestys_1e] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_jatkaa_opiskelua_alkuperaisella_koulutusasteella_2002] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_jatkaa_opiskelua_alkuperaisella_koulutussektorilla]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_jatkaa_opiskelua_alkuperaisella_koulutussektorilla]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_jatkaa_opiskelua_alkuperaisella_koulutussektorilla](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[jatkaa_opiskelua_alkuperaisella_koulutussektorilla_koodi] [nchar](2) NULL,
	[jatkaa_opiskelua_alkuperaisella_koulutussektorilla] [nvarchar](100) NULL,
	[jatkaa_opiskelua_alkuperaisella_koulutussektorilla_SV] [nvarchar](100) NULL,
	[jatkaa_opiskelua_alkuperaisella_koulutussektorilla_EN] [nvarchar](100) NULL,
	[jarjestys_7e] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_jatkaa_opiskelua_alkuperaisella_koulutussektorilla] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_jatkaa_opiskelua_alkuperaisella_opintoalalla_2002]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_jatkaa_opiskelua_alkuperaisella_opintoalalla_2002]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_jatkaa_opiskelua_alkuperaisella_opintoalalla_2002](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[jatkaa_opiskelua_alkuperaisella_opintoalalla_2002_koodi] [nchar](2) NULL,
	[jatkaa_opiskelua_alkuperaisella_opintoalalla_2002] [nvarchar](100) NULL,
	[jatkaa_opiskelua_alkuperaisella_opintoalalla_2002_SV] [nvarchar](100) NULL,
	[jatkaa_opiskelua_alkuperaisella_opintoalalla_2002_EN] [nvarchar](100) NULL,
	[jarjestys_3e] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_jatkaa_opiskelua_alkuperaisella_opintoalalla_2002] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_jatkaa_opiskelua_alkuperaisessa_maakunnassa]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_jatkaa_opiskelua_alkuperaisessa_maakunnassa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_jatkaa_opiskelua_alkuperaisessa_maakunnassa](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[jatkaa_opiskelua_alkuperaisessa_maakunnassa_koodi] [nchar](2) NULL,
	[jatkaa_opiskelua_alkuperaisessa_maakunnassa] [nvarchar](100) NULL,
	[jatkaa_opiskelua_alkuperaisessa_maakunnassa_SV] [nvarchar](100) NULL,
	[jatkaa_opiskelua_alkuperaisessa_maakunnassa_EN] [nvarchar](100) NULL,
	[jarjestys_6e] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_jatkaa_opiskelua_alkuperaisessa_maakunnassa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_jatkaa_opiskelua_alkuperaisessa_oppilaitoksessa]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_jatkaa_opiskelua_alkuperaisessa_oppilaitoksessa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_jatkaa_opiskelua_alkuperaisessa_oppilaitoksessa](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[jatkaa_opiskelua_alkuperaisessa_oppilaitoksessa_koodi] [nchar](2) NULL,
	[jatkaa_opiskelua_alkuperaisessa_oppilaitoksessa] [nvarchar](100) NULL,
	[jatkaa_opiskelua_alkuperaisessa_oppilaitoksessa_SV] [nvarchar](100) NULL,
	[jatkaa_opiskelua_alkuperaisessa_oppilaitoksessa_EN] [nvarchar](100) NULL,
	[jarjestys_5e] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_jatkaa_opiskelua_alkuperaisessa_oppilaitoksessa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_jatkaa_opiskelua_muulla_koulutuksen_jarjestajalla]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_jatkaa_opiskelua_muulla_koulutuksen_jarjestajalla]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_jatkaa_opiskelua_muulla_koulutuksen_jarjestajalla](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[jatkaa_opiskelua_muulla_koulutuksen_jarjestajalla_koodi] [nchar](2) NULL,
	[jatkaa_opiskelua_muulla_koulutuksen_jarjestajalla] [nvarchar](100) NULL,
	[jatkaa_opiskelua_muulla_koulutuksen_jarjestajalla_SV] [nvarchar](100) NULL,
	[jatkaa_opiskelua_muulla_koulutuksen_jarjestajalla_EN] [nvarchar](100) NULL,
	[jarjestys_4f] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_jatkaa_opiskelua_muulla_koulutuksen_jarjestajalla] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_jatkaa_opiskelua_muulla_koulutusalalla_2002]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_jatkaa_opiskelua_muulla_koulutusalalla_2002]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_jatkaa_opiskelua_muulla_koulutusalalla_2002](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[jatkaa_opiskelua_muulla_koulutusalalla_2002_koodi] [nchar](2) NULL,
	[jatkaa_opiskelua_muulla_koulutusalalla_2002] [nvarchar](100) NULL,
	[jatkaa_opiskelua_muulla_koulutusalalla_2002_SV] [nvarchar](100) NULL,
	[jatkaa_opiskelua_muulla_koulutusalalla_2002_EN] [nvarchar](100) NULL,
	[jarjestys_2f] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_jatkaa_opiskelua_muulla_koulutusalalla_2002] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_jatkaa_opiskelua_muulla_koulutusasteella_2002]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_jatkaa_opiskelua_muulla_koulutusasteella_2002]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_jatkaa_opiskelua_muulla_koulutusasteella_2002](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[jatkaa_opiskelua_muulla_koulutusasteella_2002_koodi] [nchar](2) NULL,
	[jatkaa_opiskelua_muulla_koulutusasteella_2002] [nvarchar](100) NULL,
	[jatkaa_opiskelua_muulla_koulutusasteella_2002_SV] [nvarchar](100) NULL,
	[jatkaa_opiskelua_muulla_koulutusasteella_2002_EN] [nvarchar](100) NULL,
	[jarjestys_1f] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_jatkaa_opiskelua_muulla_koulutusasteella_2002] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_jatkaa_opiskelua_muulla_koulutussektorilla]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_jatkaa_opiskelua_muulla_koulutussektorilla]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_jatkaa_opiskelua_muulla_koulutussektorilla](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[jatkaa_opiskelua_muulla_koulutussektorilla_koodi] [nchar](2) NULL,
	[jatkaa_opiskelua_muulla_koulutussektorilla] [nvarchar](100) NULL,
	[jatkaa_opiskelua_muulla_koulutussektorilla_SV] [nvarchar](100) NULL,
	[jatkaa_opiskelua_muulla_koulutussektorilla_EN] [nvarchar](100) NULL,
	[jarjestys_7f] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_jatkaa_opiskelua_muulla_koulutussektorilla] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_jatkaa_opiskelua_muulla_opintoalalla_2002]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_jatkaa_opiskelua_muulla_opintoalalla_2002]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_jatkaa_opiskelua_muulla_opintoalalla_2002](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[jatkaa_opiskelua_muulla_opintoalalla_2002_koodi] [nchar](2) NULL,
	[jatkaa_opiskelua_muulla_opintoalalla_2002] [nvarchar](100) NULL,
	[jatkaa_opiskelua_muulla_opintoalalla_2002_SV] [nvarchar](100) NULL,
	[jatkaa_opiskelua_muulla_opintoalalla_2002_EN] [nvarchar](100) NULL,
	[jarjestys_3f] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_jatkaa_opiskelua_muulla_opintoalalla_2002] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_jatkaa_opiskelua_muussa_maakunnassa]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_jatkaa_opiskelua_muussa_maakunnassa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_jatkaa_opiskelua_muussa_maakunnassa](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[jatkaa_opiskelua_muussa_maakunnassa_koodi] [nchar](2) NULL,
	[jatkaa_opiskelua_muussa_maakunnassa] [nvarchar](100) NULL,
	[jatkaa_opiskelua_muussa_maakunnassa_SV] [nvarchar](100) NULL,
	[jatkaa_opiskelua_muussa_maakunnassa_EN] [nvarchar](100) NULL,
	[jarjestys_6f] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_jatkaa_opiskelua_muussa_maakunnassa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_jatkaa_opiskelua_muussa_oppilaitoksessa]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_jatkaa_opiskelua_muussa_oppilaitoksessa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_jatkaa_opiskelua_muussa_oppilaitoksessa](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[jatkaa_opiskelua_muussa_oppilaitoksessa_koodi] [nchar](2) NULL,
	[jatkaa_opiskelua_muussa_oppilaitoksessa] [nvarchar](100) NULL,
	[jatkaa_opiskelua_muussa_oppilaitoksessa_SV] [nvarchar](100) NULL,
	[jatkaa_opiskelua_muussa_oppilaitoksessa_EN] [nvarchar](100) NULL,
	[jarjestys_5f] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_jatkaa_opiskelua_muussa_oppilaitoksessa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_jatko_opiskelu]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_jatko_opiskelu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_jatko_opiskelu](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[jatko_opiskelu_koodi] [nvarchar](10) NULL,
	[jatko_opiskelu] [nvarchar](50) NULL,
	[jatko_opiskelu_SV] [nvarchar](50) NULL,
	[jatko_opiskelu_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_jatko_opiskelu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_joustava_perusopetus]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_joustava_perusopetus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_joustava_perusopetus](
	[id] [int] NOT NULL,
	[joustava_perusopetus_koodi] [nchar](2) NULL,
	[joustava_perusopetus] [nvarchar](50) NULL,
	[joustava_perusopetus_SV] [nvarchar](50) NULL,
	[joustava_perusopetus_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](10) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_joustava_perusopetus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_kansalaisuus_versio1]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_kansalaisuus_versio1]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_kansalaisuus_versio1](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[kansalaisuus_versio1_koodi] [nvarchar](2) NULL,
	[kansalaisuus_versio1] [nvarchar](50) NULL,
	[kansalaisuus_versio1_SV] [nvarchar](50) NULL,
	[kansalaisuus_versio1_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_kansalaisuus_versio1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_kansalaisuus_versio2]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_kansalaisuus_versio2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_kansalaisuus_versio2](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[kansalaisuus_versio2_koodi] [nvarchar](2) NULL,
	[kansalaisuus_versio2] [nvarchar](50) NULL,
	[kansalaisuus_versio2_SV] [nvarchar](50) NULL,
	[kansalaisuus_versio2_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_kansalaisuus_versio2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_kausi]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_kausi]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_kausi](
	[kausi_id] [nvarchar](10) NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[vuosi] [int] NULL,
	[vuosiselite] [nvarchar](20) NULL,
	[vuosiselite_SV] [nvarchar](20) NULL,
	[vuosiselite_EN] [nvarchar](20) NULL,
	[lukukausi] [int] NULL,
	[lukukausiselite] [nvarchar](20) NULL,
	[lukukausiselite_SV] [nvarchar](20) NULL,
	[lukukausiselite_EN] [nvarchar](20) NULL,
	[kuukausi] [int] NULL,
	[kuukausiselite] [nvarchar](20) NULL,
	[kuukausiselite_SV] [nvarchar](20) NULL,
	[kuukausiselite_EN] [nvarchar](20) NULL,
	[paiva] [int] NULL,
	[lukuvuosi] [nvarchar](20) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](15) NULL,
	[kommentti] [nvarchar](250) NULL,
	[lukuvuosikausiselite] [nvarchar](41) NULL,
	[lukuvuosikausiselite_SV] [nvarchar](41) NULL,
	[lukuvuosikausiselite_EN] [nvarchar](41) NULL,
 CONSTRAINT [PK_d_kausi] PRIMARY KEY CLUSTERED 
(
	[kausi_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_kieli]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_kieli]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_kieli](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[kieli_avain] [nvarchar](10) NULL,
	[kieli_koodi] [nvarchar](2) NULL,
	[kieli] [nvarchar](50) NULL,
	[kieli_SV] [nvarchar](50) NULL,
	[kieli_EN] [nvarchar](50) NULL,
	[iso3kirjainta_koodi] [nvarchar](3) NULL,
	[jarjestys] [smallint] NULL,
	[jarjestys_iso3kirjainta] [smallint] NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_kieli] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_kieli2]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_kieli2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_kieli2](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[kieli_koodi] [nchar](2) NULL,
	[kieli] [nvarchar](50) NULL,
	[kieli_SV] [nvarchar](50) NULL,
	[kieli_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_kieli2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_koulutuksen_jarjestajan_koko]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_koulutuksen_jarjestajan_koko]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_koulutuksen_jarjestajan_koko](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[koko_koodi] [nchar](2) NULL,
	[koko] [nvarchar](50) NULL,
	[koko_SV] [nvarchar](50) NULL,
	[koko_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_koulutuksen_jarjestajan_koko] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_koulutuksen_jarjestamismuoto]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_koulutuksen_jarjestamismuoto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_koulutuksen_jarjestamismuoto](
	[id] [int] NOT NULL,
	[alkaa] [date] NOT NULL,
	[paattyy] [date] NOT NULL,
	[koulutuksen_jarjestamismuoto_koodi] [nvarchar](2) NOT NULL,
	[koulutuksen_jarjestamismuoto] [nvarchar](50) NULL,
	[koulutuksen_jarjestamismuoto_SV] [nvarchar](50) NULL,
	[koulutuksen_jarjestamismuoto_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_koulutuksen_jarjestamismuoto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_koulutuksen_kesto]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_koulutuksen_kesto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_koulutuksen_kesto](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[koulutuksen_kesto_koodi] [varchar](2) NULL,
	[koulutuksen_kesto] [nvarchar](50) NULL,
	[koulutuksen_kesto_SV] [nvarchar](50) NULL,
	[koulutuksen_kesto_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_koulutuksen_kesto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_koulutuksen_kieli_versio1]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_koulutuksen_kieli_versio1]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_koulutuksen_kieli_versio1](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[koulutuksen_kieli_versio1_koodi] [nvarchar](3) NULL,
	[koulutuksen_kieli_versio1] [nvarchar](250) NULL,
	[koulutuksen_kieli_versio1_SV] [nvarchar](250) NULL,
	[koulutuksen_kieli_versio1_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_koulutuksen_kieli] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_koulutuksen_paattaneiden_toiminta]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_koulutuksen_paattaneiden_toiminta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_koulutuksen_paattaneiden_toiminta](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[koulutuksen_paattaneiden_toiminta_koodi] [nvarchar](2) NULL,
	[koulutuksen_paattaneiden_toiminta] [nvarchar](250) NULL,
	[koulutuksen_paattaneiden_toiminta_SV] [nvarchar](250) NULL,
	[koulutuksen_paattaneiden_toiminta_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_koulutuksen_paattaneiden_toiminta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_koulutuksen_tavoite_toteuma]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_koulutuksen_tavoite_toteuma]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_koulutuksen_tavoite_toteuma](
	[id] [int] NOT NULL,
	[alkaa] [date] NOT NULL,
	[paattyy] [date] NOT NULL,
	[koulutuksen_tavoite_toteuma_koodi] [nvarchar](2) NOT NULL,
	[koulutuksen_tavoite_toteuma] [nvarchar](50) NULL,
	[koulutuksen_tavoite_toteuma_SV] [nvarchar](50) NULL,
	[koulutuksen_tavoite_toteuma_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_koulutuksen_tavoite_toteuma] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_koulutuksesta_kulunut_aika]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_koulutuksesta_kulunut_aika]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_koulutuksesta_kulunut_aika](
	[id] [int] NOT NULL,
	[luotu] [date] NOT NULL,
	[alkaa] [date] NOT NULL,
	[paattyy] [date] NOT NULL,
	[koulutuksesta_kulunut_aika_koodi] [nvarchar](20) NOT NULL,
	[koulutuksesta_kulunut_aika] [nvarchar](100) NULL,
	[koulutuksesta_kulunut_aika_SV] [nvarchar](100) NULL,
	[koulutuksesta_kulunut_aika_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](100) NULL,
	[koulutuksesta_kulunut_aika_5v] [nvarchar](100) NULL,
	[koulutuksesta_kulunut_aika_5v_SV] [nvarchar](100) NULL,
	[koulutuksesta_kulunut_aika_5v_EN] [nvarchar](100) NULL,
	[jarjestys_5v] [nvarchar](100) NULL,
	[koulutuksesta_kulunut_aika_tthv] [nvarchar](100) NULL,
	[koulutuksesta_kulunut_aika_tthv_SV] [nvarchar](100) NULL,
	[koulutuksesta_kulunut_aika_tthv_EN] [nvarchar](100) NULL,
	[jarjestys_tthv] [nvarchar](100) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_koulutusaste_2002]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_koulutusaste_2002]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_koulutusaste_2002](
	[id] [int] NOT NULL,
	[alkaa] [date] NOT NULL,
	[paattyy] [date] NOT NULL,
	[koulutusaste_2002koodi] [nvarchar](10) NOT NULL,
	[koulutusaste_2002] [nvarchar](250) NULL,
	[koulutusaste_2002_SV] [nvarchar](250) NULL,
	[koulutusaste_2002_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_koulutusaste_2002] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_koulutuslaji]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_koulutuslaji]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_koulutuslaji](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[koulutuslaji_koodi] [nvarchar](10) NULL,
	[koulutuslaji] [nvarchar](150) NULL,
	[koulutuslaji_SV] [nvarchar](150) NULL,
	[koulutuslaji_EN] [nvarchar](150) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_koulutuslaji] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_koulutuslaji_okm]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_koulutuslaji_okm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_koulutuslaji_okm](
	[id] [int] NOT NULL,
	[koulutuslaji_okm_avain] [nvarchar](10) NULL,
	[koulutuslaji_okm] [nvarchar](100) NULL,
	[koulutuslaji_okm_SV] [nvarchar](100) NULL,
	[koulutuslaji_okm_EN] [nvarchar](100) NULL,
	[koulutuslaji_okm2] [nvarchar](100) NULL,
	[koulutuslaji_okm2_SV] [nvarchar](100) NULL,
	[koulutuslaji_okm2_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[jarjestys2] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_koulutuslaji_okm] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_koulutuslaji2]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_koulutuslaji2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_koulutuslaji2](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[koulutuslaji2_koodi] [nvarchar](10) NULL,
	[koulutuslaji2] [nvarchar](250) NULL,
	[koulutuslaji2_SV] [nvarchar](250) NULL,
	[koulutuslaji2_EN] [nvarchar](250) NULL,
	[jarjestys_koulutuslaji2] [nvarchar](50) NULL,
	[jarjestamistapa] [nvarchar](250) NULL,
	[jarjestamistapa_SV] [nvarchar](250) NULL,
	[jarjestamistapa_EN] [nvarchar](250) NULL,
	[jarjestys_jarjestamistapa] [nvarchar](50) NULL,
	[jarjestamismuoto] [nvarchar](250) NULL,
	[jarjestamismuoto_SV] [nvarchar](250) NULL,
	[jarjestamismuoto_EN] [nvarchar](250) NULL,
	[jarjestys_jarjestamismuoto] [nvarchar](50) NULL,
	[tutkintotyyppi] [nvarchar](250) NULL,
	[tutkintotyyppi_SV] [nvarchar](250) NULL,
	[tutkintotyyppi_EN] [nvarchar](250) NULL,
	[jarjestys_tutkintotyyppi] [nvarchar](50) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_koulutuslaji2_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_koulutuslaji3]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_koulutuslaji3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_koulutuslaji3](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[koulutuslaji3_koodi] [nvarchar](10) NULL,
	[koulutuslaji3] [nvarchar](250) NULL,
	[koulutuslaji3_SV] [nvarchar](250) NULL,
	[koulutuslaji3_EN] [nvarchar](250) NULL,
	[jarjestys_koulutuslaji3] [nvarchar](50) NULL,
	[jarjestamistapa] [nvarchar](250) NULL,
	[jarjestamistapa_SV] [nvarchar](250) NULL,
	[jarjestamistapa_EN] [nvarchar](250) NULL,
	[jarjestys_jarjestamistapa] [nvarchar](50) NULL,
	[jarjestamismuoto] [nvarchar](250) NULL,
	[jarjestamismuoto_SV] [nvarchar](250) NULL,
	[jarjestamismuoto_EN] [nvarchar](250) NULL,
	[jarjestys_jarjestamismuoto] [nvarchar](50) NULL,
	[tutkintotyyppi] [nvarchar](250) NULL,
	[tutkintotyyppi_SV] [nvarchar](250) NULL,
	[tutkintotyyppi_EN] [nvarchar](250) NULL,
	[jarjestys_tutkintotyyppi] [nvarchar](50) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_koulutuslaji3] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_koulutusluokitus]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_koulutusluokitus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_koulutusluokitus](
	[id] [int] NOT NULL,
	[koulutusluokitus_avain] [nvarchar](10) NOT NULL,
	[koulutus_koodi] [nvarchar](6) NOT NULL,
	[koulutus] [nvarchar](255) NOT NULL,
	[koulutus_SV] [nvarchar](255) NOT NULL,
	[koulutus_EN] [nvarchar](255) NOT NULL,
	[koulutuslyhyt] [nvarchar](50) NOT NULL,
	[koulutuslyhyt_SV] [nvarchar](50) NOT NULL,
	[koulutuslyhyt_EN] [nvarchar](50) NOT NULL,
	[taso_koodi] [nvarchar](5) NOT NULL,
	[koulutusala_koodi] [nvarchar](2) NOT NULL,
	[koulutusala] [nvarchar](255) NOT NULL,
	[koulutusala_SV] [nvarchar](255) NOT NULL,
	[koulutusala_EN] [nvarchar](255) NOT NULL,
	[koulutusaste_koodi] [nvarchar](2) NOT NULL,
	[koulutusaste] [nvarchar](255) NOT NULL,
	[koulutusaste_SV] [nvarchar](255) NOT NULL,
	[koulutusaste_EN] [nvarchar](255) NOT NULL,
	[koulutusala2002_koodi] [nvarchar](2) NOT NULL,
	[koulutusala2002] [nvarchar](255) NOT NULL,
	[koulutusala2002_SV] [nvarchar](255) NOT NULL,
	[koulutusala2002_EN] [nvarchar](255) NOT NULL,
	[opintoala2002_koodi] [nvarchar](3) NOT NULL,
	[opintoala2002] [nvarchar](255) NOT NULL,
	[opintoala2002_SV] [nvarchar](255) NOT NULL,
	[opintoala2002_EN] [nvarchar](255) NOT NULL,
	[koulutusaste2002_koodi] [nvarchar](2) NOT NULL,
	[koulutusaste2002] [nvarchar](255) NOT NULL,
	[koulutusaste2002_SV] [nvarchar](255) NOT NULL,
	[koulutusaste2002_EN] [nvarchar](255) NOT NULL,
	[koulutusala1995_koodi] [nvarchar](2) NOT NULL,
	[koulutusala1995] [nvarchar](255) NOT NULL,
	[koulutusala1995_SV] [nvarchar](255) NOT NULL,
	[koulutusala1995_EN] [nvarchar](255) NOT NULL,
	[opintoala1995_koodi] [nvarchar](3) NOT NULL,
	[opintoala1995] [nvarchar](255) NOT NULL,
	[opintoala1995_SV] [nvarchar](255) NOT NULL,
	[opintoala1995_EN] [nvarchar](255) NOT NULL,
	[koulutusaste1995_koodi] [nvarchar](2) NOT NULL,
	[koulutusaste1995] [nvarchar](255) NOT NULL,
	[koulutusaste1995_SV] [nvarchar](255) NOT NULL,
	[koulutusaste1995_EN] [nvarchar](255) NOT NULL,
	[isclek_koodi] [nvarchar](2) NOT NULL,
	[isclek] [nvarchar](255) NOT NULL,
	[isclek_SV] [nvarchar](255) NOT NULL,
	[isclek_EN] [nvarchar](255) NOT NULL,
	[iscle_koodi] [nvarchar](2) NOT NULL,
	[iscle] [nvarchar](255) NOT NULL,
	[iscle_SV] [nvarchar](255) NOT NULL,
	[iscle_EN] [nvarchar](255) NOT NULL,
	[iscfik_koodi] [nvarchar](3) NOT NULL,
	[iscfik] [nvarchar](255) NOT NULL,
	[iscfik_SV] [nvarchar](255) NOT NULL,
	[iscfik_EN] [nvarchar](255) NOT NULL,
	[iscde_koodi] [nvarchar](2) NOT NULL,
	[iscde] [nvarchar](255) NOT NULL,
	[iscde_SV] [nvarchar](255) NOT NULL,
	[iscde_EN] [nvarchar](255) NOT NULL,
	[iscor_koodi] [nvarchar](2) NOT NULL,
	[iscor] [nvarchar](255) NOT NULL,
	[iscor_SV] [nvarchar](255) NOT NULL,
	[iscor_EN] [nvarchar](255) NOT NULL,
	[iscst_koodi] [nvarchar](2) NOT NULL,
	[iscst] [nvarchar](255) NOT NULL,
	[iscst_SV] [nvarchar](255) NOT NULL,
	[iscst_EN] [nvarchar](255) NOT NULL,
	[iscdu_koodi] [nvarchar](2) NOT NULL,
	[iscdu] [nvarchar](255) NOT NULL,
	[iscdu_SV] [nvarchar](255) NOT NULL,
	[iscdu_EN] [nvarchar](255) NOT NULL,
	[iscle2011_koodi] [nvarchar](10) NOT NULL,
	[iscle2011] [nvarchar](255) NOT NULL,
	[iscle2011_SV] [nvarchar](255) NOT NULL,
	[iscle2011_EN] [nvarchar](255) NOT NULL,
	[isccat2011_koodi] [nvarchar](10) NOT NULL,
	[isccat2011] [nvarchar](255) NOT NULL,
	[isccat2011_SV] [nvarchar](255) NOT NULL,
	[isccat2011_EN] [nvarchar](255) NOT NULL,
	[iscsubcat2011_koodi] [nvarchar](10) NOT NULL,
	[iscsubcat2011] [nvarchar](255) NOT NULL,
	[iscsubcat2011_SV] [nvarchar](255) NOT NULL,
	[iscsubcat2011_EN] [nvarchar](255) NOT NULL,
	[iscfi2013_koodi] [nvarchar](10) NOT NULL,
	[iscfi2013] [nvarchar](255) NOT NULL,
	[iscfi2013_SV] [nvarchar](255) NOT NULL,
	[iscfi2013_EN] [nvarchar](255) NOT NULL,
	[iscfinarrow2013_koodi] [nvarchar](10) NOT NULL,
	[iscfinarrow2013] [nvarchar](255) NOT NULL,
	[iscfinarrow2013_SV] [nvarchar](255) NOT NULL,
	[iscfinarrow2013_EN] [nvarchar](255) NOT NULL,
	[iscfibroad2013_koodi] [nvarchar](10) NOT NULL,
	[iscfibroad2013] [nvarchar](255) NOT NULL,
	[iscfibroad2013_SV] [nvarchar](255) NOT NULL,
	[iscfibroad2013_EN] [nvarchar](255) NOT NULL,
	[OKM_ohjauksen_ala_koodi] [nvarchar](10) NOT NULL,
	[OKM_ohjauksen_ala] [nvarchar](255) NOT NULL,
	[OKM_ohjauksen_ala_SV] [nvarchar](255) NOT NULL,
	[OKM_ohjauksen_ala_EN] [nvarchar](255) NOT NULL,
	[OKM_ohjauksen_ala_yo_tav_koodi] [nvarchar](10) NOT NULL,
	[OKM_ohjauksen_ala_yo_tav] [nvarchar](255) NOT NULL,
	[OKM_ohjauksen_ala_yo_tav_SV] [nvarchar](255) NOT NULL,
	[OKM_ohjauksen_ala_yo_tav_EN] [nvarchar](255) NOT NULL,
	[OKM_ohjauksen_ala_amk_tav_koodi] [nvarchar](10) NOT NULL,
	[OKM_ohjauksen_ala_amk_tav] [nvarchar](255) NOT NULL,
	[OKM_ohjauksen_ala_amk_tav_SV] [nvarchar](255) NOT NULL,
	[OKM_ohjauksen_ala_amk_tav_EN] [nvarchar](255) NOT NULL,
	[Koulutusaste_taso2_koodi] [nvarchar](10) NOT NULL,
	[Koulutusaste_taso2] [nvarchar](255) NOT NULL,
	[Koulutusaste_taso2_SV] [nvarchar](255) NOT NULL,
	[Koulutusaste_taso2_EN] [nvarchar](255) NOT NULL,
	[SCD_alkaa] [datetime2](7) NULL,
	[SCD_paattyy] [datetime2](7) NULL,
	[olo_koodi] [nvarchar](20) NULL,
	[lakkautusvuosi] [nvarchar](20) NULL,
	[korvaava_koulutus_koodi] [nvarchar](6) NULL,
	[muutosvuosi] [nvarchar](20) NULL,
	[jarjestys] [nvarchar](10) NULL,
	[jarjestys_taso] [nvarchar](10) NULL,
	[jarjestys_koulutusala] [nvarchar](10) NULL,
	[jarjestys_koulutusaste] [nvarchar](10) NULL,
	[jarjestys_koulutusala2002] [nvarchar](10) NULL,
	[jarjestys_opintoala2002] [nvarchar](10) NULL,
	[jarjestys_koulutusaste2002] [nvarchar](10) NULL,
	[jarjestys_koulutusala1995] [nvarchar](10) NULL,
	[jarjestys_opintoala1995] [nvarchar](10) NULL,
	[jarjestys_koulutusaste1995] [nvarchar](10) NULL,
	[jarjestys_isclek] [nvarchar](10) NULL,
	[jarjestys_iscle] [nvarchar](10) NULL,
	[jarjestys_iscfik] [nvarchar](10) NULL,
	[jarjestys_iscde] [nvarchar](10) NULL,
	[jarjestys_iscor] [nvarchar](10) NULL,
	[jarjestys_iscst] [nvarchar](10) NULL,
	[jarjestys_iscdu] [nvarchar](10) NULL,
	[jarjestys_iscle2011] [nvarchar](10) NULL,
	[jarjestys_isccat2011] [nvarchar](10) NULL,
	[jarjestys_iscsubcat2011] [nvarchar](10) NULL,
	[jarjestys_iscfi2013] [nvarchar](10) NULL,
	[jarjestys_iscfinarrow2013] [nvarchar](10) NULL,
	[jarjestys_iscfibroad2013] [nvarchar](10) NULL,
	[jarjestys_OKM_ohjauksen_ala] [nvarchar](10) NULL,
	[jarjestys_OKM_ohjauksen_ala_yo_tav] [nvarchar](10) NULL,
	[jarjestys_OKM_ohjauksen_ala_amk_tav] [nvarchar](10) NULL,
	[jarjestys_Koulutusaste_taso2] [nvarchar](10) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_koulutusluokitus_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_koulutusluokitus_historia]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_koulutusluokitus_historia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_koulutusluokitus_historia](
	[id] [int] NOT NULL,
	[luotu] [date] NOT NULL,
	[koulutusluokitus_avain] [nvarchar](10) NOT NULL,
	[koulutus_koodi] [nvarchar](6) NOT NULL,
	[korvaava_koulutus_koodi] [nvarchar](6) NULL,
	[alkaa] [date] NOT NULL,
	[paattyy] [date] NULL,
	[viimeisin_tilv] [nvarchar](4) NOT NULL,
	[koulutus] [nvarchar](255) NOT NULL,
	[koulutus_SV] [nvarchar](255) NOT NULL,
	[koulutus_EN] [nvarchar](255) NOT NULL,
	[koulutuslyhyt] [nvarchar](50) NOT NULL,
	[koulutuslyhyt_SV] [nvarchar](50) NOT NULL,
	[koulutuslyhyt_EN] [nvarchar](50) NOT NULL,
	[taso_koodi] [nvarchar](5) NOT NULL,
	[koulutusala_koodi] [nvarchar](2) NOT NULL,
	[koulutusala] [nvarchar](255) NOT NULL,
	[koulutusala_SV] [nvarchar](255) NOT NULL,
	[koulutusala_EN] [nvarchar](255) NOT NULL,
	[koulutusaste_koodi] [nvarchar](2) NOT NULL,
	[koulutusaste] [nvarchar](255) NOT NULL,
	[koulutusaste_SV] [nvarchar](255) NOT NULL,
	[koulutusaste_EN] [nvarchar](255) NOT NULL,
	[koulutusala2002_koodi] [nvarchar](2) NOT NULL,
	[koulutusala2002] [nvarchar](255) NOT NULL,
	[koulutusala2002_SV] [nvarchar](255) NOT NULL,
	[koulutusala2002_EN] [nvarchar](255) NOT NULL,
	[opintoala2002_koodi] [nvarchar](3) NOT NULL,
	[opintoala2002] [nvarchar](255) NOT NULL,
	[opintoala2002_SV] [nvarchar](255) NOT NULL,
	[opintoala2002_EN] [nvarchar](255) NOT NULL,
	[koulutusaste2002_koodi] [nvarchar](2) NOT NULL,
	[koulutusaste2002] [nvarchar](255) NOT NULL,
	[koulutusaste2002_SV] [nvarchar](255) NOT NULL,
	[koulutusaste2002_EN] [nvarchar](255) NOT NULL,
	[koulutusala1995_koodi] [nvarchar](2) NOT NULL,
	[koulutusala1995] [nvarchar](255) NOT NULL,
	[koulutusala1995_SV] [nvarchar](255) NOT NULL,
	[koulutusala1995_EN] [nvarchar](255) NOT NULL,
	[opintoala1995_koodi] [nvarchar](3) NOT NULL,
	[opintoala1995] [nvarchar](255) NOT NULL,
	[opintoala1995_SV] [nvarchar](255) NOT NULL,
	[opintoala1995_EN] [nvarchar](255) NOT NULL,
	[koulutusaste1995_koodi] [nvarchar](2) NOT NULL,
	[koulutusaste1995] [nvarchar](255) NOT NULL,
	[koulutusaste1995_SV] [nvarchar](255) NOT NULL,
	[koulutusaste1995_EN] [nvarchar](255) NOT NULL,
	[isclek_koodi] [nvarchar](2) NOT NULL,
	[isclek] [nvarchar](255) NOT NULL,
	[isclek_SV] [nvarchar](255) NOT NULL,
	[isclek_EN] [nvarchar](255) NOT NULL,
	[iscle_koodi] [nvarchar](2) NOT NULL,
	[iscle] [nvarchar](255) NOT NULL,
	[iscle_SV] [nvarchar](255) NOT NULL,
	[iscle_EN] [nvarchar](255) NOT NULL,
	[iscfik_koodi] [nvarchar](3) NOT NULL,
	[iscfik] [nvarchar](255) NOT NULL,
	[iscfik_SV] [nvarchar](255) NOT NULL,
	[iscfik_EN] [nvarchar](255) NOT NULL,
	[iscde_koodi] [nvarchar](2) NOT NULL,
	[iscde] [nvarchar](255) NOT NULL,
	[iscde_SV] [nvarchar](255) NOT NULL,
	[iscde_EN] [nvarchar](255) NOT NULL,
	[iscor_koodi] [nvarchar](2) NOT NULL,
	[iscor] [nvarchar](255) NOT NULL,
	[iscor_SV] [nvarchar](255) NOT NULL,
	[iscor_EN] [nvarchar](255) NOT NULL,
	[iscst_koodi] [nvarchar](2) NOT NULL,
	[iscst] [nvarchar](255) NOT NULL,
	[iscst_SV] [nvarchar](255) NOT NULL,
	[iscst_EN] [nvarchar](255) NOT NULL,
	[iscdu_koodi] [nvarchar](2) NOT NULL,
	[iscdu] [nvarchar](255) NOT NULL,
	[iscdu_SV] [nvarchar](255) NOT NULL,
	[iscdu_EN] [nvarchar](255) NOT NULL,
	[iscle2011_koodi] [nvarchar](10) NOT NULL,
	[iscle2011] [nvarchar](255) NOT NULL,
	[iscle2011_SV] [nvarchar](255) NOT NULL,
	[iscle2011_EN] [nvarchar](255) NOT NULL,
	[isccat2011_koodi] [nvarchar](10) NOT NULL,
	[isccat2011] [nvarchar](255) NOT NULL,
	[isccat2011_SV] [nvarchar](255) NOT NULL,
	[isccat2011_EN] [nvarchar](255) NOT NULL,
	[iscsubcat2011_koodi] [nvarchar](10) NOT NULL,
	[iscsubcat2011] [nvarchar](255) NOT NULL,
	[iscsubcat2011_SV] [nvarchar](255) NOT NULL,
	[iscsubcat2011_EN] [nvarchar](255) NOT NULL,
	[iscfi2013_koodi] [nvarchar](10) NOT NULL,
	[iscfi2013] [nvarchar](255) NOT NULL,
	[iscfi2013_SV] [nvarchar](255) NOT NULL,
	[iscfi2013_EN] [nvarchar](255) NOT NULL,
	[iscfinarrow2013_koodi] [nvarchar](10) NOT NULL,
	[iscfinarrow2013] [nvarchar](255) NOT NULL,
	[iscfinarrow2013_SV] [nvarchar](255) NOT NULL,
	[iscfinarrow2013_EN] [nvarchar](255) NOT NULL,
	[iscfibroad2013_koodi] [nvarchar](10) NOT NULL,
	[iscfibroad2013] [nvarchar](255) NOT NULL,
	[iscfibroad2013_SV] [nvarchar](255) NOT NULL,
	[iscfibroad2013_EN] [nvarchar](255) NOT NULL,
	[OKM_ohjauksen_ala_koodi] [nvarchar](10) NOT NULL,
	[OKM_ohjauksen_ala] [nvarchar](255) NOT NULL,
	[OKM_ohjauksen_ala_SV] [nvarchar](255) NOT NULL,
	[OKM_ohjauksen_ala_EN] [nvarchar](255) NOT NULL,
	[OKM_ohjauksen_ala_yo_tav_koodi] [nvarchar](10) NOT NULL,
	[OKM_ohjauksen_ala_yo_tav] [nvarchar](255) NOT NULL,
	[OKM_ohjauksen_ala_yo_tav_SV] [nvarchar](255) NOT NULL,
	[OKM_ohjauksen_ala_yo_tav_EN] [nvarchar](255) NOT NULL,
	[OKM_ohjauksen_ala_amk_tav_koodi] [nvarchar](10) NOT NULL,
	[OKM_ohjauksen_ala_amk_tav] [nvarchar](255) NOT NULL,
	[OKM_ohjauksen_ala_amk_tav_SV] [nvarchar](255) NOT NULL,
	[OKM_ohjauksen_ala_amk_tav_EN] [nvarchar](255) NOT NULL,
	[Koulutusaste_taso2_koodi] [nvarchar](10) NOT NULL,
	[Koulutusaste_taso2] [nvarchar](255) NOT NULL,
	[Koulutusaste_taso2_SV] [nvarchar](255) NOT NULL,
	[Koulutusaste_taso2_EN] [nvarchar](255) NOT NULL,
	[SCD_alkaa] [datetime2](7) NULL,
	[SCD_paattyy] [datetime2](7) NULL,
	[olo_koodi] [nvarchar](20) NULL,
	[lakkautusvuosi] [nvarchar](20) NULL,
	[muutosvuosi] [nvarchar](20) NULL,
	[jarjestys] [nvarchar](10) NULL,
	[jarjestys_taso] [nvarchar](10) NULL,
	[jarjestys_koulutusala] [nvarchar](10) NULL,
	[jarjestys_koulutusaste] [nvarchar](10) NULL,
	[jarjestys_koulutusala2002] [nvarchar](10) NULL,
	[jarjestys_opintoala2002] [nvarchar](10) NULL,
	[jarjestys_koulutusaste2002] [nvarchar](10) NULL,
	[jarjestys_koulutusala1995] [nvarchar](10) NULL,
	[jarjestys_opintoala1995] [nvarchar](10) NULL,
	[jarjestys_koulutusaste1995] [nvarchar](10) NULL,
	[jarjestys_isclek] [nvarchar](10) NULL,
	[jarjestys_iscle] [nvarchar](10) NULL,
	[jarjestys_iscfik] [nvarchar](10) NULL,
	[jarjestys_iscde] [nvarchar](10) NULL,
	[jarjestys_iscor] [nvarchar](10) NULL,
	[jarjestys_iscst] [nvarchar](10) NULL,
	[jarjestys_iscdu] [nvarchar](10) NULL,
	[jarjestys_iscle2011] [nvarchar](10) NULL,
	[jarjestys_isccat2011] [nvarchar](10) NULL,
	[jarjestys_iscsubcat2011] [nvarchar](10) NULL,
	[jarjestys_iscfi2013] [nvarchar](10) NULL,
	[jarjestys_iscfinarrow2013] [nvarchar](10) NULL,
	[jarjestys_iscfibroad2013] [nvarchar](10) NULL,
	[jarjestys_OKM_ohjauksen_ala] [nvarchar](10) NULL,
	[jarjestys_OKM_ohjauksen_ala_yo_tav] [nvarchar](10) NULL,
	[jarjestys_OKM_ohjauksen_ala_amk_tav] [nvarchar](10) NULL,
	[jarjestys_Koulutusaste_taso2] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_koulutusluokitus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_koulutusmuoto]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_koulutusmuoto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_koulutusmuoto](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[koulutusmuoto_koodi] [nvarchar](2) NULL,
	[koulutusmuoto] [nvarchar](350) NULL,
	[koulutusmuoto_SV] [nvarchar](350) NULL,
	[koulutusmuoto_EN] [nvarchar](350) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_koulutusmuoto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_koulutusohjelma_amk]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_koulutusohjelma_amk]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_koulutusohjelma_amk](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[koulutusohjelma_amk_koodi] [nvarchar](4) NULL,
	[koulutusohjelma_amk] [nvarchar](150) NULL,
	[koulutusohjelma_amk_SV] [nvarchar](150) NULL,
	[koulutusohjelma_amk_EN] [nvarchar](150) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_koulutusohjelma_amk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_koulutusohjelma_ammpk]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_koulutusohjelma_ammpk]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_koulutusohjelma_ammpk](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[koulutusohjelma_ammpk_koodi] [nvarchar](4) NULL,
	[koulutusohjelma_ammpk] [nvarchar](100) NULL,
	[koulutusohjelma_ammpk_SV] [nvarchar](100) NULL,
	[koulutusohjelma_ammpk_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_koulutusohjelma_ammpk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_koulutusryhma]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_koulutusryhma]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_koulutusryhma](
	[id] [int] NOT NULL,
	[koulutusryhma_koodi] [nvarchar](2) NULL,
	[koulutusryhma] [nvarchar](255) NULL,
	[koulutusryhma_SV] [nvarchar](255) NULL,
	[koulutusryhma_EN] [nvarchar](255) NULL,
	[koulutusryhma2] [nvarchar](255) NULL,
	[koulutusryhma2_SV] [nvarchar](255) NULL,
	[koulutusryhma2_EN] [nvarchar](255) NULL,
	[jarjestys] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_koulutusryhma] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_koulutussektori]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_koulutussektori]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_koulutussektori](
	[id] [int] NOT NULL,
	[alkaa] [date] NOT NULL,
	[paattyy] [date] NOT NULL,
	[koulutussektori_koodi] [nvarchar](2) NOT NULL,
	[koulutussektori] [nvarchar](50) NULL,
	[koulutussektori_SV] [nvarchar](50) NULL,
	[koulutussektori_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_koulutussektori] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_koulutustyyppi]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_koulutustyyppi]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_koulutustyyppi](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[koulutustyyppi_koodi] [nvarchar](2) NULL,
	[koulutustyyppi] [nvarchar](50) NULL,
	[koulutustyyppi_SV] [nvarchar](50) NULL,
	[koulutustyyppi_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_koulutustyyppi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_kuntaryhma]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_kuntaryhma]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_kuntaryhma](
	[id] [int] NOT NULL,
	[kuntaryhma_koodi] [nvarchar](2) NOT NULL,
	[kuntaryhma] [nvarchar](255) NOT NULL,
	[kuntaryhma_SV] [nvarchar](255) NOT NULL,
	[kuntaryhma_EN] [nvarchar](255) NOT NULL,
	[jarjestys] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_kuntaryhma] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_kylla_ei]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_kylla_ei]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_kylla_ei](
	[id] [int] NOT NULL,
	[kylla_ei_koodi] [nchar](2) NULL,
	[kylla_ei] [nvarchar](20) NULL,
	[kylla_ei_SV] [nvarchar](20) NULL,
	[kylla_ei_EN] [nvarchar](20) NULL,
	[jarjestys] [nvarchar](10) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_kylla_ei] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_lahde]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_lahde]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_lahde](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[lahde_koodi] [nvarchar](10) NULL,
	[lahde] [nvarchar](250) NULL,
	[lahde_SV] [nvarchar](250) NULL,
	[lahde_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_lahde] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_lukiokoulutuksen_koulutuslaji]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_lukiokoulutuksen_koulutuslaji]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_lukiokoulutuksen_koulutuslaji](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[lukiokoulutuksen_koulutuslaji_koodi] [nvarchar](2) NULL,
	[lukiokoulutuksen_koulutuslaji] [nvarchar](100) NULL,
	[lukiokoulutuksen_koulutuslaji_SV] [nvarchar](100) NULL,
	[lukiokoulutuksen_koulutuslaji_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_lukiokoulutuksen_koulutuslaji] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_lukion_ainevalinnat]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_lukion_ainevalinnat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_lukion_ainevalinnat](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[avain_aine] [nvarchar](50) NULL,
	[avain_laajuus] [nvarchar](50) NULL,
	[aineryhmä_jarjestys] [nvarchar](50) NULL,
	[aineryhmä] [nvarchar](50) NULL,
	[aineryhmä_SV] [nvarchar](50) NULL,
	[aineryhmä_EN] [nvarchar](50) NULL,
	[aine_jarjestys] [nvarchar](50) NULL,
	[aine] [nvarchar](50) NULL,
	[aine_SV] [nvarchar](50) NULL,
	[aine_EN] [nvarchar](50) NULL,
	[laajuus_jarjestys] [nvarchar](50) NULL,
	[laajuus] [nvarchar](50) NULL,
	[laajuus_SV] [nvarchar](50) NULL,
	[laajuus_EN] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_lukion_ainevalinnat] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_lukion_kieltenmaara]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_lukion_kieltenmaara]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_lukion_kieltenmaara](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[kieltenmaara_koodi] [nvarchar](10) NULL,
	[kieltenmaara] [nvarchar](50) NULL,
	[kieltenmaara_SV] [nvarchar](50) NULL,
	[kieltenmaara_EN] [nvarchar](50) NULL,
	[kieltenmaara_jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_lukion_kieltenmaara] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_maahantulo_ja_opiskelun_aloittaminen]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_maahantulo_ja_opiskelun_aloittaminen]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_maahantulo_ja_opiskelun_aloittaminen](
	[id] [int] NOT NULL,
	[maahantulo_ja_opiskelun_aloittaminen_koodi] [nvarchar](2) NULL,
	[maahantulo_ja_opiskelun_aloittaminen] [nvarchar](255) NULL,
	[maahantulo_ja_opiskelun_aloittaminen_SV] [nvarchar](255) NULL,
	[maahantulo_ja_opiskelun_aloittaminen_EN] [nvarchar](255) NULL,
	[jarjestys] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_maahantulo_ja_opiskelun_aloittaminen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_maassaolo]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_maassaolo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_maassaolo](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[maassaolo_koodi] [nvarchar](10) NULL,
	[maassaolo] [nvarchar](60) NULL,
	[maassaolo_SV] [nvarchar](60) NULL,
	[maassaolo_EN] [nvarchar](60) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_maassaolo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_mitenna_ammatti]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_mitenna_ammatti]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_mitenna_ammatti](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[mitenna_ammattiryhma1_koodi] [nvarchar](20) NULL,
	[mitenna_ammattiryhma1] [nvarchar](250) NULL,
	[mitenna_ammattiryhma1_SV] [nvarchar](250) NULL,
	[mitenna_ammattiryhma1_EN] [nvarchar](250) NULL,
	[mitenna_ammattiryhma2_koodi] [nvarchar](20) NULL,
	[mitenna_ammattiryhma2] [nvarchar](250) NULL,
	[mitenna_ammattiryhma2_SV] [nvarchar](250) NULL,
	[mitenna_ammattiryhma2_EN] [nvarchar](250) NULL,
	[mitenna_ammatti_koodi] [nvarchar](20) NULL,
	[mitenna_ammatti] [nvarchar](250) NULL,
	[mitenna_ammatti_SV] [nvarchar](250) NULL,
	[mitenna_ammatti_EN] [nvarchar](250) NULL,
	[jarjestys_ammattiryhma1] [nvarchar](50) NULL,
	[jarjestys_ammattiryhma2] [nvarchar](50) NULL,
	[jarjestys_ammatti] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_mitenna_ammatti] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_mitenna_toimiala]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_mitenna_toimiala]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_mitenna_toimiala](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[mitenna_toimiala1_koodi] [nvarchar](20) NULL,
	[mitenna_toimiala1] [nvarchar](250) NULL,
	[mitenna_toimiala1_SV] [nvarchar](250) NULL,
	[mitenna_toimiala1_EN] [nvarchar](250) NULL,
	[mitenna_toimiala2_koodi] [nvarchar](20) NULL,
	[mitenna_toimiala2] [nvarchar](250) NULL,
	[mitenna_toimiala2_SV] [nvarchar](250) NULL,
	[mitenna_toimiala2_EN] [nvarchar](250) NULL,
	[tol_koodi] [nvarchar](20) NULL,
	[tol] [nvarchar](250) NULL,
	[tol_SV] [nvarchar](250) NULL,
	[tol_EN] [nvarchar](250) NULL,
	[jarjestys_mitenna_toimiala1] [nvarchar](50) NULL,
	[jarjestys_mitenna_toimiala2] [nvarchar](50) NULL,
	[jarjestys_tol] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_mitenna_toimiala] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_moninkertainen_haku]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_moninkertainen_haku]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_moninkertainen_haku](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[moninkertainen_haku_koodi] [nvarchar](2) NULL,
	[moninkertainen_haku] [nvarchar](250) NULL,
	[moninkertainen_haku_SV] [nvarchar](250) NULL,
	[moninkertainen_haku_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_moninkertainen_haku] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_nuorten_aikuisten_koulutus]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_nuorten_aikuisten_koulutus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_nuorten_aikuisten_koulutus](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[nuorten_aikuisten_koulutus_koodi] [nvarchar](2) NULL,
	[nuorten_aikuisten_koulutus] [nvarchar](50) NULL,
	[nuorten_aikuisten_koulutus_SV] [nvarchar](50) NULL,
	[nuorten_aikuisten_koulutus_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_nuorten_aikuisten_koulutus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_nuorten_aikuisten_koulutus_amm]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_nuorten_aikuisten_koulutus_amm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_nuorten_aikuisten_koulutus_amm](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[nuorten_aikuisten_koulutus_amm_koodi] [nvarchar](2) NULL,
	[nuorten_aikuisten_koulutus_amm] [nvarchar](50) NULL,
	[nuorten_aikuisten_koulutus_amm_SV] [nvarchar](50) NULL,
	[nuorten_aikuisten_koulutus_amm_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_nuorten_aikuisten_koulutus_amm] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opettajan_tehtavatyyppi_ammatillisessa_koulutuksessa]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opettajan_tehtavatyyppi_ammatillisessa_koulutuksessa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opettajan_tehtavatyyppi_ammatillisessa_koulutuksessa](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[tehtavatyyppi_koodi] [nvarchar](2) NULL,
	[tehtavatyyppi] [nvarchar](255) NULL,
	[tehtavatyyppi_SV] [nvarchar](255) NULL,
	[tehtavatyyppi_EN] [nvarchar](255) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](10) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_opettajan_tehtavatyyppi_ammatillisessa_koulutuksessa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opettajan_tehtavatyyppi_lukiokoulutuksessa]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opettajan_tehtavatyyppi_lukiokoulutuksessa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opettajan_tehtavatyyppi_lukiokoulutuksessa](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[tehtavatyyppi_koodi] [nvarchar](2) NULL,
	[tehtavatyyppi] [nvarchar](255) NULL,
	[tehtavatyyppi_SV] [nvarchar](255) NULL,
	[tehtavatyyppi_EN] [nvarchar](255) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](10) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_opettajan_tehtavatyyppi_lukiokoulutuksessa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opettajan_tehtavatyyppi_perusopetuksessa]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opettajan_tehtavatyyppi_perusopetuksessa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opettajan_tehtavatyyppi_perusopetuksessa](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[tehtavatyyppi_koodi] [nvarchar](2) NULL,
	[tehtavatyyppi] [nvarchar](255) NULL,
	[tehtavatyyppi_SV] [nvarchar](255) NULL,
	[tehtavatyyppi_EN] [nvarchar](255) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](10) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_opettajan_tehtavatyyppi_perusopetuksessa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opettajan_tehtavatyyppi_vapaassa_sivistystyossa]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opettajan_tehtavatyyppi_vapaassa_sivistystyossa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opettajan_tehtavatyyppi_vapaassa_sivistystyossa](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[tehtavatyyppi_koodi] [nvarchar](2) NULL,
	[tehtavatyyppi] [nvarchar](255) NULL,
	[tehtavatyyppi_SV] [nvarchar](255) NULL,
	[tehtavatyyppi_EN] [nvarchar](255) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](10) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_opettajan_tehtavatyyppi_vapaassa_sivistystyossa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opettajankelpoisuus]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opettajankelpoisuus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opettajankelpoisuus](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[opettajankelpoisuus_koodi] [nvarchar](2) NULL,
	[opettajankelpoisuus] [nvarchar](50) NULL,
	[opettajankelpoisuus_SV] [nvarchar](50) NULL,
	[opettajankelpoisuus_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_opettajankelpoisuus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opettajankelpoisuus2]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opettajankelpoisuus2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opettajankelpoisuus2](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[opettajankelpoisuus_koodi] [nvarchar](2) NULL,
	[opettajankelpoisuus] [nvarchar](50) NULL,
	[opettajankelpoisuus_SV] [nvarchar](50) NULL,
	[opettajankelpoisuus_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opettajat_aine]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opettajat_aine]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opettajat_aine](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[aine_koodi] [nvarchar](2) NULL,
	[aine] [nvarchar](255) NULL,
	[aine_SV] [nvarchar](255) NULL,
	[aine_EN] [nvarchar](255) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](10) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_opettajat_aine] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opettajat_aine_2016]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opettajat_aine_2016]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opettajat_aine_2016](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[aine_koodi] [nvarchar](2) NULL,
	[aine] [nvarchar](255) NULL,
	[aine_SV] [nvarchar](255) NULL,
	[aine_EN] [nvarchar](255) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](10) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_opettajat_aine_2016] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opettajat_aine_2016_lukio]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opettajat_aine_2016_lukio]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opettajat_aine_2016_lukio](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[aine_koodi] [nvarchar](2) NULL,
	[aine] [nvarchar](255) NULL,
	[aine_SV] [nvarchar](255) NULL,
	[aine_EN] [nvarchar](255) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](10) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_opettajat_aine_2016_lukio] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opettajat_aine_amm]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opettajat_aine_amm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opettajat_aine_amm](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[aine_koodi] [nvarchar](3) NULL,
	[aine] [nvarchar](255) NULL,
	[aine_SV] [nvarchar](255) NULL,
	[aine_EN] [nvarchar](255) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](10) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_opettajat_aine_amm] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opettajat_aine_vst]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opettajat_aine_vst]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opettajat_aine_vst](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[aine_koodi] [nvarchar](3) NULL,
	[aine] [nvarchar](255) NULL,
	[aine_SV] [nvarchar](255) NULL,
	[aine_EN] [nvarchar](255) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](10) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_opettajat_aine_vst] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opettajat_koko_osa_aikainen]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opettajat_koko_osa_aikainen]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opettajat_koko_osa_aikainen](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[koko_osa_aikainen_koodi] [nvarchar](2) NULL,
	[koko_osa_aikainen] [nvarchar](255) NULL,
	[koko_osa_aikainen_SV] [nvarchar](255) NULL,
	[koko_osa_aikainen_EN] [nvarchar](255) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](10) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opettajat_koulutusaste]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opettajat_koulutusaste]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opettajat_koulutusaste](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[koulutusaste_koodi] [nvarchar](2) NULL,
	[koulutusaste] [nvarchar](255) NULL,
	[koulutusaste_SV] [nvarchar](255) NULL,
	[koulutusaste_EN] [nvarchar](255) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](10) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_opettajat_koulutusaste] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opettajat_koulutusaste_amm]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opettajat_koulutusaste_amm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opettajat_koulutusaste_amm](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[koulutusaste_koodi] [nvarchar](2) NULL,
	[koulutusaste] [nvarchar](255) NULL,
	[koulutusaste_SV] [nvarchar](255) NULL,
	[koulutusaste_EN] [nvarchar](255) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](10) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_opettajat_koulutusaste_amm] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opettajat_luokka_aste]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opettajat_luokka_aste]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opettajat_luokka_aste](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[luokka_aste_koodi] [nvarchar](2) NULL,
	[luokka_aste] [nvarchar](255) NULL,
	[luokka_aste_SV] [nvarchar](255) NULL,
	[luokka_aste_EN] [nvarchar](255) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](10) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_opettajat_luokka_aste] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opettajat_osa_aikaisuuden_syy]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opettajat_osa_aikaisuuden_syy]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opettajat_osa_aikaisuuden_syy](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[syy_koodi] [nvarchar](2) NULL,
	[syy] [nvarchar](255) NULL,
	[syy_SV] [nvarchar](255) NULL,
	[syy_EN] [nvarchar](255) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](10) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opettajat_tyosuhteen_luonne]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opettajat_tyosuhteen_luonne]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opettajat_tyosuhteen_luonne](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[tyosuhteen_luonne_koodi] [nvarchar](2) NULL,
	[tyosuhteen_luonne] [nvarchar](255) NULL,
	[tyosuhteen_luonne_SV] [nvarchar](255) NULL,
	[tyosuhteen_luonne_EN] [nvarchar](255) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](10) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opetuksen_jarjestajan_tiedoantajatyyppi]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opetuksen_jarjestajan_tiedoantajatyyppi]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opetuksen_jarjestajan_tiedoantajatyyppi](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tiedonantajatyyppi_koodi] [nvarchar](10) NULL,
	[tiedonantajatyyppi] [nvarchar](250) NULL,
	[tiedonantajatyyppi_SV] [nvarchar](250) NULL,
	[tiedonantajatyyppi_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_opetuksen_jarjestajan_tiedoantajatyyppi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opetushallinnon_koulutus]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opetushallinnon_koulutus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opetushallinnon_koulutus](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[opetushallinnon_koulutus_koodi] [nvarchar](2) NULL,
	[opetushallinnon_koulutus] [nvarchar](50) NULL,
	[opetushallinnon_koulutus_SV] [nvarchar](100) NULL,
	[opetushallinnon_koulutus_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_opetushallinnon_koulutus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opetushallinnon_koulutusala]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opetushallinnon_koulutusala]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opetushallinnon_koulutusala](
	[id] [int] NULL,
	[koulutusala_koodi] [nvarchar](2) NULL,
	[koulutusala] [nvarchar](100) NULL,
	[koulutusala_SV] [nvarchar](100) NULL,
	[koulutusala_EN] [nvarchar](100) NULL,
	[jarjestys] [int] NULL,
	[tietolähde] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opetuskieli]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opetuskieli]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opetuskieli](
	[id] [int] NOT NULL,
	[opetuskieli_koodi] [nchar](2) NULL,
	[opetuskieli] [nvarchar](50) NULL,
	[opetuskieli_SV] [nvarchar](50) NULL,
	[opetuskieli_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](10) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_opetuskieli] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opetuskieli2]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opetuskieli2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opetuskieli2](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[opetuskieli_koodi] [nchar](2) NULL,
	[opetuskieli] [nvarchar](50) NULL,
	[opetuskieli_SV] [nvarchar](50) NULL,
	[opetuskieli_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_opetuskieli2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus_koodi] [nvarchar](2) NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus] [nvarchar](50) NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus_SV] [nvarchar](100) NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opetustuntien_sisalto_ja_tavoiteluokitus]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opetustuntien_sisalto_ja_tavoiteluokitus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opetustuntien_sisalto_ja_tavoiteluokitus](
	[id] [int] NOT NULL,
	[Opetustuntikoodi] [varchar](10) NULL,
	[Koulutusala_lajittelu] [int] NULL,
	[Koulutusala] [varchar](150) NULL,
	[Koulutusala_SV] [varchar](150) NULL,
	[Koulutusala_EN] [varchar](150) NULL,
	[Opintoala_lajittelu] [int] NULL,
	[Opintoala] [varchar](150) NULL,
	[Opintoala_SV] [varchar](150) NULL,
	[Opintoala_EN] [varchar](150) NULL,
	[Koulutustyyppi_lajittelu] [int] NULL,
	[Koulutustyyppi] [varchar](150) NULL,
	[Koulutustyyppi_SV] [varchar](150) NULL,
	[Koulutustyyppi_EN] [varchar](150) NULL,
	[Opetustunti_lajittelu] [int] NULL,
	[Opetustunti] [varchar](150) NULL,
	[Opetustunti_SV] [varchar](150) NULL,
	[Opetustunti_EN] [varchar](150) NULL,
 CONSTRAINT [PK_d_opetustuntien_sisalto_ja_tavoiteluokitus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opintoala2002]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opintoala2002]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opintoala2002](
	[opintoala2002_koodi] [nvarchar](3) NOT NULL,
	[opintoala2002] [nvarchar](255) NULL,
	[opintoala2002_SV] [nvarchar](255) NULL,
	[opintoala2002_EN] [nvarchar](255) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_opintoala2002] PRIMARY KEY CLUSTERED 
(
	[opintoala2002_koodi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opintojen_kulku_koulutuksen_jarjestajan_mukaan]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opintojen_kulku_koulutuksen_jarjestajan_mukaan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opintojen_kulku_koulutuksen_jarjestajan_mukaan](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[opintojen_kulku_koulutuksen_jarjestajan_mukaan_koodi] [nchar](2) NULL,
	[opintojen_kulku_koulutuksen_jarjestajan_mukaan] [nvarchar](100) NULL,
	[opintojen_kulku_koulutuksen_jarjestajan_mukaan_SV] [nvarchar](100) NULL,
	[opintojen_kulku_koulutuksen_jarjestajan_mukaan_EN] [nvarchar](100) NULL,
	[jarjestys_4a] [nvarchar](10) NULL,
	[jarjestys_4b] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_opintojen_kulku_koulutuksen_jarjestajan_mukaan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opintojen_kulku_koulutuksen_jarjestajan_mukaan_versio2]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opintojen_kulku_koulutuksen_jarjestajan_mukaan_versio2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opintojen_kulku_koulutuksen_jarjestajan_mukaan_versio2](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[opintojen_kulku_koulutuksen_jarjestajan_mukaan_versio2_koodi] [nchar](2) NULL,
	[opintojen_kulku_koulutuksen_jarjestajan_mukaan_versio2] [nvarchar](100) NULL,
	[opintojen_kulku_koulutuksen_jarjestajan_mukaan_versio2_SV] [nvarchar](100) NULL,
	[opintojen_kulku_koulutuksen_jarjestajan_mukaan_versio2_EN] [nvarchar](100) NULL,
	[jarjestys_4bb] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_opintojen_kulku_koulutuksen_jarjestajan_mukaan_versio2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opintojen_kulku_koulutusalan_2002_mukaan]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opintojen_kulku_koulutusalan_2002_mukaan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opintojen_kulku_koulutusalan_2002_mukaan](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[opintojen_kulku_koulutusalan_2002_mukaan_koodi] [nchar](2) NULL,
	[opintojen_kulku_koulutusalan_2002_mukaan] [nvarchar](100) NULL,
	[opintojen_kulku_koulutusalan_2002_mukaan_SV] [nvarchar](100) NULL,
	[opintojen_kulku_koulutusalan_2002_mukaan_EN] [nvarchar](100) NULL,
	[jarjestys_2a] [nvarchar](10) NULL,
	[jarjestys_2b] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_opintojen_kulku_koulutusalan_2002_mukaan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opintojen_kulku_koulutusalan_2002_mukaan_versio2]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opintojen_kulku_koulutusalan_2002_mukaan_versio2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opintojen_kulku_koulutusalan_2002_mukaan_versio2](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[opintojen_kulku_koulutusalan_2002_mukaan_versio2_koodi] [nchar](2) NULL,
	[opintojen_kulku_koulutusalan_2002_mukaan_versio2] [nvarchar](100) NULL,
	[opintojen_kulku_koulutusalan_2002_mukaan_versio2_SV] [nvarchar](100) NULL,
	[opintojen_kulku_koulutusalan_2002_mukaan_versio2_EN] [nvarchar](100) NULL,
	[jarjestys_2bb] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_opintojen_kulku_koulutusalan_2002_mukaan_versio2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opintojen_kulku_koulutusasteen_2002_mukaan]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opintojen_kulku_koulutusasteen_2002_mukaan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opintojen_kulku_koulutusasteen_2002_mukaan](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[opintojen_kulku_koulutusasteen_2002_mukaan_koodi] [nchar](2) NULL,
	[opintojen_kulku_koulutusasteen_2002_mukaan] [nvarchar](100) NULL,
	[opintojen_kulku_koulutusasteen_2002_mukaan_SV] [nvarchar](100) NULL,
	[opintojen_kulku_koulutusasteen_2002_mukaan_EN] [nvarchar](100) NULL,
	[jarjestys_1a] [nvarchar](10) NULL,
	[jarjestys_1b] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_opintojen_kulku_koulutusasteen_2002_mukaan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opintojen_kulku_koulutussektorin_mukaan]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opintojen_kulku_koulutussektorin_mukaan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opintojen_kulku_koulutussektorin_mukaan](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[opintojen_kulku_koulutussektorin_mukaan_koodi] [nchar](2) NULL,
	[opintojen_kulku_koulutussektorin_mukaan] [nvarchar](100) NULL,
	[opintojen_kulku_koulutussektorin_mukaan_SV] [nvarchar](100) NULL,
	[opintojen_kulku_koulutussektorin_mukaan_EN] [nvarchar](100) NULL,
	[jarjestys_7a] [nvarchar](10) NULL,
	[jarjestys_7b] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_opintojen_kulku_koulutussektorin_mukaan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opintojen_kulku_maakunnan_mukaan]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opintojen_kulku_maakunnan_mukaan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opintojen_kulku_maakunnan_mukaan](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[opintojen_kulku_maakunnan_mukaan_koodi] [nchar](2) NULL,
	[opintojen_kulku_maakunnan_mukaan] [nvarchar](100) NULL,
	[opintojen_kulku_maakunnan_mukaan_SV] [nvarchar](100) NULL,
	[opintojen_kulku_maakunnan_mukaan_EN] [nvarchar](100) NULL,
	[jarjestys_6a] [nvarchar](10) NULL,
	[jarjestys_6b] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_opintojen_kulku_maakunnan_mukaan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opintojen_kulku_opintoalan_2002_mukaan]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opintojen_kulku_opintoalan_2002_mukaan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opintojen_kulku_opintoalan_2002_mukaan](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[opintojen_kulku_opintoala_2002_mukaan_koodi] [nchar](2) NULL,
	[opintojen_kulku_opintoala_2002_mukaan] [nvarchar](100) NULL,
	[opintojen_kulku_opintoala_2002_mukaan_SV] [nvarchar](100) NULL,
	[opintojen_kulku_opintoala_2002_mukaan_EN] [nvarchar](100) NULL,
	[jarjestys_3a] [nvarchar](10) NULL,
	[jarjestys_3b] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_opintojen_kulku_opintoalan_2002_mukaan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opintojen_kulku_opintoalan_2002_mukaan_versio2]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opintojen_kulku_opintoalan_2002_mukaan_versio2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opintojen_kulku_opintoalan_2002_mukaan_versio2](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[opintojen_kulku_opintoala_2002_mukaan_versio2_koodi] [nchar](2) NULL,
	[opintojen_kulku_opintoala_2002_mukaan_versio2] [nvarchar](100) NULL,
	[opintojen_kulku_opintoala_2002_mukaan_versio2_SV] [nvarchar](100) NULL,
	[opintojen_kulku_opintoala_2002_mukaan_versio2_EN] [nvarchar](100) NULL,
	[jarjestys_3bb] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_opintojen_kulku_opintoalan_2002_mukaan_versio2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opintojen_kulku_oppilaitoksen_mukaan]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opintojen_kulku_oppilaitoksen_mukaan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opintojen_kulku_oppilaitoksen_mukaan](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[opintojen_kulku_oppilaitoksen_mukaan_koodi] [nchar](2) NULL,
	[opintojen_kulku_oppilaitoksen_mukaan] [nvarchar](100) NULL,
	[opintojen_kulku_oppilaitoksen_mukaan_SV] [nvarchar](100) NULL,
	[opintojen_kulku_oppilaitoksen_mukaan_EN] [nvarchar](100) NULL,
	[jarjestys_5a] [nvarchar](10) NULL,
	[jarjestys_5b] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_opintojen_kulku_oppilaitoksen_mukaan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opintojen_kulku_oppilaitoksen_mukaan_versio2]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opintojen_kulku_oppilaitoksen_mukaan_versio2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opintojen_kulku_oppilaitoksen_mukaan_versio2](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[opintojen_kulku_oppilaitoksen_mukaan_versio2_koodi] [nchar](2) NULL,
	[opintojen_kulku_oppilaitoksen_mukaan_versio2] [nvarchar](100) NULL,
	[opintojen_kulku_oppilaitoksen_mukaan_versio2_SV] [nvarchar](100) NULL,
	[opintojen_kulku_oppilaitoksen_mukaan_versio2_EN] [nvarchar](100) NULL,
	[jarjestys_5bb] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_opintojen_kulku_oppilaitoksen_mukaan_versio2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opiskelijan_aikaisempi_yleissivistava_koulutus]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opiskelijan_aikaisempi_yleissivistava_koulutus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opiskelijan_aikaisempi_yleissivistava_koulutus](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[opiskelijan_aikaisempi_yleissivistava_koulutus_koodi] [nvarchar](10) NULL,
	[opiskelijan_aikaisempi_yleissivistava_koulutus] [nvarchar](50) NULL,
	[opiskelijan_aikaisempi_yleissivistava_koulutus_SV] [nvarchar](50) NULL,
	[opiskelijan_aikaisempi_yleissivistava_koulutus_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_opiskelijan_aikaisempi_yleissivistava_koulutus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opiskelijan_fte_tieto]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opiskelijan_fte_tieto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opiskelijan_fte_tieto](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[opiskelijan_fte_tieto_koodi] [nvarchar](2) NULL,
	[opiskelijan_fte_tieto] [nvarchar](50) NULL,
	[opiskelijan_fte_tieto_SV] [nvarchar](50) NULL,
	[opiskelijan_fte_tieto_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_opiskelijan_fte_tieto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opiskelijan_olo]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opiskelijan_olo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opiskelijan_olo](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[opiskelijan_olo_koodi] [nvarchar](10) NULL,
	[opiskelijan_olo] [nvarchar](250) NULL,
	[opiskelijan_olo_SV] [nvarchar](250) NULL,
	[opiskelijan_olo_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_opiskelijan_olo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opiskelijan_olo_tamm]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opiskelijan_olo_tamm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opiskelijan_olo_tamm](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[opiskelijan_olo_tamm_koodi] [nvarchar](10) NULL,
	[opiskelijan_olo_tamm] [nvarchar](250) NULL,
	[opiskelijan_olo_tamm_SV] [nvarchar](250) NULL,
	[opiskelijan_olo_tamm_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_opiskelijan_olo_tamm] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opiskelu_toiminta]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opiskelu_toiminta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opiskelu_toiminta](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[opiskelu_toiminta_koodi] [nvarchar](10) NULL,
	[opiskelu_toiminta] [nvarchar](250) NULL,
	[opiskelu_toiminta_SV] [nvarchar](250) NULL,
	[opiskelu_toiminta_EN] [nvarchar](250) NULL,
	[jarjestys_opiskelu_toiminta] [nvarchar](50) NULL,
	[virhetilanne] [nchar](10) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_opiskelumuoto]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_opiskelumuoto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_opiskelumuoto](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[opiskelumuoto_koodi] [nvarchar](2) NULL,
	[opiskelumuoto] [nvarchar](50) NULL,
	[opiskelumuoto_SV] [nvarchar](50) NULL,
	[opiskelumuoto_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_opiskelumuoto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_oppilaitoksen_taustatiedot]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_oppilaitoksen_taustatiedot]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_oppilaitoksen_taustatiedot](
	[id] [int] NOT NULL,
	[oppilaitos_avain] [nvarchar](10) NULL,
	[oppilaitoskoodi] [nvarchar](10) NULL,
	[oppilaitoksen_korvaavakoodi] [nvarchar](5) NULL,
	[oppilaitos] [nvarchar](255) NULL,
	[oppilaitos_SV] [nvarchar](255) NULL,
	[oppilaitos_EN] [nvarchar](255) NULL,
	[sairaalakoulukoodi] [nvarchar](2) NULL,
	[sairaalakoulu] [nvarchar](255) NULL,
	[sairaalakoulu_SV] [nvarchar](255) NULL,
	[sairaalakoulu_EN] [nvarchar](255) NULL,
	[oppilaitostyyppikoodi] [nvarchar](2) NULL,
	[oppilaitostyyppi] [nvarchar](255) NULL,
	[oppilaitostyyppi_SV] [nvarchar](255) NULL,
	[oppilaitostyyppi_EN] [nvarchar](255) NULL,
	[peruskoulujen_ryhmityskoodi] [nvarchar](2) NULL,
	[peruskoulujen_ryhmitys] [nvarchar](255) NULL,
	[peruskoulujen_ryhmitys_SV] [nvarchar](255) NULL,
	[peruskoulujen_ryhmitys_EN] [nvarchar](255) NULL,
	[peruskoulujen_vuosilkskoodi] [nvarchar](2) NULL,
	[peruskoulujen_vuosilks] [nvarchar](255) NULL,
	[peruskoulujen_vuosilks_SV] [nvarchar](255) NULL,
	[peruskoulujen_vuosilks_EN] [nvarchar](255) NULL,
	[oppilaitoksen_omistajatyyppikoodi] [nvarchar](2) NULL,
	[oppilaitoksen_omistajatyyppi] [nvarchar](255) NULL,
	[oppilaitoksen_omistajatyyppi_SV] [nvarchar](255) NULL,
	[oppilaitoksen_omistajatyyppi_EN] [nvarchar](255) NULL,
	[opetuskielikoodi] [nvarchar](2) NULL,
	[opetuskieli] [nvarchar](255) NULL,
	[opetuskieli_SV] [nvarchar](255) NULL,
	[opetuskieli_EN] [nvarchar](255) NULL,
	[sijaintikuntakoodi] [nvarchar](3) NULL,
	[oppilaitoksen_sijaintikunta] [nvarchar](255) NULL,
	[oppilaitoksen_sijaintikunta_SV] [nvarchar](255) NULL,
	[oppilaitoksen_sijaintikunta_EN] [nvarchar](255) NULL,
	[koordinaatti_itakoodi] [nvarchar](10) NULL,
	[koordinaatti_pohjoiskoodi] [nvarchar](10) NULL,
	[postinumerokoodi] [nvarchar](5) NULL,
	[jarjestys_oppilaitos] [nvarchar](10) NULL,
	[jarjestys_sairaalakoulu] [nvarchar](10) NULL,
	[jarjestys_oppilaitostyyppi] [nvarchar](10) NULL,
	[jarjestys_peruskoulujen_ryhmitys] [nvarchar](10) NULL,
	[jarjestys_peruskoulujen_vuosilks] [nvarchar](10) NULL,
	[jarjestys_omistajatyyppi] [nvarchar](10) NULL,
	[jarjestys_opetuskieli] [nvarchar](10) NULL,
	[jarjestys_koulutuksen_jarjestaja] [nvarchar](10) NULL,
	[jarjestys_sijaintikunta] [nvarchar](10) NULL,
	[jarjestys_koordinaatti_ita] [nvarchar](10) NULL,
	[jarjestys_koordinaatti_pohjois] [nvarchar](10) NULL,
	[jarjestys_postinumero] [nvarchar](10) NULL,
	[tietolahde_oppilaitos] [nvarchar](50) NULL,
	[koulutuksen_jarjestajakoodi] [nvarchar](10) NULL,
	[koulutuksen_jarjestajan_korvaavakoodi] [varchar](10) NULL,
	[koulutuksen_jarjestaja] [nvarchar](255) NULL,
	[koulutuksen_jarjestaja_SV] [nvarchar](255) NULL,
	[koulutuksen_jarjestaja_EN] [nvarchar](255) NULL,
	[koulutuksen_jarjestajan_omistajatyyppikoodi] [varchar](2) NULL,
	[koulutuksen_jarjestajan_omistajatyyppi] [nvarchar](255) NULL,
	[koulutuksen_jarjestajan_omistajatyyppi_SV] [nvarchar](255) NULL,
	[koulutuksen_jarjestajan_omistajatyyppi_EN] [nvarchar](255) NULL,
	[koulutuksen_jarjestajan_kielikoodi] [varchar](2) NULL,
	[koulutuksen_jarjestajan_kieli] [nvarchar](255) NULL,
	[koulutuksen_jarjestajan_kieli_SV] [nvarchar](255) NULL,
	[koulutuksen_jarjestajan_kieli_EN] [nvarchar](255) NULL,
	[koulutuksen_jarjestajan_ksijaintikuntakoodi] [varchar](3) NULL,
	[koulutuksen_jarjestajan_sijaintikunta] [nvarchar](255) NULL,
	[koulutuksen_jarjestajan_sijaintikunta_SV] [nvarchar](255) NULL,
	[koulutuksen_jarjestajan_sijaintikunta_EN] [nvarchar](255) NULL,
	[jarjestys_koulutuksenjarjestaja] [nvarchar](10) NULL,
	[jarjestys_koulutuksen_jarjestajan_kieli] [nvarchar](10) NULL,
	[jarjestys_sijaintikunta_koulutuksenjarjestaja] [nvarchar](10) NULL,
	[tietolahde_koulutuksenjarjestaja] [nvarchar](50) NULL,
	[koulutuksen_jarjestajan_ainoa_oppilaitos] [nvarchar](20) NULL,
 CONSTRAINT [PK_d_oppilaitoksen_taustatiedot_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_oppilaitoksen_taustatiedot_historia]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_oppilaitoksen_taustatiedot_historia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_oppilaitoksen_taustatiedot_historia](
	[id] [int] NOT NULL,
	[oppilaitos_avain] [nvarchar](10) NULL,
	[oppilaitoskoodi] [nvarchar](10) NULL,
	[oppilaitoksen_korvaavakoodi] [nvarchar](5) NULL,
	[alkaa] [datetime2](7) NULL,
	[paattyy] [datetime2](7) NULL,
	[oppilaitos] [nvarchar](255) NULL,
	[oppilaitos_SV] [nvarchar](255) NULL,
	[oppilaitos_EN] [nvarchar](255) NULL,
	[sairaalakoulukoodi] [nvarchar](2) NULL,
	[sairaalakoulu] [nvarchar](255) NULL,
	[sairaalakoulu_SV] [nvarchar](255) NULL,
	[sairaalakoulu_EN] [nvarchar](255) NULL,
	[oppilaitostyyppikoodi] [nvarchar](2) NULL,
	[oppilaitostyyppi] [nvarchar](255) NULL,
	[oppilaitostyyppi_SV] [nvarchar](255) NULL,
	[oppilaitostyyppi_EN] [nvarchar](255) NULL,
	[peruskoulujen_ryhmityskoodi] [nvarchar](2) NULL,
	[peruskoulujen_ryhmitys] [nvarchar](255) NULL,
	[peruskoulujen_ryhmitys_SV] [nvarchar](255) NULL,
	[peruskoulujen_ryhmitys_EN] [nvarchar](255) NULL,
	[peruskoulujen_vuosilkskoodi] [nvarchar](2) NULL,
	[peruskoulujen_vuosilks] [nvarchar](255) NULL,
	[peruskoulujen_vuosilks_SV] [nvarchar](255) NULL,
	[peruskoulujen_vuosilks_EN] [nvarchar](255) NULL,
	[oppilaitoksen_omistajatyyppikoodi] [nvarchar](2) NULL,
	[oppilaitoksen_omistajatyyppi] [nvarchar](255) NULL,
	[oppilaitoksen_omistajatyyppi_SV] [nvarchar](255) NULL,
	[oppilaitoksen_omistajatyyppi_EN] [nvarchar](255) NULL,
	[opetuskielikoodi] [nvarchar](2) NULL,
	[opetuskieli] [nvarchar](255) NULL,
	[opetuskieli_SV] [nvarchar](255) NULL,
	[opetuskieli_EN] [nvarchar](255) NULL,
	[sijaintikuntakoodi] [nvarchar](3) NULL,
	[oppilaitoksen_sijaintikunta] [nvarchar](255) NULL,
	[oppilaitoksen_sijaintikunta_SV] [nvarchar](255) NULL,
	[oppilaitoksen_sijaintikunta_EN] [nvarchar](255) NULL,
	[koordinaatti_itakoodi] [nvarchar](10) NULL,
	[koordinaatti_pohjoiskoodi] [nvarchar](10) NULL,
	[postinumerokoodi] [nvarchar](5) NULL,
	[jarjestys_oppilaitos] [nvarchar](10) NULL,
	[jarjestys_sairaalakoulu] [nvarchar](10) NULL,
	[jarjestys_oppilaitostyyppi] [nvarchar](10) NULL,
	[jarjestys_peruskoulujen_ryhmitys] [nvarchar](10) NULL,
	[jarjestys_peruskoulujen_vuosilks] [nvarchar](10) NULL,
	[jarjestys_omistajatyyppi] [nvarchar](10) NULL,
	[jarjestys_opetuskieli] [nvarchar](10) NULL,
	[jarjestys_koulutuksen_jarjestaja] [nvarchar](10) NULL,
	[jarjestys_sijaintikunta] [nvarchar](10) NULL,
	[jarjestys_koordinaatti_ita] [nvarchar](10) NULL,
	[jarjestys_koordinaatti_pohjois] [nvarchar](10) NULL,
	[jarjestys_postinumero] [nvarchar](10) NULL,
	[tietolahde_oppilaitos] [nvarchar](50) NULL,
	[koulutuksen_jarjestajakoodi] [nvarchar](10) NULL,
	[koulutuksen_jarjestajan_korvaavakoodi] [varchar](10) NULL,
	[koulutuksen_jarjestaja] [nvarchar](255) NULL,
	[koulutuksen_jarjestaja_SV] [nvarchar](255) NULL,
	[koulutuksen_jarjestaja_EN] [nvarchar](255) NULL,
	[koulutuksen_jarjestajan_omistajatyyppikoodi] [varchar](2) NULL,
	[koulutuksen_jarjestajan_omistajatyyppi] [nvarchar](255) NULL,
	[koulutuksen_jarjestajan_omistajatyyppi_SV] [nvarchar](255) NULL,
	[koulutuksen_jarjestajan_omistajatyyppi_EN] [nvarchar](255) NULL,
	[koulutuksen_jarjestajan_kielikoodi] [varchar](2) NULL,
	[koulutuksen_jarjestajan_kieli] [nvarchar](255) NULL,
	[koulutuksen_jarjestajan_kieli_SV] [nvarchar](255) NULL,
	[koulutuksen_jarjestajan_kieli_EN] [nvarchar](255) NULL,
	[koulutuksen_jarjestajan_ksijaintikuntakoodi] [varchar](3) NULL,
	[koulutuksen_jarjestajan_sijaintikunta] [nvarchar](255) NULL,
	[koulutuksen_jarjestajan_sijaintikunta_SV] [nvarchar](255) NULL,
	[koulutuksen_jarjestajan_sijaintikunta_EN] [nvarchar](255) NULL,
	[jarjestys_koulutuksenjarjestaja] [nvarchar](10) NULL,
	[jarjestys_koulutuksen_jarjestajan_kieli] [nvarchar](10) NULL,
	[jarjestys_sijaintikunta_koulutuksenjarjestaja] [nvarchar](10) NULL,
	[tietolahde_koulutuksenjarjestaja] [nvarchar](50) NULL,
	[koulutuksen_jarjestajan_ainoa_oppilaitos] [nvarchar](20) NULL,
 CONSTRAINT [PK_d_oppilaitoksen_taustatiedot_historia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_oppilaitostyyppi]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_oppilaitostyyppi]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_oppilaitostyyppi](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[oppilaitostyyppi_koodi] [nchar](2) NULL,
	[oppilaitostyyppi] [nvarchar](150) NULL,
	[oppilaitostyyppi_SV] [nvarchar](150) NULL,
	[oppilaitostyyppi_EN] [nvarchar](150) NULL,
	[jarjestys] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_oppilaitostyyppi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_oppisopimus_purkautunut]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_oppisopimus_purkautunut]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_oppisopimus_purkautunut](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[oppisopimus_purkautunut_koodi] [nvarchar](2) NULL,
	[oppisopimus_purkautunut] [nvarchar](50) NULL,
	[oppisopimus_purkautunut_SV] [nvarchar](50) NULL,
	[oppisopimus_purkautunut_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_oppisopimus_purkautunut] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_oppisopimus_yrityksen_koko]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_oppisopimus_yrityksen_koko]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_oppisopimus_yrityksen_koko](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[oppisopimus_yrityksen_koko_koodi] [nvarchar](2) NULL,
	[oppisopimus_yrityksen_koko] [nvarchar](50) NULL,
	[oppisopimus_yrityksen_koko_SV] [nvarchar](50) NULL,
	[oppisopimus_yrityksen_koko_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_oppisopimus_yrityksen_koko] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_oppisopimuskoulutus]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_oppisopimuskoulutus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_oppisopimuskoulutus](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[oppisopimuskoulutus_koodi] [nvarchar](2) NULL,
	[oppisopimuskoulutus] [nvarchar](50) NULL,
	[oppisopimuskoulutus_SV] [nvarchar](100) NULL,
	[oppisopimuskoulutus_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_oppisopimuskoulutus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_oppisopimuskoulutus_osallistuneet_ja_tutk_suorittaneet]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_oppisopimuskoulutus_osallistuneet_ja_tutk_suorittaneet]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_oppisopimuskoulutus_osallistuneet_ja_tutk_suorittaneet](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[oppis_osallis_ja_tutk_suor_koodi] [varchar](8) NULL,
	[oppis_osallis_ja_tutk_suor] [nvarchar](60) NULL,
	[oppis_osallis_ja_tutk_suor_SV] [nvarchar](60) NULL,
	[oppis_osallis_ja_tutk_suor_EN] [nvarchar](60) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_oppisopimuskoulutus_osallistuneet_ja_tutk_suorittaneet] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_osatutkinto]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_osatutkinto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_osatutkinto](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[osatutkinto_koodi] [nvarchar](10) NULL,
	[osatutkinto] [nvarchar](50) NULL,
	[osatutkinto_SV] [nvarchar](50) NULL,
	[osatutkinto_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_osatutkinto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_paaasiallinen_toiminta]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_paaasiallinen_toiminta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_paaasiallinen_toiminta](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[paaasiallinen_toiminta_koodi] [nvarchar](10) NULL,
	[paaasiallinen_toiminta] [nvarchar](250) NULL,
	[paaasiallinen_toiminta_SV] [nvarchar](250) NULL,
	[paaasiallinen_toiminta_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_paaasiallinen_toiminta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_paaasiallinen_toiminta_ja_maasta_muuttaneet]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_paaasiallinen_toiminta_ja_maasta_muuttaneet]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_paaasiallinen_toiminta_ja_maasta_muuttaneet](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[paaasiallinen_toiminta_ja_maasta_muuttaneet_koodi] [nvarchar](10) NULL,
	[paaasiallinen_toiminta_ja_maasta_muuttaneet] [nvarchar](250) NULL,
	[paaasiallinen_toiminta_ja_maasta_muuttaneet_SV] [nvarchar](250) NULL,
	[paaasiallinen_toiminta_ja_maasta_muuttaneet_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](10) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_paaasiallinen_toiminta_ja_maasta_muuttaneet] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_paaasiallinen_toiminta_okm]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_paaasiallinen_toiminta_okm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_paaasiallinen_toiminta_okm](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[paaasiallinen_toiminta_okm_koodi] [nvarchar](10) NULL,
	[paaasiallinen_toiminta_okm] [nvarchar](250) NULL,
	[paaasiallinen_toiminta_okm_SV] [nvarchar](250) NULL,
	[paaasiallinen_toiminta_okm_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_paaasiallinen_toiminta_okm] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_paaasiallinen_toiminta_versio2]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_paaasiallinen_toiminta_versio2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_paaasiallinen_toiminta_versio2](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[paaasiallinen_toiminta_versio2_koodi] [nvarchar](2) NULL,
	[paaasiallinen_toiminta_versio2] [nvarchar](50) NULL,
	[paaasiallinen_toiminta_versio2_SV] [nvarchar](50) NULL,
	[paaasiallinen_toiminta_versio2_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_paaasiallinen_toiminta_versio2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_paaasiallinen_toiminta_versio3]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_paaasiallinen_toiminta_versio3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_paaasiallinen_toiminta_versio3](
	[id] [int] NOT NULL,
	[paaasiallinen_toiminta_versio3_avain] [nvarchar](2) NULL,
	[paaasiallinen_toiminta_versio3] [nvarchar](50) NULL,
	[paaasiallinen_toiminta_versio3_SV] [nvarchar](50) NULL,
	[paaasiallinen_toiminta_versio3_EN] [nvarchar](50) NULL,
	[jarjestys_paaasiallinen_toiminta_versio3] [nvarchar](50) NULL,
	[paaasiallinen_toiminta_versio3_TTHV] [nvarchar](50) NULL,
	[paaasiallinen_toiminta_versio3_TTHV_SV] [nvarchar](50) NULL,
	[paaasiallinen_toiminta_versio3_TTHV_EN] [nvarchar](50) NULL,
	[jarjestys_paaasiallinen_toiminta_versio3_TTHV] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_perusjoukko]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_perusjoukko]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_perusjoukko](
	[id] [int] NOT NULL,
	[perusjoukko_avain] [nvarchar](10) NULL,
	[perusjoukko] [nvarchar](250) NULL,
	[perusjoukko_SV] [nvarchar](250) NULL,
	[perusjoukko_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_perusjoukko] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_perusjoukko_tyolliset]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_perusjoukko_tyolliset]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_perusjoukko_tyolliset](
	[id] [int] NOT NULL,
	[perusjoukko_tyolliset_avain] [nvarchar](10) NULL,
	[perusjoukko_tyolliset] [nvarchar](250) NULL,
	[perusjoukko_tyolliset_SV] [nvarchar](250) NULL,
	[perusjoukko_tyolliset_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_perusjoukko_tyolliset] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_perusopetuksen_ainevalinnat]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_perusopetuksen_ainevalinnat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_perusopetuksen_ainevalinnat](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[aineryhmä] [nvarchar](50) NULL,
	[aineryhmä_SV] [nvarchar](50) NULL,
	[aineryhmä_EN] [nvarchar](50) NULL,
	[aine_koodi] [nvarchar](10) NULL,
	[aine] [nvarchar](250) NULL,
	[aine_SV] [nvarchar](250) NULL,
	[aine_EN] [nvarchar](250) NULL,
	[kielen_taso_koodi] [nvarchar](10) NULL,
	[kielen_taso] [nvarchar](250) NULL,
	[kielen_taso_SV] [nvarchar](250) NULL,
	[kielen_taso_EN] [nvarchar](250) NULL,
	[ainevalinta] [nvarchar](250) NULL,
	[ainevalinta_SV] [nvarchar](250) NULL,
	[ainevalinta_EN] [nvarchar](250) NULL,
	[aineryhmä_jarjestys] [nvarchar](50) NULL,
	[aine_jarjestys] [nvarchar](50) NULL,
	[kielen_taso_jarjestys] [nvarchar](50) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_perusopetuksen_ainevalinnat] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_perusopetuksen_aloitusika]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_perusopetuksen_aloitusika]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_perusopetuksen_aloitusika](
	[id] [int] NOT NULL,
	[perusopetuksen_aloitusika_koodi] [nchar](10) NULL,
	[perusopetuksen_aloitusika] [nvarchar](50) NULL,
	[perusopetuksen_aloitusika_SV] [nvarchar](50) NULL,
	[perusopetuksen_aloitusika_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](10) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_perusopetuksen_aloitusika] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_perusopetuksen_erityisen_tuen_paatos]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_perusopetuksen_erityisen_tuen_paatos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_perusopetuksen_erityisen_tuen_paatos](
	[id] [int] NOT NULL,
	[perusopetuksen_erityisen_tuen_paatos_koodi] [nchar](2) NULL,
	[perusopetuksen_erityisen_tuen_paatos] [nvarchar](50) NULL,
	[perusopetuksen_erityisen_tuen_paatos_SV] [nvarchar](50) NULL,
	[perusopetuksen_erityisen_tuen_paatos_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](10) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_perusopetuksen_erityisen_tuen_paatos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_perusopetuksen_kieltenmaara]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_perusopetuksen_kieltenmaara]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_perusopetuksen_kieltenmaara](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[kieltenmäärä_koodi] [nvarchar](10) NULL,
	[kieltenmäärä] [nvarchar](250) NULL,
	[kieltenmäärä_SV] [nvarchar](250) NULL,
	[kieltenmäärä_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_perusopetuksen_kieltenmaara] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_perusopetuksen_kuljetusetuus]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_perusopetuksen_kuljetusetuus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_perusopetuksen_kuljetusetuus](
	[id] [int] NOT NULL,
	[perusopetuksen_kuljetusetuus_koodi] [nchar](2) NULL,
	[perusopetuksen_kuljetusetuus] [nvarchar](50) NULL,
	[perusopetuksen_kuljetusetuus_SV] [nvarchar](50) NULL,
	[perusopetuksen_kuljetusetuus_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](10) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_perusopetuksen_kuljetusetuus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_perusopetuksen_majoitusetuus]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_perusopetuksen_majoitusetuus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_perusopetuksen_majoitusetuus](
	[id] [int] NOT NULL,
	[perusopetuksen_majoitusetuus_koodi] [nchar](2) NULL,
	[perusopetuksen_majoitusetuus] [nvarchar](50) NULL,
	[perusopetuksen_majoitusetuus_SV] [nvarchar](50) NULL,
	[perusopetuksen_majoitusetuus_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](10) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_perusopetuksen_majoitusetuus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_perusopetuksen_oppimaaran_yksilollistaminen]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_perusopetuksen_oppimaaran_yksilollistaminen]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_perusopetuksen_oppimaaran_yksilollistaminen](
	[id] [int] NOT NULL,
	[perusopetuksen_oppimaaran_yksilollistaminen_koodi] [nchar](10) NULL,
	[perusopetuksen_oppimaaran_yksilollistaminen] [nvarchar](100) NULL,
	[perusopetuksen_oppimaaran_yksilollistaminen_SV] [nvarchar](100) NULL,
	[perusopetuksen_oppimaaran_yksilollistaminen_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](10) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_perusopetuksen_oppimaaran_yksilollistaminen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_perusopetuksen_pidennetty_oppivelvollisuus]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_perusopetuksen_pidennetty_oppivelvollisuus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_perusopetuksen_pidennetty_oppivelvollisuus](
	[id] [int] NOT NULL,
	[perusopetuksen_pidennetty_oppivelvollisuus_koodi] [nchar](2) NULL,
	[perusopetuksen_pidennetty_oppivelvollisuus] [nvarchar](50) NULL,
	[perusopetuksen_pidennetty_oppivelvollisuus_SV] [nvarchar](50) NULL,
	[perusopetuksen_pidennetty_oppivelvollisuus_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](10) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_perusopetuksen_pidennetty_oppivelvollisuus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_perusopetuksen_tehostettu_tuki]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_perusopetuksen_tehostettu_tuki]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_perusopetuksen_tehostettu_tuki](
	[id] [int] NOT NULL,
	[perusopetuksen_tehostettu_tuki_koodi] [nchar](10) NULL,
	[perusopetuksen_tehostettu_tuki] [nvarchar](50) NULL,
	[perusopetuksen_tehostettu_tuki_SV] [nvarchar](100) NULL,
	[perusopetuksen_tehostettu_tuki_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](10) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_perusopetuksen_tehostettu_tuki] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_perusopetuksen_tukimuoto]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_perusopetuksen_tukimuoto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_perusopetuksen_tukimuoto](
	[id] [int] NOT NULL,
	[perusopetuksen_tukimuoto_koodi] [nchar](10) NULL,
	[perusopetuksen_tukimuoto] [nvarchar](50) NULL,
	[perusopetuksen_tukimuoto_SV] [nvarchar](50) NULL,
	[perusopetuksen_tukimuoto_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](10) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_perusopetuksen_tukimuoto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_perusopetuksen_vuosiluokat]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_perusopetuksen_vuosiluokat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_perusopetuksen_vuosiluokat](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[vuosiluokka_koodi] [nvarchar](10) NULL,
	[vuosiluokka] [nvarchar](250) NULL,
	[vuosiluokka_SV] [nvarchar](250) NULL,
	[vuosiluokka_EN] [nvarchar](250) NULL,
	[luokkajako_12_36_7_89] [nvarchar](250) NULL,
	[luokkajako_12_36_7_89_SV] [nvarchar](250) NULL,
	[luokkajako_12_36_7_89_EN] [nvarchar](250) NULL,
	[luokkajako_16_79] [nvarchar](250) NULL,
	[luokkajako_16_79_SV] [nvarchar](250) NULL,
	[luokkajako_16_79_EN] [nvarchar](250) NULL,
	[luokkajako_16_710] [nvarchar](250) NULL,
	[luokkajako_16_710_SV] [nvarchar](250) NULL,
	[luokkajako_16_710_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[luokkajako_12_36_7_89_jarjestys] [nvarchar](50) NULL,
	[luokkajako_16_79_jarjestys] [nvarchar](50) NULL,
	[luokkajako_16_710_jarjestys] [nvarchar](50) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
	[luokkajako_0_19_10] [nvarchar](250) NULL,
	[luokkajako_0_19_10_SV] [nvarchar](250) NULL,
	[luokkajako_0_19_10_EN] [nvarchar](250) NULL,
	[luokkajako_0_19_10_jarjestys] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_perusopetuksen_vuosiluokat] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_perusopetuksen_yleisopetuksen_osuus]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_perusopetuksen_yleisopetuksen_osuus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_perusopetuksen_yleisopetuksen_osuus](
	[id] [int] NOT NULL,
	[perusopetuksen_yleisopetuksen_osuus_koodi] [nchar](10) NULL,
	[perusopetuksen_yleisopetuksen_osuus] [nvarchar](100) NULL,
	[perusopetuksen_yleisopetuksen_osuus_SV] [nvarchar](100) NULL,
	[perusopetuksen_yleisopetuksen_osuus_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](10) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_perusopetuksen_yleisopetuksen_osuus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_pohjakoulutuksen_tila]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_pohjakoulutuksen_tila]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_pohjakoulutuksen_tila](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[pohjakoulutuksen_tila_koodi] [nvarchar](10) NULL,
	[pohjakoulutuksen_tila] [nvarchar](250) NULL,
	[pohjakoulutuksen_tila_SV] [nvarchar](250) NULL,
	[pohjakoulutuksen_tila_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_pohjakoulutuksen_tila] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_pohjoismaa]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_pohjoismaa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_pohjoismaa](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[pohjoismaa_koodi] [nvarchar](2) NULL,
	[pohjoismaa] [nvarchar](50) NULL,
	[pohjoismaa_SV] [nvarchar](50) NULL,
	[pohjoismaa_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_pohjoismaa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_rahoituslahde]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_rahoituslahde]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_rahoituslahde](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[rahoituslahde_koodi] [nvarchar](10) NULL,
	[rahoituslahde] [nvarchar](250) NULL,
	[rahoituslahde_SV] [nvarchar](250) NULL,
	[rahoituslahde_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_rahoituslahde] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_rahoituslahde_amm]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_rahoituslahde_amm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_rahoituslahde_amm](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[rahoituslahde_amm_koodi] [nvarchar](2) NULL,
	[rahoituslahde_amm] [nvarchar](100) NULL,
	[rahoituslahde_amm_SV] [nvarchar](100) NULL,
	[rahoituslahde_amm_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_rahoituslahde_amm] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_sama_koulutusala]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_sama_koulutusala]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_sama_koulutusala](
	[id] [int] NOT NULL,
	[sama_koulutusala_avain] [nvarchar](100) NULL,
	[sama_koulutusala] [nvarchar](100) NULL,
	[sama_koulutusala_SV] [nvarchar](100) NULL,
	[sama_koulutusala_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](10) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_sama_koulutusala] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_sektoritutkimuslaitos]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_sektoritutkimuslaitos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_sektoritutkimuslaitos](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[sektoritutkimuslaitos_avain] [nvarchar](10) NULL,
	[sektoritutkimuslaitos_lyhenne] [nvarchar](20) NULL,
	[sektoritutkimuslaitos] [nvarchar](250) NULL,
	[sektoritutkimuslaitos_SV] [nvarchar](250) NULL,
	[sektoritutkimuslaitos_EN] [nvarchar](250) NULL,
	[jarjestys_sektoritutkimuslaitos] [nvarchar](50) NULL,
	[sektoritutkimuslaitos_lyhenne_historia] [nvarchar](20) NULL,
	[sektoritutkimuslaitos_historia] [nvarchar](250) NULL,
	[sektoritutkimuslaitos_historia_SV] [nvarchar](250) NULL,
	[sektoritutkimuslaitos_historia_EN] [nvarchar](250) NULL,
	[jarjestys_sektoritutkimuslaitos_historia] [nvarchar](50) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_sektoritutkimuslaitos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_siirtyman_tarkastelusuunta]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_siirtyman_tarkastelusuunta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_siirtyman_tarkastelusuunta](
	[id] [int] NOT NULL,
	[siirtyman_tarkastelusuunta_avain] [nvarchar](10) NULL,
	[siirtyman_tarkastelusuunta] [nvarchar](250) NULL,
	[siirtyman_tarkastelusuunta_SV] [nvarchar](250) NULL,
	[siirtyman_tarkastelusuunta_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_siirtyman_tarkastelusuunta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_sosioekonominen_asema]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_sosioekonominen_asema]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_sosioekonominen_asema](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[sosioekonominen_asema_koodi] [nvarchar](10) NULL,
	[sosioekonominen_asema_ryhma] [nvarchar](250) NULL,
	[sosioekonominen_asema_ryhma_SV] [nvarchar](250) NULL,
	[sosioekonominen_asema_ryhma_EN] [nvarchar](250) NULL,
	[sosioekonominen_asema] [nvarchar](250) NULL,
	[sosioekonominen_asema_SV] [nvarchar](250) NULL,
	[sosioekonominen_asema_EN] [nvarchar](250) NULL,
	[jarjestys_ryhma] [nvarchar](50) NULL,
	[jarjestys_asema] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_sosioekonominen_asema] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_suhteellinen_ajankohta]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_suhteellinen_ajankohta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_suhteellinen_ajankohta](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[suhteellinen_ajankohta_avain] [nvarchar](10) NULL,
	[suhteellinen_ajankohta] [nvarchar](250) NULL,
	[suhteellinen_ajankohta_SV] [nvarchar](250) NULL,
	[suhteellinen_ajankohta_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_suhteellinen_ajankohta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_sukupuoli]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_sukupuoli]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_sukupuoli](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[sukupuoli_koodi] [nvarchar](10) NULL,
	[sukupuoli] [nvarchar](250) NULL,
	[sukupuoli_SV] [nvarchar](250) NULL,
	[sukupuoli_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_sukupuoli] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_suoritettu_tutkinto]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_suoritettu_tutkinto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_suoritettu_tutkinto](
	[id] [int] NULL,
	[suoritettu_tutkinto_koodi] [nvarchar](2) NULL,
	[suoritettu_tutkinto] [nvarchar](100) NULL,
	[suoritettu_tutkinto_SV] [nvarchar](100) NULL,
	[suoritettu_tutkinto_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolähde] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_suuntautumisvaihtoehto_amk]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_suuntautumisvaihtoehto_amk]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_suuntautumisvaihtoehto_amk](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[suuntautumisvaihtoehto_amk_koodi] [varchar](5) NULL,
	[suuntautumisvaihtoehto_amk] [nvarchar](100) NULL,
	[suuntautumisvaihtoehto_amk_SV] [nvarchar](100) NULL,
	[suuntautumisvaihtoehto_amk_EN] [nvarchar](100) NULL,
	[jarjestys] [smallint] NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_suuntautumisvaihtoehto_amk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tarkastelujakso]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tarkastelujakso]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tarkastelujakso](
	[id] [int] NOT NULL,
	[luotu] [date] NOT NULL,
	[alkaa] [date] NOT NULL,
	[paattyy] [date] NOT NULL,
	[tarkastelujakso_koodi] [nvarchar](20) NOT NULL,
	[tarkastelujakso] [nvarchar](100) NULL,
	[tarkastelujakso_SV] [nvarchar](100) NULL,
	[tarkastelujakso_EN] [nvarchar](100) NULL,
	[jaksovuosi] [int] NULL,
	[jaksokausi] [int] NULL,
	[jarjestys] [nvarchar](100) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
	[sijoittuminen 0_5 - 5_0 vuotta] [nvarchar](100) NULL,
	[sijoittuminen 1_0 - 5_5 vuotta] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tiedekunta_yo]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tiedekunta_yo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tiedekunta_yo](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tiedekunta_yo_koodi] [nvarchar](2) NULL,
	[tiedekunta_yo] [nvarchar](50) NULL,
	[tiedekunta_yo_SV] [nvarchar](50) NULL,
	[tiedekunta_yo_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_tiedekunta_yo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tieteenala]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tieteenala]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tieteenala](
	[id] [int] NOT NULL,
	[tieteenala_avain] [nvarchar](10) NULL,
	[tieteenala2007] [nvarchar](100) NULL,
	[tieteenala2007_SV] [nvarchar](100) NULL,
	[tieteenala2007_EN] [nvarchar](100) NULL,
	[jarjestys_tieteenala2007] [nvarchar](50) NULL,
	[tieteenala2010] [nvarchar](100) NULL,
	[tieteenala2010_SV] [nvarchar](100) NULL,
	[tieteenala2010_EN] [nvarchar](100) NULL,
	[jarjestys_tieteenala2010] [nvarchar](50) NULL,
	[paatieteenala2007] [nvarchar](100) NULL,
	[paatieteenala2007_SV] [nvarchar](100) NULL,
	[paatieteenala2007_EN] [nvarchar](100) NULL,
	[jarjestys_paatieteenala2007] [nvarchar](50) NULL,
	[paatieteenala2010] [nvarchar](100) NULL,
	[paatieteenala2010_SV] [nvarchar](100) NULL,
	[paatieteenala2010_EN] [nvarchar](100) NULL,
	[jarjestys_paatieteenala2010] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_tieteenala] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tietojen_ajankohta]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tietojen_ajankohta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tietojen_ajankohta](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tietojen_ajankohta_koodi] [nvarchar](10) NULL,
	[tietojen_ajankohta] [nvarchar](250) NULL,
	[tietojen_ajankohta_SV] [nvarchar](250) NULL,
	[tietojen_ajankohta_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_tietojen_ajankohta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tilauskoulutuksen_sijaintimaa]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tilauskoulutuksen_sijaintimaa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tilauskoulutuksen_sijaintimaa](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tilauskoulutuksen_sijaintimaa_koodi] [nvarchar](2) NULL,
	[tilauskoulutuksen_sijaintimaa] [nvarchar](50) NULL,
	[tilauskoulutuksen_sijaintimaa_SV] [nvarchar](50) NULL,
	[tilauskoulutuksen_sijaintimaa_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_tilauskoulutuksen_sijaintimaa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_todistus_oppisopimuskoulutuksen_suorittamisesta]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_todistus_oppisopimuskoulutuksen_suorittamisesta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_todistus_oppisopimuskoulutuksen_suorittamisesta](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[todistus_oppisopimuskoulutuksen_suorittamisesta_koodi] [nvarchar](2) NULL,
	[todistus_oppisopimuskoulutuksen_suorittamisesta] [nvarchar](50) NULL,
	[todistus_oppisopimuskoulutuksen_suorittamisesta_SV] [nvarchar](50) NULL,
	[todistus_oppisopimuskoulutuksen_suorittamisesta_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_todistus_oppisopimuskoulutuksen_suorittamisesta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_toimiala_2008]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_toimiala_2008]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_toimiala_2008](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[toimiala_2008_avain] [nvarchar](10) NULL,
	[toimiala_2008_koodi] [nvarchar](5) NULL,
	[toimiala_2008] [nvarchar](150) NULL,
	[toimiala_2008_SV] [nvarchar](150) NULL,
	[toimiala_2008_EN] [nvarchar](150) NULL,
	[taso] [nvarchar](2) NULL,
	[taso1] [nvarchar](2) NULL,
	[jarjestys] [smallint] NULL,
	[jarjestys_taso] [smallint] NULL,
	[jarjestys_taso1] [smallint] NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_toimiala_2008] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_toimiala_tk]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_toimiala_tk]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_toimiala_tk](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tol2008] [nvarchar](20) NULL,
	[toimiala1] [nvarchar](250) NULL,
	[toimiala1_SV] [nvarchar](250) NULL,
	[toimiala1_EN] [nvarchar](250) NULL,
	[toimiala2_koodi] [nvarchar](20) NULL,
	[toimiala2] [nvarchar](250) NULL,
	[toimiala2_SV] [nvarchar](250) NULL,
	[toimiala2_EN] [nvarchar](250) NULL,
	[toimiala3_koodi] [nvarchar](20) NULL,
	[toimiala3] [nvarchar](250) NULL,
	[toimiala3_SV] [nvarchar](250) NULL,
	[toimiala3_EN] [nvarchar](250) NULL,
	[toimiala4_koodi] [nvarchar](20) NULL,
	[toimiala4] [nvarchar](250) NULL,
	[toimiala4_SV] [nvarchar](250) NULL,
	[toimiala4_EN] [nvarchar](250) NULL,
	[toimiala5_koodi] [nvarchar](20) NULL,
	[toimiala5] [nvarchar](250) NULL,
	[toimiala5_SV] [nvarchar](250) NULL,
	[toimiala5_EN] [nvarchar](250) NULL,
	[toimiala6_koodi] [nvarchar](20) NULL,
	[toimiala6] [nvarchar](250) NULL,
	[toimiala6_SV] [nvarchar](250) NULL,
	[toimiala6_EN] [nvarchar](250) NULL,
	[jarjestys_toimiala1] [smallint] NULL,
	[jarjestys_toimiala2] [smallint] NULL,
	[jarjestys_toimiala3] [smallint] NULL,
	[jarjestys_toimiala4] [smallint] NULL,
	[jarjestys_toimiala5] [smallint] NULL,
	[jarjestys_toimiala6] [smallint] NULL,
 CONSTRAINT [PK_d_toimiala_tk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_toimiala_tthv]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_toimiala_tthv]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_toimiala_tthv](
	[id] [int] NOT NULL,
	[toimiala_tthv_avain] [nvarchar](2) NULL,
	[toimiala_tthv] [nvarchar](255) NULL,
	[toimiala_tthv_SV] [nvarchar](255) NULL,
	[toimiala_tthv_EN] [nvarchar](255) NULL,
	[toimiala_ja_tol_tthv] [nvarchar](255) NULL,
	[toimiala_ja_tol_tthv_SV] [nvarchar](255) NULL,
	[toimiala_ja_tol_tthv_EN] [nvarchar](255) NULL,
	[jarjestys_toimiala_tthv] [smallint] NULL,
	[paatoimiala_tthv] [nvarchar](255) NULL,
	[paatoimiala_tthv_SV] [nvarchar](255) NULL,
	[paatoimiala_tthv_EN] [nvarchar](255) NULL,
	[jarjestys_paatoimiala_tthv] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_toimiala_tthv1_sama_kuin_ed_vuonna]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_toimiala_tthv1_sama_kuin_ed_vuonna]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_toimiala_tthv1_sama_kuin_ed_vuonna](
	[id] [int] NOT NULL,
	[toimiala_tthv1_sama_kuin_ed_vuonna_koodi] [nvarchar](2) NULL,
	[toimiala_tthv1_sama_kuin_ed_vuonna] [nvarchar](100) NULL,
	[toimiala_tthv1_sama_kuin_ed_vuonna_SV] [nvarchar](100) NULL,
	[toimiala_tthv1_sama_kuin_ed_vuonna_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_toimiala_tthv2_sama_kuin_ed_vuonna]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_toimiala_tthv2_sama_kuin_ed_vuonna]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_toimiala_tthv2_sama_kuin_ed_vuonna](
	[id] [int] NOT NULL,
	[toimiala_tthv2_sama_kuin_ed_vuonna_koodi] [nvarchar](2) NULL,
	[toimiala_tthv2_sama_kuin_ed_vuonna] [nvarchar](100) NULL,
	[toimiala_tthv2_sama_kuin_ed_vuonna_SV] [nvarchar](100) NULL,
	[toimiala_tthv2_sama_kuin_ed_vuonna_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tulodesiili]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tulodesiili]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tulodesiili](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tulodesiili_koodi] [nvarchar](2) NULL,
	[tulodesiili] [nvarchar](100) NULL,
	[tulodesiili_SV] [nvarchar](100) NULL,
	[tulodesiili_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_tulodesiili] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkimuksen_rahoituslahde]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkimuksen_rahoituslahde]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkimuksen_rahoituslahde](
	[id] [int] NOT NULL,
	[rahoituslahde_avain] [nvarchar](10) NULL,
	[rahoituslahdetarkennus] [nvarchar](50) NULL,
	[rahoituslahdetarkennus_SV] [nvarchar](100) NULL,
	[rahoituslahdetarkennus_EN] [nvarchar](100) NULL,
	[jarjestys_rahoituslahdetarkennus] [nvarchar](50) NULL,
	[rahoituslahde] [nvarchar](50) NULL,
	[rahoituslahde_SV] [nvarchar](100) NULL,
	[rahoituslahde_EN] [nvarchar](100) NULL,
	[jarjestys_rahoituslahde] [nvarchar](50) NULL,
	[ulkopuolisen_rahoituksen_kansainvalisyys] [nvarchar](50) NULL,
	[ulkopuolisen_rahoituksen_kansainvalisyys_SV] [nvarchar](100) NULL,
	[ulkopuolisen_rahoituksen_kansainvalisyys_EN] [nvarchar](100) NULL,
	[jarjestys_ulkopuolisen_rahoituksen_kansainvalisyys] [nvarchar](50) NULL,
	[rahoituslahteen_tyyppi] [nvarchar](50) NULL,
	[rahoituslahteen_tyyppi_SV] [nvarchar](100) NULL,
	[rahoituslahteen_tyyppi_EN] [nvarchar](100) NULL,
	[jarjestys_rahoituslahteen_tyyppi] [nvarchar](50) NULL,
	[rahoituksen_laatu] [nvarchar](50) NULL,
	[rahoituksen_laatu_SV] [nvarchar](100) NULL,
	[rahoituksen_laatu_EN] [nvarchar](100) NULL,
	[jarjestys_rahoituksen_laatu] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_tutkimuksen_rahoituslahde] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkimus_tehtava]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkimus_tehtava]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkimus_tehtava](
	[id] [int] NOT NULL,
	[tutkimus_tehtava_avain] [nvarchar](10) NULL,
	[tutkimus_tehtava] [nvarchar](250) NULL,
	[tutkimus_tehtava_SV] [nvarchar](250) NULL,
	[tutkimus_tehtava_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_tutkimus_tehtava] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkimusmenojen_kohde]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkimusmenojen_kohde]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkimusmenojen_kohde](
	[id] [int] NOT NULL,
	[menokohde_avain] [nvarchar](10) NULL,
	[menokohde] [nvarchar](50) NULL,
	[menokohde_SV] [nvarchar](50) NULL,
	[menokohde_EN] [nvarchar](50) NULL,
	[jarjestys_menokohde] [nvarchar](50) NULL,
	[menotyyppi] [nvarchar](50) NULL,
	[menotyyppi_SV] [nvarchar](50) NULL,
	[menotyyppi_EN] [nvarchar](50) NULL,
	[jarjestys_menotyyppi] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_tutkimusmenojen_kohde] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkinnon_tavoite]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkinnon_tavoite]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkinnon_tavoite](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tutkinnon_tavoite_koodi] [nvarchar](2) NULL,
	[tutkinnon_tavoite] [nvarchar](50) NULL,
	[tutkinnon_tavoite_SV] [nvarchar](50) NULL,
	[tutkinnon_tavoite_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_tutkinnon_tavoite] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkinnon_toteuma]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkinnon_toteuma]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkinnon_toteuma](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tutkinnon_toteuma_koodi] [nvarchar](2) NULL,
	[tutkinnon_toteuma] [nvarchar](100) NULL,
	[tutkinnon_toteuma_SV] [nvarchar](100) NULL,
	[tutkinnon_toteuma_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_tutkinnon_toteuma] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkinto]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkinto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkinto](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tutkinto_avain] [nvarchar](10) NULL,
	[tutkinto] [nvarchar](250) NULL,
	[tutkinto_SV] [nvarchar](250) NULL,
	[tutkinto_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_tutkinto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkinto_alkuperaisella_koulutuksen_jarjestajalla]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkinto_alkuperaisella_koulutuksen_jarjestajalla]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkinto_alkuperaisella_koulutuksen_jarjestajalla](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tutkinto_alkuperaisella_koulutuksen_jarjestajalla_koodi] [nchar](2) NULL,
	[tutkinto_alkuperaisella_koulutuksen_jarjestajalla] [nvarchar](100) NULL,
	[tutkinto_alkuperaisella_koulutuksen_jarjestajalla_SV] [nvarchar](100) NULL,
	[tutkinto_alkuperaisella_koulutuksen_jarjestajalla_EN] [nvarchar](100) NULL,
	[jarjestys_4c] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_tutkinto_alkuperaisella_koulutuksen_jarjestajalla] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkinto_alkuperaisella_koulutusalalla_2002]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkinto_alkuperaisella_koulutusalalla_2002]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkinto_alkuperaisella_koulutusalalla_2002](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tutkinto_alkuperaisella_koulutusalalla_2002_koodi] [nchar](2) NULL,
	[tutkinto_alkuperaisella_koulutusalalla_2002] [nvarchar](100) NULL,
	[tutkinto_alkuperaisella_koulutusalalla_2002_SV] [nvarchar](100) NULL,
	[tutkinto_alkuperaisella_koulutusalalla_2002_EN] [nvarchar](100) NULL,
	[jarjestys_2c] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_tutkinto_alkuperaisella_koulutusalalla_2002] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkinto_alkuperaisella_koulutusasteella_2002]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkinto_alkuperaisella_koulutusasteella_2002]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkinto_alkuperaisella_koulutusasteella_2002](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tutkinto_alkuperaisella_koulutusasteella_2002_koodi] [nchar](2) NULL,
	[tutkinto_alkuperaisella_koulutusasteella_2002] [nvarchar](100) NULL,
	[tutkinto_alkuperaisella_koulutusasteella_2002_SV] [nvarchar](100) NULL,
	[tutkinto_alkuperaisella_koulutusasteella_2002_EN] [nvarchar](100) NULL,
	[jarjestys_1c] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_tutkinto_alkuperaisella_koulutusasteella_2002] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkinto_alkuperaisella_koulutussektorilla]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkinto_alkuperaisella_koulutussektorilla]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkinto_alkuperaisella_koulutussektorilla](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tutkinto_alkuperaisella_koulutussektorilla_koodi] [nchar](2) NULL,
	[tutkinto_alkuperaisella_koulutussektorilla] [nvarchar](100) NULL,
	[tutkinto_alkuperaisella_koulutussektorilla_SV] [nvarchar](100) NULL,
	[tutkinto_alkuperaisella_koulutussektorilla_EN] [nvarchar](100) NULL,
	[jarjestys_7c] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_tutkinto_alkuperaisella_koulutussektorilla] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkinto_alkuperaisella_opintoalalla_2002]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkinto_alkuperaisella_opintoalalla_2002]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkinto_alkuperaisella_opintoalalla_2002](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tutkinto_alkuperaisella_opintoalalla_2002_koodi] [nchar](2) NULL,
	[tutkinto_alkuperaisella_opintoalalla_2002] [nvarchar](100) NULL,
	[tutkinto_alkuperaisella_opintoalalla_2002_SV] [nvarchar](100) NULL,
	[tutkinto_alkuperaisella_opintoalalla_2002_EN] [nvarchar](100) NULL,
	[jarjestys_3c] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_tutkinto_alkuperaisella_opintoalalla_2002] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkinto_alkuperaisessa_maakunnassa]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkinto_alkuperaisessa_maakunnassa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkinto_alkuperaisessa_maakunnassa](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tutkinto_alkuperaisessa_maakunnassa_koodi] [nchar](2) NULL,
	[tutkinto_alkuperaisessa_maakunnassa] [nvarchar](100) NULL,
	[tutkinto_alkuperaisessa_maakunnassa_SV] [nvarchar](100) NULL,
	[tutkinto_alkuperaisessa_maakunnassa_EN] [nvarchar](100) NULL,
	[jarjestys_6c] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_tutkinto_alkuperaisessa_maakunnassa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkinto_alkuperaisessa_oppilaitoksessa]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkinto_alkuperaisessa_oppilaitoksessa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkinto_alkuperaisessa_oppilaitoksessa](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tutkinto_alkuperaisessa_oppilaitoksessa_koodi] [nchar](2) NULL,
	[tutkinto_alkuperaisessa_oppilaitoksessa] [nvarchar](100) NULL,
	[tutkinto_alkuperaisessa_oppilaitoksessa_SV] [nvarchar](100) NULL,
	[tutkinto_alkuperaisessa_oppilaitoksessa_EN] [nvarchar](100) NULL,
	[jarjestys_5c] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_tutkinto_alkuperaisessa_oppilaitoksessa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkinto_amk]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkinto_amk]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkinto_amk](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tutkinto_amk_koodi] [nvarchar](3) NULL,
	[tutkinto_amk] [nvarchar](100) NULL,
	[tutkinto_amk_SV] [nvarchar](100) NULL,
	[tutkinto_amk_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_tutkinto_amk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkinto_muulla_koulutuksen_jarjestajalla]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkinto_muulla_koulutuksen_jarjestajalla]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkinto_muulla_koulutuksen_jarjestajalla](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tutkinto_muulla_koulutuksen_jarjestajalla_koodi] [nchar](2) NULL,
	[tutkinto_muulla_koulutuksen_jarjestajalla] [nvarchar](100) NULL,
	[tutkinto_muulla_koulutuksen_jarjestajalla_SV] [nvarchar](100) NULL,
	[tutkinto_muulla_koulutuksen_jarjestajalla_EN] [nvarchar](100) NULL,
	[jarjestys_4d] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_tutkinto_muulla_koulutuksen_jarjestajalla] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkinto_muulla_koulutusalalla_2002]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkinto_muulla_koulutusalalla_2002]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkinto_muulla_koulutusalalla_2002](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tutkinto_muulla_koulutusalalla_2002_koodi] [nchar](2) NULL,
	[tutkinto_muulla_koulutusalalla_2002] [nvarchar](100) NULL,
	[tutkinto_muulla_koulutusalalla_2002_SV] [nvarchar](100) NULL,
	[tutkinto_muulla_koulutusalalla_2002_EN] [nvarchar](100) NULL,
	[jarjestys_2d] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_tutkinto_muulla_koulutusalalla_2002] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkinto_muulla_koulutusasteella_2002]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkinto_muulla_koulutusasteella_2002]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkinto_muulla_koulutusasteella_2002](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tutkinto_muulla_koulutusasteella_2002_koodi] [nchar](2) NULL,
	[tutkinto_muulla_koulutusasteella_2002] [nvarchar](100) NULL,
	[tutkinto_muulla_koulutusasteella_2002_SV] [nvarchar](100) NULL,
	[tutkinto_muulla_koulutusasteella_2002_EN] [nvarchar](100) NULL,
	[jarjestys_1d] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_tutkinto_muulla_koulutusasteella_2002] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkinto_muulla_koulutussektorilla]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkinto_muulla_koulutussektorilla]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkinto_muulla_koulutussektorilla](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tutkinto_muulla_koulutussektorilla_koodi] [nchar](2) NULL,
	[tutkinto_muulla_koulutussektorilla] [nvarchar](100) NULL,
	[tutkinto_muulla_koulutussektorilla_SV] [nvarchar](100) NULL,
	[tutkinto_muulla_koulutussektorilla_EN] [nvarchar](100) NULL,
	[jarjestys_7d] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_tutkinto_muulla_koulutussektorilla] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkinto_muulla_opintoalalla_2002]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkinto_muulla_opintoalalla_2002]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkinto_muulla_opintoalalla_2002](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tutkinto_muulla_opintoalalla_2002_koodi] [nchar](2) NULL,
	[tutkinto_muulla_opintoalalla_2002] [nvarchar](100) NULL,
	[tutkinto_muulla_opintoalalla_2002_SV] [nvarchar](100) NULL,
	[tutkinto_muulla_opintoalalla_2002_EN] [nvarchar](100) NULL,
	[jarjestys_3d] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_tutkinto_muulla_opintoalalla_2002] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkinto_muussa_maakunnassa]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkinto_muussa_maakunnassa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkinto_muussa_maakunnassa](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tutkinto_muussa_maakunnassa_koodi] [nchar](2) NULL,
	[tutkinto_muussa_maakunnassa] [nvarchar](100) NULL,
	[tutkinto_muussa_maakunnassa_SV] [nvarchar](100) NULL,
	[tutkinto_muussa_maakunnassa_EN] [nvarchar](100) NULL,
	[jarjestys_6d] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_tutkinto_muussa_maakunnassa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkinto_muussa_oppilaitoksessa]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkinto_muussa_oppilaitoksessa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkinto_muussa_oppilaitoksessa](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tutkinto_muussa_oppilaitoksessa_koodi] [nchar](2) NULL,
	[tutkinto_muussa_oppilaitoksessa] [nvarchar](100) NULL,
	[tutkinto_muussa_oppilaitoksessa_SV] [nvarchar](100) NULL,
	[tutkinto_muussa_oppilaitoksessa_EN] [nvarchar](100) NULL,
	[jarjestys_5d] [nvarchar](10) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_tutkinto_muussa_oppilaitoksessa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkinto_suoritettu]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkinto_suoritettu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkinto_suoritettu](
	[id] [int] NOT NULL,
	[tutkinto_suoritettu_avain] [nvarchar](20) NULL,
	[tutkinto_suoritettu] [nvarchar](100) NULL,
	[tutkinto_suoritettu_SV] [nvarchar](100) NULL,
	[tutkinto_suoritettu_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_tutkinto_suoritettu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkinto_yo]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkinto_yo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkinto_yo](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tutkinto_yo_koodi] [nvarchar](3) NULL,
	[tutkinto_yo] [nvarchar](50) NULL,
	[tutkinto_yo_SV] [nvarchar](100) NULL,
	[tutkinto_yo_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_tutkinto_yo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkintoasetus]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkintoasetus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkintoasetus](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tutkintoasetus_koodi] [nvarchar](10) NULL,
	[tutkintoasetus] [nvarchar](100) NULL,
	[tutkintoasetus_SV] [nvarchar](100) NULL,
	[tutkintoasetus_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_tutkintoasetus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkintojen_maara]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkintojen_maara]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkintojen_maara](
	[id] [int] NOT NULL,
	[tutkintojen_maara_avain] [nvarchar](20) NULL,
	[tutkintojen_maara] [nvarchar](100) NULL,
	[tutkintojen_maara_SV] [nvarchar](100) NULL,
	[tutkintojen_maara_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_tutkintojen_maara] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkintolaji_tyollistymiseen]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkintolaji_tyollistymiseen]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkintolaji_tyollistymiseen](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tutkintolaji_tyollistymiseen_koodi] [nvarchar](2) NULL,
	[tutkintolaji_tyollistymiseen] [nvarchar](350) NULL,
	[tutkintolaji_tyollistymiseen_SV] [nvarchar](350) NULL,
	[tutkintolaji_tyollistymiseen_EN] [nvarchar](350) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_tutkintolaji_tyollistymiseen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkintonimike_ammpk]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkintonimike_ammpk]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkintonimike_ammpk](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tutkintonimike_ammpk_koodi] [nvarchar](5) NULL,
	[tutkintonimike_ammpk] [nvarchar](50) NULL,
	[tutkintonimike_ammpk_SV] [nvarchar](50) NULL,
	[tutkintonimike_ammpk_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_tutkintonimike_ammpk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkintoryhma]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkintoryhma]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkintoryhma](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tutkintoryhma_koodi] [nvarchar](10) NULL,
	[tutkintoryhma] [nvarchar](100) NULL,
	[tutkintoryhma_SV] [nvarchar](100) NULL,
	[tutkintoryhma_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_tutkintoryhma] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tutkintotaso]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tutkintotaso]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tutkintotaso](
	[id] [int] NOT NULL,
	[tutkintotaso_koodi] [nvarchar](10) NULL,
	[tutkintotaso] [nvarchar](100) NULL,
	[tutkintotaso_SV] [nvarchar](100) NULL,
	[tutkintotaso_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tutkintotaso_tk_henkilokunta] [nvarchar](100) NULL,
	[tutkintotaso_tk_henkilokunta_SV] [nvarchar](100) NULL,
	[tutkintotaso_tk_henkilokunta_EN] [nvarchar](100) NULL,
	[jarjestys_tk_henkilokunta] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_tutkintotaso] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tyonantajasektori]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tyonantajasektori]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tyonantajasektori](
	[id] [int] NOT NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tyonantajasektori_koodi] [nvarchar](10) NOT NULL,
	[tyonantajasektori] [nvarchar](250) NULL,
	[tyonantajasektori_SV] [nvarchar](250) NULL,
	[tyonantajasektori_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_tyonantajasektori] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tyonantajasektori_sama_kuin_ed_vuonna]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tyonantajasektori_sama_kuin_ed_vuonna]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tyonantajasektori_sama_kuin_ed_vuonna](
	[id] [int] NOT NULL,
	[tyonantajasektori_sama_kuin_ed_vuonna_koodi] [nvarchar](2) NULL,
	[tyonantajasektori_sama_kuin_ed_vuonna] [nvarchar](100) NULL,
	[tyonantajasektori_sama_kuin_ed_vuonna_SV] [nvarchar](100) NULL,
	[tyonantajasektori_sama_kuin_ed_vuonna_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tyonantajasektori2]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tyonantajasektori2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tyonantajasektori2](
	[id] [int] NOT NULL,
	[tyonantajasektori2_avain] [nvarchar](2) NULL,
	[tyonantajasektori2] [nvarchar](255) NULL,
	[tyonantajasektori2_SV] [nvarchar](255) NULL,
	[tyonantajasektori2_EN] [nvarchar](255) NULL,
	[jarjestys] [smallint] NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_tyonantajasektori2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tyopaikan_sijainti_v_tilastovuonna]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tyopaikan_sijainti_v_tilastovuonna]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tyopaikan_sijainti_v_tilastovuonna](
	[id] [int] NOT NULL,
	[tyopaikan_sijainti_v_tilastovuonna_avain] [nvarchar](10) NULL,
	[tyopaikan_sijainti_v_tilastovuonna] [nvarchar](250) NULL,
	[tyopaikan_sijainti_v_tilastovuonna_SV] [nvarchar](250) NULL,
	[tyopaikan_sijainti_v_tilastovuonna_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_tyopaikan_sijainti_v_tilastovuonna] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tyossakayntitilaston_tyonantajasektori]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tyossakayntitilaston_tyonantajasektori]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tyossakayntitilaston_tyonantajasektori](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tyossakayntitilaston_tyonantajasektori_koodi] [nvarchar](10) NULL,
	[tyossakayntitilaston_tyonantajasektori] [nvarchar](50) NULL,
	[tyossakayntitilaston_tyonantajasektori_SV] [nvarchar](50) NULL,
	[tyossakayntitilaston_tyonantajasektori_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_tyossakayntitilaston_tyonantajasektori] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tyovoimapoliittinen]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tyovoimapoliittinen]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tyovoimapoliittinen](
	[id] [int] NOT NULL,
	[alkaa] [date] NOT NULL,
	[paattyy] [date] NOT NULL,
	[tyovoimapoliittinen_koodi] [nvarchar](2) NOT NULL,
	[tyovoimapoliittinen] [nvarchar](50) NULL,
	[tyovoimapoliittinen_SV] [nvarchar](50) NULL,
	[tyovoimapoliittinen_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_tyovoimapoliittinen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_tyovoimapoliittinen_koulutus]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_tyovoimapoliittinen_koulutus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_tyovoimapoliittinen_koulutus](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[tyovoimapoliittinen_koulutus_koodi] [nvarchar](2) NULL,
	[tyovoimapoliittinen_koulutus] [nvarchar](50) NULL,
	[tyovoimapoliittinen_koulutus_SV] [nvarchar](50) NULL,
	[tyovoimapoliittinen_koulutus_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_tyovoimapoliittinen_koulutus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_uusi_vanha_opiskelija]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_uusi_vanha_opiskelija]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_uusi_vanha_opiskelija](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[uusi_vanha_opiskelija_koodi] [nvarchar](2) NULL,
	[uusi_vanha_opiskelija] [nvarchar](100) NULL,
	[uusi_vanha_opiskelija_SV] [nvarchar](100) NULL,
	[uusi_vanha_opiskelija_EN] [nvarchar](100) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_uusi_vanha_opiskelija] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_vahintaan_45_op_suorittanut]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_vahintaan_45_op_suorittanut]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_vahintaan_45_op_suorittanut](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[vahintaan_45_op_suorittanut_koodi] [varchar](2) NULL,
	[vahintaan_45_op_suorittanut] [nvarchar](50) NULL,
	[vahintaan_45_op_suorittanut_SV] [nvarchar](50) NULL,
	[vahintaan_45_op_suorittanut_EN] [nvarchar](50) NULL,
	[jarjestys] [smallint] NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_vahintaan_45_op_suorittanut] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_vahintaan_55_op_suorittanut]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_vahintaan_55_op_suorittanut]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_vahintaan_55_op_suorittanut](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[vahintaan_55_op_suorittanut_koodi] [varchar](2) NULL,
	[vahintaan_55_op_suorittanut] [nvarchar](50) NULL,
	[vahintaan_55_op_suorittanut_SV] [nvarchar](50) NULL,
	[vahintaan_55_op_suorittanut_EN] [nvarchar](50) NULL,
	[jarjestys] [smallint] NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_vahintaan_55_op_suorittanut] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_valiaikainen_amk]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_valiaikainen_amk]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_valiaikainen_amk](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[valiaikainen_amk_koodi] [nvarchar](2) NULL,
	[valiaikainen_amk] [nvarchar](70) NULL,
	[valiaikainen_amk_SV] [nvarchar](70) NULL,
	[valiaikainen_amk_EN] [nvarchar](70) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_valiaikainen_amk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_valtio]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_valtio]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_valtio](
	[id] [int] NOT NULL,
	[valtio_avain] [nvarchar](10) NULL,
	[maa_koodi] [nvarchar](3) NULL,
	[maa] [nvarchar](100) NULL,
	[maa_SV] [nvarchar](100) NULL,
	[maa_EN] [nvarchar](100) NULL,
	[eumaa_koodi] [nvarchar](2) NULL,
	[eumaa] [nvarchar](50) NULL,
	[eumaa_SV] [nvarchar](50) NULL,
	[eumaa_EN] [nvarchar](50) NULL,
	[etamaa_koodi] [nvarchar](2) NULL,
	[etamaa] [nvarchar](50) NULL,
	[etamaa_SV] [nvarchar](50) NULL,
	[etamaa_EN] [nvarchar](50) NULL,
	[maanosa_koodi] [nvarchar](2) NULL,
	[maanosa] [nvarchar](50) NULL,
	[maanosa_SV] [nvarchar](50) NULL,
	[maanosa_EN] [nvarchar](50) NULL,
	[maanosa2_koodi] [nvarchar](2) NULL,
	[maanosa2] [nvarchar](50) NULL,
	[maanosa2_SV] [nvarchar](50) NULL,
	[maanosa2_EN] [nvarchar](50) NULL,
	[maanosa3_koodi] [nvarchar](3) NULL,
	[maanosa3] [nvarchar](50) NULL,
	[maanosa3_SV] [nvarchar](50) NULL,
	[maanosa3_EN] [nvarchar](50) NULL,
	[jarjestys] [smallint] NULL,
	[jarjestys_eumaa] [smallint] NULL,
	[jarjestys_etamaa] [smallint] NULL,
	[jarjestys_maanosa] [smallint] NULL,
	[jarjestys_maanosa2] [smallint] NULL,
	[jarjestys_maanosa3] [smallint] NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_valtio] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_valtio_historia]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_valtio_historia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_valtio_historia](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[valtio_avain] [nvarchar](10) NULL,
	[maa_koodi] [nvarchar](3) NULL,
	[maa] [nvarchar](100) NULL,
	[maa_SV] [nvarchar](100) NULL,
	[maa_EN] [nvarchar](100) NULL,
	[eumaa_koodi] [nvarchar](2) NULL,
	[eumaa] [nvarchar](50) NULL,
	[eumaa_SV] [nvarchar](50) NULL,
	[eumaa_EN] [nvarchar](50) NULL,
	[etamaa_koodi] [nvarchar](2) NULL,
	[etamaa] [nvarchar](50) NULL,
	[etamaa_SV] [nvarchar](50) NULL,
	[etamaa_EN] [nvarchar](50) NULL,
	[maanosa_koodi] [nvarchar](2) NULL,
	[maanosa] [nvarchar](50) NULL,
	[maanosa_SV] [nvarchar](50) NULL,
	[maanosa_EN] [nvarchar](50) NULL,
	[maanosa2_koodi] [nvarchar](2) NULL,
	[maanosa2] [nvarchar](50) NULL,
	[maanosa2_SV] [nvarchar](50) NULL,
	[maanosa2_EN] [nvarchar](50) NULL,
	[maanosa3_koodi] [nvarchar](3) NULL,
	[maanosa3] [nvarchar](50) NULL,
	[maanosa3_SV] [nvarchar](50) NULL,
	[maanosa3_EN] [nvarchar](50) NULL,
	[jarjestys] [smallint] NULL,
	[jarjestys_eumaa] [smallint] NULL,
	[jarjestys_etamaa] [smallint] NULL,
	[jarjestys_maanosa] [smallint] NULL,
	[jarjestys_maanosa2] [smallint] NULL,
	[jarjestys_maanosa3] [smallint] NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_valtio] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_vayla_nayttotutkintoon]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_vayla_nayttotutkintoon]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_vayla_nayttotutkintoon](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[vayla_nayttotutkintoon_koodi] [nvarchar](2) NULL,
	[vayla_nayttotutkintoon] [nvarchar](70) NULL,
	[vayla_nayttotutkintoon_SV] [nvarchar](70) NULL,
	[vayla_nayttotutkintoon_EN] [nvarchar](70) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_vayla_nayttotutkintoon] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_vieraskielisyys]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_vieraskielisyys]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_vieraskielisyys](
	[id] [int] NOT NULL,
	[vieraskielisyys_koodi] [nchar](2) NULL,
	[vieraskielisyys] [nvarchar](100) NULL,
	[vieraskielisyys_SV] [nvarchar](100) NULL,
	[vieraskielisyys_EN] [nvarchar](100) NULL,
	[vieraskielisyys_lyhyt] [nvarchar](50) NULL,
	[vieraskielisyys_lyhyt_SV] [nvarchar](50) NULL,
	[vieraskielisyys_lyhyt_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](10) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_vieraskielisyys] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_virkaryhma]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_virkaryhma]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_virkaryhma](
	[id] [int] NOT NULL,
	[virkaryhma_koodi] [nvarchar](10) NULL,
	[virkaryhma] [nvarchar](50) NULL,
	[virkaryhma_SV] [nvarchar](50) NULL,
	[virkaryhma_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[tietolahde] [nvarchar](50) NULL,
 CONSTRAINT [PK_d_virkaryhma] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_yliopisto]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_yliopisto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_yliopisto](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[yliopisto_koodi] [nvarchar](2) NULL,
	[yliopisto] [nvarchar](50) NULL,
	[yliopisto_SV] [nvarchar](50) NULL,
	[yliopisto_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_yliopisto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_yllapitajan_kieli]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_yllapitajan_kieli]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_yllapitajan_kieli](
	[id] [int] NOT NULL,
	[yllapitajan_kieli_koodi] [nchar](2) NULL,
	[yllapitajan_kieli] [nvarchar](50) NULL,
	[yllapitajan_kieli_SV] [nvarchar](50) NULL,
	[yllapitajan_kieli_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](10) NULL,
	[tietolahde] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_yosairaala]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_yosairaala]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_yosairaala](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[yosairaala_avain] [nvarchar](10) NULL,
	[yosairaala_lyhenne] [nvarchar](20) NULL,
	[yosairaala] [nvarchar](250) NULL,
	[yosairaala_SV] [nvarchar](250) NULL,
	[yosairaala_EN] [nvarchar](250) NULL,
	[jarjestys_yosairaala] [nvarchar](50) NULL,
	[yosairaala_lyhenne_historia] [nvarchar](20) NULL,
	[yosairaala_historia] [nvarchar](250) NULL,
	[yosairaala_historia_SV] [nvarchar](250) NULL,
	[yosairaala_historia_EN] [nvarchar](250) NULL,
	[jarjestys_yosairaala_historia] [nvarchar](50) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK_d_yosairaala] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_yrittajan_oppisopimuskoulutus]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_yrittajan_oppisopimuskoulutus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_yrittajan_oppisopimuskoulutus](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[alkaa] [date] NULL,
	[paattyy] [date] NULL,
	[yrittajan_oppisopimuskoulutus_koodi] [nvarchar](2) NULL,
	[yrittajan_oppisopimuskoulutus] [nvarchar](50) NULL,
	[yrittajan_oppisopimuskoulutus_SV] [nvarchar](50) NULL,
	[yrittajan_oppisopimuskoulutus_EN] [nvarchar](50) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](1) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
 CONSTRAINT [PK__d_yrittajan_oppisopimuskoulutus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[d_yrityksen_koko_tthv]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[d_yrityksen_koko_tthv]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[d_yrityksen_koko_tthv](
	[id] [int] NOT NULL,
	[yrityksen_koko_koodi] [nvarchar](10) NULL,
	[yrityksen_koko] [nvarchar](250) NULL,
	[yrityksen_koko_SV] [nvarchar](250) NULL,
	[yrityksen_koko_EN] [nvarchar](250) NULL,
	[jarjestys] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_2_3efg_Lukiokoulutuksen_ja_ammatillisen_koulutuksen_opiskelijat]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_2_3efg_Lukiokoulutuksen_ja_ammatillisen_koulutuksen_opiskelijat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_2_3efg_Lukiokoulutuksen_ja_ammatillisen_koulutuksen_opiskelijat](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[lahde] [nvarchar](2) NULL,
	[lahde_id] [int] NULL,
	[koulutuksen_jarjestaja] [nvarchar](10) NULL,
	[koulutuksen_jarjestaja_id] [int] NULL,
	[koulutuksen_jarjestaja_historia_id] [int] NULL,
	[oppisopimuskoulutuksen_jarjestaja] [nvarchar](10) NULL,
	[oppisopimuskoulutuksen_jarjestaja_id] [int] NULL,
	[oppisopimuskoulutuksen_jarjestaja_historia_id] [int] NULL,
	[koulutusluokitus] [nvarchar](6) NULL,
	[koulutusluokitus_id] [int] NULL,
	[koulutusluokitus_historia_id] [int] NULL,
	[koulutuksen_kieli] [nvarchar](2) NULL,
	[koulutuksen_kieli_id] [int] NULL,
	[koulutuksen_kunta] [nvarchar](3) NULL,
	[koulutuksen_kunta_id] [int] NULL,
	[koulutuksen_kunta_historia_id] [int] NULL,
	[opetushallinnon_koulutus] [nvarchar](2) NULL,
	[opetushallinnon_koulutus_id] [int] NULL,
	[sukupuoli] [nvarchar](2) NULL,
	[sukupuoli_id] [int] NULL,
	[aidinkieli] [nvarchar](2) NULL,
	[aidinkieli_versio1_id] [int] NULL,
	[kirjoihintulovuosi] [nvarchar](4) NULL,
	[kirjoihintulovuosi_id] [nvarchar](10) NULL,
	[opiskelijan_olo_syys] [nvarchar](1) NULL,
	[opiskelijan_olo_syys_id] [int] NULL,
	[aikuisopiskelija] [nvarchar](2) NULL,
	[aikuisopiskelija_id] [int] NULL,
	[ika_kirjoihintulovuonna] [nvarchar](20) NULL,
	[ika_kirjoihintulovuonna_id] [int] NULL,
	[ikaryhma_kirjoihintulovuonna_id] [int] NULL,
	[ika] [nvarchar](20) NULL,
	[ika_id] [int] NULL,
	[ikaryhma_id] [int] NULL,
	[lukumaara] [int] NULL,
	[nuorten_aikuisten_koulutus] [nvarchar](2) NULL,
	[nuorten_aikuisten_koulutus_id] [int] NULL,
	[koulutuksen_tutkinnon_aloitusvuosi] [nvarchar](4) NULL,
	[koulutuksen_tutkinnon_aloitusvuosi_id] [nvarchar](10) NULL,
	[ammatillisen_koulutuksen_koulutuslaji] [nvarchar](2) NULL,
	[ammatillisen_koulutuksen_koulutuslaji_id] [int] NULL,
	[tutkintonimike_ammpk] [nvarchar](255) NULL,
	[tutkintonimike_ammpk_id] [int] NULL,
	[koulutusohjelma_ammpk] [nvarchar](100) NULL,
	[koulutusohjelma_ammpk_id] [int] NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus] [nvarchar](2) NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus_id] [int] NULL,
	[rahoituslahde_amm] [nvarchar](2) NULL,
	[rahoituslahde_amm_id] [int] NULL,
	[tutkinnon_tavoite] [nvarchar](2) NULL,
	[tutkinnon_tavoite_id] [int] NULL,
	[asuinmaakunta] [nvarchar](2) NULL,
	[asuinmaakunta_id] [int] NULL,
	[asuinmaakunta_historia_id] [int] NULL,
	[tietolahde] [nvarchar](250) NULL,
	[rivinumero] [nvarchar](10) NULL,
	[aineistotunnus] [varchar](6) NOT NULL,
	[koulutussektori] [nvarchar](2) NULL,
	[koulutussektori_id] [int] NULL,
	[koulutuksen_jarjestamismuoto] [nvarchar](2) NULL,
	[koulutuksen_jarjestamismuoto_id] [int] NULL,
	[ammatillinen_peruskoulutus_lisakoulutus] [nvarchar](2) NULL,
	[ammatillinen_peruskoulutus_lisakoulutus_id] [int] NULL,
	[koulutuksen_tavoite_toteuma] [nvarchar](2) NULL,
	[koulutuksen_tavoite_toteuma_id] [int] NULL,
	[aloittaneet] [int] NULL,
	[opiskelijat] [int] NULL,
	[opiskelijat_lasna] [int] NULL,
	[aineisto_id] [int] NOT NULL,
	[aineisto_OTV_id] [int] NULL,
	[koulutuksen_jarjestaja_kunta_id] [int] NULL,
	[koulutuksen_jarjestaja_kunta_historia_id] [int] NULL,
	[nuorten_aikuisten_koulutus_amm_id] [int] NULL,
	[koulutuslaji_OKM_id] [int] NULL,
	[yht_koulutuksen_jarjestaja_id] [int] NULL,
	[yht_koulutuksen_jarjestaja_historia_id] [int] NULL,
	[yht_koulutuksen_jarjestaja_kunta_id] [int] NULL,
	[yht_koulutuksen_jarjestaja_kunta_historia_id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_2_3h_Lukiokoulutuksen_ja_ammatillisen_koulutuksen_opiskelijat]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_2_3h_Lukiokoulutuksen_ja_ammatillisen_koulutuksen_opiskelijat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_2_3h_Lukiokoulutuksen_ja_ammatillisen_koulutuksen_opiskelijat](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[lahde] [nvarchar](2) NULL,
	[lahde_id] [int] NULL,
	[oppilaitos] [nvarchar](5) NULL,
	[oppilaitos_id] [int] NULL,
	[oppilaitos_historia_id] [int] NULL,
	[koulutuksen_jarjestaja] [nvarchar](10) NULL,
	[koulutuksen_jarjestaja_id] [int] NULL,
	[koulutuksen_jarjestaja_historia_id] [int] NULL,
	[oppisopimuskoulutuksen_jarjestaja] [nvarchar](10) NULL,
	[oppisopimuskoulutuksen_jarjestaja_id] [int] NULL,
	[oppisopimuskoulutuksen_jarjestaja_historia_id] [int] NULL,
	[koulutusala] [nvarchar](6) NULL,
	[koulutusala_id] [int] NULL,
	[koulutusaste] [nvarchar](6) NULL,
	[koulutusaste_id] [int] NULL,
	[koulutuksen_kieli] [nvarchar](2) NULL,
	[koulutuksen_kieli_id] [int] NULL,
	[koulutuksen_kunta] [nvarchar](3) NULL,
	[koulutuksen_kunta_id] [int] NULL,
	[koulutuksen_kunta_historia_id] [int] NULL,
	[opetushallinnon_koulutus] [nvarchar](2) NULL,
	[opetushallinnon_koulutus_id] [int] NULL,
	[kirjoihintulovuosi] [nvarchar](4) NULL,
	[kirjoihintulovuosi_id] [nvarchar](10) NULL,
	[opiskelijan_olo_syys] [nvarchar](1) NULL,
	[opiskelijan_olo_syys_id] [int] NULL,
	[ika_5v] [nvarchar](2) NULL,
	[ika_id] [int] NULL,
	[lukumaara] [int] NULL,
	[lukiokoulutuksen_koulutuslaji] [nvarchar](2) NULL,
	[lukiokoulutuksen_koulutuslaji_id] [int] NULL,
	[nuorten_aikuisten_koulutus] [nvarchar](2) NULL,
	[nuorten_aikuisten_koulutus_id] [int] NULL,
	[ammatillisen_koulutuksen_koulutuslaji] [nvarchar](2) NULL,
	[ammatillisen_koulutuksen_koulutuslaji_id] [int] NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus] [nvarchar](2) NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus_id] [int] NULL,
	[tyovoimapoliittinen_koulutus] [nvarchar](2) NULL,
	[tyovoimapoliittinen_koulutus_id] [int] NULL,
	[rahoituslahde_amm] [nvarchar](2) NULL,
	[rahoituslahde_amm_id] [int] NULL,
	[tutkinnon_tavoite] [nvarchar](2) NULL,
	[tutkinnon_tavoite_id] [int] NULL,
	[yrittajan_oppisopimuskoulutus] [nvarchar](2) NULL,
	[yrittajan_oppisopimuskoulutus_id] [int] NULL,
	[tietolahde] [nvarchar](250) NULL,
	[rivinumero] [nvarchar](10) NULL,
	[aineistotunnus] [varchar](4) NOT NULL,
	[koulutussektori] [nvarchar](2) NULL,
	[koulutussektori_id] [int] NULL,
	[hallinnonala] [nvarchar](2) NULL,
	[hallinnonala_id] [int] NULL,
	[koulutuksen_jarjestamismuoto] [nvarchar](2) NULL,
	[koulutuksen_jarjestamismuoto_id] [int] NULL,
	[ammatillinen_peruskoulutus_lisakoulutus] [nvarchar](2) NULL,
	[ammatillinen_peruskoulutus_lisakoulutus_id] [int] NULL,
	[koulutuksen_tavoite_toteuma] [nvarchar](2) NULL,
	[koulutuksen_tavoite_toteuma_id] [int] NULL,
	[tyovoimapoliittinen] [nvarchar](2) NULL,
	[tyovoimapoliittinen_id] [int] NULL,
	[aloittaneet] [int] NULL,
	[opiskelijat] [int] NULL,
	[opiskelijat_lasna] [int] NULL,
	[aineisto_id] [int] NOT NULL,
	[aineisto_OTV_id] [int] NULL,
	[koulutuksen_jarjestaja_kunta_id] [int] NULL,
	[koulutuksen_jarjestaja_kunta_historia_id] [int] NULL,
	[oppilaitos_kunta_id] [int] NULL,
	[oppilaitos_kunta_historia_id] [int] NULL,
	[nuorten_aikuisten_koulutus_amm_id] [int] NULL,
	[koulutuslaji_OKM_id] [int] NULL,
	[yht_koulutuksen_jarjestaja_id] [int] NULL,
	[yht_koulutuksen_jarjestaja_historia_id] [int] NULL,
	[yht_oppilaitos_id] [int] NULL,
	[yht_oppilaitos_historia_id] [int] NULL,
	[yht_koulutuksen_jarjestaja_kunta_id] [int] NULL,
	[yht_koulutuksen_jarjestaja_kunta_historia_id] [int] NULL,
	[yht_oppilaitos_kunta_id] [int] NULL,
	[yht_oppilaitos_kunta_historia_id] [int] NULL,
	[yht_koulutuksen_kunta_id] [int] NULL,
	[yht_koulutuksen_kunta_historia_id] [int] NULL,
	[kotikunta_id] [int] NULL,
	[kotikunta] [nvarchar](10) NULL,
	[kotikunta_ed_id] [int] NULL,
	[kotikunta_ed] [nvarchar](10) NULL,
	[kotikunta_sama_kuin_koulutuksen_kunta_id] [int] NULL,
	[kotimaakunta_sama_kuin_koulutuksen_maakunta_id] [int] NULL,
	[kotikunta_sama_kuin_ed_vuonna_id] [int] NULL,
	[kotimaakunta_sama_kuin_ed_vuonna_id] [int] NULL,
	[ed_vuoden_kotimaakunta_sama_kuin_koulutuksen_maakunta_id] [int] NULL,
	[ed_vuoden_kotikunta_sama_kuin_koulutuksen_kunta_id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_2_4efg_Lukiokoulutuksen_ja_ammatillisen_koulutuksen_tutkinnot]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_2_4efg_Lukiokoulutuksen_ja_ammatillisen_koulutuksen_tutkinnot]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_2_4efg_Lukiokoulutuksen_ja_ammatillisen_koulutuksen_tutkinnot](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[lahde] [nvarchar](2) NULL,
	[lahde_id] [int] NULL,
	[koulutuksen_jarjestaja] [nvarchar](10) NULL,
	[koulutuksen_jarjestaja_id] [int] NULL,
	[koulutuksen_jarjestaja_historia_id] [int] NULL,
	[oppisopimuskoulutuksen_jarjestaja] [nvarchar](10) NULL,
	[oppisopimuskoulutuksen_jarjestaja_id] [int] NULL,
	[oppisopimuskoulutuksen_jarjestaja_historia_id] [int] NULL,
	[koulutusluokitus] [nvarchar](6) NULL,
	[koulutusluokitus_id] [int] NULL,
	[koulutusluokitus_historia_id] [int] NULL,
	[tutkintonimike_ammpk] [nvarchar](255) NULL,
	[tutkintonimike_ammpk_id] [int] NULL,
	[koulutusohjelma_ammpk] [nvarchar](100) NULL,
	[koulutusohjelma_ammpk_id] [int] NULL,
	[ammatillisen_koulutuksen_koulutuslaji] [nvarchar](2) NULL,
	[ammatillisen_koulutuksen_koulutuslaji_id] [int] NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus] [nvarchar](2) NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus_id] [int] NULL,
	[koulutuksen_kieli] [nvarchar](2) NULL,
	[koulutuksen_kieli_id] [int] NULL,
	[koulutuksen_kunta] [nvarchar](3) NULL,
	[koulutuksen_kunta_id] [int] NULL,
	[koulutuksen_kunta_historia_id] [int] NULL,
	[opetushallinnon_koulutus] [nvarchar](2) NULL,
	[opetushallinnon_koulutus_id] [int] NULL,
	[sukupuoli] [nvarchar](2) NULL,
	[sukupuoli_id] [int] NULL,
	[aidinkieli_versio1] [nvarchar](2) NULL,
	[aidinkieli_versio1_id] [int] NULL,
	[aikuisopiskelija] [nvarchar](2) NULL,
	[aikuisopiskelija_id] [int] NULL,
	[nuorten_aikuisten_koulutus] [nvarchar](2) NULL,
	[nuorten_aikuisten_koulutus_id] [int] NULL,
	[ika_kirjoihintulovuonna] [nvarchar](20) NULL,
	[ika_kirjoihintulovuonna_id] [int] NULL,
	[ikaryhma_kirjoihintulovuonna_id] [int] NULL,
	[ika] [nvarchar](20) NULL,
	[ika_id] [int] NULL,
	[ikaryhma_id] [int] NULL,
	[lukumaara] [int] NULL,
	[koulutuksen_tutkinnon_aloitusvuosi] [nvarchar](4) NULL,
	[koulutuksen_tutkinnon_aloitusvuosi_id] [nvarchar](10) NULL,
	[koulutuksen_tutkinnon_aloituskausi] [nvarchar](2) NULL,
	[koulutuksen_tutkinnon_aloituskausi_id] [nvarchar](10) NULL,
	[ov_hyvaksiluettu_ennen] [nvarchar](5) NULL,
	[ov_hyvaksiluettu_aikana] [nvarchar](5) NULL,
	[ov_suoritettu_koulutuksen_aikana] [nvarchar](5) NULL,
	[ov_yhteensa] [nvarchar](5) NULL,
	[ov_tyossaoppiminen] [nvarchar](5) NULL,
	[lkm_ammattiosaaminen] [nvarchar](5) NULL,
	[lkm_opintokokonaisuus] [nvarchar](5) NULL,
	[lkm_tutkintojen_osat] [nvarchar](5) NULL,
	[rahoituslahde_amm] [nvarchar](2) NULL,
	[rahoituslahde_amm_id] [int] NULL,
	[vayla_nayttotutkintoon] [nvarchar](2) NULL,
	[vayla_nayttotutkintoon_id] [int] NULL,
	[tutkinnon_tavoite] [nvarchar](2) NULL,
	[tutkinnon_tavoite_id] [int] NULL,
	[tutkinnon_toteuma] [nvarchar](2) NULL,
	[tutkinnon_toteuma_id] [int] NULL,
	[tietolahde] [nvarchar](250) NULL,
	[rivinumero] [nvarchar](10) NULL,
	[aineistotunnus] [varchar](6) NOT NULL,
	[koulutussektori] [nvarchar](2) NULL,
	[koulutussektori_id] [int] NULL,
	[koulutuksen_jarjestamismuoto] [nvarchar](2) NULL,
	[koulutuksen_jarjestamismuoto_id] [int] NULL,
	[ammatillinen_peruskoulutus_lisakoulutus] [nvarchar](2) NULL,
	[ammatillinen_peruskoulutus_lisakoulutus_id] [int] NULL,
	[koulutuksen_tavoite_toteuma] [nvarchar](2) NULL,
	[koulutuksen_tavoite_toteuma_id] [int] NULL,
	[tutkinnot] [int] NULL,
	[aineisto_id] [int] NOT NULL,
	[aineisto_OTV_id] [int] NULL,
	[koulutuksen_jarjestaja_kunta_id] [int] NULL,
	[koulutuksen_jarjestaja_kunta_historia_id] [int] NULL,
	[nuorten_aikuisten_koulutus_amm_id] [int] NULL,
	[koulutuslaji_OKM_id] [int] NULL,
	[yht_koulutuksen_jarjestaja_id] [int] NULL,
	[yht_koulutuksen_jarjestaja_historia_id] [int] NULL,
	[yht_koulutuksen_jarjestaja_kunta_id] [int] NULL,
	[yht_koulutuksen_jarjestaja_kunta_historia_id] [int] NULL,
	[yht_koulutuksen_kunta_id] [int] NULL,
	[yht_koulutuksen_kunta_historia_id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_3_1a_Oppisopimus_paaasiallinen_toiminta]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_3_1a_Oppisopimus_paaasiallinen_toiminta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_3_1a_Oppisopimus_paaasiallinen_toiminta](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[oppisryh] [nvarchar](8) NULL,
	[oppisryh_id] [int] NULL,
	[sukupuoli] [nvarchar](1) NULL,
	[sukupuoli_id] [int] NULL,
	[aidinkieli_versio1] [nvarchar](10) NULL,
	[aidinkieli_versio1_id] [int] NULL,
	[ika] [nvarchar](7) NULL,
	[ika_id] [int] NULL,
	[opetushallinnon_koulutusala] [nvarchar](1) NULL,
	[opetushallinnon_koulutusala_id] [int] NULL,
	[opetushallinnon_koulutusaste] [nvarchar](2) NULL,
	[opetushallinnon_koulutusaste_id] [int] NULL,
	[ammatillisen_koulutuksen_koulutuslaji] [nvarchar](1) NULL,
	[ammatillisen_koulutuksen_koulutuslaji_id] [int] NULL,
	[koulutuksen_sijaintimaakunta] [nvarchar](2) NULL,
	[koulutuksen_sijaintimaakunta_id] [int] NULL,
	[paaasiallinen_toiminta_versio3] [nvarchar](2) NULL,
	[paaasiallinen_toiminta_versio3_id] [int] NULL,
	[ammattiasema] [nvarchar](1) NULL,
	[ammattiasema_id] [int] NULL,
	[opiskelijat] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_3_1b_Oppisopimus_koulutuksen_kesto]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_3_1b_Oppisopimus_koulutuksen_kesto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_3_1b_Oppisopimus_koulutuksen_kesto](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[oppisryh] [nvarchar](8) NULL,
	[oppisryh_id] [int] NULL,
	[sukupuoli] [nvarchar](1) NULL,
	[sukupuoli_id] [int] NULL,
	[aidinkieli_versio1] [nvarchar](10) NULL,
	[aidinkieli_versio1_id] [int] NULL,
	[ika] [nvarchar](7) NULL,
	[ika_id] [int] NULL,
	[opetushallinnon_koulutusala] [nvarchar](1) NULL,
	[opetushallinnon_koulutusala_id] [int] NULL,
	[opetushallinnon_koulutusaste] [nvarchar](2) NULL,
	[opetushallinnon_koulutusaste_id] [int] NULL,
	[ammatillisen_koulutuksen_koulutuslaji] [nvarchar](1) NULL,
	[ammatillisen_koulutuksen_koulutuslaji_id] [int] NULL,
	[koulutuksen_sijaintimaakunta] [nvarchar](2) NULL,
	[koulutuksen_sijaintimaakunta_id] [int] NULL,
	[koulutuksen_arvioitu_kesto] [nvarchar](2) NULL,
	[koulutuksen_arvioitu_kesto_id] [int] NULL,
	[koulutuksen_toteutunut_kesto] [nvarchar](2) NULL,
	[koulutuksen_toteutunut_kesto_id] [int] NULL,
	[opiskelijat] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_3_2_Oppisopimus_jatko_opinnot]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_3_2_Oppisopimus_jatko_opinnot]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_3_2_Oppisopimus_jatko_opinnot](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[oppisryh] [nvarchar](8) NULL,
	[oppisryh_id] [int] NULL,
	[sukupuoli] [nvarchar](1) NULL,
	[sukupuoli_id] [int] NULL,
	[aidinkieli_versio1] [nvarchar](10) NULL,
	[aidinkieli_versio1_id] [int] NULL,
	[ika] [nvarchar](7) NULL,
	[ika_id] [int] NULL,
	[opetushallinnon_koulutusala] [nvarchar](1) NULL,
	[opetushallinnon_koulutusala_id] [int] NULL,
	[ammatillisen_koulutuksen_koulutuslaji] [nvarchar](1) NULL,
	[ammatillisen_koulutuksen_koulutuslaji_id] [int] NULL,
	[koulutuksen_sijaintimaakunta] [nvarchar](2) NULL,
	[koulutuksen_sijaintimaakunta_id] [int] NULL,
	[jatko_opintojen_koulutusaste] [nvarchar](2) NULL,
	[jatko_opintojen_koulutusaste_id] [int] NULL,
	[opiskelijat] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL,
	[jatko_opiskelu] [nvarchar](2) NULL,
	[jatko_opiskelu_id] [int] NULL,
	[koulutusaste2002] [nvarchar](2) NULL,
	[koulutusaste2002_id] [int] NULL,
	[jatko_opiskelun_koulutusala] [nvarchar](1) NULL,
	[jatko_opiskelun_koulutusala_id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_4_1_Perusopetuksen_lisaopetuksen_paattaneiden_sijoittuminen]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_4_1_Perusopetuksen_lisaopetuksen_paattaneiden_sijoittuminen]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_4_1_Perusopetuksen_lisaopetuksen_paattaneiden_sijoittuminen](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[sukupuoli_id] [int] NOT NULL,
	[sukupuoli_koodi] [nvarchar](10) NULL,
	[aidinkieli_id] [int] NOT NULL,
	[aidinkieli_versio1_koodi] [nvarchar](2) NULL,
	[asuinmaakunta_id] [int] NOT NULL,
	[asuinmaakunta_avain] [nvarchar](10) NULL,
	[opiskelu_toiminta_id] [int] NOT NULL,
	[opiskelu_toiminta_koodi] [nvarchar](15) NULL,
	[lukumaara] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_4_10_Vaestorakenne_aidinkielen_mukaan_maakunnittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_4_10_Vaestorakenne_aidinkielen_mukaan_maakunnittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_4_10_Vaestorakenne_aidinkielen_mukaan_maakunnittain](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[asuinmaakunta_id] [int] NOT NULL,
	[asuinmaakunta_avain] [nvarchar](10) NULL,
	[aidinkieli_id] [int] NOT NULL,
	[aidinkieli_versio3_koodi] [nvarchar](2) NULL,
	[kansalaisuus_id] [int] NOT NULL,
	[kansalaisuus_versio1_koodi] [nvarchar](10) NULL,
	[eumaa_valtio_id] [int] NOT NULL,
	[eumaa_valtio_avain] [nvarchar](4) NULL,
	[etamaa_valtio_id] [int] NOT NULL,
	[etamaa_valtio_avain] [nvarchar](5) NULL,
	[ika1v_id] [int] NOT NULL,
	[ika1v_avain] [nvarchar](10) NULL,
	[ikar2_id] [int] NOT NULL,
	[ikar2_avain] [nvarchar](10) NULL,
	[ikar2b_id] [int] NOT NULL,
	[ikar2b_avain] [nvarchar](10) NULL,
	[henkiloiden_lkm] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_4_11_Vaeston_maassamuutto_asuinmaakunnan_ja_koulutuksen_mukaan]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_4_11_Vaeston_maassamuutto_asuinmaakunnan_ja_koulutuksen_mukaan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_4_11_Vaeston_maassamuutto_asuinmaakunnan_ja_koulutuksen_mukaan](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[asuinmaakunta_id] [int] NOT NULL,
	[asuinmaakunta_avain] [nvarchar](10) NULL,
	[koulutusluokitus_id] [int] NOT NULL,
	[koulutusluokitus_avain] [nvarchar](10) NULL,
	[sisaanmuutto] [int] NULL,
	[ulosmuutto] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_4_9_Vaestorakenne_kunnittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_4_9_Vaestorakenne_kunnittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_4_9_Vaestorakenne_kunnittain](
	[tilastointivuosi] [varchar](4) NULL,
	[sukupuoli] [varchar](1) NULL,
	[sukupuoli_id] [int] NULL,
	[kotikunta] [varchar](3) NULL,
	[kotikunta_id] [int] NULL,
	[aidinkieli_versio2] [varchar](2) NULL,
	[aidinkieli_versio2_id] [int] NULL,
	[kansalaisuus_versio1] [varchar](1) NULL,
	[kansalaisuus_versio1_id] [int] NULL,
	[maanosa] [varchar](1) NULL,
	[maanosa_id] [int] NULL,
	[pohjoismaa] [varchar](1) NULL,
	[pohjoismaa_id] [int] NULL,
	[eumaa] [varchar](1) NULL,
	[eumaa_id] [int] NULL,
	[etamaa] [varchar](1) NULL,
	[etamaa_id] [int] NULL,
	[ika] [int] NOT NULL,
	[ika_id] [int] NULL,
	[lukumaara] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_ainevalinnat_lukiossa]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_ainevalinnat_lukiossa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_ainevalinnat_lukiossa](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[aine_avain] [nvarchar](50) NULL,
	[laajuus_avain] [nvarchar](50) NULL,
	[ainevalinta_id] [int] NOT NULL,
	[kieltenmäärä_avain] [nvarchar](10) NULL,
	[kieltenmaara_id] [int] NOT NULL,
	[sukupuoli_avain] [varchar](2) NOT NULL,
	[sukupuoli_id] [int] NOT NULL,
	[oppilaitos_avain] [nvarchar](5) NULL,
	[oppilaitos_id] [int] NOT NULL,
	[oppilaitoksensijaintikunta_avain] [nvarchar](3) NULL,
	[oppilaitoksensijainti_id] [int] NOT NULL,
	[ainevalintojen_lkm] [int] NULL,
	[opiskelijoiden_lkm] [int] NULL,
	[aineiden_opiskelijoiden_lkm] [int] NULL,
	[aineisto] [nvarchar](8) NULL,
	[laatu_id] [int] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_ainevalinnat_perusopetuksessa]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_ainevalinnat_perusopetuksessa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_ainevalinnat_perusopetuksessa](
	[tilv] [nvarchar](4) NULL,
	[aine_koodi] [nvarchar](10) NULL,
	[kielentaso_koodi] [nvarchar](10) NULL,
	[oppilaitos_koodi] [nvarchar](5) NULL,
	[lkm_yht] [int] NULL,
	[lkm_pojat] [int] NULL,
	[lkm_tytot] [int] NULL,
	[vuosiluokka_koodi] [nvarchar](10) NULL,
	[kieltenmäärä_koodi] [nvarchar](10) NULL,
	[oppilaitoksensijainti_historia_koodi] [nvarchar](21) NULL,
	[vuosiluokka_id] [int] NULL,
	[tilv_date] [date] NULL,
	[aineisto] [nvarchar](8) NULL,
	[laatu_id] [int] NULL,
	[ainevalinta_id] [int] NULL,
	[kieltenmaara_id] [int] NULL,
	[oppilaitos_historia_id] [int] NULL,
	[oppilaitos_id] [int] NULL,
	[oppilaitoksensijainti_historia_id] [int] NULL,
	[oppilaitoksensijainti_id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_aloittaneiden_lapaisy]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_aloittaneiden_lapaisy]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_aloittaneiden_lapaisy](
	[rivinumero] [int] NOT NULL,
	[tilv] [varchar](255) NULL,
	[lahde] [varchar](255) NULL,
	[lahde_id] [int] NOT NULL,
	[opp] [nvarchar](5) NULL,
	[oppilaitoksen_taustatiedot_avain] [nvarchar](10) NOT NULL,
	[oppilaitoksen_taustatiedot_id] [int] NOT NULL,
	[oppilaitoksen_taustatiedot_historia_id] [int] NULL,
	[sp] [varchar](255) NULL,
	[sp_id] [int] NOT NULL,
	[syntv] [varchar](255) NULL,
	[ika] [int] NULL,
	[ika_id] [int] NULL,
	[aikielir1] [varchar](255) NULL,
	[aikielir1_id] [int] NOT NULL,
	[alvv] [varchar](255) NULL,
	[allk] [varchar](255) NULL,
	[aloituskausikoodi] [varchar](8) NULL,
	[klaji] [varchar](255) NULL,
	[ophal] [varchar](255) NULL,
	[ophal_id] [int] NOT NULL,
	[jarj] [varchar](255) NULL,
	[kkun] [varchar](255) NULL,
	[alueluokitus_historia_id] [int] NULL,
	[alueluokitus_id] [int] NULL,
	[maak] [varchar](2) NOT NULL,
	[koulk] [varchar](255) NULL,
	[koulk_historia_id] [int] NULL,
	[koulk_id] [int] NULL,
	[opmala] [varchar](2) NULL,
	[opmopa] [varchar](3) NULL,
	[opmast] [varchar](2) NULL,
	[opm95opa] [varchar](2) NULL,
	[koulutussektori] [varchar](26) NULL,
	[pohjkoulk] [varchar](255) NULL,
	[pohjkoulk_historia_id] [int] NULL,
	[pohjkoulk_id] [int] NULL,
	[alvv_kk] [varchar](255) NULL,
	[allk_kk] [varchar](255) NULL,
	[aloituskausikoodi_kk] [varchar](8) NULL,
	[ololk] [varchar](255) NULL,
	[ololk_id] [int] NOT NULL,
	[rahlahde] [varchar](255) NULL,
	[rahlahde_id] [int] NOT NULL,
	[koulutuslaji2] [varchar](255) NULL,
	[koulutuslaji2_id] [int] NOT NULL,
	[saavutettu_suorv] [varchar](255) NULL,
	[saavutettu_suorlk] [varchar](255) NULL,
	[saavutettu_kausikoodi] [varchar](8) NOT NULL,
	[saavutettu_tutkmaak] [varchar](255) NULL,
	[saavutettu_alueluokitus_historia_id] [int] NULL,
	[saavutettu_alueluokitus_id] [int] NULL,
	[saavutettu_tutkjarj] [varchar](255) NULL,
	[saavutettu_tutkopp] [varchar](255) NULL,
	[saavutettu_oppilaitoksen_taustatiedot_avain] [nvarchar](10) NOT NULL,
	[saavutettu_oppilaitoksen_taustatiedot_id] [int] NOT NULL,
	[saavutettu_oppilaitoksen_taustatiedot_historia_id] [int] NULL,
	[saavutettu_tutkkoulk] [varchar](255) NULL,
	[saavutettu_koulk_historia_id] [int] NULL,
	[saavutettu_koulk_id] [int] NULL,
	[saavutettu_tutkopmala] [varchar](255) NULL,
	[saavutettu_tutkopmopa] [varchar](255) NULL,
	[saavutettu_tutkopmast] [varchar](255) NULL,
	[saavutettu_tutkopm95opa] [varchar](255) NULL,
	[saavutettu_tutkkoulutussektori] [varchar](255) NULL,
	[tarkastelujakso] [nvarchar](20) NOT NULL,
	[tarkastelujakso_id] [int] NOT NULL,
	[aloitus_saavutus] [nvarchar](50) NULL,
	[tarkastelujakso_tulevaisuus] [nvarchar](50) NULL,
	[tarkastelujakso_edustavuus] [nvarchar](50) NULL,
	[tietolahde] [varchar](255) NULL,
	[aineistokoodi] [varchar](5) NOT NULL,
	[aineistorivinumero] [numeric](18, 0) NULL,
	[lkm_int] [int] NULL,
	[1a Aloittaneiden opintojen kulku koulutuslajin mukaan prioriteettina mikä tahansa tutkinto] [nvarchar](255) NOT NULL,
	[1a_jarjestys] [nvarchar](255) NOT NULL,
	[1b Aloittaneiden opintojen kulku koulutuslajin mukaan prioriteettina tutkinto ja opiskelu alkuperäisessä tutkintolajissa] [nvarchar](255) NOT NULL,
	[1b_jarjestys] [nvarchar](255) NOT NULL,
	[1c Aloittaneista tutkinnon suorittaneet koulutuslajin mukaan] [nvarchar](255) NOT NULL,
	[1c_jarjestys] [nvarchar](255) NOT NULL,
	[1d Aloittaneista ilman tutkintoa opiskelua jatkavat koulutuslajin mukaan] [nvarchar](255) NOT NULL,
	[1d_jarjestys] [nvarchar](255) NOT NULL,
	[1e Aloittaneista alkuperäisen koulutuslajin tutkinnon suorittaneet koulutuslajin mukaan] [nvarchar](255) NOT NULL,
	[1e_jarjestys] [nvarchar](255) NOT NULL,
	[1f Aloittaneista muun kuin alkuperäisen tutkintolajin tutkinnon suorittaneet koulutuslajin mukaan] [nvarchar](255) NOT NULL,
	[1f_jarjestys] [nvarchar](255) NOT NULL,
	[1g Aloittaneista alkuperäisen tutkintolajin opiskelua jatkavat koulutuslajin mukaan] [nvarchar](255) NOT NULL,
	[1g_jarjestys] [nvarchar](255) NOT NULL,
	[1h Aloittaneista muun tutkintolajin opiskelua jatkavat koulutuslajin mukaan] [nvarchar](255) NOT NULL,
	[1h_jarjestys] [nvarchar](255) NOT NULL,
	[2a Aloittaneiden opintojen kulku koulutusalan (2002) mukaan prioriteettina mikä tahansa tutkinto] [nvarchar](255) NOT NULL,
	[2a_jarjestys] [nvarchar](255) NOT NULL,
	[2b Aloittaneiden opintojen kulku koulutusalan (2002) mukaan prioriteettina tutkinto ja opiskelu alkuperäisellä] [nvarchar](255) NOT NULL,
	[2b_jarjestys] [nvarchar](255) NOT NULL,
	[2e Aloittaneista alkuperäisen koulutusalan (2002) tutkinnon suorittaneet koulutusalan mukaan] [nvarchar](255) NOT NULL,
	[2e_jarjestys] [nvarchar](255) NOT NULL,
	[2f Aloittaneista muun kuin alkuperäisen tutkintolajin tutkinnon suorittaneet koulutuslajin mukaan] [nvarchar](255) NOT NULL,
	[2f_jarjestys] [nvarchar](255) NOT NULL,
	[2g Aloittaneista alkuperäisellä koulutusalalla opiskelua jatkavat koulutusalan mukaan] [nvarchar](255) NOT NULL,
	[2g_jarjestys] [nvarchar](255) NOT NULL,
	[2h Aloittaneista muulla koulutusalalla opiskelua jatkavat koulutusalan mukaan] [nvarchar](255) NOT NULL,
	[2h_jarjestys] [nvarchar](255) NOT NULL,
	[3a Aloittaneiden opintojen kulku opintoalan (2002) mukaan prioriteettina mikä tahansa tutkinto] [nvarchar](255) NOT NULL,
	[3a_jarjestys] [nvarchar](255) NOT NULL,
	[3b Aloittaneiden opintojen kulku opintoalan (2002) mukaan prioriteettina tutkinto ja opiskelu alkuperäisellä] [nvarchar](255) NOT NULL,
	[3b_jarjestys] [nvarchar](255) NOT NULL,
	[3e Aloittaneista alkuperäisen opintoalan (2002) tutkinnon suorittaneet opintoalan mukaan] [nvarchar](255) NOT NULL,
	[3e_jarjestys] [nvarchar](255) NOT NULL,
	[3f Aloittaneista muun opintoalan (2002) tutkinnon suorittaneet opintoalan mukaan] [nvarchar](255) NOT NULL,
	[3f_jarjestys] [nvarchar](255) NOT NULL,
	[3g Aloittaneista alkuperäisellä opintoalalla (2002) opiskelua jatkavat opintoalan mukaan] [nvarchar](255) NOT NULL,
	[3g_jarjestys] [nvarchar](255) NOT NULL,
	[3h Aloittaneista muulla opintoalalla (2002) opiskelua jatkavat opintoalan mukaan] [nvarchar](255) NOT NULL,
	[3h_jarjestys] [nvarchar](255) NOT NULL,
	[4a Aloittaneiden opintojen kulku koulutuksen järjestäjän mukaan, toinen aste prioriteettina tutkinto missä tahansa] [nvarchar](255) NOT NULL,
	[4a_jarjestys] [nvarchar](255) NOT NULL,
	[4b Aloittaneiden opintojen kulku koulutuksen järjestäjän mukaan, toinen aste prioriteettina tutkinto ja opiskelu alkuperäisellä] [nvarchar](255) NOT NULL,
	[4b_jarjestys] [nvarchar](255) NOT NULL,
	[4e Aloittaneista alkuperäisen koulutuksen järjestäjän tutkinnon suorittaneet järjestäjän mukaan] [nvarchar](255) NOT NULL,
	[4e_jarjestys] [nvarchar](255) NOT NULL,
	[4f Aloittaneista muun koulutuksen järjestäjän tutkinnon suorittaneet järjestäjän mukaan] [nvarchar](255) NOT NULL,
	[4f_jarjestys] [nvarchar](255) NOT NULL,
	[4g Aloittaneista alkuperäisellä järjestäjällä opiskelua jatkavat järjestäjän mukaan] [nvarchar](255) NOT NULL,
	[4g_jarjestys] [nvarchar](255) NOT NULL,
	[4h Aloittaneista muulla järjestäjällä opiskelua jatkavat järjestäjän mukaan] [nvarchar](255) NOT NULL,
	[4h_jarjestys] [nvarchar](255) NOT NULL,
	[5a Aloittaneiden opintojen kulku oppilaitoksen mukaan prioriteettina tutkinto missä tahansa] [nvarchar](255) NOT NULL,
	[5a_jarjestys] [nvarchar](255) NOT NULL,
	[5b Aloittaneiden opintojen kulku oppilaitoksen mukaan prioriteettina tutkinto ja opiskelu alkuperäisessä] [nvarchar](255) NOT NULL,
	[5b_jarjestys] [nvarchar](255) NOT NULL,
	[5e Aloittaneista alkuperäisessä oppilaitoksessa tutkinnon suorittaneet oppilaitoksen mukaan] [nvarchar](255) NOT NULL,
	[5e_jarjestys] [nvarchar](255) NOT NULL,
	[5f Aloittaneista muussa oppilaitoksessa tutkinnon suorittaneet oppilaitoksen mukaan] [nvarchar](255) NOT NULL,
	[5f_jarjestys] [nvarchar](255) NOT NULL,
	[5g Aloittaneista alkuperäisessä oppilaitoksessa opiskelua jatkavat oppilaitoksen mukaan] [nvarchar](255) NOT NULL,
	[5g_jarjestys] [nvarchar](255) NOT NULL,
	[5h Aloittaneista muussa oppilaitoksessa opiskelua jatkavat oppilaitoksen mukaan] [nvarchar](255) NOT NULL,
	[5h_jarjestys] [nvarchar](255) NOT NULL,
	[6a Aloittaneiden opintojen kulku maakunnan mukaan prioriteettina tutkinto missä tahansa] [nvarchar](255) NOT NULL,
	[6a_jarjestys] [nvarchar](255) NOT NULL,
	[6b Aloittaneiden opintojen kulku maakunnan mukaan prioriteettina tutkinto ja opiskelu alkuperäisessä] [nvarchar](255) NOT NULL,
	[6b_jarjestys] [nvarchar](255) NOT NULL,
	[6e Aloittaneista alkuperäisessä maakunnassa tutkinnon suorittaneet maakunnan mukaan] [nvarchar](255) NOT NULL,
	[6e_jarjestys] [nvarchar](255) NOT NULL,
	[6f Aloittaneista muussa maakunnassa tutkinnon suorittaneet maakunnan mukaan] [nvarchar](255) NOT NULL,
	[6f_jarjestys] [nvarchar](255) NOT NULL,
	[6g Aloittaneista alkuperäisessä maakunnassa opiskelua jatkavat maakunnan mukaan] [nvarchar](255) NOT NULL,
	[6g_jarjestys] [nvarchar](255) NOT NULL,
	[6h Aloittaneista muussa maakunnassa opiskelua jatkavat maakunnan mukaan] [nvarchar](255) NOT NULL,
	[6h_jarjestys] [nvarchar](255) NOT NULL,
	[7a Aloittaneiden opintojen kulku koulutussektorin mukaan prioriteettina tutkinto missä tahansa] [nvarchar](255) NOT NULL,
	[7a_jarjestys] [nvarchar](255) NOT NULL,
	[7b Aloittaneiden opintojen kulku koulutussektorin mukaan prioriteettina tutkinto ja opiskelu alkuperäisellä] [nvarchar](255) NOT NULL,
	[7b_jarjestys] [nvarchar](255) NOT NULL,
	[7e Aloittaneista alkuperäisen koulutussektorin tutkinnon suorittaneet koulutussektorin mukaan] [nvarchar](255) NOT NULL,
	[7e_jarjestys] [nvarchar](255) NOT NULL,
	[7f Aloittaneista muun koulutussektorin tutkinnon suorittaneet koulutussektorin mukaan] [nvarchar](255) NOT NULL,
	[7f_jarjestys] [nvarchar](255) NOT NULL,
	[7g Aloittaneista alkuperäisellä koulutussektorilla opiskelua jatkavat koulutussektorin mukaan] [nvarchar](255) NOT NULL,
	[7g_jarjestys] [nvarchar](255) NOT NULL,
	[7h Aloittaneista muulla koulutussektorilla opiskelua jatkavat koulutussektorin mukaan] [nvarchar](255) NOT NULL,
	[7h_jarjestys] [nvarchar](255) NOT NULL,
	[8a Aloittaneiden opintojen kulku opintoalan (1995) mukaan prioriteettina mikä tahansa tutkinto] [nvarchar](255) NOT NULL,
	[8a_jarjestys] [nvarchar](255) NOT NULL,
	[8b Aloittaneiden opintojen kulku opintoalan (1995) mukaan prioriteettina tutkinto ja opiskelu alkuperäisellä] [nvarchar](255) NOT NULL,
	[8b_jarjestys] [nvarchar](255) NOT NULL,
	[8e Aloittaneista alkuperäisen opintoalan (1995) tutkinnon suorittaneet opintoalan mukaan] [nvarchar](255) NOT NULL,
	[8e_jarjestys] [nvarchar](255) NOT NULL,
	[8f Aloittaneista muun opintoalan (1995) tutkinnon suorittaneet opintoalan mukaan] [nvarchar](255) NOT NULL,
	[8f_jarjestys] [nvarchar](255) NOT NULL,
	[8g Aloittaneista alkuperäisellä opintoalalla (1995) opiskelua jatkavat opintoalan mukaan] [nvarchar](255) NOT NULL,
	[8g_jarjestys] [nvarchar](255) NOT NULL,
	[8h Aloittaneista muulla opintoalalla (1995) opiskelua jatkavat opintoalan mukaan] [nvarchar](255) NOT NULL,
	[8h_jarjestys] [nvarchar](255) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_alueella_tyossakayvat]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_alueella_tyossakayvat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_alueella_tyossakayvat](
	[tilv] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[aineisto] [nvarchar](8) NULL,
	[laatu_id] [int] NOT NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL,
	[lkm] [int] NULL,
	[amm2001_m1] [nvarchar](20) NULL,
	[amm2001_m2] [nvarchar](20) NULL,
	[mitenna_ammatti_id] [int] NOT NULL,
	[tol2008_m1] [nvarchar](20) NULL,
	[tol2008_m2] [nvarchar](20) NULL,
	[mitenna_toimiala_id] [int] NOT NULL,
	[sp] [nvarchar](10) NULL,
	[sukupuoli_id] [int] NOT NULL,
	[aikielir1] [nvarchar](10) NULL,
	[aikielir1_id] [int] NOT NULL,
	[ikar1] [nvarchar](10) NULL,
	[ikar1_koodi] [nvarchar](10) NOT NULL,
	[ika_id] [int] NOT NULL,
	[opmast] [nvarchar](10) NULL,
	[koulutusaste_id] [int] NOT NULL,
	[tutklaja] [nvarchar](10) NULL,
	[tutkintolaji_id] [int] NOT NULL,
	[opmopa] [nvarchar](10) NULL,
	[opintoala2002_koodi] [nvarchar](3) NOT NULL,
	[opintoala_id] [int] NOT NULL,
	[tilvasmaak] [varchar](2) NULL,
	[asuinmaakunta_historia_id] [int] NULL,
	[asuinmaakunta_id] [int] NULL,
	[tsekt] [nvarchar](10) NULL,
	[tyonantajasektori_id] [int] NOT NULL,
	[tmaak] [nvarchar](10) NULL,
	[tyomaakunta_historia_id] [int] NULL,
	[tyomaakunta_id] [int] NULL,
	[sose] [nvarchar](10) NULL,
	[sosioekonominen_asema_id] [int] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_alueella_tyossakayvat_1v]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_alueella_tyossakayvat_1v]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_alueella_tyossakayvat_1v](
	[tilv] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[aineisto] [nvarchar](8) NULL,
	[laatu_id] [int] NOT NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL,
	[lkm] [int] NULL,
	[amm2001_m1] [nvarchar](20) NULL,
	[amm2001_m2] [nvarchar](20) NULL,
	[mitenna_ammatti_id] [int] NOT NULL,
	[tol2008_m1] [nvarchar](20) NULL,
	[tol2008_m2] [nvarchar](20) NULL,
	[mitenna_toimiala_id] [int] NOT NULL,
	[aikielir1] [nvarchar](10) NULL,
	[aikielir1_id] [int] NOT NULL,
	[ikar1] [nvarchar](10) NULL,
	[ikar1_koodi] [nvarchar](10) NOT NULL,
	[ika_id] [int] NOT NULL,
	[tilvasmaak] [nvarchar](10) NULL,
	[asuinmaakunta_historia_id] [int] NULL,
	[asuinmaakunta_id] [int] NULL,
	[tmaak] [nvarchar](10) NULL,
	[tyomaakunta_historia_id] [int] NULL,
	[tyomaakunta_id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_alueella_tyossakayvat_toimialoittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_alueella_tyossakayvat_toimialoittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_alueella_tyossakayvat_toimialoittain](
	[tilv] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[aineisto] [nvarchar](8) NULL,
	[laatu_id] [int] NOT NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL,
	[lkm] [int] NULL,
	[amm2001_m1] [nvarchar](20) NULL,
	[amm2001_m2] [nvarchar](20) NULL,
	[mitenna_ammatti_id] [int] NOT NULL,
	[tol2008_m1] [nvarchar](20) NULL,
	[tol2008_m2] [nvarchar](20) NULL,
	[mitenna_toimiala_id] [int] NOT NULL,
	[tol2008] [nvarchar](20) NULL,
	[tol2008_id] [int] NOT NULL,
	[ikar1] [nvarchar](10) NULL,
	[ikar1_koodi] [nvarchar](10) NOT NULL,
	[ika_id] [int] NOT NULL,
	[opmast] [nvarchar](10) NULL,
	[koulutusaste_id] [int] NOT NULL,
	[tutklaja] [nvarchar](10) NULL,
	[tutkintolaji_id] [int] NOT NULL,
	[opmopa] [nvarchar](10) NULL,
	[opintoala2002_koodi] [nvarchar](3) NOT NULL,
	[opintoala_id] [int] NOT NULL,
	[tmaak] [nvarchar](10) NULL,
	[tyomaakunta_historia_id] [int] NULL,
	[tyomaakunta_id] [int] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_ammatillisen_koulutuksen_erityisopetuksen_opiskelijat_ja_tutkinnon_suorittaneet]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_ammatillisen_koulutuksen_erityisopetuksen_opiskelijat_ja_tutkinnon_suorittaneet]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_ammatillisen_koulutuksen_erityisopetuksen_opiskelijat_ja_tutkinnon_suorittaneet](
	[tilv] [nvarchar](4) NULL,
	[lahde_id] [int] NOT NULL,
	[koulutuksen_jarjestamismuoto_id] [int] NOT NULL,
	[perusjoukko_id] [int] NOT NULL,
	[koulutusluokitus_id] [int] NOT NULL,
	[ammatillisen_koulutuksen_koulutuslaji_id] [int] NOT NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus_id] [int] NOT NULL,
	[kieli_id] [int] NOT NULL,
	[kmaak] [nvarchar](2) NULL,
	[knuts2u] [nvarchar](2) NULL,
	[kkunryh] [nvarchar](2) NULL,
	[kely] [nvarchar](2) NULL,
	[kavi] [nvarchar](2) NULL,
	[sukupuoli_id] [int] NOT NULL,
	[aidinkielir1_id] [int] NOT NULL,
	[kansalaisuus_versio2_id] [int] NOT NULL,
	[alvv] [nvarchar](4) NULL,
	[allk] [nvarchar](1) NULL,
	[olotamm_id] [int] NULL,
	[olosyys_id] [int] NULL,
	[aikuisopiskelija_id] [int] NOT NULL,
	[erityisopetuksen_peruste_id] [int] NOT NULL,
	[erityisoppilaan_opetusryhma_id] [int] NOT NULL,
	[erityisopetus] [int] NOT NULL,
	[ammos] [int] NULL,
	[opintokok] [int] NULL,
	[lkm] [int] NULL,
	[opiskelijat] [int] NULL,
	[opiskelijat_lasna] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_ammatillisen_koulutuksen_erityisopetuksen_opiskelijat_ja_tutkinnon_suorittaneet_jarjestajittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_ammatillisen_koulutuksen_erityisopetuksen_opiskelijat_ja_tutkinnon_suorittaneet_jarjestajittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_ammatillisen_koulutuksen_erityisopetuksen_opiskelijat_ja_tutkinnon_suorittaneet_jarjestajittain](
	[tilv] [nvarchar](4) NULL,
	[lahde_id] [int] NOT NULL,
	[perusjoukko_id] [int] NOT NULL,
	[oppilaitoksen_taustatiedot_id] [int] NOT NULL,
	[alueluokitus_id] [int] NOT NULL,
	[koulutuksen_jarjestajan_oppilaitoksen_taustatiedot_id] [int] NOT NULL,
	[koulutuksen_jarjestajan_alueluokitus_id] [int] NOT NULL,
	[oppisopimus_oppilaitoksen_taustatiedot_id] [int] NOT NULL,
	[oppisopimus_alueluokitus_id] [int] NOT NULL,
	[koulutusluokitus_id] [int] NOT NULL,
	[ammatillisen_koulutuksen_koulutuslaji_id] [int] NOT NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus_id] [int] NOT NULL,
	[kieli_id] [int] NOT NULL,
	[kmaak] [nvarchar](2) NULL,
	[lkm] [int] NULL,
	[opiskelijan_oppilaitoksen_taustatiedot_id] [int] NOT NULL,
	[opiskelijan_alueluokitus_id] [int] NOT NULL,
	[opiskelijan_oppilaitoksen_oppilaitoksen_taustatiedot_id] [int] NOT NULL,
	[opiskelijan_oppilaitoksen_alueluokitus_id] [int] NOT NULL,
	[opiskelijan_olo_id] [int] NOT NULL,
	[koulutuksen_jarjestamismuoto_id] [int] NOT NULL,
	[opiskelijat] [int] NULL,
	[opiskelijat_lasna] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_rahoitus]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_rahoitus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_rahoitus](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[oppilaitos_avain] [varchar](5) NOT NULL,
	[oppilaitos_id] [int] NOT NULL,
	[rahoituslahde_avain] [varchar](10) NOT NULL,
	[rahoituslahde_id] [int] NOT NULL,
	[tutkimusrahoitus] [decimal](10, 3) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_tutkimushenkilokunta_alueittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_tutkimushenkilokunta_alueittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_tutkimushenkilokunta_alueittain](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[oppilaitos_avain] [varchar](5) NOT NULL,
	[oppilaitos_id] [int] NOT NULL,
	[alueluokitus_avain] [varchar](3) NULL,
	[alueluokitus_id] [int] NOT NULL,
	[lkm_tutkimushenkilokunta_alueittain] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_tutkimushenkilokunta_paatieteenaloittain_tehtavittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_tutkimushenkilokunta_paatieteenaloittain_tehtavittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_tutkimushenkilokunta_paatieteenaloittain_tehtavittain](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[oppilaitos_avain] [varchar](5) NOT NULL,
	[oppilaitos_id] [int] NOT NULL,
	[sukupuoli_avain] [varchar](1) NOT NULL,
	[sukupuoli_id] [int] NOT NULL,
	[tehtava_avain] [varchar](7) NOT NULL,
	[tehtava_id] [int] NOT NULL,
	[tieteenala_avain] [varchar](6) NOT NULL,
	[tieteenala_id] [int] NOT NULL,
	[lkm_tutkimushenkilokunta_paatieteenaloittain_tehtavittain] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_tutkimushenkilokunta_tutkintotasoittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_tutkimushenkilokunta_tutkintotasoittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_tutkimushenkilokunta_tutkintotasoittain](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[oppilaitos_avain] [varchar](5) NOT NULL,
	[oppilaitos_id] [int] NOT NULL,
	[sukupuoli_avain] [varchar](1) NOT NULL,
	[sukupuoli_id] [int] NOT NULL,
	[tutkintotaso_avain] [varchar](2) NOT NULL,
	[tutkintotaso_id] [int] NOT NULL,
	[lkm_tutkimushenkilokunta_tutkintotasoittain] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_tutkimusmenot]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_tutkimusmenot]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_tutkimusmenot](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[oppilaitos_avain] [varchar](5) NOT NULL,
	[oppilaitos_id] [int] NOT NULL,
	[menokohde_avain] [varchar](10) NOT NULL,
	[menokohde_id] [int] NOT NULL,
	[tutkimusmenot] [decimal](10, 3) NULL,
	[tutkimusmenot_arvio_seuraavatilastovuosi] [decimal](10, 3) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_tutkimusmenot_alueittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_tutkimusmenot_alueittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_tutkimusmenot_alueittain](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[oppilaitos_avain] [varchar](5) NOT NULL,
	[oppilaitos_id] [int] NOT NULL,
	[alueluokitus_avain] [varchar](3) NULL,
	[alueluokitus_id] [int] NOT NULL,
	[tutkimusmenot_alueittain] [decimal](35, 3) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_tutkimusmenot_tieteenaloittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_tutkimusmenot_tieteenaloittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_tutkimusmenot_tieteenaloittain](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[oppilaitos_avain] [varchar](5) NOT NULL,
	[oppilaitos_id] [int] NOT NULL,
	[tieteenala_avain] [varchar](10) NULL,
	[tieteenala_id] [int] NOT NULL,
	[tutkimusmenot_tieteenaloittain] [numeric](25, 10) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_tutkimustyovuodet_alueittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_tutkimustyovuodet_alueittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_tutkimustyovuodet_alueittain](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[oppilaitos_avain] [varchar](5) NOT NULL,
	[oppilaitos_id] [int] NOT NULL,
	[alueluokitus_avain] [varchar](3) NULL,
	[alueluokitus_id] [int] NOT NULL,
	[lkm_tutkimustyovuodet_alueittain] [decimal](33, 1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_tutkimustyovuodet_tehtavittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_tutkimustyovuodet_tehtavittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_tutkimustyovuodet_tehtavittain](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[oppilaitos_avain] [varchar](5) NOT NULL,
	[oppilaitos_id] [int] NOT NULL,
	[tehtava_avain] [varchar](7) NOT NULL,
	[tehtava_id] [int] NOT NULL,
	[lkm_tutkimustyovuodet_tehtavittain] [decimal](10, 1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_tutkimustyovuodet_tutkintotasoittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_tutkimustyovuodet_tutkintotasoittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Ammattikorkeakoulujen_tutkimus_ja_kehitys_tutkimustyovuodet_tutkintotasoittain](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[oppilaitos_avain] [varchar](5) NOT NULL,
	[oppilaitos_id] [int] NOT NULL,
	[tutkintotaso_avain] [varchar](2) NOT NULL,
	[tutkintotaso_id] [int] NOT NULL,
	[lkm_tutkimustyovuodet_tutkintotasoittain] [decimal](14, 1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_AVL_ainevalinnat]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_AVL_ainevalinnat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_AVL_ainevalinnat](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilastovuosi_date] [date] NULL,
	[aine_avain] [nvarchar](50) NULL,
	[laajuus_avain] [nvarchar](50) NULL,
	[ainevalinta_id] [int] NOT NULL,
	[sukupuoli_avain] [varchar](2) NOT NULL,
	[sukupuoli_id] [int] NOT NULL,
	[oppilaitos_avain] [nvarchar](5) NULL,
	[oppilaitos_id] [int] NOT NULL,
	[oppilaitoksensijaintikunta_avain] [nvarchar](3) NULL,
	[oppilaitoksensijainti_id] [int] NOT NULL,
	[ainevalintojen_lkm] [int] NULL,
	[aineisto] [nvarchar](8) NULL,
	[laatu_id] [int] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_AVL_kieltenmaarat]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_AVL_kieltenmaarat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_AVL_kieltenmaarat](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilastovuosi_date] [date] NULL,
	[kieltenmäärä_avain] [nvarchar](10) NULL,
	[kieltenmaara_id] [int] NOT NULL,
	[sukupuoli_avain] [varchar](2) NOT NULL,
	[sukupuoli_id] [int] NOT NULL,
	[oppilaitos_avain] [nvarchar](5) NULL,
	[oppilaitos_id] [int] NOT NULL,
	[oppilaitoksensijaintikunta_avain] [nvarchar](3) NULL,
	[oppilaitoksensijainti_id] [int] NOT NULL,
	[opiskelijoiden_lkm] [int] NULL,
	[aineisto] [nvarchar](8) NULL,
	[laatu_id] [int] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_elakkeelle_siirtyneet_ja_kuolleet]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_elakkeelle_siirtyneet_ja_kuolleet]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_elakkeelle_siirtyneet_ja_kuolleet](
	[tilv] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[sukupuoli_id] [int] NOT NULL,
	[aidinkieli_versio1_id] [int] NOT NULL,
	[ika_id] [int] NOT NULL,
	[elakkeelle_siirtynyt_tai_kuollut_id] [int] NOT NULL,
	[paaasiallinen_toiminta_id] [int] NOT NULL,
	[alueluokitus_id] [int] NOT NULL,
	[alueluokitus_historia_id] [int] NULL,
	[mitenna_ammatti_id] [int] NOT NULL,
	[tietojen_ajankohta_id] [int] NOT NULL,
	[tiet_ak] [nvarchar](4) NULL,
	[tiet_akdate] [date] NULL,
	[lkm_yht] [int] NULL,
	[lkm_elakkeelle_siirtyneet] [int] NULL,
	[lkm_kuolleet] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_K2_17_ulkomaalaistaustaiset_opisk_ja_tutk]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_K2_17_ulkomaalaistaustaiset_opisk_ja_tutk]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_K2_17_ulkomaalaistaustaiset_opisk_ja_tutk](
	[tilastovuosi] [varchar](4) NULL,
	[sukupuoli_id] [int] NULL,
	[syntymavuosi] [varchar](10) NULL,
	[jarjestys_syntymavuosi] [int] NULL,
	[kotikunta_id] [int] NULL,
	[kotikunta_historia_id] [int] NULL,
	[asuinkunta_sama_vai_eri_kuin_aiemmin_id] [int] NULL,
	[edeltavan_vuoden_asuinpaikka_id] [int] NULL,
	[suomeen_muuttamisvuosi] [varchar](30) NULL,
	[jarjestys_suomeen_muuttamisvuosi] [int] NULL,
	[aidinkieli_versio4_id] [int] NULL,
	[kansalaisuus_id] [int] NULL,
	[syntymamaa_id] [int] NULL,
	[aidin_syntymamaa_id] [int] NULL,
	[isan_syntymamaa_id] [int] NULL,
	[henkilotunnuksen_oikeellisuus_id] [int] NULL,
	[koulutusryhma_id] [int] NULL,
	[opetushallinnon_koulutus_id] [int] NULL,
	[koulutusluokitus_id] [int] NULL,
	[koulutusluokitus_historia_id] [int] NULL,
	[koulutuksen_opetuskieli_id] [int] NULL,
	[koulutuksen_sijaintikunta_id] [int] NULL,
	[koulutuksen_sijaintikunta_historia_id] [int] NULL,
	[tutkinnon_aloittamisvuosi] [varchar](10) NULL,
	[jarjestys_tutkinnon_aloittamisvuosi] [int] NULL,
	[opiskelijan_olo_id] [int] NULL,
	[maassaolo_id] [int] NULL,
	[tutkinnon_toteuma_id] [int] NULL,
	[aineisto_id] [int] NULL,
	[koulutussektori_id] [int] NULL,
	[ika_id] [int] NULL,
	[ikaryhma1_id] [int] NULL,
	[ikaryhma2_id] [int] NULL,
	[suoritusaika] [varchar](10) NULL,
	[jarjestys_suoritusaika] [int] NULL,
	[aidinkieli_versio1_id] [int] NULL,
	[aidinkieli_versio2_id] [int] NULL,
	[maahantulo_ja_toisen_asteen_koul_aloittaminen_id] [int] NULL,
	[maahantulo_ja_korkeakoulutuksen_aloittaminen_id] [int] NULL,
	[koulutuksen_jarjestamismuoto_id] [int] NULL,
	[aloittaneet] [int] NULL,
	[opiskelijat] [int] NULL,
	[tutkinnot] [int] NULL,
	[aloittaneet_ulkomaalaistausta_kielen_mukaan] [int] NULL,
	[opiskelijat_ulkomaalaistausta_kielen_mukaan] [int] NULL,
	[tutkinnot_ulkomaalaistausta_kielen_mukaan] [int] NULL,
	[aloittaneet_ulkomaalaistausta_vanhempien_synnyinmaan_mukaan] [int] NULL,
	[opiskelijat_ulkomaalaistausta_vanhempien_synnyinmaan_mukaan] [int] NULL,
	[tutkinnot_ulkomaalaistausta_vanhempien_synnyinmaan_mukaan] [int] NULL,
	[aloittaneet_ulkomaalaiset] [int] NULL,
	[opiskelijat_ulkomaalaiset] [int] NULL,
	[tutkinnot_ulkomaalaiset] [int] NULL,
	[aloittaneet_ulkomailla_syntyneet] [int] NULL,
	[opiskelijat_ulkomailla_syntyneet] [int] NULL,
	[tutkinnot_ulkomailla_syntyneet] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_K5_5_Tieteen_ja_teknologian_henkilovoimavarat]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_K5_5_Tieteen_ja_teknologian_henkilovoimavarat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_K5_5_Tieteen_ja_teknologian_henkilovoimavarat](
	[tilastovuosi] [varchar](4) NULL,
	[syntymamaa_id] [int] NULL,
	[kansalaisuus_valtio_id] [int] NULL,
	[sukupuoli_id] [int] NULL,
	[ika_id] [int] NULL,
	[asuinmaakunta_id] [int] NULL,
	[paaasiallinen_toiminta_versio3_id] [int] NULL,
	[koulutusluokitus_id] [int] NULL,
	[tieteenala_id] [int] NULL,
	[tutkinnon_suoritusvuosi] [varchar](10) NULL,
	[tutkinnosta_kulunut_aika_id] [int] NULL,
	[tutkinnon_suoritusmaakunta_id] [int] NULL,
	[ammattiluokitus_2001_id] [int] NULL,
	[ammattiluokitus_2010_id] [int] NULL,
	[tyopaikan_sijaintimaakunta_id] [int] NULL,
	[asuinmaakunta_sama_kuin_tyopaikan_sijaintikunta_id] [int] NULL,
	[toimialaluokitus_tthv_id] [int] NULL,
	[toimialaluokitus_ed_tthv_id] [int] NULL,
	[tyonantajasektori2_id] [int] NULL,
	[tyonantajasektori2_ed_id] [int] NULL,
	[tyonantajasektori2_tthv_id] [int] NULL,
	[tyonantajasektori2_ed_tthv_id] [int] NULL,
	[tyoantajasektori_sama_kuin_ed_vuonna_id] [int] NULL,
	[toimiala_tthv1_sama_kuin_ed_vuonna_id] [int] NULL,
	[toimiala_tthv2_sama_kuin_ed_vuonna_id] [int] NULL,
	[yrityksen_koko_id] [int] NULL,
	[tyonantaja_vaihtunut_id] [int] NULL,
	[lkm] [int] NULL,
	[syntymamaa_avain] [varchar](3) NULL,
	[kansalaisuus_avain] [varchar](3) NULL,
	[sukupuoli_avain] [varchar](1) NULL,
	[ika_avain] [varchar](8) NULL,
	[asuinmaakunta_avain] [varchar](6) NULL,
	[koulutusluokitus_avain] [varchar](6) NULL,
	[tutkinnon_suoritusmaakunta] [varchar](6) NULL,
	[ammattikoodi_2010_avain] [nvarchar](10) NULL,
	[tyopaikan_sijaintimaakunta_avain] [varchar](6) NULL,
	[toimialaluokitus_tthv_avain] [varchar](2) NULL,
	[toimialaluokitus_ed_tthv_avain] [varchar](2) NULL,
	[toimiala_tthv1_sama_kuin_ed_vuonna_avain] [varchar](2) NOT NULL,
	[toimiala_tthv2_sama_kuin_ed_vuonna_avain] [varchar](2) NOT NULL,
	[tyonantajasektori2_avain] [varchar](2) NULL,
	[tyonantajasektori2_ed_avain] [varchar](2) NULL,
	[tyonantajasektori2_tthv_avain] [varchar](2) NULL,
	[tyonantajasektori2_ed_tthv_avain] [varchar](2) NULL,
	[yrityksen_koko_avain] [varchar](2) NULL,
	[asuinmaakunta_sama_kuin_tyopaikan_sijaintikunta_avain] [varchar](2) NOT NULL,
	[tieteenala_avain] [nvarchar](10) NULL,
	[koulutuksesta_kulunut_aika_koodi] [nvarchar](20) NULL,
	[paaasiallinen_toiminta_versio3_avain] [varchar](2) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_K5_5_Tieteen_ja_teknologian_henkilovoimavarat2]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_K5_5_Tieteen_ja_teknologian_henkilovoimavarat2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_K5_5_Tieteen_ja_teknologian_henkilovoimavarat2](
	[tilastovuosi] [varchar](4) NULL,
	[syntymamaa_id] [int] NULL,
	[kansalaisuus_valtio_id] [int] NULL,
	[sukupuoli_id] [int] NULL,
	[ika_id] [int] NULL,
	[asuinmaakunta_id] [int] NULL,
	[paaasiallinen_toiminta_versio3_id] [int] NULL,
	[koulutusluokitus_id] [int] NULL,
	[tieteenala_id] [int] NULL,
	[tutkinnon_suoritusvuosi] [varchar](10) NULL,
	[tutkinnosta_kulunut_aika_id] [int] NULL,
	[tutkinnon_suoritusmaakunta_id] [int] NULL,
	[ammattiluokitus_2001_id] [int] NULL,
	[ammattiluokitus_2010_id] [int] NULL,
	[tyopaikan_sijaintimaakunta_id] [int] NULL,
	[asuinmaakunta_sama_kuin_tyopaikan_sijaintikunta_id] [int] NULL,
	[toimialaluokitus_tthv_id] [int] NULL,
	[toimialaluokitus_ed_tthv_id] [int] NULL,
	[tyonantajasektori2_id] [int] NULL,
	[tyonantajasektori2_ed_id] [int] NULL,
	[tyonantajasektori2_tthv_id] [int] NULL,
	[tyonantajasektori2_ed_tthv_id] [int] NULL,
	[tyonantajasektori_sama_kuin_ed_vuonna_id] [int] NULL,
	[toimiala_tthv1_sama_kuin_ed_vuonna_id] [int] NULL,
	[toimiala_tthv2_sama_kuin_ed_vuonna_id] [int] NULL,
	[yrityksen_koko_id] [int] NULL,
	[lkm] [int] NULL,
	[syntymamaa_avain] [varchar](3) NULL,
	[kansalaisuus_avain] [varchar](3) NULL,
	[sukupuoli_avain] [varchar](1) NULL,
	[ika_avain] [varchar](8) NULL,
	[asuinmaakunta_avain] [varchar](6) NULL,
	[koulutusluokitus_avain] [varchar](6) NULL,
	[tutkinnon_suoritusmaakunta] [varchar](6) NULL,
	[ammattikoodi_2010_avain] [nvarchar](10) NULL,
	[tyopaikan_sijaintimaakunta_avain] [varchar](6) NULL,
	[toimialaluokitus_tthv_avain] [varchar](2) NULL,
	[toimialaluokitus_ed_tthv_avain] [varchar](2) NULL,
	[toimiala_tthv1_sama_kuin_ed_vuonna_avain] [int] NOT NULL,
	[toimiala_tthv2_sama_kuin_ed_vuonna_avain] [int] NOT NULL,
	[tyonantajasektori2_avain] [varchar](2) NULL,
	[tyonantajasektori2_ed_avain] [varchar](2) NULL,
	[tyonantajasektori2_tthv_avain] [int] NULL,
	[tyonantajasektori2_ed_tthv_avain] [int] NULL,
	[yrityksen_koko_avain] [varchar](1) NULL,
	[asuinmaakunta_sama_kuin_tyopaikan_sijaintikunta_avain] [int] NOT NULL,
	[tieteenala_avain] [nvarchar](10) NULL,
	[koulutuksesta_kulunut_aika_koodi] [nvarchar](20) NULL,
	[paaasiallinen_toiminta_versio3_avain] [varchar](2) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_KAK_2_10_Korkeakouluopiskelijoiden_aikaisempi_koulutus]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_KAK_2_10_Korkeakouluopiskelijoiden_aikaisempi_koulutus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_KAK_2_10_Korkeakouluopiskelijoiden_aikaisempi_koulutus](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[lahde_id] [int] NULL,
	[oppilaitoksen_taustatiedot_id] [int] NULL,
	[oppilaitoksen_taustatiedot_historia_id] [int] NULL,
	[koulutusluokitus_id] [int] NULL,
	[koulutusluokitus_historia_id] [int] NULL,
	[koulutuksen_kunta_id] [int] NULL,
	[koulutuksen_kunta_historia_id] [int] NULL,
	[sukupuoli_id] [int] NULL,
	[aidinkieli_versio1_id] [int] NULL,
	[ika_1v_id] [int] NULL,
	[ika_5v_id] [int] NULL,
	[ika_14_65_id] [int] NULL,
	[kotikunta_id] [int] NULL,
	[kotikunta_historia_id] [int] NULL,
	[kansalaisuus_versio2_id] [int] NULL,
	[opiskelijan_olo_tamm_id] [int] NULL,
	[opiskelijan_olo_syys_id] [int] NULL,
	[rahoituslahde_id] [int] NULL,
	[opiskelijan_fte_tieto_id] [int] NULL,
	[vahintaan_45_op_suorittanut_id] [int] NULL,
	[vahintaan_55_op_suorittanut_id] [int] NULL,
	[kirjoihintulovuosi_id] [nvarchar](10) NULL,
	[kirjoihintulolukukausi_id] [nvarchar](10) NULL,
	[kirjoihintulovuosi_korkeakoulusektori_id] [nvarchar](10) NULL,
	[kirjoihintulovuosi_korkeakoulusektori_lasnaoleva_id] [nvarchar](10) NULL,
	[kirjoihintulovuosi_sektori_id] [nvarchar](10) NULL,
	[kirjoihintulovuosi_sektori_lasnaoleva_id] [nvarchar](10) NULL,
	[kirjoihintulovuosi_korkeakoulu_id] [nvarchar](10) NULL,
	[kirjoihintulovuosi_korkeakoulu_lasnaoleva_id] [nvarchar](10) NULL,
	[kirjoihintulovuosi_opintoala_id] [nvarchar](10) NULL,
	[kirjoihintulovuosi_opintoala_lasnaoleva_id] [nvarchar](10) NULL,
	[koulutustyyppi_id] [int] NULL,
	[opiskelumuoto_id] [int] NULL,
	[avoinvayla_id] [int] NULL,
	[aikaisemmin_suoritettu_yotutk] [nvarchar](1) NULL,
	[aikaisemmin_suoritettu_yotutk_tarkempi] [nvarchar](100) NULL,
	[yotutk_pohjakoulutuksen_tila] [nvarchar](150) NULL,
	[aikaisemmin_suoritetun_yotutk_koulutustiedot_id] [int] NULL,
	[aikaisemmin_suoritetun_yotutk_koulutustiedot_historia_id] [int] NULL,
	[aikaisemmin_suoritetun_yotutk_suoritusvuosi_id] [nvarchar](10) NULL,
	[aikaisemmin_suoritetun_yotutk_oppilaitostiedot_id] [int] NULL,
	[aikaisemmin_suoritetun_yotutk_oppilaitostiedot_historia_id] [int] NULL,
	[aikaisemmin_suoritettu_ammtutk] [nvarchar](1) NULL,
	[aikaisemmin_suoritettu_ammtutk_tarkempi] [nvarchar](100) NULL,
	[ammtutk_pohjakoulutuksen_tila] [nvarchar](150) NULL,
	[aikaisemmin_suoritetun_ammtutk_koulutustiedot_id] [int] NULL,
	[aikaisemmin_suoritetun_ammtutk_koulutustiedot_historia_id] [int] NULL,
	[aikaisemmin_suoritetun_ammtutk_suoritusvuosi_id] [nvarchar](10) NULL,
	[aikaisemmin_suoritetun_ammtutk_oppilaitostiedot_id] [int] NULL,
	[aikaisemmin_suoritetun_ammtutk_oppilaitostiedot_historia_id] [int] NULL,
	[aikaisemmin_suoritettu_amktutk] [nvarchar](1) NULL,
	[aikaisemmin_suoritettu_amktutk_tarkempi] [nvarchar](100) NULL,
	[amktutk_pohjakoulutuksen_tila] [nvarchar](150) NULL,
	[aikaisemmin_suoritetun_amktutk_koulutustiedot_id] [int] NULL,
	[aikaisemmin_suoritetun_amktutk_koulutustiedot_historia_id] [int] NULL,
	[aikaisemmin_suoritetun_amktutk_suoritusvuosi_id] [nvarchar](10) NULL,
	[aikaisemmin_suoritetun_amktutk_oppilaitostiedot_id] [int] NULL,
	[aikaisemmin_suoritetun_amktutk_oppilaitostiedot_historia_id] [int] NULL,
	[aikaisemmin_suoritettu_ylempiamktutk] [nvarchar](1) NULL,
	[aikaisemmin_suoritettu_ylempiamktutk_tarkempi] [nvarchar](100) NULL,
	[ylempiamktutk_pohjakoulutuksen_tila] [nvarchar](150) NULL,
	[aikaisemmin_suoritetun_ylempiamktutk_koulutustiedot_id] [int] NULL,
	[aikaisemmin_suoritetun_ylempiamktutk_koulutustiedot_historia_id] [int] NULL,
	[aikaisemmin_suoritetun_ylempiamktutk_suoritusvuosi_id] [nvarchar](10) NULL,
	[aikaisemmin_suoritetun_ylempiamktutk_oppilaitostiedot_id] [int] NULL,
	[aikaisemmin_suoritetun_ylempiamktutk_oppilaitostiedot_historia_id] [int] NULL,
	[aikaisemmin_suoritettu_alempikktutk] [nvarchar](1) NULL,
	[aikaisemmin_suoritettu_alempikktutk_tarkempi] [nvarchar](100) NULL,
	[alempikktutk_pohjakoulutuksen_tila] [nvarchar](150) NULL,
	[aikaisemmin_suoritetun_alempikktutk_koulutustiedot_id] [int] NULL,
	[aikaisemmin_suoritetun_alempikktutk_koulutustiedot_historia_id] [int] NULL,
	[aikaisemmin_suoritetun_alempikktutk_suoritusvuosi_id] [nvarchar](10) NULL,
	[aikaisemmin_suoritetun_alempikktutk_oppilaitostiedot_id] [int] NULL,
	[aikaisemmin_suoritetun_alempikktutk_oppilaitostiedot_historia_id] [int] NULL,
	[aikaisemmin_suoritettu_ylempikktutk] [nvarchar](1) NULL,
	[aikaisemmin_suoritettu_ylempikktutk_tarkempi] [nvarchar](100) NULL,
	[ylempikktutk_pohjakoulutuksen_tila] [nvarchar](150) NULL,
	[aikaisemmin_suoritetun_ylempikktutk_koulutustiedot_id] [int] NULL,
	[aikaisemmin_suoritetun_ylempikktutk_koulutustiedot_historia_id] [int] NULL,
	[aikaisemmin_suoritetun_ylempikktutk_suoritusvuosi_id] [nvarchar](10) NULL,
	[aikaisemmin_suoritetun_ylempikktutk_oppilaitostiedot_id] [int] NULL,
	[aikaisemmin_suoritetun_ylempikktutk_oppilaitostiedot_historia_id] [int] NULL,
	[opiskelijan_koulutus_edellisvuonna_id] [int] NULL,
	[opiskelijan_opintoala2002_edellisvuonna_id] [int] NULL,
	[opiskelijan_opintoala1995_edellisvuonna_id] [int] NULL,
	[aikaisemmasta_koulutuksesta_yotutk_kulunut_aika_id] [int] NULL,
	[aikaisemmasta_koulutuksesta_ammtutk_kulunut_aika_id] [int] NULL,
	[aikaisemmasta_koulutuksesta_amktutk_kulunut_aika_id] [int] NULL,
	[aikaisemmasta_koulutuksesta_ylamktutk_kulunut_aika_id] [int] NULL,
	[aikaisemmasta_koulutuksesta_alkktutk_kulunut_aika_id] [int] NULL,
	[aikaisemmasta_koulutuksesta_ylkktutk_kulunut_aika_id] [int] NULL,
	[aiemman_tutkinnon_yotutk_opintoala1995_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_yotutk_opintoala2002_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_yotutk_koulutusala2002_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_yotutk_koulutusaste2002_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_ammtutk_opintoala1995_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_ammtutk_opintoala2002_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_ammtutk_koulutusala2002_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_ammtutk_koulutusaste2002_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_amktutk_opintoala1995_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_amktutk_opintoala2002_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_amktutk_koulutusala2002_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_amktutk_koulutusaste2002_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_ylempiamktutk_opintoala1995_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_ylempiamktutk_opintoala2002_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_ylempiamktutk_koulutusala2002_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_ylempiamktutk_koulutusaste2002_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_alempikktutk_opintoala1995_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_alempikktutk_opintoala2002_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_alempikktutk_koulutusala2002_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_alempikktutk_koulutusaste2002_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_ylempikktutk_opintoala1995_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_ylempikktutk_opintoala2002_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_ylempikktutk_koulutusala2002_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_ylempikktutk_koulutusaste2002_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_opintoala1995_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_opintoala2002_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_koulutusala2002_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_koulutusaste2002_sama] [nvarchar](100) NULL,
	[pohjakoulutuksen_tila_id] [int] NULL,
	[opiskelijat] [int] NULL,
	[aloittaneet] [int] NULL,
	[aikaisempi_korkein_tutkinto_id] [int] NULL,
	[ika_18_65_id] [int] NULL,
	[ylempi_korkeakoulututkinto] [int] NULL,
	[ylempi_amk_tutkinto] [int] NULL,
	[alempi_korkeakoulututkinto] [int] NULL,
	[amk_tutkinto] [int] NULL,
	[ammatillinen_perustutkinto] [int] NULL,
	[ylioppilastutkinto] [int] NULL,
	[ei_perusasteen_jalkeista_koulutusta] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_keskeyttaneet]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_keskeyttaneet]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_keskeyttaneet](
	[tilastovuosi] [nvarchar](10) NULL,
	[tilv_date] [date] NULL,
	[aineisto_id] [int] NULL,
	[lahde_id] [int] NULL,
	[sukupuoli_id] [int] NULL,
	[aidinkieli_versio1x_id] [int] NULL,
	[ika_1v_id] [int] NULL,
	[ika_5v_id] [int] NULL,
	[kotikunta_id] [int] NULL,
	[kansalaisuus_versio1_id] [int] NULL,
	[eumaa_id] [int] NULL,
	[etamaa_id] [int] NULL,
	[pohjoismaa_id] [int] NULL,
	[kirjoihintulovuosi_id] [nvarchar](10) NULL,
	[kirjoihintulolukukausi_id] [nvarchar](10) NULL,
	[opiskelijan_olo_lk_id] [int] NULL,
	[oppilaitoksen_taustatiedot_id] [int] NULL,
	[koulutusluokitus_id] [int] NULL,
	[koulutuksen_kieli_versio1_id] [int] NULL,
	[koulutuksen_kunta_id] [int] NULL,
	[opetushallinnon_koulutus_id] [int] NULL,
	[hallinnonala2_id] [int] NULL,
	[koulutustyyppi_id] [int] NULL,
	[tutkinnon_suorittamismaakunta_id] [int] NULL,
	[tutkinnon_jarjestaja_id] [int] NULL,
	[tutkinnon_suorittamisoppilaitos_id] [int] NULL,
	[tutkinnon_koulutusluokitus_id] [int] NULL,
	[tutkinnon_koulutustyyppi_id] [int] NULL,
	[seuraavan_vuoden_maakunta_id] [int] NULL,
	[seuraavan_vuoden_jarjestaja_id] [int] NULL,
	[seuraavan_vuoden_oppilaitos_id] [int] NULL,
	[seuraavan_vuoden_koulutusluokitus_id] [int] NULL,
	[seuraavan_vuoden_koulutustyyppi_id] [int] NULL,
	[paaasiallinen_toiminta_versio2_id] [int] NULL,
	[ammattiasema_id] [int] NULL,
	[opiskelijat] [int] NULL,
	[1a_opiskelijoiden_opintojen_kulku_koulutusaste_2002_mukaan_id] [int] NULL,
	[1b_opiskelijoiden_opintojen_kulku_koulutusaste_2002_mukaan_id] [int] NULL,
	[1c_tutkinto_alkuperaisella_koulutusasteella_2002_id] [int] NULL,
	[1d_tutkinto_muulla_koulutusasteella_2002_id] [int] NULL,
	[1e_jatkaa_opiskelua_alkuperaisella_koulutusasteella_2002_id] [int] NULL,
	[1f_jatkaa_opiskelua_muulla_koulutusasteella_2002_id] [int] NULL,
	[2a_opiskelijoiden_opintojen_kulku_koulutusala_2002_mukaan_id] [int] NULL,
	[2b_opiskelijoiden_opintojen_kulku_koulutusala_2002_mukaan_id] [int] NULL,
	[2bb_opiskelijoiden_opintojen_kulku_koulutusala_2002_mukaan_id] [int] NULL,
	[2c_tutkinto_alkuperaisella_koulutusalalla_2002_id] [int] NULL,
	[2d_tutkinto_muulla_koulutusalalla_2002_id] [int] NULL,
	[2e_jatkaa_opiskelua_alkuperaisella_koulutusalalla_2002_id] [int] NULL,
	[2f_jatkaa_opiskelua_muulla_koulutusalalla_2002_id] [int] NULL,
	[3a_opiskelijoiden_opintojen_kulku_opintoala_2002_mukaan_id] [int] NULL,
	[3b_opiskelijoiden_opintojen_kulku_opintoala_2002_mukaan_id] [int] NULL,
	[3bb_opiskelijoiden_opintojen_kulku_opintoala_2002_mukaan_id] [int] NULL,
	[3c_tutkinto_alkuperaisella_opintoalalla_2002_id] [int] NULL,
	[3d_tutkinto_muulla_opintoalalla_2002_id] [int] NULL,
	[3e_jatkaa_opiskelua_alkuperaisella_opintoalalla_2002_id] [int] NULL,
	[3f_jatkaa_opiskelua_muulla_opintoalalla_2002_id] [int] NULL,
	[4a_opiskelijoiden_opintojen_kulku_koul_jarjestajan_mukaan_id] [int] NULL,
	[4b_opiskelijoiden_opintojen_kulku_koul_jarjestajan_mukaan_id] [int] NULL,
	[4bb_opiskelijoiden_opintojen_kulku_koul_jarjestajan_mukaan_id] [int] NULL,
	[4c_tutkinto_alkuperaisella_koulutuksen_jarjestajalla_id] [int] NULL,
	[4d_tutkinto_muulla_koulutuksen_jarjestajalla_id] [int] NULL,
	[4e_jatkaa_opiskelua_alkuperaisella_koulutuksen_jarjestajalla_id] [int] NULL,
	[4f_jatkaa_opiskelua_muulla_koulutuksen_jarjestajalla_id] [int] NULL,
	[5a_opiskelijoiden_opintojen_kulku_oppilaitoksen_mukaan_id] [int] NULL,
	[5b_opiskelijoiden_opintojen_kulku_oppilaitoksen_mukaan_id] [int] NULL,
	[5bb_opiskelijoiden_opintojen_kulku_oppilaitoksen_mukaan_id] [int] NULL,
	[5c_tutkinto_alkuperaisessa_oppilaitoksessa_id] [int] NULL,
	[5d_tutkinto_muussa_oppilaitoksessa_id] [int] NULL,
	[5e_jatkaa_opiskelua_alkuperaisessa_oppilaitoksessa_id] [int] NULL,
	[5f_jatkaa_opiskelua_muussa_oppilaitoksessa_id] [int] NULL,
	[6a_opiskelijoiden_opintojen_kulku_maakunnan_mukaan_id] [int] NULL,
	[6b_opiskelijoiden_opintojen_kulku_maakunnan_mukaan_id] [int] NULL,
	[6c_tutkinto_alkuperaisessa_maakunnassa_id] [int] NULL,
	[6d_tutkinto_muussa_maakunnassa_id] [int] NULL,
	[6e_jatkaa_opiskelua_alkuperaisessa_maakunnassa_id] [int] NULL,
	[6f_jatkaa_opiskelua_muussa_maakunnassa_id] [int] NULL,
	[7a_opiskelijoiden_opintojen_kulku_koulutussektorin_mukaan_id] [int] NULL,
	[7b_opiskelijoiden_opintojen_kulku_koulutussektorin_mukaan_id] [int] NULL,
	[7c_tutkinto_alkuperaisella_koulutussektorilla_id] [int] NULL,
	[7d_tutkinto_muulla_koulutussektorilla_id] [int] NULL,
	[7e_jatkaa_opiskelua_alkuperaisella_koulutussektorilla_id] [int] NULL,
	[7f_jatkaa_opiskelua_muulla_koulutussektorilla_id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_korkeakoulujen_tutkimus_kehitys_5_1_henkilot_5_2_tyovuodet]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_korkeakoulujen_tutkimus_kehitys_5_1_henkilot_5_2_tyovuodet]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_korkeakoulujen_tutkimus_kehitys_5_1_henkilot_5_2_tyovuodet](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[oppilaitos_avain] [nvarchar](10) NULL,
	[oppilaitos_id] [int] NOT NULL,
	[tieteenala_avain] [nvarchar](10) NULL,
	[tieteenala_id] [int] NOT NULL,
	[virkaryhma_avain] [nvarchar](10) NULL,
	[virkaryhma_id] [int] NOT NULL,
	[ika_avain] [nvarchar](10) NULL,
	[ika_id] [int] NOT NULL,
	[sukupuoli_avain] [nvarchar](10) NULL,
	[sukupuoli_id] [int] NOT NULL,
	[tutkintotaso_avain] [nvarchar](10) NULL,
	[tutkintotaso_id] [int] NOT NULL,
	[lkm_tutkimushenkilokunta] [int] NULL,
	[lkm_tutkimustyovuodet] [decimal](8, 4) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_korkeakoulujen_tutkimus_kehitys_5_3_menot]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_korkeakoulujen_tutkimus_kehitys_5_3_menot]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_korkeakoulujen_tutkimus_kehitys_5_3_menot](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[oppilaitos_avain] [nvarchar](10) NULL,
	[oppilaitos_id] [int] NOT NULL,
	[tieteenala_avain] [nvarchar](10) NULL,
	[tieteenala_id] [int] NOT NULL,
	[menokohde_avain] [varchar](10) NOT NULL,
	[menokohde_id] [int] NOT NULL,
	[tutkimusmenot] [decimal](10, 3) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_korkeakoulujen_tutkimus_kehitys_5_3_rahoitus]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_korkeakoulujen_tutkimus_kehitys_5_3_rahoitus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_korkeakoulujen_tutkimus_kehitys_5_3_rahoitus](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[oppilaitos_avain] [nvarchar](10) NULL,
	[oppilaitos_id] [int] NOT NULL,
	[tieteenala_avain] [nvarchar](10) NULL,
	[tieteenala_id] [int] NOT NULL,
	[rahoituslahde_avain] [varchar](10) NOT NULL,
	[rahoituslahde_id] [int] NOT NULL,
	[tutkimusrahoitus] [decimal](8, 3) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_koulutukseen_sijoittuneet_2v]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_koulutukseen_sijoittuneet_2v]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_koulutukseen_sijoittuneet_2v](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[aineistorivinumero] [int] NOT NULL,
	[tarkastelujakso] [nvarchar](20) NOT NULL,
	[tarkastelujakso_id] [int] NOT NULL,
	[tilastovuosi] [nvarchar](4) NULL,
	[tilastovuosi_id] [int] NOT NULL,
	[tilv_date] [date] NULL,
	[tutkintoryhma] [nvarchar](10) NULL,
	[tutkintoryhma_id] [int] NOT NULL,
	[suoritusvuosi] [nvarchar](4) NULL,
	[suoritusvuosi_id] [nvarchar](10) NOT NULL,
	[suorituslukukausi] [nvarchar](6) NULL,
	[suorituslukukausi_id] [nvarchar](10) NOT NULL,
	[sukupuoli] [nvarchar](2) NULL,
	[sukupuoli_id] [int] NOT NULL,
	[syntymavvuosi] [nvarchar](8) NULL,
	[syntymavuosi_id] [nvarchar](10) NOT NULL,
	[aidinkieli_versio_1] [nvarchar](2) NULL,
	[aidinkieli_versio_1_id] [int] NOT NULL,
	[asuinkunta] [nvarchar](3) NULL,
	[asuinkunta_id] [int] NOT NULL,
	[asuinkunta_historia_id] [int] NOT NULL,
	[kansalaisuus] [nvarchar](2) NULL,
	[kansalaisuus_id] [int] NOT NULL,
	[pohjoismaa_id] [int] NOT NULL,
	[eumaa_id] [int] NOT NULL,
	[etamaa_id] [int] NOT NULL,
	[pohjakoulutuksen_oppilaitos] [nvarchar](10) NULL,
	[pohjakoulutuksen_oppilaitos_id] [int] NOT NULL,
	[pohjakoulutuksen_oppilaitos_historia_id] [int] NOT NULL,
	[pohjakoulutuksen_koulutuksen_jarjestaja] [nvarchar](10) NULL,
	[pohjakoulutuksen_opetuskieli] [nvarchar](4) NULL,
	[pohjakoulutuksen_opetuskieli_id] [int] NOT NULL,
	[pohjakoulutuksen_koulutuslaji] [nvarchar](2) NULL,
	[pohjakoulutuksen_koulutuslaji_id] [int] NOT NULL,
	[pohjakoulutuksen_tutktav] [nvarchar](2) NULL,
	[pohjakoulutuksen_tutktav_id] [int] NOT NULL,
	[pohjakoulutuksen_aikoul] [nvarchar](2) NULL,
	[pohjakoulutuksen_aikoul_id] [int] NOT NULL,
	[pohjakoulutuksen_tutkinnon_suoritusmaakunta] [nvarchar](2) NULL,
	[pohjakoulutuksen_tutkinnon_suoritusmaakunta_id] [int] NOT NULL,
	[pohjakoulutuksen_tutkinnon_suoritusmaakunta_historia_id] [int] NOT NULL,
	[pohjakoulutus] [nvarchar](6) NULL,
	[pohjakoulutus_id] [int] NOT NULL,
	[pohjakoulutus_historia_id] [int] NOT NULL,
	[koulutukseen_sijoittuneen_koulutus] [nvarchar](6) NULL,
	[koulutukseen_sijoittuneen_koulutus_id] [int] NOT NULL,
	[koulutukseen_sijoittuneen_koulutus_historia_id] [int] NOT NULL,
	[koulutukseen_sijoittuneen_oppilaitos] [nvarchar](10) NULL,
	[koulutukseen_sijoittuneen_oppilaitos_id] [int] NOT NULL,
	[koulutukseen_sijoittuneen_oppilaitos_historia_id] [int] NOT NULL,
	[koulutukseen_sijoittuneen_koulutuksen_jarjestaja] [nvarchar](10) NOT NULL,
	[koulutukseen_sijoittuneen_maakunta] [nvarchar](2) NULL,
	[koulutukseen_sijoittuneen_maakunta_id] [int] NOT NULL,
	[koulutukseen_sijoittuneen_maakunta_historia_id] [int] NOT NULL,
	[moninkertainen_haku] [nvarchar](2) NULL,
	[moninkertainen_haku_id] [int] NOT NULL,
	[paaasiallinen_toiminta] [nvarchar](2) NULL,
	[paaasiallinen_toiminta_id] [int] NOT NULL,
	[ammattiasema] [nvarchar](2) NULL,
	[ammattiasema_id] [int] NOT NULL,
	[lkm] [int] NULL,
	[tietolahde] [varchar](255) NULL,
	[aineisto] [nvarchar](8) NULL,
	[aineisto_id] [nvarchar](8) NULL,
	[lukiokoulutuksessa] [int] NULL,
	[lukiokoulutuksessa_ke] [nvarchar](5) NULL,
	[ammatillisessa_koulutuksessa] [int] NULL,
	[ammatillisessa_koulutuksessa_ke] [nvarchar](5) NULL,
	[ammattikorkeakoulutuksessa] [int] NULL,
	[ammattikorkeakoulutuksessa_ke] [nvarchar](5) NULL,
	[yliopistokoulutuksessa] [int] NULL,
	[yliopistokoulutuksessa_ke] [nvarchar](5) NULL,
	[lukiokoulutuksessa_ja_ammatillisessa_koulutuksessa] [int] NULL,
	[lukiokoulutuksessa_ja_ammatillisessa_koulutuksessa_ke] [nvarchar](5) NULL,
	[toisen_asteen_ammatillisessa_koulutuksessa_ja_korkeakoulutuksessa] [int] NULL,
	[toisen_asteen_ammatillisessa_koulutuksessa_ja_korkeakoulutuksessa_ke] [nvarchar](5) NULL,
	[ammattikorkeakoulutuksessa_ja_yliopistokoulutuksessa] [int] NULL,
	[ammattikorkeakoulutuksessa_ja_yliopistokoulutuksessa_ke] [nvarchar](5) NULL,
	[koulutuksen_paattaineiden_toiminta] [int] NULL,
	[koulutuksen_paattaneiden_toiminta_id] [int] NOT NULL,
	[rivinumero] [int] NOT NULL,
	[ika_1v] [nvarchar](10) NULL,
	[ika_1v_id] [int] NOT NULL,
	[ika_5v] [nvarchar](10) NULL,
	[ika_5v_id] [int] NOT NULL,
 CONSTRAINT [PK_f_koulutukseen_sijoittuneet_2v_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_koulutukseen_sijoittuneet_6v]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_koulutukseen_sijoittuneet_6v]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_koulutukseen_sijoittuneet_6v](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[aineistorivinumero] [int] NOT NULL,
	[tarkastelujakso] [nvarchar](20) NOT NULL,
	[tarkastelujakso_id] [int] NOT NULL,
	[tilastovuosi] [nvarchar](4) NULL,
	[tilastovuosi_id] [int] NOT NULL,
	[tilv_date] [date] NULL,
	[tutkintoryhma] [nvarchar](10) NULL,
	[tutkintoryhma_id] [int] NOT NULL,
	[suoritusvuosi] [nvarchar](4) NULL,
	[suoritusvuosi_id] [nvarchar](10) NOT NULL,
	[suorituslukukausi] [nvarchar](6) NULL,
	[suorituslukukausi_id] [nvarchar](10) NOT NULL,
	[sukupuoli] [nvarchar](2) NULL,
	[sukupuoli_id] [int] NOT NULL,
	[syntymavvuosi] [nvarchar](8) NULL,
	[syntymavuosi_id] [nvarchar](10) NOT NULL,
	[aidinkieli_versio_1] [nvarchar](2) NULL,
	[aidinkieli_versio_1_id] [int] NOT NULL,
	[asuinkunta] [nvarchar](3) NULL,
	[asuinkunta_id] [int] NOT NULL,
	[asuinkunta_historia_id] [int] NOT NULL,
	[kansalaisuus] [nvarchar](2) NULL,
	[kansalaisuus_id] [int] NOT NULL,
	[pohjoismaa_id] [int] NOT NULL,
	[eumaa_id] [int] NOT NULL,
	[etamaa_id] [int] NOT NULL,
	[pohjakoulutuksen_oppilaitos] [nvarchar](10) NULL,
	[pohjakoulutuksen_oppilaitos_id] [int] NOT NULL,
	[pohjakoulutuksen_oppilaitos_historia_id] [int] NOT NULL,
	[pohjakoulutuksen_koulutuksen_jarjestaja] [nvarchar](10) NULL,
	[pohjakoulutuksen_opetuskieli] [nvarchar](4) NULL,
	[pohjakoulutuksen_opetuskieli_id] [int] NOT NULL,
	[pohjakoulutuksen_koulutuslaji] [nvarchar](2) NULL,
	[pohjakoulutuksen_koulutuslaji_id] [int] NOT NULL,
	[pohjakoulutuksen_tutktav] [nvarchar](2) NULL,
	[pohjakoulutuksen_tutktav_id] [int] NOT NULL,
	[pohjakoulutuksen_aikoul] [nvarchar](2) NULL,
	[pohjakoulutuksen_aikoul_id] [int] NOT NULL,
	[pohjakoulutuksen_tutkinnon_suoritusmaakunta] [nvarchar](2) NULL,
	[pohjakoulutuksen_tutkinnon_suoritusmaakunta_id] [int] NOT NULL,
	[pohjakoulutuksen_tutkinnon_suoritusmaakunta_historia_id] [int] NOT NULL,
	[pohjakoulutus] [nvarchar](6) NULL,
	[pohjakoulutus_id] [int] NOT NULL,
	[pohjakoulutus_historia_id] [int] NOT NULL,
	[koulutukseen_sijoittuneen_koulutus] [nvarchar](6) NULL,
	[koulutukseen_sijoittuneen_koulutus_id] [int] NOT NULL,
	[koulutukseen_sijoittuneen_koulutus_historia_id] [int] NOT NULL,
	[koulutukseen_sijoittuneen_oppilaitos] [nvarchar](10) NULL,
	[koulutukseen_sijoittuneen_oppilaitos_id] [int] NOT NULL,
	[koulutukseen_sijoittuneen_oppilaitos_historia_id] [int] NOT NULL,
	[koulutukseen_sijoittuneen_koulutuksen_jarjestaja] [nvarchar](10) NOT NULL,
	[koulutukseen_sijoittuneen_maakunta] [nvarchar](2) NULL,
	[koulutukseen_sijoittuneen_maakunta_id] [int] NOT NULL,
	[koulutukseen_sijoittuneen_maakunta_historia_id] [int] NOT NULL,
	[moninkertainen_haku] [nvarchar](2) NULL,
	[moninkertainen_haku_id] [int] NOT NULL,
	[paaasiallinen_toiminta] [nvarchar](2) NULL,
	[paaasiallinen_toiminta_id] [int] NOT NULL,
	[ammattiasema] [nvarchar](2) NULL,
	[ammattiasema_id] [int] NOT NULL,
	[lkm] [int] NULL,
	[tietolahde] [varchar](255) NULL,
	[aineisto] [nvarchar](8) NULL,
	[aineisto_id] [nvarchar](8) NULL,
	[lukiokoulutuksessa] [int] NULL,
	[lukiokoulutuksessa_ke] [nvarchar](5) NULL,
	[ammatillisessa_koulutuksessa] [int] NULL,
	[ammatillisessa_koulutuksessa_ke] [nvarchar](5) NULL,
	[ammattikorkeakoulutuksessa] [int] NULL,
	[ammattikorkeakoulutuksessa_ke] [nvarchar](5) NULL,
	[yliopistokoulutuksessa] [int] NULL,
	[yliopistokoulutuksessa_ke] [nvarchar](5) NULL,
	[lukiokoulutuksessa_ja_ammatillisessa_koulutuksessa] [int] NULL,
	[lukiokoulutuksessa_ja_ammatillisessa_koulutuksessa_ke] [nvarchar](5) NULL,
	[toisen_asteen_ammatillisessa_koulutuksessa_ja_korkeakoulutuksessa] [int] NULL,
	[toisen_asteen_ammatillisessa_koulutuksessa_ja_korkeakoulutuksessa_ke] [nvarchar](5) NULL,
	[ammattikorkeakoulutuksessa_ja_yliopistokoulutuksessa] [int] NULL,
	[ammattikorkeakoulutuksessa_ja_yliopistokoulutuksessa_ke] [nvarchar](5) NULL,
	[koulutuksen_paattaineiden_toiminta] [int] NULL,
	[koulutuksen_paattaneiden_toiminta_id] [int] NOT NULL,
	[rivinumero] [int] NOT NULL,
	[ika_1v] [nvarchar](10) NULL,
	[ika_1v_id] [int] NOT NULL,
	[ika_5v] [nvarchar](10) NULL,
	[ika_5v_id] [int] NOT NULL,
 CONSTRAINT [PK_f_koulutukseen_sijoittuneet_6v_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Lukion_ja_ammatillisen_peruskoulutuksen_opiskelijat_tutkinnot]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Lukion_ja_ammatillisen_peruskoulutuksen_opiskelijat_tutkinnot]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Lukion_ja_ammatillisen_peruskoulutuksen_opiskelijat_tutkinnot](
	[tilastovuosi] [nvarchar](4) NULL,
	[perusjoukko_id] [int] NULL,
	[aidinkieli_id] [int] NULL,
	[koulutusluokitus_id] [int] NULL,
	[koulutuksen_maakunta_id] [int] NULL,
	[lkm] [int] NULL,
	[tietolahde] [nvarchar](20) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Moninkertainen_haku_aiemmat_tutkinnot]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Moninkertainen_haku_aiemmat_tutkinnot]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Moninkertainen_haku_aiemmat_tutkinnot](
	[Aiemmin_suoritettu_tutkinto_oppilaitos_avain] [varchar](5) NULL,
	[Aiemmin_suoritettu_tutkinto_oppilaitos_id] [int] NOT NULL,
	[Aiemmin_suoritettu_tutkinto_oppilaitoksen_alueluokitus_avain] [nvarchar](3) NULL,
	[Aiemmin_suoritettu_tutkinto_oppilaitoksen_alueluokitus_id] [int] NOT NULL,
	[Aiemmin_suoritettu_tutkinto_koulutusluokitus_avain] [varchar](6) NULL,
	[Aiemmin_suoritettu_tutkinto_koulutusluokitus_id] [int] NOT NULL,
	[Aiemmin_suoritettu_tutkinto_suoritusvuosi] [varchar](4) NULL,
	[Aiemmin_suoritettu_tutkinto_ika] [int] NULL,
	[Aiemmin_suoritettu_tutkinto_ajankohta_id] [int] NOT NULL,
	[Aiemmin_suoritettu_tutkinto_sektori] [varchar](6) NOT NULL,
	[Aiemmin_suoritettu_tutkinto_sektori_id] [int] NOT NULL,
	[Aiemmin_suoritettu_tutkinto_tuorein] [nvarchar](50) NULL,
	[lkm] [int] NULL,
	[tietolahde] [varchar](31) NOT NULL,
	[rivinumero] [bigint] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Moninkertainen_haku_edellisen_vuoden_opiskelut]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Moninkertainen_haku_edellisen_vuoden_opiskelut]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Moninkertainen_haku_edellisen_vuoden_opiskelut](
	[Edellisen_vuoden_opiskelu_oppilaitos_avain] [varchar](10) NULL,
	[Edellisen_vuoden_opiskelu_oppilaitos_id] [int] NOT NULL,
	[Edellisen_vuoden_opiskelu_oppilaitoksen_alueluokitus_avain] [nvarchar](10) NULL,
	[Edellisen_vuoden_opiskelu_oppilaitoksen_alueluokitus_id] [int] NOT NULL,
	[Edellisen_vuoden_opiskelu_koulutusluokitus_avain] [varchar](10) NULL,
	[Edellisen_vuoden_opiskelu_koulutusluokitus_id] [int] NOT NULL,
	[Edellisen_vuoden_opiskelu_avain] [varchar](10) NOT NULL,
	[Edellisen_vuoden_opiskelu_id] [int] NOT NULL,
	[lkm] [int] NULL,
	[tietolahde] [varchar](31) NOT NULL,
	[rivinumero] [bigint] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Moninkertainen_haku_edelliset_haut]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Moninkertainen_haku_edelliset_haut]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Moninkertainen_haku_edelliset_haut](
	[Edellinen_haku_avain] [varchar](10) NOT NULL,
	[Edellinen_haku_id] [int] NOT NULL,
	[Edellinen_haku_ajankohta] [varchar](10) NOT NULL,
	[Edellinen_haku_ajankohta_id] [int] NOT NULL,
	[Johdettu_Hakenut_toiselle_asteelle] [nvarchar](50) NULL,
	[Johdettu_Hakenut_korkeakoulutukseen] [nvarchar](50) NULL,
	[Johdettu_Hakenut] [nvarchar](50) NULL,
	[lkm] [int] NULL,
	[tietolahde] [varchar](31) NOT NULL,
	[rivinumero] [bigint] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Moninkertainen_haku_hakijat]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Moninkertainen_haku_hakijat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Moninkertainen_haku_hakijat](
	[Tilastovuosi] [varchar](4) NULL,
	[tilv_date] [date] NULL,
	[Koulutuksen_alkamislukukausi_avain] [varchar](5) NULL,
	[Koulutuksen_alkamislukukausi_date] [date] NULL,
	[Sukupuoli_avain] [varchar](1) NULL,
	[sukupuoli_id] [int] NOT NULL,
	[Ika] [int] NULL,
	[Ika_id] [int] NOT NULL,
	[Syntymavuosi] [varchar](4) NULL,
	[Aidinkielir1_avain] [varchar](2) NULL,
	[Aidinkielir1_id] [int] NOT NULL,
	[Kotikunta_vuotta_aiemmin_avain] [varchar](3) NULL,
	[Kotikunta_vuotta_aiemmin_id] [int] NOT NULL,
	[Hetuntila_avain] [varchar](1) NULL,
	[Hetuntila_id] [int] NOT NULL,
	[Toiminta_vuotta_aiemmin_avain] [varchar](2) NULL,
	[Toiminta_vuotta_aiemmin_id] [int] NOT NULL,
	[lkm] [int] NULL,
	[tietolahde] [varchar](31) NOT NULL,
	[rivinumero] [bigint] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Moninkertainen_haku_uudet_haut]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Moninkertainen_haku_uudet_haut]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Moninkertainen_haku_uudet_haut](
	[Hakukohde_avain] [varchar](5) NULL,
	[Hakukohde_id] [int] NOT NULL,
	[Hakukohde_oppilaitos_avain] [varchar](5) NULL,
	[Hakukohde_oppilaitos_id] [int] NOT NULL,
	[Hakukohde_oppilaitoksen_alueluokitus_avain] [nvarchar](3) NULL,
	[Hakukohde_oppilaitoksen_alueluokitus_id] [int] NOT NULL,
	[Hakukohde_koulutusaste2002_avain] [varchar](8) NULL,
	[Hakukohde_koulutusaste2002_id] [int] NOT NULL,
	[Hakukohde_opintoala2002_avain] [varchar](9) NULL,
	[Hakukohde_opintoala2002_id] [int] NOT NULL,
	[Hakukohde_opintoala1995_avain] [varchar](10) NULL,
	[Hakukohde_opintoala1995_id] [int] NOT NULL,
	[Hakukohde_prioriteetti_avain] [varchar](6) NOT NULL,
	[Hakukohde_prioriteetti_id] [int] NOT NULL,
	[Hakukohde_hyvaksytty] [varchar](1) NULL,
	[Hakukohde_vastaanotettu] [varchar](1) NULL,
	[Hakukohteen_tulos_id] [int] NOT NULL,
	[Hakukohde_tutkinnon_taso] [varchar](4) NULL,
	[Hakukohde_tutkinnon_taso_tarkennus] [varchar](6) NULL,
	[Hakukohde_tutkinnon_taso_id] [int] NOT NULL,
	[Hakukohde_erillisvalinta] [varchar](2) NULL,
	[Hakukohde_erillisvalinta_id] [int] NOT NULL,
	[Hakukohde_koulutuksen_alkamislukukausi_avain] [varchar](5) NULL,
	[Hakukohde_koulutuksen_alkamislukukausi_id] [nvarchar](10) NOT NULL,
	[Johdettu_Sama_koulutusaste02_Aiempi_tutkinto_Haku] [nvarchar](50) NOT NULL,
	[Johdettu_Sama_koulutusaste02_Aiempi_opiskelu_Haku] [nvarchar](50) NOT NULL,
	[Johdettu_Sama_opintoala95_Aiempi_tutkinto_Haku] [nvarchar](50) NOT NULL,
	[Johdettu_Sama_opintoala95_Aiempi_opiskelu_Haku] [nvarchar](50) NOT NULL,
	[Johdettu_Sama_opintoala02_Aiempi_tutkinto_Haku] [nvarchar](50) NOT NULL,
	[Johdettu_Sama_opintoala02_Aiempi_opiskelu_Haku] [nvarchar](50) NOT NULL,
	[Johdettu_Sama_koulutusala95_Aiempi_tutkinto_Haku] [nvarchar](50) NOT NULL,
	[Johdettu_Sama_koulutusala95_Aiempi_opiskelu_Haku] [nvarchar](50) NOT NULL,
	[Johdettu_Sama_koulutusala02_Aiempi_tutkinto_Haku] [nvarchar](50) NOT NULL,
	[Johdettu_Sama_koulutusala02_Aiempi_opiskelu_Haku] [nvarchar](50) NOT NULL,
	[Johdettu_Sama_oppilaitos_Aiempi_tutkinto_Haku] [nvarchar](50) NOT NULL,
	[Johdettu_Sama_oppilaitos_Aiempi_opiskelu_Haku] [nvarchar](50) NOT NULL,
	[Johdettu_Sama_sektori_Aiempi_tutkinto_Haku] [nvarchar](50) NOT NULL,
	[Johdettu_Sama_sektori_Aiempi_opiskelu_Haku] [nvarchar](50) NOT NULL,
	[Johdettu_Sama_sektori_Aiempi_tutkinto_tai_opiskelu_Haku] [nvarchar](50) NOT NULL,
	[Johdettu_Sama_laaja_sektori_Aiempi_tutkinto_Haku] [nvarchar](50) NOT NULL,
	[Johdettu_Sama_laaja_sektori_Aiempi_opiskelu_Haku] [nvarchar](50) NOT NULL,
	[Johdettu_Sama_laaja_sektori_Aiempi_tutkinto_tai_opiskelu_Haku] [nvarchar](50) NOT NULL,
	[Johdettu_Hakenut_Amk_ja_Yo] [nvarchar](50) NULL,
	[Johdettu_Hakenut_Korkea_aste_ja_Toinen_aste] [nvarchar](50) NULL,
	[Johdettu_Hakenut_Lukio_ja_Ammatillinen_koulutus] [nvarchar](50) NULL,
	[lkm] [int] NULL,
	[tietolahde] [varchar](31) NOT NULL,
	[rivinumero] [bigint] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Opettajat_ammatillinen_koulutus_kelpoisuus_koulutus]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Opettajat_ammatillinen_koulutus_kelpoisuus_koulutus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Opettajat_ammatillinen_koulutus_kelpoisuus_koulutus](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[oppilaitoksen_kieli_id] [int] NULL,
	[pääasiallinen_koulutusaste_id] [int] NULL,
	[tyosuhteen_luonne_id] [int] NULL,
	[erityisopetus] [int] NULL,
	[opinto_ohjaus] [int] NULL,
	[valma] [int] NULL,
	[telma] [int] NULL,
	[mamu] [int] NULL,
	[ammpk_valmistava] [int] NULL,
	[kotitalousopetus] [int] NULL,
	[kelp_amm] [int] NULL,
	[kelp_yht] [int] NULL,
	[kelp_opo] [int] NULL,
	[kelp_erope] [int] NULL,
	[kelp_muu] [int] NULL,
	[kelp_ei_muod] [int] NULL,
	[eikelp_paa] [int] NULL,
	[eikelp_pedag] [int] NULL,
	[eikelp_tyokok] [int] NULL,
	[eikelp_tieto_puuttuu] [int] NULL,
	[kelp_kaikki] [int] NULL,
	[opettajan_eniten_opettama_ala_id] [int] NULL,
	[opettajan_eniten_opettama_aine_id] [int] NULL,
	[opettajan_toiseksi_eniten_opettama_ala_id] [nchar](10) NULL,
	[opettajan_toiseksi_eniten_opettama_aine_id] [nchar](10) NULL,
	[opettajan_kolmanneksi_eniten_opettama_ala_id] [nchar](10) NULL,
	[opettajan_kolmanneksi_eniten_opettama_aine_id] [nchar](10) NULL,
	[oppilaitoksen_maakunta_id] [int] NULL,
	[tehtavatyyppi_ammatillisessa_id] [int] NULL,
	[sukupuoli_id] [int] NULL,
	[ika_id] [varchar](50) NULL,
	[koko_osa_aikainen_id] [int] NULL,
	[osa_aikaisuuden_syy_id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Opettajat_ammatillinen_koulutus_kelpoisuus_koulutus_jarjkieli]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Opettajat_ammatillinen_koulutus_kelpoisuus_koulutus_jarjkieli]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Opettajat_ammatillinen_koulutus_kelpoisuus_koulutus_jarjkieli](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[oppilaitoksen_kieli_id] [nvarchar](2) NULL,
	[pääasiallinen_koulutusaste_id] [nvarchar](2) NULL,
	[erityisopetus_id] [nvarchar](2) NULL,
	[opinto_ohjaus_id] [nvarchar](2) NULL,
	[valma_id] [nvarchar](2) NULL,
	[telma_id] [nvarchar](2) NULL,
	[mamu_id] [nvarchar](2) NULL,
	[ammpk_valmistava_id] [nvarchar](2) NULL,
	[kotitalousopetus_id] [nvarchar](2) NULL,
	[kelp_amm_id] [nvarchar](2) NULL,
	[kelp_yht_id] [nvarchar](2) NULL,
	[kelp_opo_id] [nvarchar](2) NULL,
	[kelp_erope_id] [nvarchar](2) NULL,
	[kelp_muu_id] [nvarchar](2) NULL,
	[kelp_ei_muod_id] [nvarchar](2) NULL,
	[eikelp_paa_id] [nvarchar](2) NULL,
	[eikelp_pedag_id] [nvarchar](2) NULL,
	[eikelp_tyokok_id] [nvarchar](2) NULL,
	[eikelp_tieto_puuttuu_id] [nvarchar](2) NULL,
	[kelp_kaikki_id] [nvarchar](2) NULL,
	[opettajan_eniten_opettama_ala_id] [nvarchar](20) NULL,
	[opettajan_eniten_opettama_aine_id] [nvarchar](20) NULL,
	[opettajan_koulutus_id] [nvarchar](6) NULL,
	[koul_jarj_koko_id] [nvarchar](2) NULL,
	[koul_jarj_koko_ei_oppis_id] [nvarchar](2) NULL,
	[koul_jarj_koko_oppis_id] [nvarchar](2) NULL,
	[koul_jarj_kieli_id] [nvarchar](2) NULL,
	[koul_jarj_maakunta_id] [varchar](20) NULL,
	[oppilaitoksen_maakunta_id] [nvarchar](20) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Opettajat_ammatillinen_koulutus_osallistuminen_taydennyskoulutukseen]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Opettajat_ammatillinen_koulutus_osallistuminen_taydennyskoulutukseen]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Opettajat_ammatillinen_koulutus_osallistuminen_taydennyskoulutukseen](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[oppilaitoksen_kieli_id] [int] NULL,
	[tehtävätyyppi_amm_koulutuksessa_id] [int] NULL,
	[pääasiallinen_koulutusaste_id] [int] NULL,
	[pääasiallinen_koulutusala_id] [int] NULL,
	[taydennyskoulutus_osallistuminen] [int] NULL,
	[taydennyskoulutus_ei_tietoa] [int] NULL,
	[taydennyskoulutus_ei] [int] NULL,
	[taydennyskoulutus_tyoaika] [nvarchar](3) NULL,
	[taydennyskoulutus_oma_aika] [nvarchar](3) NULL,
	[taydennyskoulutus_kelp_tyoaika] [nvarchar](3) NULL,
	[taydennyskoulutus_kelp_oma_aika] [nvarchar](3) NULL,
	[taydennyskoulutus_tantaja_tyoaika] [nvarchar](3) NULL,
	[taydennyskoulutus_tantaja_oma_aika] [nvarchar](3) NULL,
	[taydennyskoulutus_muu_tyoaika] [nvarchar](3) NULL,
	[taydennyskoulutus_muu_oma_aika] [nvarchar](3) NULL,
	[asiantuntijavaihto_tyoaika] [nvarchar](3) NULL,
	[asiantuntijavaihto_oma_aika] [nvarchar](3) NULL,
	[koulutussuunnitelma] [int] NULL,
	[tyoelamajakso_lkm] [nvarchar](3) NULL,
	[tyoelamajakso] [int] NULL,
	[tyoelamajakso_ei_tietoa] [int] NULL,
	[sukupuoli_id] [int] NULL,
	[oppilaitoksen_maakunta_id] [int] NULL,
	[ika_id] [int] NULL,
	[kouluttautunut_mentoriksi] [nchar](10) NULL,
	[toiminut_mentorina] [nchar](10) NULL,
	[ollut_mentoroitavana] [nchar](10) NULL,
	[kouluttautunut_tyonohjaajaksi] [nchar](10) NULL,
	[toiminut_tyonohjaajana] [nchar](10) NULL,
	[ollut_tyonohjauksessa] [nchar](10) NULL,
	[osallistunut_tyoelamajaksolle] [nchar](10) NULL,
	[opiskelijan_ohjaamista] [nchar](10) NULL,
	[tyopaikkaohjaajan_kouluttajan_ohjaamista] [nchar](10) NULL,
	[opintojen_sisallon_ohjaamista] [nchar](10) NULL,
	[oman_osaamisen_kasvattamista] [nchar](10) NULL,
	[tyopaikoilla_tapahtuva_tyo] [int] NULL,
	[opiskelijan_ohjaamista_tp] [nchar](10) NULL,
	[tyopaikkaohjaajan_kouluttajan_ohjaamista_tp] [nchar](10) NULL,
	[opintojen_sisallon_ohjaamista_tp] [nchar](10) NULL,
	[oman_osaamisen_kasvattamista_tp] [nchar](10) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Opettajat_lukiokoulutus_kelpoisuus_aine]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Opettajat_lukiokoulutus_kelpoisuus_aine]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Opettajat_lukiokoulutus_kelpoisuus_aine](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[oppilaitoksen_kieli_id] [int] NULL,
	[tyosuhde_vakinainen] [nvarchar](2) NULL,
	[tyosuhde_maara_aikainen] [nvarchar](2) NULL,
	[tyosuhde_viransijainen] [nvarchar](2) NULL,
	[tyosuhde_virkavapaa] [nvarchar](2) NULL,
	[tyosuhde_oa_elake] [nvarchar](2) NULL,
	[tyosuhteen_luonne_id] [int] NULL,
	[tehtavatyyppi_lukiokoulutuksessa_id] [int] NULL,
	[paaasiallinen_koulutusmuoto_id] [int] NULL,
	[kelp_esiopetus] [nvarchar](2) NULL,
	[kelp_luokanopettaja] [nvarchar](2) NULL,
	[kelp_aineenopettaja] [nvarchar](2) NULL,
	[kelp_aineenopettaja_lukio] [nvarchar](2) NULL,
	[kelp_erityisluokan_opettaja] [nvarchar](2) NULL,
	[kelp_erityisopettaja_osa_aikainen] [nvarchar](2) NULL,
	[kelp_oppilaanohjaaja] [nvarchar](2) NULL,
	[kelp_opinto_ohjaaja] [nvarchar](2) NULL,
	[kelp_muu] [nvarchar](2) NULL,
	[kelp_ei] [nvarchar](2) NULL,
	[kelp_kehitysvammaiset] [nvarchar](2) NULL,
	[opettajan_eniten_opettama_aine_id] [int] NULL,
	[opettajan_eniten_opettama_aine_koodi] [varchar](50) NULL,
	[sukupuoli_id] [int] NULL,
	[maakunta_oppilaitos] [varchar](2) NULL,
	[kuntaryhmitys_oppilaitos] [nvarchar](10) NULL,
	[ika_id] [int] NULL,
	[kelp_id] [int] NULL,
	[koko_osa_aikainen_id] [int] NULL,
	[osa_aikaisuuden_syy_id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Opettajat_lukiokoulutus_koulutuksen_jarjestaja]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Opettajat_lukiokoulutus_koulutuksen_jarjestaja]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Opettajat_lukiokoulutus_koulutuksen_jarjestaja](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[oppilaitoksen_kieli_id] [int] NULL,
	[koulutuksen_jarjestajan_koko_id] [int] NULL,
	[koulutuksen_jarjestajan_kieli_id] [int] NULL,
	[koulutuksen_jarjestajan_omistajatyyppi] [nvarchar](10) NULL,
	[koulutuksen_jarjestajan_maakunta] [varchar](2) NULL,
	[koulutuksen_jarjestajan_kuntaryhmitys] [nvarchar](10) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Opettajat_lukiokoulutus_osallistuminen_taydennyskoulutukseen]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Opettajat_lukiokoulutus_osallistuminen_taydennyskoulutukseen]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Opettajat_lukiokoulutus_osallistuminen_taydennyskoulutukseen](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[oppilaitoksen_kieli_id] [int] NULL,
	[tehtavatyyppi_lukiokoulutuksessa_id] [int] NULL,
	[taydennyskoulutus_osallistuminen] [nvarchar](2) NULL,
	[taydennyskoulutus_ei_tietoa] [nvarchar](2) NULL,
	[taydennyskoulutus_ei] [nvarchar](2) NULL,
	[taydennyskoulutus_tyoaika] [nvarchar](4) NULL,
	[taydennyskoulutus_oma_aika] [nvarchar](4) NULL,
	[taydennyskoulutus_kelp_tyoaika] [nvarchar](4) NULL,
	[taydennyskoulutus_kelp_oma_aika] [nvarchar](4) NULL,
	[taydennyskoulutus_tantaja_tyoaika] [nvarchar](4) NULL,
	[taydennyskoulutus_tantaja_oma_aika] [nvarchar](4) NULL,
	[taydennyskoulutus_muu_tyoaika] [nvarchar](4) NULL,
	[taydennyskoulutus_muu_oma_aika] [nvarchar](4) NULL,
	[asiantuntijavaihto_tyoaika] [nvarchar](4) NULL,
	[asiantuntijavaihto_oma_aika] [nvarchar](4) NULL,
	[koulutussuunnitelma] [nvarchar](2) NULL,
	[sukupuoli_id] [int] NULL,
	[maakunta_oppilaitos] [nvarchar](3) NULL,
	[ika_id] [int] NULL,
	[kouluttautunut_mentoriksi] [nchar](10) NULL,
	[toiminut_mentorina] [nchar](10) NULL,
	[ollut_mentoroitavana] [nchar](10) NULL,
	[kouluttautunut_tyonohjaajaksi] [nchar](10) NULL,
	[toiminut_tyonohjaajana] [nchar](10) NULL,
	[ollut_tyonohjauksessa] [nchar](10) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Opettajat_perusopetus_kelpoisuus_opetusryhmakoot]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Opettajat_perusopetus_kelpoisuus_opetusryhmakoot]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Opettajat_perusopetus_kelpoisuus_opetusryhmakoot](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[oppilaitoksen_kieli_id] [int] NULL,
	[oppilaitostyyppi_id] [int] NULL,
	[tyosuhde_vakinainen] [int] NULL,
	[tyosuhde_maara_aikainen] [int] NULL,
	[tyosuhde_viransijainen] [int] NULL,
	[tyosuhde_virkavapaa] [int] NULL,
	[tyosuhde_oa_elake] [int] NULL,
	[tyosuhteen_luonne_id] [int] NULL,
	[tehtavatyyppi_perusopetuksessa_id] [int] NULL,
	[paaasiallinen_koulutusmuoto_id] [int] NULL,
	[kelp_esiopetus] [int] NULL,
	[kelp_luokanopettaja] [int] NULL,
	[kelp_aineenopettaja] [int] NULL,
	[kelp_aineenopettaja_lukio] [int] NULL,
	[kelp_erityisluokan_opettaja] [int] NULL,
	[kelp_erityisopettaja_osa_aikainen] [int] NULL,
	[kelp_oppilaanohjaaja] [int] NULL,
	[kelp_opinto_ohjaaja] [int] NULL,
	[kelp_muu] [nchar](10) NULL,
	[kelp_ei] [int] NULL,
	[kelp_kehitysvammaiset] [int] NULL,
	[oman_luokan_aste_id] [int] NULL,
	[oman_luokan_oppilasmäärä] [int] NULL,
	[opettajan_eniten_opettama_aine_id] [int] NULL,
	[opettajan_eniten_opettama_aine_koodi] [varchar](50) NULL,
	[sukupuoli_id] [int] NULL,
	[maakunta_oppilaitos] [varchar](2) NULL,
	[kuntaryhmitys_oppilaitos] [nvarchar](10) NULL,
	[ika_id] [int] NULL,
	[kelp_id] [int] NULL,
	[koko_osa_aikainen_id] [int] NULL,
	[osa_aikaisuuden_syy_id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Opettajat_perusopetus_koulutuksen_jarjestaja_opetusryhmakoot]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Opettajat_perusopetus_koulutuksen_jarjestaja_opetusryhmakoot]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Opettajat_perusopetus_koulutuksen_jarjestaja_opetusryhmakoot](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[oppilaitoksen_kieli_id] [int] NULL,
	[oman_luokan_aste_id] [int] NULL,
	[oman_luokan_oppilasmäärä] [int] NULL,
	[koulutuksen_jarjestajan_koko_id] [int] NULL,
	[koulutuksen_jarjestajan_kieli_id] [int] NULL,
	[koulutuksen_jarjestajan_omistajatyyppi] [nvarchar](10) NULL,
	[koulutuksen_jarjestajan_maakunta] [varchar](2) NULL,
	[koulutuksen_jarjestajan_kuntaryhmitys] [nvarchar](10) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Opettajat_perusopetus_osallistuminen_taydennyskoulutukseen]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Opettajat_perusopetus_osallistuminen_taydennyskoulutukseen]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Opettajat_perusopetus_osallistuminen_taydennyskoulutukseen](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[oppilaitoksen_kieli_id] [int] NULL,
	[tehtavatyyppi_perusopetuksessa_id] [int] NULL,
	[taydennyskoulutus_osallistuminen] [nvarchar](2) NULL,
	[taydennyskoulutus_ei_tietoa] [nvarchar](2) NULL,
	[taydennyskoulutus_ei] [nvarchar](2) NULL,
	[taydennyskoulutus_tyoaika] [nvarchar](4) NULL,
	[taydennyskoulutus_oma_aika] [nvarchar](4) NULL,
	[taydennyskoulutus_kelp_tyoaika] [nvarchar](4) NULL,
	[taydennyskoulutus_kelp_oma_aika] [nvarchar](4) NULL,
	[taydennyskoulutus_tantaja_tyoaika] [nvarchar](4) NULL,
	[taydennyskoulutus_tantaja_oma_aika] [nvarchar](4) NULL,
	[taydennyskoulutus_muu_tyoaika] [nvarchar](4) NULL,
	[taydennyskoulutus_muu_oma_aika] [nvarchar](4) NULL,
	[asiantuntijavaihto_tyoaika] [nvarchar](4) NULL,
	[asiantuntijavaihto_oma_aika] [nvarchar](4) NULL,
	[koulutussuunnitelma] [nvarchar](2) NULL,
	[sukupuoli_id] [int] NULL,
	[maakunta_oppilaitos] [nvarchar](3) NULL,
	[ika_id] [int] NULL,
	[kouluttautunut_mentoriksi] [nchar](10) NULL,
	[toiminut_mentorina] [nchar](10) NULL,
	[ollut_mentoroitavana] [nchar](10) NULL,
	[kouluttautunut_tyonohjaajaksi] [nchar](10) NULL,
	[toiminut_tyonohjaajana] [nchar](10) NULL,
	[ollut_tyonohjauksessa] [nchar](10) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Opettajat_vapaa_sivistystyo_kelpoisuus_aine]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Opettajat_vapaa_sivistystyo_kelpoisuus_aine]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Opettajat_vapaa_sivistystyo_kelpoisuus_aine](
	[tilastointivuosi] [nvarchar](4) NULL,
	[oppilaitoksen_kieli_id] [int] NULL,
	[oppilaitostyyppi_id] [int] NULL,
	[vakinainen_id] [int] NULL,
	[maara_aikainen_id] [int] NULL,
	[viransijainen_id] [int] NULL,
	[virkavapaalla_id] [int] NULL,
	[osa_aika_elake_id] [int] NULL,
	[tyosuhteen_luonne_id] [int] NULL,
	[tehtavatyyppi_id] [int] NULL,
	[kelpoisuus_kunnossa_id] [int] NULL,
	[tutkinto_puuttuu_id] [int] NULL,
	[pedagogiset_opinnot_puuttuu_id] [int] NULL,
	[puuttuu_kelp_tieto_puuttuu_id] [int] NULL,
	[opettajan_eniten_opettama_ala_id] [int] NULL,
	[opettajan_eniten_opettama_aine_id] [int] NULL,
	[sukupuoli_id] [int] NULL,
	[oppilaitoksen_maakunta_id] [int] NULL,
	[oppilaitoksen_kuntaryhmitys] [nvarchar](2) NULL,
	[ika_id] [int] NULL,
	[koko_osa_aikainen_id] [int] NULL,
	[osa_aikaisuuden_syy_id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Opettajat_vapaa_sivistystyo_osallistuminen_taydennyskoulutukseen]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Opettajat_vapaa_sivistystyo_osallistuminen_taydennyskoulutukseen]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Opettajat_vapaa_sivistystyo_osallistuminen_taydennyskoulutukseen](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[oppilaitoksen_kieli_id] [int] NULL,
	[tehtavatyyppi_vapaassa_sivistystyossa_id] [int] NULL,
	[taydennyskoulutus_osallistuminen] [int] NULL,
	[taydennyskoulutus_ei_tietoa] [int] NULL,
	[taydennyskoulutus_ei] [int] NULL,
	[taydennyskoulutus_tyoaika] [nvarchar](4) NULL,
	[taydennyskoulutus_oma_aika] [nvarchar](4) NULL,
	[taydennyskoulutus_kelp_tyoaika] [nvarchar](4) NULL,
	[taydennyskoulutus_kelp_oma_aika] [nvarchar](4) NULL,
	[taydennyskoulutus_tantaja_tyoaika] [nvarchar](4) NULL,
	[taydennyskoulutus_tantaja_oma_aika] [nvarchar](4) NULL,
	[taydennyskoulutus_muu_tyoaika] [nvarchar](4) NULL,
	[taydennyskoulutus_muu_oma_aika] [nvarchar](4) NULL,
	[asiantuntijavaihto_tyoaika] [nvarchar](4) NULL,
	[asiantuntijavaihto_oma_aika] [nvarchar](4) NULL,
	[koulutussuunnitelma] [int] NULL,
	[sukupuoli_id] [int] NULL,
	[oppilaitoksen_maakunta_id] [int] NULL,
	[ika_id] [int] NULL,
	[kouluttautunut_mentoriksi] [nvarchar](4) NULL,
	[toiminut_mentorina] [nvarchar](4) NULL,
	[ollut_mentoroitavana] [nvarchar](4) NULL,
	[kouluttautunut_tyonohjaajaksi] [nchar](10) NULL,
	[toiminut_tyonohjaajana] [nchar](10) NULL,
	[ollut_tyonohjauksessa] [nchar](10) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_OTV_2_1_R2_22_Peruskoulutiedosto_Oppilaitostason_oppil_ja_opisk]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_OTV_2_1_R2_22_Peruskoulutiedosto_Oppilaitostason_oppil_ja_opisk]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_OTV_2_1_R2_22_Peruskoulutiedosto_Oppilaitostason_oppil_ja_opisk](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[sukupuoli] [nvarchar](2) NULL,
	[sukupuoli_id] [int] NULL,
	[koulutusluokitus] [nvarchar](6) NULL,
	[koulutusluokitus_id] [int] NULL,
	[koulutusluokitus_historia_id] [int] NULL,
	[oppilaitos] [nvarchar](5) NULL,
	[oppilaitos_id] [int] NULL,
	[oppilaitos_historia_id] [int] NULL,
	[oppilaitoksen_sijaintikunta] [nvarchar](5) NULL,
	[oppilaitoksen_sijaintikunta_id] [int] NULL,
	[oppilaitoksen_sijaintikunta_historia_id] [int] NULL,
	[yllapitajan_sijaintikunta] [nvarchar](5) NULL,
	[yllapitajan_sijaintikunta_id] [int] NULL,
	[yllapitajan_sijaintikunta_historia_id] [int] NULL,
	[koulutuksenjarjestajan_sijaintikunta] [nvarchar](5) NULL,
	[koulutuksenjarjestajan_sijaintikunta_id] [int] NULL,
	[koulutuksenjarjestajan_sijaintikunta_historia_id] [int] NULL,
	[koulutussektori] [nvarchar](2) NULL,
	[koulutussektori_id] [int] NULL,
	[opetushallinnon_koulutus] [nvarchar](2) NULL,
	[opetushallinnon_koulutus_id] [int] NULL,
	[aidinkieli_versio1x] [nvarchar](2) NULL,
	[aidinkieli_versio1x_id] [int] NULL,
	[ov1] [int] NULL,
	[ov2] [int] NULL,
	[ov3] [int] NULL,
	[ov4] [int] NULL,
	[ov5] [int] NULL,
	[ov6] [int] NULL,
	[ov7] [int] NULL,
	[ov8] [int] NULL,
	[ov9] [int] NULL,
	[ov10] [int] NULL,
	[aloittaneet] [int] NULL,
	[opiskelijat] [int] NULL,
	[tutkinnot] [int] NULL,
	[ovy] [int] NULL,
	[tod] [int] NULL,
	[ilmtod] [int] NULL,
	[kelaim] [int] NULL,
	[tutkt] [int] NULL,
	[suor10] [int] NULL,
	[opiskelijat_1_9_luokka] [int] NULL,
	[opiskelijat_1_10_luokka] [int] NULL,
	[tutkinnot_9_luokka] [int] NULL,
	[luok1] [int] NULL,
	[luok2] [int] NULL,
	[luok3] [int] NULL,
	[luok4] [int] NULL,
	[luok5] [int] NULL,
	[luok6] [int] NULL,
	[luok7] [int] NULL,
	[luok8] [int] NULL,
	[luok9] [int] NULL,
	[opksu] [int] NULL,
	[opkru] [int] NULL,
	[opksaa] [int] NULL,
	[opkmuu] [int] NULL,
	[ove] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL,
	[aineistotunnus] [nvarchar](8) NULL,
	[aineisto_OTV_id] [int] NULL,
	[aineisto_id] [int] NULL,
	[koulutuslaji_OKM_id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_OTV_2_3_Lukiokoulutuksen_ja_ammatillisen_koulutuksen_opiskelijat]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_OTV_2_3_Lukiokoulutuksen_ja_ammatillisen_koulutuksen_opiskelijat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_OTV_2_3_Lukiokoulutuksen_ja_ammatillisen_koulutuksen_opiskelijat](
	[tilv] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[lahde] [nvarchar](2) NULL,
	[lahde_id] [int] NULL,
	[oppilaitos] [nvarchar](10) NULL,
	[oppilaitos_id] [int] NULL,
	[oppilaitos_historia_id] [int] NULL,
	[koulutuksen_jarjestaja] [nvarchar](10) NULL,
	[koulutuksen_jarjestaja_id] [int] NULL,
	[koulutuksen_jarjestaja_historia_id] [int] NULL,
	[oppisopimuskoulutuksen_jarjestaja] [nvarchar](10) NULL,
	[oppisopimuskoulutuksen_jarjestaja_id] [int] NULL,
	[oppisopimuskoulutuksen_jarjestaja_historia_id] [int] NULL,
	[koulutusluokitus] [nvarchar](6) NULL,
	[koulutusluokitus_id] [int] NULL,
	[koulutusluokitus_historia_id] [int] NULL,
	[koulutuksen_kieli] [nvarchar](2) NULL,
	[koulutuksen_kieli_id] [int] NULL,
	[koulutuksen_kunta] [nvarchar](3) NULL,
	[koulutuksen_kunta_id] [int] NULL,
	[koulutuksen_kunta_historia_id] [int] NULL,
	[opetushallinnon_koulutus] [nvarchar](2) NULL,
	[opetushallinnon_koulutus_id] [int] NULL,
	[sukupuoli] [nvarchar](2) NULL,
	[sukupuoli_id] [int] NULL,
	[aidinkieli_versio1] [nvarchar](2) NULL,
	[aidinkieli_versio1_id] [int] NULL,
	[kirjoihintulovuosi] [nvarchar](10) NULL,
	[jarjestys_kirjoihintulovuosi] [int] NULL,
	[kirjoihintulovuosi_id] [nvarchar](10) NULL,
	[kirjoihintulokausi] [nvarchar](2) NULL,
	[kirjoihintulokausi_id] [nvarchar](10) NULL,
	[opiskelijan_olo_tamm] [nvarchar](2) NULL,
	[opiskelijan_olo_tamm_id] [int] NULL,
	[opiskelijan_olo_syys] [nvarchar](2) NULL,
	[opiskelijan_olo_syys_id] [int] NULL,
	[aikuisopiskelija] [nvarchar](2) NULL,
	[aikuisopiskelija_id] [int] NULL,
	[ika_5v] [nvarchar](2) NULL,
	[ika_id] [int] NULL,
	[lukumaara] [int] NULL,
	[lukiokoulutuksen_koulutuslaji] [nvarchar](2) NULL,
	[lukiokoulutuksen_koulutuslaji_id] [int] NULL,
	[nuorten_aikuisten_koulutus] [nvarchar](2) NULL,
	[nuorten_aikuisten_koulutus_id] [int] NULL,
	[koulutuksen_tutkinnon_aloitusvuosi] [nvarchar](4) NULL,
	[koulutuksen_tutkinnon_aloitusvuosi_id] [nvarchar](10) NULL,
	[koulutuksen_tutkinnon_aloituskausi] [nvarchar](2) NULL,
	[koulutuksen_tutkinnon_aloituskausi_id] [nvarchar](10) NULL,
	[ammatillisen_koulutuksen_koulutuslaji] [nvarchar](2) NULL,
	[ammatillisen_koulutuksen_koulutuslaji_id] [int] NULL,
	[tutkintonimike_ammpk] [nvarchar](5) NULL,
	[tutkintonimike_ammpk_id] [int] NULL,
	[koulutusohjelma_ammpk] [nvarchar](4) NULL,
	[koulutusohjelma_ammpk_id] [int] NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus] [nvarchar](2) NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus_id] [int] NULL,
	[tyovoimapoliittinen_koulutus] [nvarchar](2) NULL,
	[tyovoimapoliittinen_koulutus_id] [int] NULL,
	[rahoituslahde_amm] [nvarchar](2) NULL,
	[rahoituslahde_amm_id] [int] NULL,
	[alkamispaivamaara] [nvarchar](8) NULL,
	[alkamispaivamaara_id] [nvarchar](10) NULL,
	[paattymispaivamaara] [nvarchar](8) NULL,
	[paattymispaivamaara_id] [nvarchar](10) NULL,
	[tutkinnon_tavoite] [nvarchar](2) NULL,
	[tutkinnon_tavoite_id] [int] NULL,
	[yrittajan_oppisopimuskoulutus] [nvarchar](2) NULL,
	[yrittajan_oppisopimuskoulutus_id] [int] NULL,
	[oppisopimus_purkautunut] [nvarchar](2) NULL,
	[oppisopimus_purkautunut_id] [int] NULL,
	[todistus_oppisopimuskoulutuksen_suorittamisesta] [nvarchar](2) NULL,
	[todistus_oppisopimuskoulutuksen_suorittamisesta_id] [int] NULL,
	[toimiala_2008] [nvarchar](5) NULL,
	[toimiala_2008_id] [int] NULL,
	[oppisopimus_yrityksen_koko] [nvarchar](2) NULL,
	[oppisopimus_yrityksen_koko_id] [int] NULL,
	[tyonantajasektori] [nvarchar](2) NULL,
	[tyonantajasektori_id] [int] NULL,
	[asuinmaakunta] [nvarchar](2) NULL,
	[asuinmaakunta_id] [int] NULL,
	[asuinmaakunta_historia_id] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL,
	[aineistotunnus] [nvarchar](8) NULL,
	[koulutussektori] [nvarchar](2) NULL,
	[koulutussektori_id] [int] NULL,
	[hallinnonala] [nvarchar](2) NULL,
	[hallinnonala_id] [int] NULL,
	[hallinnonala2_id] [int] NULL,
	[koulutuksen_jarjestamismuoto] [nvarchar](2) NULL,
	[koulutuksen_jarjestamismuoto_id] [int] NULL,
	[ammatillinen_peruskoulutus_lisakoulutus] [nvarchar](2) NULL,
	[ammatillinen_peruskoulutus_lisakoulutus_id] [int] NULL,
	[koulutuksen_tavoite_toteuma] [nvarchar](2) NULL,
	[koulutuksen_tavoite_toteuma_id] [int] NULL,
	[tyovoimapoliittinen] [nvarchar](2) NULL,
	[tyovoimapoliittinen_id] [int] NULL,
	[aloittaneet] [int] NULL,
	[opiskelijat] [int] NULL,
	[opiskelijat_lasna] [int] NULL,
	[aineisto_id] [int] NULL,
	[aineisto_OTV_id] [int] NULL,
	[koulutuksen_jarjestaja_kunta_id] [int] NULL,
	[koulutuksen_jarjestaja_kunta_historia_id] [int] NULL,
	[oppilaitos_kunta_id] [int] NULL,
	[oppilaitos_kunta_historia_id] [int] NULL,
	[nuorten_aikuisten_koulutus_amm_id] [int] NULL,
	[koulutuslaji_OKM_id] [int] NULL,
	[yht_koulutuksen_jarjestaja_id] [int] NULL,
	[yht_koulutuksen_jarjestaja_historia_id] [int] NULL,
	[yht_oppilaitos_id] [int] NULL,
	[yht_oppilaitos_historia_id] [int] NULL,
	[yht_koulutuksen_jarjestaja_kunta_id] [int] NULL,
	[yht_koulutuksen_jarjestaja_kunta_historia_id] [int] NULL,
	[yht_oppilaitos_kunta_id] [int] NULL,
	[yht_oppilaitos_kunta_historia_id] [int] NULL,
	[yht_koulutuksen_kunta_id] [int] NULL,
	[yht_koulutuksen_kunta_historia_id] [int] NULL,
	[koulutusryhma_id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_OTV_2_4_Ammatillisen_koulutuksen_tutkinnot]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_OTV_2_4_Ammatillisen_koulutuksen_tutkinnot]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_OTV_2_4_Ammatillisen_koulutuksen_tutkinnot](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[lahde] [nvarchar](2) NULL,
	[lahde_id] [int] NULL,
	[oppilaitos] [nvarchar](10) NULL,
	[oppilaitos_id] [int] NULL,
	[oppilaitos_historia_id] [int] NULL,
	[koulutuksen_jarjestaja] [nvarchar](10) NULL,
	[koulutuksen_jarjestaja_id] [int] NULL,
	[koulutuksen_jarjestaja_historia_id] [int] NULL,
	[oppisopimuskoulutuksen_jarjestaja] [nvarchar](10) NULL,
	[oppisopimuskoulutuksen_jarjestaja_id] [int] NULL,
	[oppisopimuskoulutuksen_jarjestaja_historia_id] [int] NULL,
	[koulutusluokitus] [nvarchar](6) NULL,
	[koulutusluokitus_id] [int] NULL,
	[koulutusluokitus_historia_id] [int] NULL,
	[tutkintonimike_ammpk] [nvarchar](5) NULL,
	[tutkintonimike_ammpk_id] [int] NULL,
	[koulutusohjelma_ammpk] [nvarchar](4) NULL,
	[koulutusohjelma_ammpk_id] [int] NULL,
	[ammatillisen_koulutuksen_koulutuslaji] [nvarchar](2) NULL,
	[ammatillisen_koulutuksen_koulutuslaji_id] [int] NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus] [nvarchar](2) NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus_id] [int] NULL,
	[koulutuksen_kieli] [nvarchar](2) NULL,
	[koulutuksen_kieli_id] [int] NULL,
	[koulutuksen_kunta] [nvarchar](3) NULL,
	[koulutuksen_kunta_id] [int] NULL,
	[koulutuksen_kunta_historia_id] [int] NULL,
	[opetushallinnon_koulutus] [nvarchar](2) NULL,
	[opetushallinnon_koulutus_id] [int] NULL,
	[sukupuoli] [nvarchar](2) NULL,
	[sukupuoli_id] [int] NULL,
	[aidinkieli_versio1] [nvarchar](2) NULL,
	[aidinkieli_versio1_id] [int] NULL,
	[kirjoihintulovuosi] [nvarchar](10) NULL,
	[jarjestys_kirjoihintulovuosi] [int] NULL,
	[kirjoihintulovuosi_id] [nvarchar](10) NULL,
	[kirjoihintulokausi] [nvarchar](2) NULL,
	[kirjoihintulokausi_id] [nvarchar](10) NULL,
	[aikuisopiskelija] [nvarchar](2) NULL,
	[aikuisopiskelija_id] [int] NULL,
	[nuorten_aikuisten_koulutus] [nvarchar](2) NULL,
	[nuorten_aikuisten_koulutus_id] [int] NULL,
	[ika_5v] [nvarchar](2) NULL,
	[ika_id] [int] NULL,
	[suorituspaivamaara] [nvarchar](8) NULL,
	[suorituspaivamaara_id] [nvarchar](10) NULL,
	[lukumaara] [int] NULL,
	[koulutuksen_tutkinnon_aloitusvuosi] [nvarchar](4) NULL,
	[koulutuksen_tutkinnon_aloitusvuosi_id] [nvarchar](10) NULL,
	[koulutuksen_tutkinnon_aloituskausi] [nvarchar](2) NULL,
	[koulutuksen_tutkinnon_aloituskausi_id] [nvarchar](10) NULL,
	[ov_hyvaksiluettu_ennen] [int] NULL,
	[ov_hyvaksiluettu_aikana] [int] NULL,
	[ov_suoritettu_koulutuksen_aikana] [int] NULL,
	[ov_yhteensa] [int] NULL,
	[ov_tyossaoppiminen] [int] NULL,
	[lkm_ammattiosaaminen] [int] NULL,
	[lkm_opintokokonaisuus] [int] NULL,
	[tyovoimapoliittinen_koulutus] [nvarchar](2) NULL,
	[tyovoimapoliittinen_koulutus_id] [int] NULL,
	[rahoituslahde_amm] [nvarchar](2) NULL,
	[rahoituslahde_amm_id] [int] NULL,
	[vayla_nayttotutkintoon] [nvarchar](2) NULL,
	[vayla_nayttotutkintoon_id] [int] NULL,
	[alkamispaivamaara] [nvarchar](8) NULL,
	[alkamispaivamaara_id] [nvarchar](10) NULL,
	[paattymispaivamaara] [nvarchar](8) NULL,
	[paattymispaivamaara_id] [nvarchar](10) NULL,
	[tutkinnon_tavoite] [nvarchar](2) NULL,
	[tutkinnon_tavoite_id] [int] NULL,
	[tutkinnon_toteuma] [nvarchar](2) NULL,
	[tutkinnon_toteuma_id] [int] NULL,
	[yrittajan_oppisopimuskoulutus] [nvarchar](2) NULL,
	[yrittajan_oppisopimuskoulutus_id] [int] NULL,
	[oppisopimus_purkautunut] [nvarchar](2) NULL,
	[oppisopimus_purkautunut_id] [int] NULL,
	[todistus_oppisopimuskoulutuksen_suorittamisesta] [nvarchar](2) NULL,
	[todistus_oppisopimuskoulutuksen_suorittamisesta_id] [int] NULL,
	[toimiala_2008] [nvarchar](5) NULL,
	[toimiala_2008_id] [int] NULL,
	[oppisopimus_yrityksen_koko] [nvarchar](2) NULL,
	[oppisopimus_yrityksen_koko_id] [int] NULL,
	[tyonantajasektori] [nvarchar](2) NULL,
	[tyonantajasektori_id] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL,
	[aineistotunnus] [nvarchar](8) NULL,
	[koulutussektori] [nvarchar](2) NULL,
	[koulutussektori_id] [int] NULL,
	[hallinnonala] [nvarchar](2) NULL,
	[hallinnonala_id] [int] NULL,
	[hallinnonala2_id] [int] NULL,
	[koulutuksen_jarjestamismuoto] [nvarchar](2) NULL,
	[koulutuksen_jarjestamismuoto_id] [int] NULL,
	[ammatillinen_peruskoulutus_lisakoulutus] [nvarchar](2) NULL,
	[ammatillinen_peruskoulutus_lisakoulutus_id] [int] NULL,
	[koulutuksen_tavoite_toteuma] [nvarchar](2) NULL,
	[koulutuksen_tavoite_toteuma_id] [int] NULL,
	[tyovoimapoliittinen] [nvarchar](2) NULL,
	[tyovoimapoliittinen_id] [int] NULL,
	[tutkinnot] [int] NULL,
	[aineisto_id] [int] NULL,
	[aineisto_OTV_id] [int] NULL,
	[koulutuksen_jarjestaja_kunta_id] [int] NULL,
	[koulutuksen_jarjestaja_kunta_historia_id] [int] NULL,
	[oppilaitos_kunta_id] [int] NULL,
	[oppilaitos_kunta_historia_id] [int] NULL,
	[nuorten_aikuisten_koulutus_amm_id] [int] NULL,
	[koulutuslaji_OKM_id] [int] NULL,
	[yht_koulutuksen_jarjestaja_id] [int] NULL,
	[yht_koulutuksen_jarjestaja_historia_id] [int] NULL,
	[yht_oppilaitos_id] [int] NULL,
	[yht_oppilaitos_historia_id] [int] NULL,
	[yht_koulutuksen_jarjestaja_kunta_id] [int] NULL,
	[yht_koulutuksen_jarjestaja_kunta_historia_id] [int] NULL,
	[yht_oppilaitos_kunta_id] [int] NULL,
	[yht_oppilaitos_kunta_historia_id] [int] NULL,
	[yht_koulutuksen_kunta_id] [int] NULL,
	[yht_koulutuksen_kunta_historia_id] [int] NULL,
	[koulutusryhma_id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_OTV_2_8_Korkeakouluopiskelijat]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_OTV_2_8_Korkeakouluopiskelijat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_OTV_2_8_Korkeakouluopiskelijat](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[aineisto] [nvarchar](2) NULL,
	[aineisto_id] [int] NULL,
	[lahde] [nvarchar](2) NULL,
	[lahde_id] [int] NULL,
	[oppilaitos] [nvarchar](5) NULL,
	[oppilaitos_id] [int] NULL,
	[oppilaitos_historia_id] [int] NULL,
	[koulutuksen_jarjestaja] [nvarchar](10) NULL,
	[koulutuksen_jarjestaja_id] [int] NULL,
	[koulutuksen_jarjestaja_historia_id] [int] NULL,
	[koulutusluokitus] [nvarchar](6) NULL,
	[koulutusluokitus_id] [int] NULL,
	[koulutusluokitus_historia_id] [int] NULL,
	[koulutuksen_kunta] [nvarchar](3) NULL,
	[koulutuksen_kunta_id] [int] NULL,
	[koulutuksen_kunta_historia_id] [int] NULL,
	[sukupuoli] [nvarchar](2) NULL,
	[sukupuoli_id] [int] NULL,
	[aidinkieli_versio1] [nvarchar](2) NULL,
	[aidinkieli_versio1_id] [int] NULL,
	[syntymavuosi] [nvarchar](4) NULL,
	[syntymavuosi_id] [nvarchar](10) NULL,
	[kotikunta] [nvarchar](6) NULL,
	[kotikunta_id] [int] NULL,
	[kotikunta_historia_id] [int] NULL,
	[kotikunta1x] [nvarchar](3) NULL,
	[kotikunta1x_id] [int] NULL,
	[kotikunta1x_historia_id] [int] NULL,
	[kotikunta2x] [nvarchar](3) NULL,
	[kotikunta2x_id] [int] NULL,
	[kotikunta2x_historia_id] [int] NULL,
	[kansalaisuus_versio2] [nvarchar](2) NULL,
	[kansalaisuus_versio2_id] [int] NULL,
	[kirjoihintulovuosi] [nvarchar](10) NULL,
	[jarjestys_kirjoihintulovuosi] [int] NULL,
	[kirjoihintulovuosi_id] [nvarchar](10) NULL,
	[kirjoihintulokausi] [nvarchar](2) NULL,
	[kirjoihintulokausi_id] [nvarchar](10) NULL,
	[opiskelijan_olo_tamm] [nvarchar](2) NULL,
	[opiskelijan_olo_tamm_id] [int] NULL,
	[opiskelijan_olo_syys] [nvarchar](2) NULL,
	[opiskelijan_olo_syys_id] [int] NULL,
	[rahoituslahde] [nvarchar](2) NULL,
	[rahoituslahde_id] [int] NULL,
	[opiskelijan_fte_tieto] [nvarchar](2) NULL,
	[opiskelijan_fte_tieto_id] [int] NULL,
	[kirjoihintulovuosi_korkeakoulusektori] [nvarchar](4) NULL,
	[kirjoihintulovuosi_korkeakoulusektori_id] [nvarchar](10) NULL,
	[kirjoihintulovuosi_korkeakoulusektori_lasnaoleva] [nvarchar](4) NULL,
	[kirjoihintulovuosi_korkeakoulusektori_lasnaoleva_id] [nvarchar](10) NULL,
	[kirjoihintulovuosi_sektori] [nvarchar](4) NULL,
	[kirjoihintulovuosi_sektori_id] [nvarchar](10) NULL,
	[kirjoihintulovuosi_sektori_lasnaoleva] [nvarchar](4) NULL,
	[kirjoihintulovuosi_sektori_lasnaoleva_id] [nvarchar](10) NULL,
	[kirjoihintulovuosi_korkeakoulu] [nvarchar](4) NULL,
	[kirjoihintulovuosi_korkeakoulu_id] [nvarchar](10) NULL,
	[kirjoihintulovuosi_korkeakoulu_lasnaoleva] [nvarchar](4) NULL,
	[kirjoihintulovuosi_korkeakoulu_lasnaoleva_id] [nvarchar](10) NULL,
	[kirjoihintulovuosi_opintoala] [nvarchar](4) NULL,
	[kirjoihintulovuosi_opintoala_id] [nvarchar](10) NULL,
	[kirjoihintulovuosi_opintoala_lasnaoleva] [nvarchar](4) NULL,
	[kirjoihintulovuosi_opintoala_lasnaoleva_id] [nvarchar](10) NULL,
	[lukumaara] [int] NULL,
	[lkm_op0] [int] NULL,
	[lkm_op1_14] [int] NULL,
	[lkm_op15_29] [int] NULL,
	[lkm_op30_44] [int] NULL,
	[lkm_op45_59] [int] NULL,
	[lkm_op60_74] [int] NULL,
	[lkm_op75_89] [int] NULL,
	[lkm_op90_104] [int] NULL,
	[lkm_op105_119] [int] NULL,
	[lkm_op120_] [int] NULL,
	[vahintaan_55_op_suorittanut] [nvarchar](2) NULL,
	[vahintaan_55_op_suorittanut_id] [int] NULL,
	[op_edellinen_syksy] [int] NULL,
	[op_edellinen_kevat] [int] NULL,
	[op_kertyma_edel_lkv_loppu] [int] NULL,
	[tutkinto_amk] [nvarchar](3) NULL,
	[tutkinto_amk_id] [int] NULL,
	[koulutusohjelma_amk] [nvarchar](4) NULL,
	[koulutusohjelma_amk_id] [int] NULL,
	[suuntautumisvaihtoehto_amk] [nvarchar](5) NULL,
	[suuntautumisvaihtoehto_amk_id] [int] NULL,
	[koulutustyyppi] [nvarchar](2) NULL,
	[koulutustyyppi_id] [int] NULL,
	[koulutuksen_kieli] [nvarchar](2) NULL,
	[koulutuksen_kieli_id] [int] NULL,
	[lkm_lasnalk] [int] NULL,
	[lkm_poissalk] [int] NULL,
	[op_suoritettavien_laajuus] [int] NULL,
	[kirjoihintulovuosi_tutkinto] [nvarchar](4) NULL,
	[kirjoihintulovuosi_tutkinto_id] [nvarchar](10) NULL,
	[kirjoihintulokausi_tutkinto] [nvarchar](2) NULL,
	[kirjoihintulokausi_tutkinto_id] [nvarchar](10) NULL,
	[ensisijainen_opintooikeus] [nvarchar](2) NULL,
	[ensisijainen_opintooikeus_id] [int] NULL,
	[tilauskoulutuksen_sijaintimaa] [nvarchar](2) NULL,
	[tilauskoulutuksen_sijaintimaa_id] [int] NULL,
	[tutkinto_yo] [nvarchar](3) NULL,
	[tutkinto_yo_id] [int] NULL,
	[koulutusohjelma_yo] [nvarchar](4) NULL,
	[paaaine_yo] [nvarchar](4) NULL,
	[yliopisto] [nvarchar](2) NULL,
	[yliopisto_id] [int] NULL,
	[tiedekunta_yo] [nvarchar](2) NULL,
	[tiedekunta_yo_id] [int] NULL,
	[uusi_vanha_opiskelija] [nvarchar](2) NULL,
	[uusi_vanha_opiskelija_id] [int] NULL,
	[tutkintooikeusvuosi] [nvarchar](4) NULL,
	[tutkintooikeusvuosi_id] [nvarchar](10) NULL,
	[opiskelumuoto] [nvarchar](2) NULL,
	[opiskelumuoto_id] [int] NULL,
	[opettajankelpoisuus] [nvarchar](2) NULL,
	[opettajankelpoisuus_id] [int] NULL,
	[avoinvayla] [nvarchar](2) NULL,
	[avoinvayla_id] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL,
	[aineistotunnus] [nvarchar](8) NULL,
	[koulutussektori] [nvarchar](2) NULL,
	[koulutussektori_id] [int] NULL,
	[ika_1v] [nvarchar](4) NULL,
	[ika_id] [int] NULL,
	[aloittaneet] [int] NULL,
	[aloittaneet_kirjoihintulovuosi] [int] NULL,
	[aloittaneet_korkeakoulusektori] [int] NULL,
	[aloittaneet_korkeakoulusektori_lasnaoleva] [int] NULL,
	[aloittaneet_sektori] [int] NULL,
	[aloittaneet_sektori_lasnaoleva] [int] NULL,
	[aloittaneet_korkeakoulu] [int] NULL,
	[aloittaneet_korkeakoulu_lasnaoleva] [int] NULL,
	[aloittaneet_opintoala] [int] NULL,
	[aloittaneet_opintoala_lasnaoleva] [int] NULL,
	[opiskelijat] [int] NULL,
	[opiskelijat_lasna] [int] NULL,
	[opiskelijat_fte] [decimal](18, 1) NULL,
	[aineisto_OTV_id] [int] NULL,
	[koulutuksen_jarjestaja_kunta_id] [int] NULL,
	[koulutuksen_jarjestaja_kunta_historia_id] [int] NULL,
	[oppilaitos_kunta_id] [int] NULL,
	[oppilaitos_kunta_historia_id] [int] NULL,
	[opetushallinnon_koulutus_id] [int] NULL,
	[koulutuslaji_OKM_id] [int] NULL,
	[koulutusryhma_id] [int] NULL,
	[ikaryhma1_id] [int] NULL,
	[ikaryhma2_id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_OTV_2_9_Korkeakoulututkinnot]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_OTV_2_9_Korkeakoulututkinnot]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_OTV_2_9_Korkeakoulututkinnot](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[aineisto] [nvarchar](2) NULL,
	[aineisto_id] [int] NULL,
	[lahde] [nvarchar](2) NULL,
	[lahde_id] [int] NULL,
	[oppilaitos] [nvarchar](5) NULL,
	[oppilaitos_id] [int] NULL,
	[oppilaitos_historia_id] [int] NULL,
	[koulutuksen_jarjestaja] [nvarchar](10) NULL,
	[koulutuksen_jarjestaja_id] [int] NULL,
	[koulutuksen_jarjestaja_historia_id] [int] NULL,
	[koulutusluokitus] [nvarchar](6) NULL,
	[koulutusluokitus_id] [int] NULL,
	[koulutusluokitus_historia_id] [int] NULL,
	[opintoala1995] [nvarchar](2) NULL,
	[opintoala1995_id] [int] NULL,
	[opintoala1995_historia_id] [int] NULL,
	[koulutuksen_kunta] [nvarchar](3) NULL,
	[koulutuksen_kunta_id] [int] NULL,
	[koulutuksen_kunta_historia_id] [int] NULL,
	[sukupuoli] [nvarchar](2) NULL,
	[sukupuoli_id] [int] NULL,
	[aidinkieli_versio1] [nvarchar](2) NULL,
	[aidinkieli_versio1_id] [int] NULL,
	[syntymavuosi] [nvarchar](4) NULL,
	[syntymavuosi_id] [nvarchar](10) NULL,
	[kotikunta] [nvarchar](3) NULL,
	[kotikunta_id] [int] NULL,
	[kotikunta_historia_id] [int] NULL,
	[kotikunta1x] [nvarchar](3) NULL,
	[kotikunta1x_id] [int] NULL,
	[kotikunta1x_historia_id] [int] NULL,
	[kansalaisuus_versio2] [nvarchar](2) NULL,
	[kansalaisuus_versio2_id] [int] NULL,
	[kirjoihintulovuosi] [nvarchar](10) NULL,
	[jarjestys_kirjoihintulovuosi] [int] NULL,
	[kirjoihintulovuosi_id] [nvarchar](10) NULL,
	[kirjoihintulokausi] [nvarchar](2) NULL,
	[kirjoihintulokausi_id] [nvarchar](10) NULL,
	[tutkinnon_suoritusvuosi] [nvarchar](4) NULL,
	[tutkinnon_suoritusvuosi_id] [nvarchar](10) NULL,
	[tutkinnon_suorituslukukausi] [nvarchar](2) NULL,
	[tutkinnon_suorituslukukausi_id] [nvarchar](10) NULL,
	[rahoituslahde] [nvarchar](2) NULL,
	[rahoituslahde_id] [int] NULL,
	[kirjoihintulovuosi_korkeakoulusektori] [nvarchar](4) NULL,
	[kirjoihintulovuosi_korkeakoulusektori_id] [nvarchar](10) NULL,
	[kirjoihintulovuosi_korkeakoulusektori_lasnaoleva] [nvarchar](4) NULL,
	[kirjoihintulovuosi_korkeakoulusektori_lasnaoleva_id] [nvarchar](10) NULL,
	[kirjoihintulovuosi_sektori] [nvarchar](4) NULL,
	[kirjoihintulovuosi_sektori_id] [nvarchar](10) NULL,
	[kirjoihintulovuosi_sektori_lasnaoleva] [nvarchar](4) NULL,
	[kirjoihintulovuosi_sektori_lasnaoleva_id] [nvarchar](10) NULL,
	[kirjoihintulovuosi_korkeakoulu] [nvarchar](4) NULL,
	[kirjoihintulovuosi_korkeakoulu_id] [nvarchar](10) NULL,
	[kirjoihintulovuosi_korkeakoulu_lasnaoleva] [nvarchar](4) NULL,
	[kirjoihintulovuosi_korkeakoulu_lasnaoleva_id] [nvarchar](10) NULL,
	[kirjoihintulovuosi_opintoala] [nvarchar](4) NULL,
	[kirjoihintulovuosi_opintoala_id] [nvarchar](10) NULL,
	[kirjoihintulovuosi_opintoala_lasnaoleva] [nvarchar](4) NULL,
	[kirjoihintulovuosi_opintoala_lasnaoleva_id] [nvarchar](10) NULL,
	[lukumaara] [int] NULL,
	[tutkinto_amk] [nvarchar](3) NULL,
	[tutkinto_amk_id] [int] NULL,
	[koulutusohjelma_amk] [nvarchar](4) NULL,
	[koulutusohjelma_amk_id] [int] NULL,
	[suuntautumisvaihtoehto_amk] [nvarchar](5) NULL,
	[suuntautumisvaihtoehto_amk_id] [int] NULL,
	[koulutustyyppi] [nvarchar](2) NULL,
	[koulutustyyppi_id] [int] NULL,
	[koulutuksen_kieli] [nvarchar](2) NULL,
	[koulutuksen_kieli_id] [int] NULL,
	[lkm_lasnalk] [int] NULL,
	[lkm_poissalk] [int] NULL,
	[op_suoritettavien_laajuus] [int] NULL,
	[kirjoihintulovuosi_tutkinto] [nvarchar](4) NULL,
	[kirjoihintulovuosi_tutkinto_id] [nvarchar](10) NULL,
	[kirjoihintulokausi_tutkinto] [nvarchar](2) NULL,
	[kirjoihintulokausi_tutkinto_id] [nvarchar](10) NULL,
	[op_amk_yhteensa] [int] NULL,
	[op_amk_yleissiv_amm_opplait] [int] NULL,
	[op_amk_muualla] [int] NULL,
	[op_amk_oma_amk] [int] NULL,
	[op_amk_muu_amk] [int] NULL,
	[op_amk_yliopistoissa] [int] NULL,
	[op_amk_ulkomailla] [int] NULL,
	[tilauskoulutuksen_sijaintimaa] [nvarchar](2) NULL,
	[tilauskoulutuksen_sijaintimaa_id] [int] NULL,
	[tutkinto_yo] [nvarchar](3) NULL,
	[tutkinto_yo_id] [int] NULL,
	[koulutusohjelma_yo] [nvarchar](4) NULL,
	[paaaine_yo] [nvarchar](4) NULL,
	[tiedekunta_yo] [nvarchar](2) NULL,
	[tiedekunta_yo_id] [int] NULL,
	[opiskelumuoto] [nvarchar](2) NULL,
	[opiskelumuoto_id] [int] NULL,
	[opettajankelpoisuus] [nvarchar](2) NULL,
	[opettajankelpoisuus_id] [int] NULL,
	[op_yo_yhteensa] [int] NULL,
	[op_yo_ulkomailla] [int] NULL,
	[op_yo_muualla] [int] NULL,
	[op_yo_oma_yo] [int] NULL,
	[op_yo_avoimessa] [int] NULL,
	[op_yo_muu_yo] [int] NULL,
	[op_yo_ammattikorkeakouluissa] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL,
	[aineistotunnus] [nvarchar](8) NULL,
	[koulutussektori] [nvarchar](2) NULL,
	[koulutussektori_id] [int] NULL,
	[ika_1v] [nvarchar](4) NULL,
	[ika_id] [int] NULL,
	[tutkinnot] [int] NULL,
	[aineisto_OTV_id] [int] NULL,
	[koulutuksen_jarjestaja_kunta_id] [int] NULL,
	[koulutuksen_jarjestaja_kunta_historia_id] [int] NULL,
	[oppilaitos_kunta_id] [int] NULL,
	[oppilaitos_kunta_historia_id] [int] NULL,
	[opetushallinnon_koulutus_id] [int] NULL,
	[koulutuslaji_OKM_id] [int] NULL,
	[koulutusryhma_id] [int] NULL,
	[ikaryhma1_id] [int] NULL,
	[ikaryhma2_id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_OTV_3_14_Lukio_ja_ammatillisen_koulutuksen_opiskelijoiden_mediaani_iat]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_OTV_3_14_Lukio_ja_ammatillisen_koulutuksen_opiskelijoiden_mediaani_iat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_OTV_3_14_Lukio_ja_ammatillisen_koulutuksen_opiskelijoiden_mediaani_iat](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[lahde] [nvarchar](2) NULL,
	[lahde_id] [int] NULL,
	[oppilaitos] [nvarchar](10) NULL,
	[oppilaitos_id] [int] NULL,
	[oppilaitos_historia_id] [int] NULL,
	[koulutuksen_jarjestaja] [nvarchar](10) NULL,
	[koulutuksen_jarjestaja_id] [int] NULL,
	[koulutuksen_jarjestaja_historia_id] [int] NULL,
	[oppisopimuskoulutuksen_jarjestaja] [nvarchar](10) NULL,
	[oppisopimuskoulutuksen_jarjestaja_id] [int] NULL,
	[oppisopimuskoulutuksen_jarjestaja_historia_id] [int] NULL,
	[koulutusluokitus] [nvarchar](6) NULL,
	[koulutusluokitus_id] [int] NULL,
	[koulutusluokitus_historia_id] [int] NULL,
	[sukupuoli] [nvarchar](2) NULL,
	[sukupuoli_id] [int] NULL,
	[aidinkieli_versio1] [nvarchar](2) NULL,
	[aidinkieli_versio1_id] [int] NULL,
	[syntymavuosi] [nvarchar](4) NULL,
	[syntymavuosi_id] [nvarchar](10) NULL,
	[syntymakuukausi] [nvarchar](2) NULL,
	[syntymakuukausi_id] [nvarchar](10) NULL,
	[kirjoihintulovuosi] [nvarchar](4) NULL,
	[kirjoihintulovuosi_id] [nvarchar](10) NULL,
	[kirjoihintulokausi] [nvarchar](2) NULL,
	[kirjoihintulokausi_id] [nvarchar](10) NULL,
	[lukumaara] [int] NULL,
	[nuorten_aikuisten_koulutus] [nvarchar](2) NULL,
	[nuorten_aikuisten_koulutus_id] [int] NULL,
	[ammatillisen_koulutuksen_koulutuslaji] [nvarchar](2) NULL,
	[ammatillisen_koulutuksen_koulutuslaji_id] [int] NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus] [nvarchar](2) NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus_id] [int] NULL,
	[opetushallinnon_koulutus] [nvarchar](2) NULL,
	[opetushallinnon_koulutus_id] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL,
	[aineistotunnus] [nvarchar](8) NULL,
	[koulutussektori] [nvarchar](2) NULL,
	[koulutussektori_id] [int] NULL,
	[koulutuksen_jarjestamismuoto] [nvarchar](2) NULL,
	[koulutuksen_jarjestamismuoto_id] [int] NULL,
	[ammatillinen_peruskoulutus_lisakoulutus] [nvarchar](2) NULL,
	[ammatillinen_peruskoulutus_lisakoulutus_id] [int] NULL,
	[ika_1v] [nvarchar](4) NULL,
	[ika_1v_id] [int] NULL,
	[aloittaneet] [int] NULL,
	[opiskelijat] [int] NULL,
	[aineisto_id] [int] NULL,
	[aineisto_OTV_id] [int] NULL,
	[koulutuksen_jarjestaja_kunta_id] [int] NULL,
	[koulutuksen_jarjestaja_kunta_historia_id] [int] NULL,
	[oppilaitos_kunta_id] [int] NULL,
	[oppilaitos_kunta_historia_id] [int] NULL,
	[koulutuslaji_OKM_id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_OTV_3_15_Lukio_ja_ammatillisen_koulutuksen_tutkintojen_mediaani_iat]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_OTV_3_15_Lukio_ja_ammatillisen_koulutuksen_tutkintojen_mediaani_iat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_OTV_3_15_Lukio_ja_ammatillisen_koulutuksen_tutkintojen_mediaani_iat](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[lahde] [nvarchar](2) NULL,
	[lahde_id] [int] NULL,
	[oppilaitos] [nvarchar](10) NULL,
	[oppilaitos_id] [int] NULL,
	[oppilaitos_historia_id] [int] NULL,
	[koulutuksen_jarjestaja] [nvarchar](10) NULL,
	[koulutuksen_jarjestaja_id] [int] NULL,
	[koulutuksen_jarjestaja_historia_id] [int] NULL,
	[oppisopimuskoulutuksen_jarjestaja] [nvarchar](10) NULL,
	[oppisopimuskoulutuksen_jarjestaja_id] [int] NULL,
	[oppisopimuskoulutuksen_jarjestaja_historia_id] [int] NULL,
	[koulutusluokitus] [nvarchar](6) NULL,
	[koulutusluokitus_id] [int] NULL,
	[koulutusluokitus_historia_id] [int] NULL,
	[sukupuoli] [nvarchar](2) NULL,
	[sukupuoli_id] [int] NULL,
	[aidinkieli_versio1] [nvarchar](2) NULL,
	[aidinkieli_versio1_id] [int] NULL,
	[syntymavuosi] [nvarchar](4) NULL,
	[syntymavuosi_id] [nvarchar](10) NULL,
	[syntymakuukausi] [nvarchar](2) NULL,
	[syntymakuukausi_id] [nvarchar](10) NULL,
	[kirjoihintulovuosi] [nvarchar](4) NULL,
	[kirjoihintulovuosi_id] [nvarchar](10) NULL,
	[kirjoihintulokausi] [nvarchar](2) NULL,
	[kirjoihintulokausi_id] [nvarchar](10) NULL,
	[tutkinnon_suoritusvuosi] [nvarchar](4) NULL,
	[tutkinnon_suoritusvuosi_id] [nvarchar](10) NULL,
	[tutkinnon_suorituskuukausi] [nvarchar](2) NULL,
	[tutkinnon_suorituskuukausi_id] [nvarchar](10) NULL,
	[lukumaara] [int] NULL,
	[tutkinnon_toteuma] [nvarchar](2) NULL,
	[tutkinnon_toteuma_id] [int] NULL,
	[ammatillisen_koulutuksen_koulutuslaji] [nvarchar](2) NULL,
	[ammatillisen_koulutuksen_koulutuslaji_id] [int] NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus] [nvarchar](2) NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus_id] [int] NULL,
	[opetushallinnon_koulutus] [nvarchar](2) NULL,
	[opetushallinnon_koulutus_id] [int] NULL,
	[nuorten_aikuisten_koulutus] [nvarchar](2) NULL,
	[nuorten_aikuisten_koulutus_id] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL,
	[aineistotunnus] [nvarchar](8) NULL,
	[koulutussektori] [nvarchar](2) NULL,
	[koulutussektori_id] [int] NULL,
	[ika_1v] [nvarchar](4) NULL,
	[ika_1v_id] [int] NULL,
	[koulutuksen_jarjestamismuoto] [nvarchar](2) NULL,
	[koulutuksen_jarjestamismuoto_id] [int] NULL,
	[ammatillinen_peruskoulutus_lisakoulutus] [nvarchar](2) NULL,
	[ammatillinen_peruskoulutus_lisakoulutus_id] [int] NULL,
	[suoritusika] [decimal](18, 6) NULL,
	[jarjestys_suoritusika] [int] NULL,
	[suoritusaika] [decimal](18, 6) NULL,
	[jarjestys_suoritusaika] [int] NULL,
	[tutkinnot] [int] NULL,
	[aineisto_id] [int] NULL,
	[aineisto_OTV_id] [int] NULL,
	[koulutuksen_jarjestaja_kunta_id] [int] NULL,
	[koulutuksen_jarjestaja_kunta_historia_id] [int] NULL,
	[oppilaitos_kunta_id] [int] NULL,
	[oppilaitos_kunta_historia_id] [int] NULL,
	[koulutuslaji_OKM_id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_OTV_3_4_Korkeakoulututkinnon_suorittaneiden_mediaani_iat_ja_tutkinnon_suorittamiseen_kuluneet_mediaaniajat]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_OTV_3_4_Korkeakoulututkinnon_suorittaneiden_mediaani_iat_ja_tutkinnon_suorittamiseen_kuluneet_mediaaniajat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_OTV_3_4_Korkeakoulututkinnon_suorittaneiden_mediaani_iat_ja_tutkinnon_suorittamiseen_kuluneet_mediaaniajat](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[lahde] [nvarchar](2) NULL,
	[lahde_id] [int] NULL,
	[oppilaitos] [nvarchar](5) NULL,
	[oppilaitos_id] [int] NULL,
	[oppilaitos_historia_id] [int] NULL,
	[koulutuksen_jarjestaja] [nvarchar](10) NULL,
	[koulutuksen_jarjestaja_id] [int] NULL,
	[koulutuksen_jarjestaja_historia_id] [int] NULL,
	[koulutusluokitus] [nvarchar](6) NULL,
	[koulutusluokitus_id] [int] NULL,
	[koulutusluokitus_historia_id] [int] NULL,
	[koulutustyyppi] [nvarchar](2) NULL,
	[koulutustyyppi_id] [int] NULL,
	[sukupuoli] [nvarchar](2) NULL,
	[sukupuoli_id] [int] NULL,
	[aidinkieli_versio1] [nvarchar](2) NULL,
	[aidinkieli_versio1_id] [int] NULL,
	[syntymavuosi] [nvarchar](4) NULL,
	[syntymavuosi_id] [nvarchar](10) NULL,
	[syntymakuukausi] [nvarchar](2) NULL,
	[syntymakuukausi_id] [nvarchar](10) NULL,
	[kirjoihintulovuosi] [nvarchar](4) NULL,
	[kirjoihintulovuosi_id] [nvarchar](10) NULL,
	[kirjoihintulokausi] [nvarchar](2) NULL,
	[kirjoihintulokausi_id] [nvarchar](10) NULL,
	[kirjoihintulovuosi_korkeakoulu] [nvarchar](4) NULL,
	[kirjoihintulovuosi_korkeakoulu_id] [nvarchar](10) NULL,
	[kirjoihintulokausi_korkeakoulu] [nvarchar](2) NULL,
	[kirjoihintulokausi_korkeakoulu_id] [nvarchar](10) NULL,
	[tutkinnon_suoritusvuosi] [nvarchar](4) NULL,
	[tutkinnon_suoritusvuosi_id] [nvarchar](10) NULL,
	[tutkinnon_suorituskuukausi] [nvarchar](2) NULL,
	[tutkinnon_suorituskuukausi_id] [nvarchar](10) NULL,
	[lukumaara] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL,
	[aineistotunnus] [nvarchar](8) NULL,
	[koulutussektori] [nvarchar](2) NULL,
	[koulutussektori_id] [int] NULL,
	[ika_1v] [nvarchar](4) NULL,
	[ika_1v_id] [int] NULL,
	[suoritusika] [decimal](18, 6) NULL,
	[jarjestys_suoritusika] [int] NULL,
	[suoritusaika] [decimal](18, 6) NULL,
	[jarjestys_suoritusaika] [int] NULL,
	[suoritusaika_kk] [decimal](18, 6) NULL,
	[jarjestys_suoritusaika_kk] [int] NULL,
	[tutkinnot] [int] NULL,
	[aineisto_id] [int] NULL,
	[aineisto_OTV_id] [int] NULL,
	[koulutuksen_jarjestaja_kunta_id] [int] NULL,
	[koulutuksen_jarjestaja_kunta_historia_id] [int] NULL,
	[oppilaitos_kunta_id] [int] NULL,
	[oppilaitos_kunta_historia_id] [int] NULL,
	[opetushallinnon_koulutus_id] [int] NULL,
	[koulutuslaji_OKM_id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_OTV_4_9_Vaestorakenne_kunnittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_OTV_4_9_Vaestorakenne_kunnittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_OTV_4_9_Vaestorakenne_kunnittain](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[sukupuoli] [nvarchar](2) NULL,
	[sukupuoli_id] [int] NULL,
	[kotikunta] [nvarchar](3) NULL,
	[kotikunta_id] [int] NULL,
	[kotikunta_historia_id] [int] NULL,
	[aidinkieli_versio2] [nvarchar](2) NULL,
	[aidinkieli_versio2_id] [int] NULL,
	[kansalaisuus_versio1] [nvarchar](2) NULL,
	[kansalaisuus_versio1_id] [int] NULL,
	[maanosa] [nvarchar](2) NULL,
	[maanosa_id] [int] NULL,
	[pohjoismaa] [nvarchar](2) NULL,
	[pohjoismaa_id] [int] NULL,
	[eumaa] [nvarchar](2) NULL,
	[eumaa_id] [int] NULL,
	[etamaa] [nvarchar](2) NULL,
	[etamaa_id] [int] NULL,
	[lkm_0v] [int] NULL,
	[lkm_1v] [int] NULL,
	[lkm_2v] [int] NULL,
	[lkm_3v] [int] NULL,
	[lkm_4v] [int] NULL,
	[lkm_5v] [int] NULL,
	[lkm_6v] [int] NULL,
	[lkm_7v] [int] NULL,
	[lkm_8v] [int] NULL,
	[lkm_9v] [int] NULL,
	[lkm_10v] [int] NULL,
	[lkm_11v] [int] NULL,
	[lkm_12v] [int] NULL,
	[lkm_13v] [int] NULL,
	[lkm_14v] [int] NULL,
	[lkm_15v] [int] NULL,
	[lkm_16v] [int] NULL,
	[lkm_17v] [int] NULL,
	[lkm_18v] [int] NULL,
	[lkm_19v] [int] NULL,
	[lkm_20v] [int] NULL,
	[lkm_21v] [int] NULL,
	[lkm_22v] [int] NULL,
	[lkm_23v] [int] NULL,
	[lkm_24v] [int] NULL,
	[lkm_25v] [int] NULL,
	[lkm_26v] [int] NULL,
	[lkm_27v] [int] NULL,
	[lkm_28v] [int] NULL,
	[lkm_29v] [int] NULL,
	[lkm_30v] [int] NULL,
	[lkm_31v] [int] NULL,
	[lkm_32v] [int] NULL,
	[lkm_33v] [int] NULL,
	[lkm_34v] [int] NULL,
	[lkm_35v] [int] NULL,
	[lkm_36v] [int] NULL,
	[lkm_37v] [int] NULL,
	[lkm_38v] [int] NULL,
	[lkm_39v] [int] NULL,
	[lkm_40v] [int] NULL,
	[lkm_41v] [int] NULL,
	[lkm_42v] [int] NULL,
	[lkm_43v] [int] NULL,
	[lkm_44v] [int] NULL,
	[lkm_45v] [int] NULL,
	[lkm_46v] [int] NULL,
	[lkm_47v] [int] NULL,
	[lkm_48v] [int] NULL,
	[lkm_49v] [int] NULL,
	[lkm_50v] [int] NULL,
	[lkm_51v] [int] NULL,
	[lkm_52v] [int] NULL,
	[lkm_53v] [int] NULL,
	[lkm_54v] [int] NULL,
	[lkm_55v] [int] NULL,
	[lkm_56v] [int] NULL,
	[lkm_57v] [int] NULL,
	[lkm_58v] [int] NULL,
	[lkm_59v] [int] NULL,
	[lkm_60v] [int] NULL,
	[lkm_61v] [int] NULL,
	[lkm_62v] [int] NULL,
	[lkm_63v] [int] NULL,
	[lkm_64v] [int] NULL,
	[lkm_65v] [int] NULL,
	[lkm_66v] [int] NULL,
	[lkm_67v] [int] NULL,
	[lkm_68v] [int] NULL,
	[lkm_69v] [int] NULL,
	[lkm_70v] [int] NULL,
	[lkm_71v] [int] NULL,
	[lkm_72v] [int] NULL,
	[lkm_73v] [int] NULL,
	[lkm_74v] [int] NULL,
	[lkm_75v] [int] NULL,
	[lkm_76v] [int] NULL,
	[lkm_77v] [int] NULL,
	[lkm_78v] [int] NULL,
	[lkm_79v] [int] NULL,
	[lkm_80v] [int] NULL,
	[lkm_81v] [int] NULL,
	[lkm_82v] [int] NULL,
	[lkm_83v] [int] NULL,
	[lkm_84v] [int] NULL,
	[lkm_85v] [int] NULL,
	[lkm_86v] [int] NULL,
	[lkm_87v] [int] NULL,
	[lkm_88v] [int] NULL,
	[lkm_89v] [int] NULL,
	[lkm_90v] [int] NULL,
	[lkm_91v] [int] NULL,
	[lkm_92v] [int] NULL,
	[lkm_93v] [int] NULL,
	[lkm_94v] [int] NULL,
	[lkm_95v] [int] NULL,
	[lkm_96v] [int] NULL,
	[lkm_97v] [int] NULL,
	[lkm_98v] [int] NULL,
	[lkm_99v] [int] NULL,
	[lkm_100v_ja_vanh] [int] NULL,
	[lukumaara] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL,
	[aineistotunnus] [nvarchar](8) NULL,
	[aidinkieli] [nvarchar](2) NULL,
	[ika0_24_lkm] [int] NULL,
	[ika0_24_ka] [decimal](38, 6) NULL,
	[ika0_100_lkm] [int] NULL,
	[ika0_100_ka] [decimal](38, 6) NULL,
	[ika6_lkm] [int] NULL,
	[ika6_ka] [decimal](24, 6) NULL,
	[ika7_lkm] [int] NULL,
	[ika7_ka] [decimal](24, 6) NULL,
	[ika7_12_lkm] [int] NULL,
	[ika7_12_ka] [decimal](29, 6) NULL,
	[ika13_15_lkm] [int] NULL,
	[ika13_15_ka] [decimal](26, 6) NULL,
	[ika15_64_lkm] [int] NULL,
	[ika15_64_ka] [decimal](38, 6) NULL,
	[ika15_100_lkm] [int] NULL,
	[ika15_100_ka] [decimal](38, 6) NULL,
	[ika16_lkm] [int] NULL,
	[ika16_ka] [decimal](24, 6) NULL,
	[ika16_18_lkm] [int] NULL,
	[ika16_18_ka] [decimal](26, 6) NULL,
	[ika16_19_lkm] [int] NULL,
	[ika16_19_ka] [decimal](27, 6) NULL,
	[ika16_21_lkm] [int] NULL,
	[ika16_21_ka] [decimal](29, 6) NULL,
	[ika19_lkm] [int] NULL,
	[ika19_ka] [decimal](24, 6) NULL,
	[ika19_20_lkm] [int] NULL,
	[ika19_20_ka] [decimal](25, 6) NULL,
	[ika19_21_lkm] [int] NULL,
	[ika19_21_ka] [decimal](26, 6) NULL,
	[ika20_24_lkm] [int] NULL,
	[ika20_24_ka] [decimal](28, 6) NULL,
	[ika20_29_lkm] [int] NULL,
	[ika20_29_ka] [decimal](33, 6) NULL,
	[ika25_lkm] [int] NULL,
	[ika25_ka] [decimal](24, 6) NULL,
	[ika25_34_lkm] [int] NULL,
	[ika25_34_ka] [decimal](33, 6) NULL,
	[ika25_64_lkm] [int] NULL,
	[ika25_64_ka] [decimal](38, 6) NULL,
	[ika25_100_lkm] [int] NULL,
	[ika25_100_ka] [decimal](38, 6) NULL,
	[ika30_lkm] [int] NULL,
	[ika30_ka] [decimal](24, 6) NULL,
	[ika30_34_lkm] [int] NULL,
	[ika30_34_ka] [decimal](28, 6) NULL,
	[aineisto_id] [int] NULL,
	[aineisto_OTV_id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_paivahoidon_yhteydessa_annettavan_esiopetuksen_aineisto]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_paivahoidon_yhteydessa_annettavan_esiopetuksen_aineisto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_paivahoidon_yhteydessa_annettavan_esiopetuksen_aineisto](
	[tilv] [varchar](4) NULL,
	[jarj] [varchar](20) NULL,
	[oppilaitoksen_taustatiedot_id] [int] NOT NULL,
	[alueluokitus_id] [int] NOT NULL,
	[tiedonantajatyyppi_id] [int] NOT NULL,
	[popy] [varchar](5) NULL,
	[jmamu] [varchar](5) NULL,
	[psisa] [varchar](5) NULL,
	[jmamusisa] [varchar](5) NULL,
	[pteho] [varchar](5) NULL,
	[pertu] [varchar](5) NULL,
	[pertuv] [varchar](5) NULL,
	[pertum] [varchar](5) NULL,
	[ptehoerop] [varchar](5) NULL,
	[pviertu] [varchar](5) NULL,
	[pviertuv] [varchar](5) NULL,
	[pviertum] [varchar](5) NULL,
	[pvimuut] [varchar](5) NULL,
	[pviop] [varchar](5) NULL,
	[pkuertu] [varchar](5) NULL,
	[pkuertuv] [varchar](5) NULL,
	[pkuertum] [varchar](5) NULL,
	[pkumuut] [varchar](5) NULL,
	[pkuop] [varchar](5) NULL,
	[ppid5v] [varchar](5) NULL,
	[pmuu5v] [varchar](5) NULL,
	[pop5v] [varchar](5) NULL,
	[apip1] [varchar](5) NULL,
	[apip2] [varchar](5) NULL,
	[apip39] [varchar](5) NULL,
	[apipy] [varchar](5) NULL,
	[oma3s] [varchar](8) NULL,
	[osto3s] [varchar](8) NULL,
	[avust3s] [varchar](8) NULL,
	[syk3s] [varchar](8) NULL,
	[oma4s] [varchar](8) NULL,
	[osto4s] [varchar](8) NULL,
	[avust4s] [varchar](8) NULL,
	[syk4s] [varchar](8) NULL,
	[omams] [varchar](8) NULL,
	[ostoms] [varchar](8) NULL,
	[avustms] [varchar](8) NULL,
	[sykms] [varchar](8) NULL,
	[omays] [varchar](8) NULL,
	[ostoys] [varchar](8) NULL,
	[avustys] [varchar](8) NULL,
	[sykys] [varchar](8) NULL,
	[oma3k] [varchar](8) NULL,
	[osto3k] [varchar](8) NULL,
	[avust3k] [varchar](8) NULL,
	[kev3k] [varchar](8) NULL,
	[oma4k] [varchar](8) NULL,
	[osto4k] [varchar](8) NULL,
	[avust4k] [varchar](8) NULL,
	[kev4k] [varchar](8) NULL,
	[omamk] [varchar](8) NULL,
	[ostomk] [varchar](8) NULL,
	[avustmk] [varchar](8) NULL,
	[kevmk] [varchar](8) NULL,
	[omayk] [varchar](8) NULL,
	[ostoyk] [varchar](8) NULL,
	[avustyk] [varchar](8) NULL,
	[kevyk] [varchar](8) NULL,
	[pesis_kylla_ei_id] [int] NOT NULL,
	[pesis_alueluokitus_id] [int] NOT NULL,
	[kesis_kylla_ei_id] [int] NOT NULL,
	[kesis_alueluokitus_id] [int] NOT NULL,
	[perops_kylla_ei_id] [int] NOT NULL,
	[perops_alueluokitus_id] [int] NOT NULL,
	[apips_kylla_ei_id] [int] NOT NULL,
	[apips_alueluokitus_id] [int] NOT NULL,
	[luontipvm] [date] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Perusasteen_erityisopetus_erityisen_tuen_oppilaiden_opetus]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Perusasteen_erityisopetus_erityisen_tuen_oppilaiden_opetus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Perusasteen_erityisopetus_erityisen_tuen_oppilaiden_opetus](
	[tilv] [nvarchar](4) NULL,
	[oppilaitos] [nvarchar](5) NULL,
	[oppilaitoksen_taustatiedot_id] [int] NOT NULL,
	[oppilaitoksen_sijainti_id] [int] NOT NULL,
	[tiedtype] [nchar](1) NULL,
	[perusopetuksen_vuosiluokat] [varchar](5) NOT NULL,
	[perusopetuksen_vuosiluokat_id] [int] NOT NULL,
	[perusopetuksen_erityisen_tuen_paatos] [varchar](1) NOT NULL,
	[perusopetuksen_erityisen_tuen_paatos_id] [int] NOT NULL,
	[perusopetuksen_yleisopetuksen_osuus] [varchar](6) NOT NULL,
	[perusopetuksen_yleisopetuksen_osuus_id] [int] NOT NULL,
	[erityisen_tuen_oppilaiden_opetus] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Perusasteen_erityisopetus_erityisen_tuen_oppilaiden_oppimaara]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Perusasteen_erityisopetus_erityisen_tuen_oppilaiden_oppimaara]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Perusasteen_erityisopetus_erityisen_tuen_oppilaiden_oppimaara](
	[tilv] [nvarchar](4) NULL,
	[oppilaitos] [nvarchar](5) NULL,
	[oppilaitoksen_taustatiedot_id] [int] NOT NULL,
	[oppilaitoksen_sijainti_id] [int] NOT NULL,
	[tiedtype] [nchar](1) NULL,
	[perusopetuksen_vuosiluokat] [varchar](5) NOT NULL,
	[perusopetuksen_vuosiluokat_id] [int] NOT NULL,
	[perusopetuksen_erityisen_tuen_paatos] [varchar](1) NOT NULL,
	[perusopetuksen_erityisen_tuen_paatos_id] [int] NOT NULL,
	[perusopetuksen_oppimaaran_yksilollistaminen] [varchar](6) NOT NULL,
	[perusopetuksen_oppimaaran_yksilollistaminen_id] [int] NOT NULL,
	[erityisen_tuen_oppilaiden_oppimaara] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Perusasteen_erityisopetus_jopo_oppilaat]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Perusasteen_erityisopetus_jopo_oppilaat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Perusasteen_erityisopetus_jopo_oppilaat](
	[tilv] [nvarchar](4) NULL,
	[oppilaitos] [nvarchar](5) NULL,
	[oppilaitoksen_taustatiedot_id] [int] NOT NULL,
	[oppilaitoksen_sijainti_id] [int] NOT NULL,
	[tiedtype] [nchar](1) NULL,
	[perusopetuksen_vuosiluokat] [varchar](5) NOT NULL,
	[perusopetuksen_vuosiluokat_id] [int] NOT NULL,
	[sukupuoli] [int] NOT NULL,
	[sukupuoli_id] [int] NOT NULL,
	[perusopetuksen_erityisen_tuen_paatos] [varchar](1) NOT NULL,
	[perusopetuksen_erityisen_tuen_paatos_id] [int] NOT NULL,
	[perusopetuksen_pidennetty_oppivelvollisuus] [varchar](1) NOT NULL,
	[perusopetuksen_pidennetty_oppivelvollisuus_id] [int] NOT NULL,
	[joustava_perusopetus] [varchar](1) NOT NULL,
	[joustava_perusopetus_id] [int] NOT NULL,
	[jopo_oppilaat] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Perusasteen_erityisopetus_kuljetusetuutta_saavien_oppilaiden_lkm]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Perusasteen_erityisopetus_kuljetusetuutta_saavien_oppilaiden_lkm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Perusasteen_erityisopetus_kuljetusetuutta_saavien_oppilaiden_lkm](
	[tilv] [nvarchar](4) NULL,
	[oppilaitos] [nvarchar](5) NULL,
	[oppilaitoksen_taustatiedot_id] [int] NOT NULL,
	[oppilaitoksen_sijainti_id] [int] NOT NULL,
	[tiedtype] [nchar](1) NULL,
	[perusopetuksen_vuosiluokat] [varchar](5) NOT NULL,
	[perusopetuksen_vuosiluokat_id] [int] NOT NULL,
	[perusopetuksen_erityisen_tuen_paatos] [varchar](1) NOT NULL,
	[perusopetuksen_erityisen_tuen_paatos_id] [int] NOT NULL,
	[perusopetuksen_pidennetty_oppivelvollisuus] [varchar](1) NOT NULL,
	[perusopetuksen_pidennetty_oppivelvollisuus_id] [int] NOT NULL,
	[perusopetuksen_tehostettu_tuki] [varchar](8) NOT NULL,
	[perusopetuksen_tehostettu_tuki_id] [int] NOT NULL,
	[perusopetuksen_kuljetusetuus] [varchar](1) NOT NULL,
	[perusopetuksen_kuljetusetuus_id] [int] NOT NULL,
	[kuljetusetuutta_saavat_oppilaat] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Perusasteen_erityisopetus_majoitusetuutta_saavien_oppilaiden_lkm]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Perusasteen_erityisopetus_majoitusetuutta_saavien_oppilaiden_lkm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Perusasteen_erityisopetus_majoitusetuutta_saavien_oppilaiden_lkm](
	[tilv] [nvarchar](4) NULL,
	[oppilaitos] [nvarchar](5) NULL,
	[oppilaitoksen_taustatiedot_id] [int] NOT NULL,
	[oppilaitoksen_sijainti_id] [int] NOT NULL,
	[tiedtype] [nchar](1) NULL,
	[perusopetuksen_vuosiluokat] [varchar](5) NOT NULL,
	[perusopetuksen_vuosiluokat_id] [int] NOT NULL,
	[perusopetuksen_erityisen_tuen_paatos] [varchar](1) NOT NULL,
	[perusopetuksen_erityisen_tuen_paatos_id] [int] NOT NULL,
	[perusopetuksen_pidennetty_oppivelvollisuus] [varchar](1) NOT NULL,
	[perusopetuksen_pidennetty_oppivelvollisuus_id] [int] NOT NULL,
	[perusopetuksen_tehostettu_tuki] [varchar](8) NOT NULL,
	[perusopetuksen_tehostettu_tuki_id] [int] NOT NULL,
	[perusopetuksen_majoitusetuus] [varchar](1) NOT NULL,
	[perusopetuksen_majoitusetuus_id] [int] NOT NULL,
	[majoitusetuutta_saavat_oppilaat] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Perusasteen_erityisopetus_oppilaiden_lkm]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Perusasteen_erityisopetus_oppilaiden_lkm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Perusasteen_erityisopetus_oppilaiden_lkm](
	[tilv] [nvarchar](4) NULL,
	[oppilaitos] [nvarchar](5) NULL,
	[oppilaitoksen_taustatiedot_id] [int] NOT NULL,
	[oppilaitoksen_sijainti_id] [int] NOT NULL,
	[tiedtype] [nchar](1) NULL,
	[perusopetuksen_vuosiluokat] [varchar](4) NOT NULL,
	[perusopetuksen_vuosiluokat_id] [int] NOT NULL,
	[sukupuoli] [int] NOT NULL,
	[sukupuoli_id] [int] NOT NULL,
	[oppilaiden_lkm] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Perusasteen_erityisopetus_peruskoulun_aloittaneiden_oppilaiden_lkm]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Perusasteen_erityisopetus_peruskoulun_aloittaneiden_oppilaiden_lkm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Perusasteen_erityisopetus_peruskoulun_aloittaneiden_oppilaiden_lkm](
	[tilv] [nvarchar](4) NULL,
	[oppilaitos] [nvarchar](5) NULL,
	[oppilaitoksen_taustatiedot_id] [int] NOT NULL,
	[oppilaitoksen_sijainti_id] [int] NOT NULL,
	[tiedtype] [nchar](1) NULL,
	[sukupuoli] [varchar](1) NOT NULL,
	[sukupuoli_id] [int] NOT NULL,
	[perusopetuksen_aloitusika] [varchar](4) NOT NULL,
	[perusopetuksen_aloitusika_id] [int] NOT NULL,
	[peruskoulun_aloittavien_oppilaiden_lkm] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Perusasteen_erityisopetus_peruskoulun_ilman_todistusta_paattaneiden_oppilaiden_lkm]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Perusasteen_erityisopetus_peruskoulun_ilman_todistusta_paattaneiden_oppilaiden_lkm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Perusasteen_erityisopetus_peruskoulun_ilman_todistusta_paattaneiden_oppilaiden_lkm](
	[tilv] [nvarchar](4) NULL,
	[oppilaitos] [nvarchar](5) NULL,
	[oppilaitoksen_taustatiedot_id] [int] NOT NULL,
	[oppilaitoksen_sijainti_id] [int] NOT NULL,
	[tiedtype] [nchar](1) NULL,
	[sukupuoli] [varchar](1) NOT NULL,
	[sukupuoli_id] [int] NOT NULL,
	[peruskoulun_ilman_todistusta_paattaneiden_oppilaiden_lkm] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Perusasteen_erityisopetus_tehostetun_tuen_oppilaiden_lkm]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Perusasteen_erityisopetus_tehostetun_tuen_oppilaiden_lkm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Perusasteen_erityisopetus_tehostetun_tuen_oppilaiden_lkm](
	[tilv] [nvarchar](4) NULL,
	[oppilaitos] [nvarchar](5) NULL,
	[oppilaitoksen_taustatiedot_id] [int] NOT NULL,
	[oppilaitoksen_sijainti_id] [int] NOT NULL,
	[tiedtype] [nchar](1) NULL,
	[perusopetuksen_vuosiluokat] [varchar](4) NOT NULL,
	[perusopetuksen_vuosiluokat_id] [int] NOT NULL,
	[sukupuoli] [int] NOT NULL,
	[sukupuoli_id] [int] NOT NULL,
	[perusopetuksen_erityisen_tuen_paatos] [varchar](1) NOT NULL,
	[perusopetuksen_erityisen_tuen_paatos_id] [int] NOT NULL,
	[perusopetuksen_pidennetty_oppivelvollisuus] [varchar](1) NOT NULL,
	[perusopetuksen_pidennetty_oppivelvollisuus_id] [int] NOT NULL,
	[perusopetuksen_tehostettu_tuki] [varchar](9) NOT NULL,
	[perusopetuksen_tehostettu_tuki_id] [int] NOT NULL,
	[tehostetun_tuen_oppilaat] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Perusasteen_erityisopetus_tukea_saavien_oppilaiden_lkm]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Perusasteen_erityisopetus_tukea_saavien_oppilaiden_lkm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Perusasteen_erityisopetus_tukea_saavien_oppilaiden_lkm](
	[tilv] [nvarchar](4) NULL,
	[oppilaitos] [nvarchar](5) NULL,
	[oppilaitoksen_taustatiedot_id] [int] NOT NULL,
	[oppilaitoksen_sijainti_id] [int] NOT NULL,
	[tiedtype] [nchar](1) NULL,
	[perusopetuksen_erityisen_tuen_paatos] [varchar](1) NOT NULL,
	[perusopetuksen_erityisen_tuen_paatos_id] [int] NOT NULL,
	[perusopetuksen_tehostettu_tuki] [varchar](9) NOT NULL,
	[perusopetuksen_tehostettu_tuki_id] [int] NOT NULL,
	[perusopetuksen_tukimuoto] [varchar](9) NOT NULL,
	[perusopetuksen_tukimuoto_id] [int] NOT NULL,
	[tukea_saavat_oppilaat] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Perusasteen_erityisopetus_vieraskielisten_tehostetun_tuen_oppilaiden_lkm]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Perusasteen_erityisopetus_vieraskielisten_tehostetun_tuen_oppilaiden_lkm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Perusasteen_erityisopetus_vieraskielisten_tehostetun_tuen_oppilaiden_lkm](
	[tilv] [nvarchar](4) NULL,
	[oppilaitos] [nvarchar](5) NULL,
	[oppilaitoksen_taustatiedot_id] [int] NOT NULL,
	[oppilaitoksen_sijainti_id] [int] NOT NULL,
	[tiedtype] [nchar](1) NULL,
	[perusopetuksen_vuosiluokat] [varchar](5) NOT NULL,
	[perusopetuksen_vuosiluokat_id] [int] NOT NULL,
	[perusopetuksen_erityisen_tuen_paatos] [varchar](1) NOT NULL,
	[perusopetuksen_erityisen_tuen_paatos_id] [int] NOT NULL,
	[perusopetuksen_pidennetty_oppivelvollisuus] [varchar](1) NOT NULL,
	[perusopetuksen_pidennetty_oppivelvollisuus_id] [int] NOT NULL,
	[perusopetuksen_tehostettu_tuki] [varchar](8) NOT NULL,
	[perusopetuksen_tehostettu_tuki_id] [int] NOT NULL,
	[vieraskielisyys] [varchar](1) NOT NULL,
	[vieraskielisyys_id] [int] NOT NULL,
	[vieraskieliset_tehostetun_tuen_oppilaat] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_perusopetuksen_kieltenmaara]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_perusopetuksen_kieltenmaara]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_perusopetuksen_kieltenmaara](
	[tilv] [nvarchar](4) NULL,
	[oppilaitos_koodi] [nvarchar](5) NULL,
	[lkm_yht] [int] NULL,
	[lkm_pojat] [int] NULL,
	[lkm_tytot] [int] NULL,
	[vuosiluokka_koodi] [nvarchar](10) NULL,
	[kieltenmäärä_koodi] [nvarchar](10) NULL,
	[lkm_kielivalinnat] [int] NULL,
	[oppilaitoksensijainti_historia_koodi] [nvarchar](21) NULL,
	[vuosiluokka_id] [int] NOT NULL,
	[tilv_date] [date] NOT NULL,
	[aineisto] [nvarchar](8) NULL,
	[laatu_id] [int] NOT NULL,
	[kieltenmaara_id] [int] NOT NULL,
	[oppilaitos_historia_id] [int] NULL,
	[oppilaitos_id] [int] NOT NULL,
	[oppilaitoksensijainti_historia_id] [int] NOT NULL,
	[oppilaitoksensijainti_id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_perusopetuksen_oppilasmaarat]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_perusopetuksen_oppilasmaarat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_perusopetuksen_oppilasmaarat](
	[tilv] [nvarchar](4) NULL,
	[oppilaitos_koodi] [nvarchar](5) NULL,
	[lkm_yht] [int] NULL,
	[lkm_pojat] [int] NULL,
	[lkm_tytot] [int] NULL,
	[vuosiluokka_koodi] [nvarchar](10) NULL,
	[kieltenmäärä_koodi] [nvarchar](10) NULL,
	[lkm_kielivalinnat] [int] NULL,
	[oppilaitoksensijainti_historia_koodi] [nvarchar](21) NULL,
	[vuosiluokka_id] [int] NOT NULL,
	[tilv_date] [date] NOT NULL,
	[aineisto] [nvarchar](8) NULL,
	[laatu_id] [int] NOT NULL,
	[kieltenmaara_id] [int] NOT NULL,
	[oppilaitos_historia_id] [int] NULL,
	[oppilaitos_id] [int] NOT NULL,
	[oppilaitoksensijainti_historia_id] [int] NOT NULL,
	[oppilaitoksensijainti_id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_SA_2_23_Opisk_ja_tutksuor_vanh_aseman_muk]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_SA_2_23_Opisk_ja_tutksuor_vanh_aseman_muk]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_SA_2_23_Opisk_ja_tutksuor_vanh_aseman_muk](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[sukupuoli] [nvarchar](1) NULL,
	[sukupuoli_id] [int] NOT NULL,
	[syntymavuosi] [nvarchar](4) NULL,
	[syntymavuosi_id] [nvarchar](10) NOT NULL,
	[aidinkieli_versio1x] [nvarchar](2) NULL,
	[aidinkieli_versio1x_id] [int] NOT NULL,
	[kotikunta] [nvarchar](3) NULL,
	[kotikunta_id] [int] NOT NULL,
	[kotikunta_historia_id] [int] NOT NULL,
	[kotikunta1x] [nvarchar](3) NULL,
	[kotikunta1x_id] [int] NOT NULL,
	[kotikunta1x_historia_id] [int] NOT NULL,
	[sosioekonominen_asema_1_isa] [nvarchar](1) NULL,
	[sosioekonominen_asema_1_isa_id] [int] NOT NULL,
	[sosioekonominen_asema_1_aiti] [nvarchar](1) NULL,
	[sosioekonominen_asema_1_aiti_id] [int] NOT NULL,
	[sosioekonominen_asema_2_isa] [nvarchar](2) NULL,
	[sosioekonominen_asema_2_isa_id] [int] NOT NULL,
	[sosioekonominen_asema_2_aiti] [nvarchar](2) NULL,
	[sosioekonominen_asema_2_aiti_id] [int] NOT NULL,
	[koulutusluokitus_isa] [nvarchar](6) NULL,
	[koulutusluokitus_isa_id] [int] NOT NULL,
	[koulutusluokitus_isa_historia_id] [int] NOT NULL,
	[koulutusluokitus_aiti] [nvarchar](6) NULL,
	[koulutusluokitus_aiti_id] [int] NOT NULL,
	[koulutusluokitus_aiti_historia_id] [int] NOT NULL,
	[tulodesiili_isa] [nvarchar](2) NULL,
	[tulodesiili_isa_id] [int] NOT NULL,
	[tulodesiili_aiti] [nvarchar](2) NULL,
	[tulodesiili_aiti_id] [int] NOT NULL,
	[koulutuslaji] [nvarchar](2) NULL,
	[koulutuslaji_id] [int] NOT NULL,
	[opetushallinnon_koulutus] [nvarchar](1) NULL,
	[opetushallinnon_koulutus_id] [int] NOT NULL,
	[koulutusluokitus] [nvarchar](6) NULL,
	[koulutusluokitus_id] [int] NOT NULL,
	[koulutusluokitus_historia_id] [int] NOT NULL,
	[koulutuksen_kieli] [nvarchar](2) NULL,
	[koulutuksen_kieli_id] [int] NOT NULL,
	[koulutuksen_maakunta] [nvarchar](2) NULL,
	[koulutuksen_maakunta_id] [int] NOT NULL,
	[koulutuksen_maakunta_historia_id] [int] NOT NULL,
	[kirjoihintulovuosi] [nvarchar](4) NULL,
	[kirjoihintulovuosi_id] [nvarchar](10) NOT NULL,
	[opiskelijan_olo_syys] [nvarchar](1) NULL,
	[opiskelijan_olo_syys_id] [int] NOT NULL,
	[opetushallinnon_koulutus2] [nvarchar](1) NULL,
	[opetushallinnon_koulutus2_id] [int] NOT NULL,
	[uudet_opiskelijat] [int] NULL,
	[opiskelijat] [int] NULL,
	[tutkinnot] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL,
	[ika_1v] [nvarchar](10) NULL,
	[ika_1v_id] [int] NULL,
	[ika_5v] [nvarchar](10) NULL,
	[ika_5v_id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_rahoitus]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_rahoitus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_rahoitus](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[sektoritutkimuslaitos_avain] [varchar](5) NOT NULL,
	[sektoritutkimuslaitos_id] [int] NOT NULL,
	[rahoituslahde_avain] [varchar](10) NOT NULL,
	[rahoituslahde_id] [int] NOT NULL,
	[tutkimusrahoitus] [decimal](10, 3) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_tutkimushenkilokunta_alueittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_tutkimushenkilokunta_alueittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_tutkimushenkilokunta_alueittain](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[sektoritutkimuslaitos_avain] [varchar](5) NOT NULL,
	[sektoritutkimuslaitos_id] [int] NOT NULL,
	[alueluokitus_avain] [varchar](3) NULL,
	[alueluokitus_id] [int] NOT NULL,
	[lkm_tutkimushenkilokunta_alueittain] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_tutkimushenkilokunta_paatieteenaloittain_tehtavittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_tutkimushenkilokunta_paatieteenaloittain_tehtavittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_tutkimushenkilokunta_paatieteenaloittain_tehtavittain](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[sektoritutkimuslaitos_avain] [varchar](5) NOT NULL,
	[sektoritutkimuslaitos_id] [int] NOT NULL,
	[sukupuoli_avain] [varchar](1) NOT NULL,
	[sukupuoli_id] [int] NOT NULL,
	[tehtava_avain] [varchar](7) NOT NULL,
	[tehtava_id] [int] NOT NULL,
	[tieteenala_avain] [varchar](6) NOT NULL,
	[tieteenala_id] [int] NOT NULL,
	[lkm_tutkimushenkilokunta_paatieteenaloittain_tehtavittain] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_tutkimushenkilokunta_tutkintotasoittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_tutkimushenkilokunta_tutkintotasoittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_tutkimushenkilokunta_tutkintotasoittain](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[sektoritutkimuslaitos_avain] [varchar](5) NOT NULL,
	[sektoritutkimuslaitos_id] [int] NOT NULL,
	[sukupuoli_avain] [varchar](1) NOT NULL,
	[sukupuoli_id] [int] NOT NULL,
	[tutkintotaso_avain] [varchar](2) NOT NULL,
	[tutkintotaso_id] [int] NOT NULL,
	[lkm_tutkimushenkilokunta_tutkintotasoittain] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_tutkimusmenot]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_tutkimusmenot]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_tutkimusmenot](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[sektoritutkimuslaitos_avain] [varchar](5) NOT NULL,
	[sektoritutkimuslaitos_id] [int] NOT NULL,
	[menokohde_avain] [varchar](10) NOT NULL,
	[menokohde_id] [int] NOT NULL,
	[tutkimusmenot] [decimal](10, 3) NULL,
	[tutkimusmenot_arvio_seuraavatilastovuosi] [decimal](10, 3) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_tutkimusmenot_alueittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_tutkimusmenot_alueittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_tutkimusmenot_alueittain](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[sektoritutkimuslaitos_avain] [varchar](5) NOT NULL,
	[sektoritutkimuslaitos_id] [int] NOT NULL,
	[alueluokitus_avain] [varchar](3) NULL,
	[alueluokitus_id] [int] NOT NULL,
	[tutkimusmenot_alueittain] [decimal](35, 3) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_tutkimusmenot_tieteenaloittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_tutkimusmenot_tieteenaloittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_tutkimusmenot_tieteenaloittain](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[sektoritutkimuslaitos_avain] [varchar](5) NOT NULL,
	[sektoritutkimuslaitos_id] [int] NOT NULL,
	[tieteenala_avain] [varchar](10) NULL,
	[tieteenala_id] [int] NOT NULL,
	[tutkimusmenot_tieteenaloittain] [numeric](25, 10) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_tutkimustyovuodet_alueittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_tutkimustyovuodet_alueittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_tutkimustyovuodet_alueittain](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[sektoritutkimuslaitos_avain] [varchar](5) NOT NULL,
	[sektoritutkimuslaitos_id] [int] NOT NULL,
	[alueluokitus_avain] [varchar](3) NULL,
	[alueluokitus_id] [int] NOT NULL,
	[lkm_tutkimustyovuodet_alueittain] [decimal](33, 1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_tutkimustyovuodet_tehtavittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_tutkimustyovuodet_tehtavittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_tutkimustyovuodet_tehtavittain](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[sektoritutkimuslaitos_avain] [varchar](5) NOT NULL,
	[sektoritutkimuslaitos_id] [int] NOT NULL,
	[tehtava_avain] [varchar](7) NOT NULL,
	[tehtava_id] [int] NOT NULL,
	[lkm_tutkimustyovuodet_tehtavittain] [decimal](10, 1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_tutkimustyovuodet_tutkintotasoittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_tutkimustyovuodet_tutkintotasoittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Sektoritutkimuslaitosten_tutkimus_ja_kehitys_tutkimustyovuodet_tutkintotasoittain](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[sektoritutkimuslaitos_avain] [varchar](5) NOT NULL,
	[sektoritutkimuslaitos_id] [int] NOT NULL,
	[tutkintotaso_avain] [varchar](2) NOT NULL,
	[tutkintotaso_id] [int] NOT NULL,
	[lkm_tutkimustyovuodet_tutkintotasoittain] [decimal](14, 1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_tab_tutkinnon_suorittaneiden_aiempi_koulutus_4_7_yhteiset]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_tab_tutkinnon_suorittaneiden_aiempi_koulutus_4_7_yhteiset]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_tab_tutkinnon_suorittaneiden_aiempi_koulutus_4_7_yhteiset](
	[henkiloiden_lkm] [int] NULL,
	[lu_henkiloiden_lkm] [int] NULL,
	[amm_henkiloiden_lkm] [int] NULL,
	[opist_henkiloiden_lkm] [int] NULL,
	[ammka_henkiloiden_lkm] [int] NULL,
	[amk_henkiloiden_lkm] [int] NULL,
	[akk_henkiloiden_lkm] [int] NULL,
	[ylamklkm_henkiloiden_lkm] [int] NULL,
	[ykk_henkiloiden_lkm] [int] NULL,
	[laaker_henkiloiden_lkm] [int] NULL,
	[lis_henkiloiden_lkm] [int] NULL,
	[toht_henkiloiden_lkm] [int] NULL,
	[ai_yliop_lkm] [int] NULL,
	[ai_yo_jatko_lkm] [int] NULL,
	[ai_opisto_ammkork_lkm] [int] NULL,
	[ai_kork_lkm] [int] NULL,
	[ai_toinenaste_lkm] [int] NULL,
	[ai_ammryhma1_lkm] [int] NULL,
	[ai_ammryhma2_lkm] [int] NULL,
	[ai_ammryhma3_lkm] [int] NULL,
	[Ei_aiempaa_perusasteen_jalkeista_tutkintoa_lkm] [int] NULL,
	[Tilastovuosi] [nvarchar](4) NULL,
	[Tarkastelujakso] [nvarchar](100) NULL,
	[Äidinkieli] [nvarchar](50) NULL,
	[Koulutusaste] [nvarchar](255) NOT NULL,
	[Koulutusala (02 luokitus)] [nvarchar](255) NOT NULL,
	[Koulutusala (95 luokitus)] [nvarchar](255) NOT NULL,
	[Opintoala] [nvarchar](255) NOT NULL,
	[Koulutusnimike] [nvarchar](255) NOT NULL,
	[Sukupuoli] [nvarchar](250) NULL,
	[Tutkinnon suoritusvuosi] [varchar](4) NOT NULL,
	[Tutkinnon suorituslukukausi] [nvarchar](20) NULL,
	[Aloitusvuosi] [varchar](4) NOT NULL,
	[Aloituslukukausi] [nvarchar](20) NULL,
	[Syntymävuosi] [varchar](4) NULL,
	[Yo-tutkinnon suoritusvuosi] [varchar](4) NOT NULL,
	[Amm. tutkinnon suoritusvuosi] [varchar](4) NOT NULL,
	[Opistoast. tutkinnon suoritusvuosi] [varchar](4) NOT NULL,
	[Amm. kork.asteen tutk. suoritusvuosi] [varchar](4) NOT NULL,
	[Amk-tutkinnon suoritusvuosi] [varchar](4) NOT NULL,
	[Alemman kk-tutk. suoritusvuosi] [varchar](4) NOT NULL,
	[Ylemmän amk-tutk. suoritusvuosi] [varchar](4) NOT NULL,
	[Ylemmän kk-tutk. suoritusvuosi] [varchar](4) NOT NULL,
	[Lääk. erikois.tutk. suoritusvuosi] [varchar](4) NOT NULL,
	[Lisensiaatin tutk. suoritusvuosi] [varchar](4) NOT NULL,
	[Tohtorin tutk. suorituvuosi] [varchar](4) NOT NULL,
	[Oppisopimuskoulutus] [nvarchar](50) NULL,
	[Tutkintotyyppi] [nvarchar](50) NULL,
	[Järjestämistapa] [nvarchar](50) NULL,
	[Nuorten/aikuisten koulutus] [nvarchar](50) NULL,
	[Ikä] [nvarchar](50) NULL,
	[Ikäryhmä] [nvarchar](50) NULL,
	[Yo-tutkinnon koulutusnimike] [nvarchar](255) NOT NULL,
	[Aik. suoritettu yo-tutkinto] [nvarchar](100) NULL,
	[Yo-tutkinnosta kulunut aika] [nvarchar](100) NULL,
	[Nuorten/aikuisten koulutus (yo)] [nvarchar](50) NULL,
	[Amm. tutkinnon koulutusala] [nvarchar](255) NOT NULL,
	[Amm. tutkinnon opintoala] [nvarchar](255) NOT NULL,
	[Amm. tutkinnon koulutusnimike] [nvarchar](255) NOT NULL,
	[Aik. suoritettu amm. tutkinto] [nvarchar](100) NULL,
	[Amm. tutkinnosta kulunut aika] [nvarchar](100) NULL,
	[Amm. tutkinnon tutkintotyyppi] [nvarchar](50) NULL,
	[Amm. tutkinnon järjestämistapa] [nvarchar](50) NULL,
	[Amm. tutkinto oppisopimuskoul.] [nvarchar](50) NULL,
	[Amm. tutkintojen määrä] [nvarchar](100) NULL,
	[Amm. koulutuksen ryhmät] [nvarchar](100) NULL,
	[Opistoast. tutkinnon koulutusala] [nvarchar](255) NOT NULL,
	[Opistoast. tutkinnon opintoala] [nvarchar](255) NOT NULL,
	[Opistoast. tutkinnon koulutusnimike] [nvarchar](255) NOT NULL,
	[Aik. suoritettu opistoast. tutkinto] [nvarchar](100) NULL,
	[Opistoast. tutkinnosta kulunut aika] [nvarchar](100) NULL,
	[Amm. kork.asteen tutk. koulutusala] [nvarchar](255) NOT NULL,
	[Amm. kork.asteen tutk. opintoala] [nvarchar](255) NOT NULL,
	[Amm. kork.asteen tutk. koulutusnimike] [nvarchar](255) NOT NULL,
	[Aik. suoritettu amm. kork.asteen tutkinto] [nvarchar](100) NULL,
	[Amm. kork.asteen tutk. kulunut aika] [nvarchar](100) NULL,
	[Amk-tutkinnon koulutusala] [nvarchar](255) NOT NULL,
	[Amk-tutkinnon opintoala] [nvarchar](255) NOT NULL,
	[Amk-tutkinnon koulutusnimike] [nvarchar](255) NOT NULL,
	[Aik. suoritettu amk-tutkinto] [nvarchar](100) NULL,
	[Amk-tutkinnosta kulunut aika] [nvarchar](100) NULL,
	[Amk-tutkintojen määrä] [nvarchar](100) NULL,
	[Nuorten/aikuisten koulutus (amk)] [nvarchar](250) NULL,
	[Alemman kk-tutk. koulutusala (02)] [nvarchar](255) NOT NULL,
	[Alemman kk-tutk. koulutusala (95)] [nvarchar](255) NOT NULL,
	[Alemman kk-tutk. opintoala] [nvarchar](255) NOT NULL,
	[Alemman kk-tutk. koulutusnimike] [nvarchar](255) NOT NULL,
	[Aik. suoritettu alempi kk-tutkinto] [nvarchar](100) NULL,
	[Alemmasta kk-tutk. kulunut aika] [nvarchar](100) NULL,
	[Alempien kk-tutkintojen määrä] [nvarchar](100) NULL,
	[Ylemmän amk-tutk. koulutusala] [nvarchar](255) NOT NULL,
	[Ylemmän amk-tutk. opintoala] [nvarchar](255) NOT NULL,
	[Ylemmän amk-tutk. koulutusnimike] [nvarchar](255) NOT NULL,
	[Aik. suoritettu ylempi amk-tutkinto] [nvarchar](100) NULL,
	[Ylemmästä amk-tutk. kulunut aika] [nvarchar](100) NULL,
	[Ylemmän kk-tutk. koulutusala (02)] [nvarchar](255) NOT NULL,
	[Ylemmän kk-tutk. koulutusala (95)] [nvarchar](255) NOT NULL,
	[Ylemmän kk-tutk. opintoala] [nvarchar](255) NOT NULL,
	[Ylemmän kk-tutk. koulutusnimike] [nvarchar](255) NOT NULL,
	[Aik. suoritettu ylempi kk-tutkinto] [nvarchar](100) NULL,
	[Ylemmästä kk-tutk. kulunut aika] [nvarchar](100) NULL,
	[Ylempien kk-tutkintojen määrä] [nvarchar](100) NULL,
	[Lääk. erikois.tutk. koulutusnimike] [nvarchar](255) NOT NULL,
	[Aik. suoritettu lääk. erikois.tutk.] [nvarchar](100) NULL,
	[Lääk. erikois.tutk. kulunut aika] [nvarchar](100) NULL,
	[Lisensiaatin tutk. koulutusala (02)] [nvarchar](255) NOT NULL,
	[Lisensiaatin tutk. koulutusala (95)] [nvarchar](255) NOT NULL,
	[Lisensiaatin tutk. opintoala] [nvarchar](255) NOT NULL,
	[Lisensiaatin tutk. koulutusnimike] [nvarchar](255) NOT NULL,
	[Aik. suoritettu lisensiaatin tutk.] [nvarchar](100) NULL,
	[Lisensiaatin tutk. kulunut aika] [nvarchar](100) NULL,
	[Tohtorin tutk. koulutusala (02)] [nvarchar](255) NOT NULL,
	[Tohtorin tutk. koulutusala (95)] [nvarchar](255) NOT NULL,
	[Tohtorin tutk. opintoala] [nvarchar](255) NOT NULL,
	[Tohtorin tutk. koulutusnimike] [nvarchar](255) NOT NULL,
	[Aik. suoritettu tohtorin tutk.] [nvarchar](100) NULL,
	[Tohtorin tutk. kulunut aika] [nvarchar](100) NULL,
	[Aik. suoritettu yliopistotutkinto] [nvarchar](100) NULL,
	[Aik. suoritettu yo-jatkotutkinto] [nvarchar](100) NULL,
	[Aik. suoritettu opistoast. tai amm. kork.ast. tutkinto] [nvarchar](100) NULL,
	[Aik. suoritettu korkeakoulututkinto] [nvarchar](100) NULL,
	[Aik. suoritettu toisen asteen tutkinto] [nvarchar](100) NULL,
	[Aik. suoritettu amm. tutkinto (ryhmä 1)] [nvarchar](100) NULL,
	[Aik. suoritettu amm. tutkinto (ryhmä 2)] [nvarchar](100) NULL,
	[Aik. suoritettu amm. tutkinto (ryhmä 3)] [nvarchar](100) NULL,
	[Yo-tutkinto samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Amm. tutk. samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Opistoast. tutk. samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Amm. ka. tutk. samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Amk-tutkinto samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Alempi kk-tutk. samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Ylempi amk-tutk. samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Ylempi kk-tutk. samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Laak. erik.tutk. samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Lis. tutkinto samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Toht. tutkinto samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Yliopistotutk. samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Yo-jatkotutk. samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Opisto/amm.ka. tutk. samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Korkeak.tutk. samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Toisen asteen tutk. samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Yo-tutkinto samalla op.alalla] [nvarchar](100) NULL,
	[Amm. tutk. samalla op.alalla] [nvarchar](100) NULL,
	[Opistoast. tutk. samalla op.alalla] [nvarchar](100) NULL,
	[Amm. ka. tutk. samalla op.alalla] [nvarchar](100) NULL,
	[Amk-tutkinto samalla op.alalla] [nvarchar](100) NULL,
	[Alempi kk-tutk. samalla op.alalla] [nvarchar](100) NULL,
	[Ylempi amk-tutk. samalla op.alalla] [nvarchar](100) NULL,
	[Ylempi kk-tutk. samalla op.alalla] [nvarchar](100) NULL,
	[Laak. erik.tutk. samalla op.alalla] [nvarchar](100) NULL,
	[Lis. tutkinto samalla op.alalla] [nvarchar](100) NULL,
	[Toht. tutkinto samalla op.alalla] [nvarchar](100) NULL,
	[Yliopistotutk. samalla op.alalla] [nvarchar](100) NULL,
	[Yo-jatkotutk. samalla op.alalla] [nvarchar](100) NULL,
	[Opisto/amm.ka. tutk. samalla op.alalla] [nvarchar](100) NULL,
	[Korkeak.tutk. samalla op.alalla] [nvarchar](100) NULL,
	[Toisen asteen tutk. samalla op.alalla] [nvarchar](100) NULL,
	[Yo-tutkinto samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Amm. tutk. samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Opistoast. tutk. samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Amm. ka. tutk. samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Amk-tutkinto samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Alempi kk-tutk. samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Ylempi amk-tutk. samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Ylempi kk-tutk. samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Laak. erik.tutk. samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Lis. tutkinto samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Toht. tutkinto samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Yliopistotutk. samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Yo-jatkotutk. samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Opisto/amm.ka. tutk. samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Korkeak.tutk. samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Toisen asteen tutk. samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Yo-tutkinto samalla koul.alalla 1] [nvarchar](100) NULL,
	[Amm. tutk. samalla koul.alalla 1] [nvarchar](100) NULL,
	[Opistoast. tutk. samalla koul.alalla 1] [nvarchar](100) NULL,
	[Amm. ka. tutk. samalla koul.alalla 1] [nvarchar](100) NULL,
	[Amk-tutkinto samalla koul.alalla 1] [nvarchar](100) NULL,
	[Alempi kk-tutk. samalla koul.alalla 1] [nvarchar](100) NULL,
	[Ylempi amk-tutk. samalla koul.alalla 1] [nvarchar](100) NULL,
	[Ylempi kk-tutk. samalla koul.alalla 1] [nvarchar](100) NULL,
	[Laak. erik.tutk. samalla koul.alalla 1] [nvarchar](100) NULL,
	[Lis. tutkinto samalla koul.alalla 1] [nvarchar](100) NULL,
	[Toht. tutkinto samalla koul.alalla 1] [nvarchar](100) NULL,
	[Yliopistotutk. samalla koul.alalla 1] [nvarchar](100) NULL,
	[Yo-jatkotutk. samalla koul.alalla 1] [nvarchar](100) NULL,
	[Opisto/amm.ka. tutk. samalla koul.alalla 1] [nvarchar](100) NULL,
	[Korkeak.tutk. samalla koul.alalla 1] [nvarchar](100) NULL,
	[Toisen asteen tutk. samalla koul.alalla 1] [nvarchar](100) NULL,
	[Yo-tutkinto samalla koul.alalla 2] [nvarchar](100) NULL,
	[Amm. tutk. samalla koul.alalla 2] [nvarchar](100) NULL,
	[Opistoast. tutk. samalla koul.alalla 2] [nvarchar](100) NULL,
	[Amm. ka. tutk. samalla koul.alalla 2] [nvarchar](100) NULL,
	[Amk-tutkinto samalla koul.alalla 2] [nvarchar](100) NULL,
	[Alempi kk-tutk. samalla koul.alalla 2] [nvarchar](100) NULL,
	[Ylempi amk-tutk. samalla koul.alalla 2] [nvarchar](100) NULL,
	[Ylempi kk-tutk. samalla koul.alalla 2] [nvarchar](100) NULL,
	[Laak. erik.tutk. samalla koul.alalla 2] [nvarchar](100) NULL,
	[Lis. tutkinto samalla koul.alalla 2] [nvarchar](100) NULL,
	[Toht. tutkinto samalla koul.alalla 2] [nvarchar](100) NULL,
	[Yliopistotutk. samalla koul.alalla 2] [nvarchar](100) NULL,
	[Yo-jatkotutk. samalla koul.alalla 2] [nvarchar](100) NULL,
	[Opisto/amm.ka. tutk. samalla koul.alalla 2] [nvarchar](100) NULL,
	[Korkeak.tutk. samalla koul.alalla 2] [nvarchar](100) NULL,
	[Toisen asteen tutk. samalla koul.alalla 2] [nvarchar](100) NULL,
	[jarj_tarkastelujakso] [nvarchar](100) NULL,
	[jarj_aidinkieli] [nvarchar](50) NULL,
	[jarjestys_koulutusaste2002] [nvarchar](10) NULL,
	[jarjestys_koulutusala2002] [nvarchar](10) NULL,
	[jarjestys_opintoala1995] [nvarchar](10) NULL,
	[jarjestys_opintoala2002] [nvarchar](10) NULL,
	[jarj_koulnimike] [nvarchar](10) NULL,
	[jarj_oppis] [nvarchar](50) NULL,
	[jarj_tutktyyppi] [nvarchar](50) NULL,
	[jarj_jarjtapa] [nvarchar](50) NULL,
	[jarj_nuoretaikuisetamm] [nvarchar](50) NULL,
	[jarj_ika] [nvarchar](50) NULL,
	[jarj_ika5v] [nvarchar](50) NULL,
	[jarj_lukio_koulnimike] [nvarchar](10) NULL,
	[jarj_lukio_aiktutk] [nvarchar](50) NULL,
	[jarj_lukio_kulunutaika] [nvarchar](100) NULL,
	[jarj_lukio_nuoretaikuiset] [nvarchar](50) NULL,
	[jarj_amm_koulala] [nvarchar](10) NULL,
	[jarj_amm_opala] [nvarchar](10) NULL,
	[jarj_amm_koulnimike] [nvarchar](10) NULL,
	[jarj_amm_aiktutk] [nvarchar](50) NULL,
	[jarj_amm_kulunutaika] [nvarchar](100) NULL,
	[jarj_amm_tutktyyppi] [nvarchar](50) NULL,
	[jarj_amm_jarjtapa] [nvarchar](50) NULL,
	[jarj_amm_oppis] [nvarchar](50) NULL,
	[jarj_amm_tutkmaara] [nvarchar](50) NULL,
	[jarj_amm_ryhma] [nvarchar](50) NULL,
	[jarj_opisto_koulala] [nvarchar](10) NULL,
	[jarj_opisto_opala] [nvarchar](10) NULL,
	[jarj_opisto_koulnimike] [nvarchar](10) NULL,
	[jarj_opisto_aiktutk] [nvarchar](50) NULL,
	[jarj_opisto_kulunutaika] [nvarchar](100) NULL,
	[jarj_amm_kork_aste_koulala] [nvarchar](10) NULL,
	[jarj_amm_kork_aste_opala] [nvarchar](10) NULL,
	[jarj_amm_kork_aste_koulnimike] [nvarchar](10) NULL,
	[jarj_amm_kork_aste_aiktutk] [nvarchar](50) NULL,
	[jarj_amm_kork_aste_kulunutaika] [nvarchar](100) NULL,
	[jarj_amk_koulala] [nvarchar](10) NULL,
	[jarj_amk_opala] [nvarchar](10) NULL,
	[jarj_amk_koulnimike] [nvarchar](10) NULL,
	[jarj_amk_aiktutk] [nvarchar](50) NULL,
	[jarj_amk_kulunutaika] [nvarchar](100) NULL,
	[jarj_amk_tutkmaara] [nvarchar](50) NULL,
	[jarj_amk_nuoraik] [nvarchar](50) NULL,
	[jarj_alempi_kk_koulala02] [nvarchar](10) NULL,
	[jarj_alempi_kk_koulala95] [nvarchar](10) NULL,
	[jarj_alempi_kk_opala] [nvarchar](10) NULL,
	[jarj_alempi_kk_koulnimike] [nvarchar](10) NULL,
	[jarj_alempi_kk_aiktutk] [nvarchar](50) NULL,
	[jarj_alempi_kk_kulunutaika] [nvarchar](100) NULL,
	[jarj_alempi_kk_tutkmaara] [nvarchar](50) NULL,
	[jarj_ylempi_amk_koulala] [nvarchar](10) NULL,
	[jarj_ylempi_amk_opala] [nvarchar](10) NULL,
	[jarj_ylempi_amk_koulnimike] [nvarchar](10) NULL,
	[jarj_ylempi_amk_aiktutk] [nvarchar](50) NULL,
	[jarj_ylempi_amk_kulunutaika] [nvarchar](100) NULL,
	[jarj_ylempi_kk_koulala02] [nvarchar](10) NULL,
	[jarj_ylempi_kk_koulala95] [nvarchar](10) NULL,
	[jarj_ylempi_kk_opala] [nvarchar](10) NULL,
	[jarj_ylempi_kk_koulnimike] [nvarchar](10) NULL,
	[jarj_ylempi_kk_aiktutk] [nvarchar](50) NULL,
	[jarj_ylempi_kk_kulunutaika] [nvarchar](100) NULL,
	[jarj_ylempi_kk_tutkmaara] [nvarchar](50) NULL,
	[jarj_laak_erik_koulnimike] [nvarchar](10) NULL,
	[jarj_laak_erik_aiktutk] [nvarchar](50) NULL,
	[jarj_laak_erik_kulunutaika] [nvarchar](100) NULL,
	[jarj_lis_koulala02] [nvarchar](10) NULL,
	[jarj_lis_koulala95] [nvarchar](10) NULL,
	[jarj_lis_opala] [nvarchar](10) NULL,
	[jarj_lis_koulnimike] [nvarchar](10) NULL,
	[jarj_lis_aiktutk] [nvarchar](50) NULL,
	[jarj_lis_kulunutaika] [nvarchar](100) NULL,
	[jarj_toht_koulala02] [nvarchar](10) NULL,
	[jarj_toht_koulala95] [nvarchar](10) NULL,
	[jarj_toht_opala] [nvarchar](10) NULL,
	[jarj_toht_koulnimike] [nvarchar](10) NULL,
	[jarj_toht_aiktutk] [nvarchar](50) NULL,
	[jarj_toht_kulunutaika] [nvarchar](100) NULL,
	[jarj_yliopisto_aiktutk] [nvarchar](50) NULL,
	[jarj_yojatko_aiktutk] [nvarchar](50) NULL,
	[jarj_opist_aiktutk] [nvarchar](50) NULL,
	[jarj_korkeakoulu_aiktutk] [nvarchar](50) NULL,
	[jarj_toinenaste_aiktutk] [nvarchar](50) NULL,
	[jarj_ammryhma1_aiktutk] [nvarchar](50) NULL,
	[jarj_ammryhma2_aiktutk] [nvarchar](50) NULL,
	[jarj_ammryhma3_aiktutk] [nvarchar](50) NULL,
	[jarj_samakoulutusala02_opisto] [nvarchar](10) NULL,
	[jarj_samakoulutusala02_ammka] [nvarchar](10) NULL,
	[jarj_samakoulutusala02_amk] [nvarchar](10) NULL,
	[jarj_samakoulutusala02_alempikk] [nvarchar](10) NULL,
	[jarj_samakoulutusala02_ylempiamk] [nvarchar](10) NULL,
	[jarj_samakoulutusala02_ylempikk] [nvarchar](10) NULL,
	[jarj_samakoulutusala02_laak] [nvarchar](10) NULL,
	[jarj_samakoulutusala02_lis] [nvarchar](10) NULL,
	[jarj_samakoulutusala02_toht] [nvarchar](10) NULL,
	[jarj_samakoulutusala02_yliopisto] [nvarchar](10) NULL,
	[jarj_samakoulutusala02_yojatko] [nvarchar](10) NULL,
	[jarj_samakoulutusala02_opistoammka] [nvarchar](10) NULL,
	[jarj_samakoulutusala02_korkeak] [nvarchar](10) NULL,
	[jarj_samakoulutusala02_toinenaste] [nvarchar](10) NULL,
	[jarj_samaopintoala02_lu] [nvarchar](10) NULL,
	[jarj_samaopintoala02_amm] [nvarchar](10) NULL,
	[jarj_samaopintoala02_opisto] [nvarchar](10) NULL,
	[jarj_samaopintoala02_ammka] [nvarchar](10) NULL,
	[jarj_samaopintoala02_amk] [nvarchar](10) NULL,
	[jarj_samaopintoala02_alempikk] [nvarchar](10) NULL,
	[jarj_samaopintoala02_ylempiamk] [nvarchar](10) NULL,
	[jarj_samaopintoala02_ylempikk] [nvarchar](10) NULL,
	[jarj_samaopintoala02_laak] [nvarchar](10) NULL,
	[jarj_samaopintoala02_lis] [nvarchar](10) NULL,
	[jarj_samaopintoala02_toht] [nvarchar](10) NULL,
	[jarj_samaopintoala02_yliopisto] [nvarchar](10) NULL,
	[jarj_samaopintoala02_yojatko] [nvarchar](10) NULL,
	[jarj_samaopintoala02_opistoammka] [nvarchar](10) NULL,
	[jarj_samaopintoala02_korkeak] [nvarchar](10) NULL,
	[jarj_samaopintoala02_toinenaste] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_lu] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_amm] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_opisto] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_ammka] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_amk] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_alempikk] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_ylempiamk] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_ylempikk] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_laak] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_lis] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_toht] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_yliopisto] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_yojatko] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_opistoammka] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_korkeak] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_toinenaste] [nvarchar](10) NULL,
	[jarj_samaiscbroad_lu] [nvarchar](10) NULL,
	[jarj_samaiscbroad_amm] [nvarchar](10) NULL,
	[jarj_samaiscbroad_opisto] [nvarchar](10) NULL,
	[jarj_samaiscbroad_ammka] [nvarchar](10) NULL,
	[jarj_samaiscbroad_amk] [nvarchar](10) NULL,
	[jarj_samaiscbroad_alempikk] [nvarchar](10) NULL,
	[jarj_samaiscbroad_ylempiamk] [nvarchar](10) NULL,
	[jarj_samaiscbroad_ylempikk] [nvarchar](10) NULL,
	[jarj_samaiscbroad_laak] [nvarchar](10) NULL,
	[jarj_samaiscbroad_lis] [nvarchar](10) NULL,
	[jarj_samaiscbroad_toht] [nvarchar](10) NULL,
	[jarj_samaiscbroad_yliopisto] [nvarchar](10) NULL,
	[jarj_samaiscbroad_yojatko] [nvarchar](10) NULL,
	[jarj_samaiscbroad_opistoammka] [nvarchar](10) NULL,
	[jarj_samaiscbroad_korkeak] [nvarchar](10) NULL,
	[jarj_samaiscbroad_toinenaste] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_lu] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_amm] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_opisto] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_ammka] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_amk] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_alempikk] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_ylempiamk] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_ylempikk] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_laak] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_lis] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_toht] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_yliopisto] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_yojatko] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_opistoammka] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_korkeak] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_toinenaste] [nvarchar](10) NULL,
	[Koodit Koulutusnimike] [nvarchar](6) NOT NULL,
	[Koodit Koulutusaste] [nvarchar](2) NOT NULL,
	[Koodit Koulutusala 02] [nvarchar](2) NOT NULL,
	[Koodit Koulutusala 95] [nvarchar](3) NOT NULL,
	[Koodit Opintoala] [nvarchar](3) NOT NULL,
	[Koodit Yo-tutkinnon koulutusnimike] [nvarchar](6) NOT NULL,
	[Koodit Amm. tutkinnon koulutusala] [nvarchar](2) NOT NULL,
	[Koodit Amm. tutkinnon opintoala] [nvarchar](3) NOT NULL,
	[Koodit Amm. tutkinnon koulutusnimike] [nvarchar](6) NOT NULL,
	[Koodit Opistoast. tutkinnon koulutusala] [nvarchar](2) NOT NULL,
	[Koodit Opistoast. tutkinnon opintoala] [nvarchar](3) NOT NULL,
	[Koodit Opistoast. tutkinnon koulutusnimike] [nvarchar](6) NOT NULL,
	[Koodit Amm. kork.asteen tutk. koulutusala] [nvarchar](2) NOT NULL,
	[Koodit Amm. kork.asteen tutk. opintoala] [nvarchar](3) NOT NULL,
	[Koodit Amm. kork.asteen tutk. koulutusnimike] [nvarchar](6) NOT NULL,
	[Koodit Amk-tutkinnon koulutusala] [nvarchar](2) NOT NULL,
	[Koodit Amk-tutkinnon opintoala] [nvarchar](3) NOT NULL,
	[Koodit Amk-tutkinnon koulutusnimike] [nvarchar](6) NOT NULL,
	[Koodit Alemman kk-tutk. koulutusala 02] [nvarchar](2) NOT NULL,
	[Koodit Alemman kk-tutk. koulutusala 95] [nvarchar](3) NOT NULL,
	[Koodit Alemman kk-tutk. opintoala] [nvarchar](3) NOT NULL,
	[Koodit Alemman kk-tutk. koulutusnimike] [nvarchar](6) NOT NULL,
	[Koodit Ylemmän amk-tutk. koulutusala] [nvarchar](2) NOT NULL,
	[Koodit Ylemmän amk-tutk. opintoala] [nvarchar](3) NOT NULL,
	[Koodit Ylemmän amk-tutk. koulutusnimike] [nvarchar](6) NOT NULL,
	[Koodit Ylemmän kk-tutk. koulutusala 02] [nvarchar](2) NOT NULL,
	[Koodit Ylemmän kk-tutk. koulutusala 95] [nvarchar](3) NOT NULL,
	[Koodit Ylemmän kk-tutk. opintoala] [nvarchar](3) NOT NULL,
	[Koodit Ylemmän kk-tutk. koulutusnimike] [nvarchar](6) NOT NULL,
	[Koodit Lääk. erikois.tutk. koulutusnimike] [nvarchar](6) NOT NULL,
	[Koodit Lisensiaatin tutk. koulutusala 02] [nvarchar](2) NOT NULL,
	[Koodit Lisensiaatin tutk. koulutusala 95] [nvarchar](3) NOT NULL,
	[Koodit Lisensiaatin tutk. opintoala] [nvarchar](3) NOT NULL,
	[Koodit Lisensiaatin tutk. koulutusnimike] [nvarchar](6) NOT NULL,
	[Koodit Tohtorin tutk. koulutusala 02] [nvarchar](2) NOT NULL,
	[Koodit Tohtorin tutk. koulutusala 95] [nvarchar](3) NOT NULL,
	[Koodit Tohtorin tutk. opintoala] [nvarchar](3) NOT NULL,
	[Koodit Tohtorin tutk. koulutusnimike] [nvarchar](6) NOT NULL,
	[rivinumero] [int] NULL,
	[Koulutusaste, taso 1] [nvarchar](255) NOT NULL,
	[Koulutusaste, taso 2] [nvarchar](255) NOT NULL,
	[Koulutusala, taso 1] [nvarchar](255) NOT NULL,
	[Koulutusala, taso 2] [nvarchar](255) NOT NULL,
	[Koulutusala, taso 3] [nvarchar](255) NOT NULL,
	[OKM ohjauksen ala] [nvarchar](255) NOT NULL,
	[jarj_isced_koulast1] [nvarchar](10) NULL,
	[jarj_isced_koulast2] [nvarchar](10) NULL,
	[jarj_isced_koulala1] [nvarchar](10) NULL,
	[jarj_isced_koulala2] [nvarchar](10) NULL,
	[jarj_isced_koulala3] [nvarchar](10) NULL,
	[jarj_isced_okmohjaus1] [nvarchar](10) NULL,
	[Koodit Koulutusaste, taso 1] [nvarchar](10) NOT NULL,
	[Koodit Koulutusaste, taso 2] [nvarchar](10) NOT NULL,
	[Koodit Koulutusala, taso 1] [nvarchar](10) NOT NULL,
	[Koodit Koulutusala, taso 2] [nvarchar](10) NOT NULL,
	[Koodit Koulutusala, taso 3] [nvarchar](10) NOT NULL,
	[Koodit OKM ohjauksen ala] [nvarchar](10) NOT NULL,
	[Yo-tutkinnon koulutusala 3] [nvarchar](255) NOT NULL,
	[Amm. tutkinnon koulutusala 1] [nvarchar](255) NOT NULL,
	[Amm. tutkinnon koulutusala 2] [nvarchar](255) NOT NULL,
	[Amm. tutkinnon koulutusala 3] [nvarchar](255) NOT NULL,
	[Opistoast. tutkinnon koulutusala 1] [nvarchar](255) NOT NULL,
	[Opistoast. tutkinnon koulutusala 2] [nvarchar](255) NOT NULL,
	[Opistoast. tutkinnon koulutusala 3] [nvarchar](255) NOT NULL,
	[Amm. kork.asteen tutk. koulutusala 1] [nvarchar](255) NOT NULL,
	[Amm. kork.asteen tutk. koulutusala 2] [nvarchar](255) NOT NULL,
	[Amm. kork.asteen tutk. koulutusala 3] [nvarchar](255) NOT NULL,
	[Amk-tutkinnon koulutusala 1] [nvarchar](255) NOT NULL,
	[Amk-tutkinnon OKM ohjauksen ala] [nvarchar](255) NOT NULL,
	[Amk-tutkinnon koulutusala 2] [nvarchar](255) NOT NULL,
	[Amk-tutkinnon koulutusala 3] [nvarchar](255) NOT NULL,
	[Alemman kk-tutk. koulutusala 1] [nvarchar](255) NOT NULL,
	[Alemman kk-tutk. OKM ohjauksen ala] [nvarchar](255) NOT NULL,
	[Alemman kk-tutk. koulutusala 2] [nvarchar](255) NOT NULL,
	[Alemman kk-tutk. koulutusala 3] [nvarchar](255) NOT NULL,
	[Ylemmän amk-tutk. koulutusala 1] [nvarchar](255) NOT NULL,
	[Ylemmän amk-tutk. OKM ohjauksen ala] [nvarchar](255) NOT NULL,
	[Ylemmän amk-tutk. koulutusala 2] [nvarchar](255) NOT NULL,
	[Ylemmän amk-tutk. koulutusala 3] [nvarchar](255) NOT NULL,
	[Ylemmän kk-tutk. koulutusala 1] [nvarchar](255) NOT NULL,
	[Ylemmän kk-tutk. OKM ohjauksen ala] [nvarchar](255) NOT NULL,
	[Ylemmän kk-tutk. koulutusala 2] [nvarchar](255) NOT NULL,
	[Ylemmän kk-tutk. koulutusala 3] [nvarchar](255) NOT NULL,
	[Lääk. erikois.tutk. koulutusala 3] [nvarchar](255) NOT NULL,
	[Lisensiaatin tutk. koulutusala 1] [nvarchar](255) NOT NULL,
	[Lisensiaatin tutk. OKM ohjauksen ala] [nvarchar](255) NOT NULL,
	[Lisensiaatin tutk. koulutusala 2] [nvarchar](255) NOT NULL,
	[Lisensiaatin tutk. koulutusala 3] [nvarchar](255) NOT NULL,
	[Tohtorin tutk. koulutusala 1] [nvarchar](255) NOT NULL,
	[Tohtorin tutk. OKM ohjauksen ala] [nvarchar](255) NOT NULL,
	[Tohtorin tutk. koulutusala 2] [nvarchar](255) NOT NULL,
	[Tohtorin tutk. koulutusala 3] [nvarchar](255) NOT NULL,
	[jarj_lukio_iscfi2013] [nvarchar](10) NULL,
	[jarj_amm_iscfibroad2013] [nvarchar](10) NULL,
	[jarj_amm_iscfinarrow2013] [nvarchar](10) NULL,
	[jarj_amm_iscfi2013] [nvarchar](10) NULL,
	[jarj_opisto_iscfibroad2013] [nvarchar](10) NULL,
	[jarj_opisto_iscfinarrow2013] [nvarchar](10) NULL,
	[jarj_opisto_iscfi2013] [nvarchar](10) NULL,
	[jarj_amm_kork_aste_iscfibroad2013] [nvarchar](10) NULL,
	[jarj_amm_kork_aste_iscfinarrow2013] [nvarchar](10) NULL,
	[jarj_amm_kork_aste_iscfi2013] [nvarchar](10) NULL,
	[jarj_amk_iscfibroad2013] [nvarchar](10) NULL,
	[jarj_amk_OKM_ohjauksen_ala] [nvarchar](10) NULL,
	[jarj_amk_iscfinarrow2013] [nvarchar](10) NULL,
	[jarj_amk_iscfi2013] [nvarchar](10) NULL,
	[jarj_alempi_kk_iscfibroad2013] [nvarchar](10) NULL,
	[jarj_alempi_kk_OKM_ohjauksen_ala] [nvarchar](10) NULL,
	[jarj_alempi_kk_iscfinarrow2013] [nvarchar](10) NULL,
	[jarj_alempi_kk_iscfi2013] [nvarchar](10) NULL,
	[jarj_ylempi_amk_iscfibroad2013] [nvarchar](10) NULL,
	[jarj_ylempi_amk_OKM_ohjauksen_ala] [nvarchar](10) NULL,
	[jarj_ylempi_amk_iscfinarrow2013] [nvarchar](10) NULL,
	[jarj_ylempi_amk_iscfi2013] [nvarchar](10) NULL,
	[jarj_ylempi_kk_iscfibroad2013] [nvarchar](10) NULL,
	[jarj_ylempi_kk_OKM_ohjauksen_ala] [nvarchar](10) NULL,
	[jarj_ylempi_kk_iscfinarrow2013] [nvarchar](10) NULL,
	[jarj_ylempi_kk_iscfi2013] [nvarchar](10) NULL,
	[jarj_laak_erik_iscfi2013] [nvarchar](10) NULL,
	[jarj_lis_iscfibroad2013] [nvarchar](10) NULL,
	[jarj_lis_OKM_ohjauksen_ala] [nvarchar](10) NULL,
	[jarj_lis_iscfinarrow2013] [nvarchar](10) NULL,
	[jarj_lis_iscfi2013] [nvarchar](10) NULL,
	[jarj_toht_iscfibroad2013] [nvarchar](10) NULL,
	[jarj_toht_OKM_ohjauksen_ala] [nvarchar](10) NULL,
	[jarj_toht_iscfinarrow2013] [nvarchar](10) NULL,
	[jarj_toht_iscfi2013] [nvarchar](10) NULL,
	[Koodit Yo-tutkinnon koulutusala 3] [nvarchar](10) NOT NULL,
	[Koodit Amm. tutkinnon koulutusala 1] [nvarchar](10) NOT NULL,
	[Koodit Amm. tutkinnon koulutusala 2] [nvarchar](10) NOT NULL,
	[Koodit Amm. tutkinnon koulutusala 3] [nvarchar](10) NOT NULL,
	[Koodit Opistoast. tutkinnon koulutusala 1] [nvarchar](10) NOT NULL,
	[Koodit Opistoast. tutkinnon koulutusala 2] [nvarchar](10) NOT NULL,
	[Koodit Opistoast. tutkinnon koulutusala 3] [nvarchar](10) NOT NULL,
	[Koodit Amm. kork.asteen tutk. koulutusala 1] [nvarchar](10) NOT NULL,
	[Koodit Amm. kork.asteen tutk. koulutusala 2] [nvarchar](10) NOT NULL,
	[Koodit Amm. kork.asteen tutk. koulutusala 3] [nvarchar](10) NOT NULL,
	[Koodit Amk-tutkinnon koulutusala 1] [nvarchar](10) NOT NULL,
	[Koodit Amk-tutkinnon OKM ohjauksen ala] [nvarchar](10) NOT NULL,
	[Koodit Amk-tutkinnon koulutusala 2] [nvarchar](10) NOT NULL,
	[Koodit Amk-tutkinnon koulutusala 3] [nvarchar](10) NOT NULL,
	[Koodit Alemman kk-tutk. koulutusala 1] [nvarchar](10) NOT NULL,
	[Koodit Alemman kk-tutk. OKM ohjauksen ala] [nvarchar](10) NOT NULL,
	[Koodit Alemman kk-tutk. koulutusala 2] [nvarchar](10) NOT NULL,
	[Koodit Alemman kk-tutk. koulutusala 3] [nvarchar](10) NOT NULL,
	[Koodit Ylemmän amk-tutk. koulutusala 1] [nvarchar](10) NOT NULL,
	[Koodit Ylemmän amk-tutk. OKM ohjauksen ala] [nvarchar](10) NOT NULL,
	[Koodit Ylemmän amk-tutk. koulutusala 2] [nvarchar](10) NOT NULL,
	[Koodit Ylemmän amk-tutk. koulutusala 3] [nvarchar](10) NOT NULL,
	[Koodit Ylemmän kk-tutk. koulutusala 1] [nvarchar](10) NOT NULL,
	[Koodit Ylemmän kk-tutk. OKM ohjauksen ala] [nvarchar](10) NOT NULL,
	[Koodit Ylemmän kk-tutk. koulutusala 2] [nvarchar](10) NOT NULL,
	[Koodit Ylemmän kk-tutk. koulutusala 3] [nvarchar](10) NOT NULL,
	[Koodit Lääk. erikois.tutk. koulutusala 3] [nvarchar](10) NOT NULL,
	[Koodit Lisensiaatin tutk. koulutusala 1] [nvarchar](10) NOT NULL,
	[Koodit Lisensiaatin tutk. OKM ohjauksen ala] [nvarchar](10) NOT NULL,
	[Koodit Lisensiaatin tutk. koulutusala 2] [nvarchar](10) NOT NULL,
	[Koodit Lisensiaatin tutk. koulutusala 3] [nvarchar](10) NOT NULL,
	[Koodit Tohtorin tutk. koulutusala 1] [nvarchar](10) NOT NULL,
	[Koodit Tohtorin tutk. OKM ohjauksen ala] [nvarchar](10) NOT NULL,
	[Koodit Tohtorin tutk. koulutusala 2] [nvarchar](10) NOT NULL,
	[Koodit Tohtorin tutk. koulutusala 3] [nvarchar](10) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_tab_tutkinnon_suorittaneiden_myohempi_koulutus_4_8_yhteiset]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_tab_tutkinnon_suorittaneiden_myohempi_koulutus_4_8_yhteiset]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_tab_tutkinnon_suorittaneiden_myohempi_koulutus_4_8_yhteiset](
	[henkiloiden_lkm] [int] NULL,
	[lu_henkiloiden_lkm] [int] NULL,
	[amm_henkiloiden_lkm] [int] NULL,
	[opist_henkiloiden_lkm] [int] NULL,
	[ammka_henkiloiden_lkm] [int] NULL,
	[amk_henkiloiden_lkm] [int] NULL,
	[akk_henkiloiden_lkm] [int] NULL,
	[ylamklkm_henkiloiden_lkm] [int] NULL,
	[ykk_henkiloiden_lkm] [int] NULL,
	[laaker_henkiloiden_lkm] [int] NULL,
	[lis_henkiloiden_lkm] [int] NULL,
	[toht_henkiloiden_lkm] [int] NULL,
	[myoh_yliop_lkm] [int] NULL,
	[myoh_yo_jatko_lkm] [int] NULL,
	[myoh_opisto_ammkork_lkm] [int] NULL,
	[myoh_kork_lkm] [int] NULL,
	[myoh_toinenaste_lkm] [int] NULL,
	[myoh_ammryhma1_lkm] [int] NULL,
	[myoh_ammryhma2_lkm] [int] NULL,
	[myoh_ammryhma3_lkm] [int] NULL,
	[Tilastovuosi] [nvarchar](4) NULL,
	[Tarkastelujakso] [nvarchar](100) NULL,
	[Äidinkieli] [nvarchar](50) NULL,
	[Koulutusaste] [nvarchar](255) NOT NULL,
	[Koulutusala (02 luokitus)] [nvarchar](255) NOT NULL,
	[Koulutusala (95 luokitus)] [nvarchar](255) NOT NULL,
	[Opintoala] [nvarchar](255) NOT NULL,
	[Koulutusnimike] [nvarchar](255) NOT NULL,
	[Sukupuoli] [nvarchar](250) NULL,
	[Tutkinnon suoritusvuosi] [varchar](4) NOT NULL,
	[Tutkinnon suorituslukukausi] [nvarchar](20) NULL,
	[Aloitusvuosi] [varchar](4) NOT NULL,
	[Aloituslukukausi] [nvarchar](20) NULL,
	[Syntymävuosi] [varchar](4) NULL,
	[Yo-tutkinnon suoritusvuosi] [varchar](4) NOT NULL,
	[Amm. tutkinnon suoritusvuosi] [varchar](4) NOT NULL,
	[Opistoast. tutkinnon suoritusvuosi] [varchar](4) NOT NULL,
	[Amm. kork.asteen tutk. suoritusvuosi] [varchar](4) NOT NULL,
	[Amk-tutkinnon suoritusvuosi] [varchar](4) NOT NULL,
	[Alemman kk-tutk. suoritusvuosi] [varchar](4) NOT NULL,
	[Ylemmän amk-tutk. suoritusvuosi] [varchar](4) NOT NULL,
	[Ylemmän kk-tutk. suoritusvuosi] [varchar](4) NOT NULL,
	[Lääk. erikois.tutk. suoritusvuosi] [varchar](4) NOT NULL,
	[Lisensiaatin tutk. suoritusvuosi] [varchar](4) NOT NULL,
	[Tohtorin tutk. suorituvuosi] [varchar](4) NOT NULL,
	[Oppisopimuskoulutus] [nvarchar](50) NULL,
	[Tutkintotyyppi] [nvarchar](50) NULL,
	[Järjestämistapa] [nvarchar](50) NULL,
	[Nuorten/aikuisten koulutus] [nvarchar](50) NULL,
	[Ikä] [nvarchar](50) NULL,
	[Ikäryhmä] [nvarchar](50) NULL,
	[Yo-tutkinnon koulutusnimike] [nvarchar](255) NOT NULL,
	[Myöh. suoritettu yo-tutkinto] [nvarchar](100) NULL,
	[Kulunut aika alkup. tutkinnosta (yo)] [nvarchar](100) NULL,
	[Nuorten/aikuisten koulutus (yo)] [nvarchar](50) NULL,
	[Amm. tutkinnon koulutusala] [nvarchar](255) NOT NULL,
	[Amm. tutkinnon opintoala] [nvarchar](255) NOT NULL,
	[Amm. tutkinnon koulutusnimike] [nvarchar](255) NOT NULL,
	[Myöh. suoritettu amm. tutkinto] [nvarchar](100) NULL,
	[Kulunut aika alkup. tutkinnosta (amm)] [nvarchar](100) NULL,
	[Amm. tutkinnon tutkintotyyppi] [nvarchar](50) NULL,
	[Amm. tutkinnon järjestämistapa] [nvarchar](50) NULL,
	[Amm. tutkinto oppisopimuskoul.] [nvarchar](50) NULL,
	[Amm. tutkintojen määrä] [nvarchar](100) NULL,
	[Amm. koulutuksen ryhmät] [nvarchar](100) NULL,
	[Opistoast. tutkinnon koulutusala] [nvarchar](255) NOT NULL,
	[Opistoast. tutkinnon opintoala] [nvarchar](255) NOT NULL,
	[Opistoast. tutkinnon koulutusnimike] [nvarchar](255) NOT NULL,
	[Myöh. suoritettu opistoast. tutkinto] [nvarchar](100) NULL,
	[Kulunut aika alkup. tutkinnosta (opisto)] [nvarchar](100) NULL,
	[Amm. kork.asteen tutk. koulutusala] [nvarchar](255) NOT NULL,
	[Amm. kork.asteen tutk. opintoala] [nvarchar](255) NOT NULL,
	[Amm. kork.asteen tutk. koulutusnimike] [nvarchar](255) NOT NULL,
	[Myöh. suoritettu amm. kork.asteen tutkinto] [nvarchar](100) NULL,
	[Kulunut aika alkup. tutkinnosta (ammka)] [nvarchar](100) NULL,
	[Amk-tutkinnon koulutusala] [nvarchar](255) NOT NULL,
	[Amk-tutkinnon opintoala] [nvarchar](255) NOT NULL,
	[Amk-tutkinnon koulutusnimike] [nvarchar](255) NOT NULL,
	[Myöh. suoritettu amk-tutkinto] [nvarchar](100) NULL,
	[Kulunut aika alkup. tutkinnosta (amk)] [nvarchar](100) NULL,
	[Amk-tutkintojen määrä] [nvarchar](100) NULL,
	[Nuorten/aikuisten koulutus (amk)] [nvarchar](250) NULL,
	[Alemman kk-tutk. koulutusala (02)] [nvarchar](255) NOT NULL,
	[Alemman kk-tutk. koulutusala (95)] [nvarchar](255) NOT NULL,
	[Alemman kk-tutk. opintoala] [nvarchar](255) NOT NULL,
	[Alemman kk-tutk. koulutusnimike] [nvarchar](255) NOT NULL,
	[Myöh. suoritettu alempi kk-tutkinto] [nvarchar](100) NULL,
	[Kulunut aika alkup. tutkinnosta (alempi kk)] [nvarchar](100) NULL,
	[Alempien kk-tutkintojen määrä] [nvarchar](100) NULL,
	[Ylemmän amk-tutk. koulutusala] [nvarchar](255) NOT NULL,
	[Ylemmän amk-tutk. opintoala] [nvarchar](255) NOT NULL,
	[Ylemmän amk-tutk. koulutusnimike] [nvarchar](255) NOT NULL,
	[Myöh. suoritettu ylempi amk-tutkinto] [nvarchar](100) NULL,
	[Kulunut aika alkup. tutkinnosta (ylempi amk)] [nvarchar](100) NULL,
	[Ylemmän kk-tutk. koulutusala (02)] [nvarchar](255) NOT NULL,
	[Ylemmän kk-tutk. koulutusala (95)] [nvarchar](255) NOT NULL,
	[Ylemmän kk-tutk. opintoala] [nvarchar](255) NOT NULL,
	[Ylemmän kk-tutk. koulutusnimike] [nvarchar](255) NOT NULL,
	[Myöh. suoritettu ylempi kk-tutkinto] [nvarchar](100) NULL,
	[Kulunut aika alkup. tutkinnosta (ylempi kk)] [nvarchar](100) NULL,
	[Ylempien kk-tutkintojen määrä] [nvarchar](100) NULL,
	[Lääk. erikois.tutk. koulutusnimike] [nvarchar](255) NOT NULL,
	[Myöh. suoritettu lääk. erikois.tutk.] [nvarchar](100) NULL,
	[Kulunut aika alkup. tutkinnosta (lääk. erik.)] [nvarchar](100) NULL,
	[Lisensiaatin tutk. koulutusala (02)] [nvarchar](255) NOT NULL,
	[Lisensiaatin tutk. koulutusala (95)] [nvarchar](255) NOT NULL,
	[Lisensiaatin tutk. opintoala] [nvarchar](255) NOT NULL,
	[Lisensiaatin tutk. koulutusnimike] [nvarchar](255) NOT NULL,
	[Myöh. suoritettu lisensiaatin tutk.] [nvarchar](100) NULL,
	[Kulunut aika alkup. tutkinnosta (lis.)] [nvarchar](100) NULL,
	[Tohtorin tutk. koulutusala (02)] [nvarchar](255) NOT NULL,
	[Tohtorin tutk. koulutusala (95)] [nvarchar](255) NOT NULL,
	[Tohtorin tutk. opintoala] [nvarchar](255) NOT NULL,
	[Tohtorin tutk. koulutusnimike] [nvarchar](255) NOT NULL,
	[Myöh. suoritettu tohtorin tutk.] [nvarchar](100) NULL,
	[Kulunut aika alkup. tutkinnosta (toht.)] [nvarchar](100) NULL,
	[Myöh. suoritettu yliopistotutkinto] [nvarchar](100) NULL,
	[Myöh. suoritettu yo-jatkotutkinto] [nvarchar](100) NULL,
	[Myöh. suoritettu opistoast. tai amm. kork.ast. tutkinto] [nvarchar](100) NULL,
	[Myöh. suoritettu korkeakoulututkinto] [nvarchar](100) NULL,
	[Myöh. suoritettu toisen asteen tutkinto] [nvarchar](100) NULL,
	[Myöh. suoritettu amm. tutkinto (ryhmä 1)] [nvarchar](100) NULL,
	[Myöh. suoritettu amm. tutkinto (ryhmä 2)] [nvarchar](100) NULL,
	[Myöh. suoritettu amm. tutkinto (ryhmä 3)] [nvarchar](100) NULL,
	[Yo-tutkinto samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Amm. tutk. samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Opistoast. tutk. samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Amm. ka. tutk. samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Amk-tutkinto samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Alempi kk-tutk. samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Ylempi amk-tutk. samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Ylempi kk-tutk. samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Laak. erik.tutk. samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Lis. tutkinto samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Toht. tutkinto samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Yliopistotutk. samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Yo-jatkotutk. samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Opisto/amm.ka. tutk. samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Korkeak.tutk. samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Toisen asteen tutk. samalla koul.alalla (02)] [nvarchar](100) NULL,
	[Yo-tutkinto samalla op.alalla] [nvarchar](100) NULL,
	[Amm. tutk. samalla op.alalla] [nvarchar](100) NULL,
	[Opistoast. tutk. samalla op.alalla] [nvarchar](100) NULL,
	[Amm. ka. tutk. samalla op.alalla] [nvarchar](100) NULL,
	[Amk-tutkinto samalla op.alalla] [nvarchar](100) NULL,
	[Alempi kk-tutk. samalla op.alalla] [nvarchar](100) NULL,
	[Ylempi amk-tutk. samalla op.alalla] [nvarchar](100) NULL,
	[Ylempi kk-tutk. samalla op.alalla] [nvarchar](100) NULL,
	[Laak. erik.tutk. samalla op.alalla] [nvarchar](100) NULL,
	[Lis. tutkinto samalla op.alalla] [nvarchar](100) NULL,
	[Toht. tutkinto samalla op.alalla] [nvarchar](100) NULL,
	[Yliopistotutk. samalla op.alalla] [nvarchar](100) NULL,
	[Yo-jatkotutk. samalla op.alalla] [nvarchar](100) NULL,
	[Opisto/amm.ka. tutk. samalla op.alalla] [nvarchar](100) NULL,
	[Korkeak.tutk. samalla op.alalla] [nvarchar](100) NULL,
	[Toisen asteen tutk. samalla op.alalla] [nvarchar](100) NULL,
	[Yo-tutkinto samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Amm. tutk. samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Opistoast. tutk. samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Amm. ka. tutk. samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Amk-tutkinto samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Alempi kk-tutk. samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Ylempi amk-tutk. samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Ylempi kk-tutk. samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Laak. erik.tutk. samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Lis. tutkinto samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Toht. tutkinto samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Yliopistotutk. samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Yo-jatkotutk. samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Opisto/amm.ka. tutk. samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Korkeak.tutk. samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Toisen asteen tutk. samalla koul.alalla (95)] [nvarchar](100) NULL,
	[Yo-tutkinto samalla koul.alalla 1] [nvarchar](100) NULL,
	[Amm. tutk. samalla koul.alalla 1] [nvarchar](100) NULL,
	[Opistoast. tutk. samalla koul.alalla 1] [nvarchar](100) NULL,
	[Amm. ka. tutk. samalla koul.alalla 1] [nvarchar](100) NULL,
	[Amk-tutkinto samalla koul.alalla 1] [nvarchar](100) NULL,
	[Alempi kk-tutk. samalla koul.alalla 1] [nvarchar](100) NULL,
	[Ylempi amk-tutk. samalla koul.alalla 1] [nvarchar](100) NULL,
	[Ylempi kk-tutk. samalla koul.alalla 1] [nvarchar](100) NULL,
	[Laak. erik.tutk. samalla koul.alalla 1] [nvarchar](100) NULL,
	[Lis. tutkinto samalla koul.alalla 1] [nvarchar](100) NULL,
	[Toht. tutkinto samalla koul.alalla 1] [nvarchar](100) NULL,
	[Yliopistotutk. samalla koul.alalla 1] [nvarchar](100) NULL,
	[Yo-jatkotutk. samalla koul.alalla 1] [nvarchar](100) NULL,
	[Opisto/amm.ka. tutk. samalla koul.alalla 1] [nvarchar](100) NULL,
	[Korkeak.tutk. samalla koul.alalla 1] [nvarchar](100) NULL,
	[Toisen asteen tutk. samalla koul.alalla 1] [nvarchar](100) NULL,
	[Yo-tutkinto samalla koul.alalla 2] [nvarchar](100) NULL,
	[Amm. tutk. samalla koul.alalla 2] [nvarchar](100) NULL,
	[Opistoast. tutk. samalla koul.alalla 2] [nvarchar](100) NULL,
	[Amm. ka. tutk. samalla koul.alalla 2] [nvarchar](100) NULL,
	[Amk-tutkinto samalla koul.alalla 2] [nvarchar](100) NULL,
	[Alempi kk-tutk. samalla koul.alalla 2] [nvarchar](100) NULL,
	[Ylempi amk-tutk. samalla koul.alalla 2] [nvarchar](100) NULL,
	[Ylempi kk-tutk. samalla koul.alalla 2] [nvarchar](100) NULL,
	[Laak. erik.tutk. samalla koul.alalla 2] [nvarchar](100) NULL,
	[Lis. tutkinto samalla koul.alalla 2] [nvarchar](100) NULL,
	[Toht. tutkinto samalla koul.alalla 2] [nvarchar](100) NULL,
	[Yliopistotutk. samalla koul.alalla 2] [nvarchar](100) NULL,
	[Yo-jatkotutk. samalla koul.alalla 2] [nvarchar](100) NULL,
	[Opisto/amm.ka. tutk. samalla koul.alalla 2] [nvarchar](100) NULL,
	[Korkeak.tutk. samalla koul.alalla 2] [nvarchar](100) NULL,
	[Toisen asteen tutk. samalla koul.alalla 2] [nvarchar](100) NULL,
	[jarj_tarkastelujakso] [nvarchar](100) NULL,
	[jarj_aidinkieli] [nvarchar](50) NULL,
	[jarjestys_koulutusaste2002] [nvarchar](10) NULL,
	[jarjestys_koulutusala2002] [nvarchar](10) NULL,
	[jarjestys_opintoala1995] [nvarchar](10) NULL,
	[jarjestys_opintoala2002] [nvarchar](10) NULL,
	[jarj_koulnimike] [nvarchar](10) NULL,
	[jarj_oppis] [nvarchar](50) NULL,
	[jarj_tutktyyppi] [nvarchar](50) NULL,
	[jarj_jarjtapa] [nvarchar](50) NULL,
	[jarj_nuoretaikuisetamm] [nvarchar](50) NULL,
	[jarj_ika] [nvarchar](50) NULL,
	[jarj_ika5v] [nvarchar](50) NULL,
	[jarj_lukio_koulnimike] [nvarchar](10) NULL,
	[jarj_lukio_myohtutk] [nvarchar](50) NULL,
	[jarj_lukio_kulunutaika] [nvarchar](100) NULL,
	[jarj_lukio_nuoretaikuiset] [nvarchar](50) NULL,
	[jarj_amm_koulala] [nvarchar](10) NULL,
	[jarj_amm_opala] [nvarchar](10) NULL,
	[jarj_amm_koulnimike] [nvarchar](10) NULL,
	[jarj_amm_myohtutk] [nvarchar](50) NULL,
	[jarj_amm_kulunutaika] [nvarchar](100) NULL,
	[jarj_amm_tutktyyppi] [nvarchar](50) NULL,
	[jarj_amm_jarjtapa] [nvarchar](50) NULL,
	[jarj_amm_oppis] [nvarchar](50) NULL,
	[jarj_amm_tutkmaara] [nvarchar](50) NULL,
	[jarj_amm_ryhma] [nvarchar](50) NULL,
	[jarj_opisto_koulala] [nvarchar](10) NULL,
	[jarj_opisto_opala] [nvarchar](10) NULL,
	[jarj_opisto_koulnimike] [nvarchar](10) NULL,
	[jarj_opisto_myohtutk] [nvarchar](50) NULL,
	[jarj_opisto_kulunutaika] [nvarchar](100) NULL,
	[jarj_amm_kork_aste_koulala] [nvarchar](10) NULL,
	[jarj_amm_kork_aste_opala] [nvarchar](10) NULL,
	[jarj_amm_kork_aste_koulnimike] [nvarchar](10) NULL,
	[jarj_amm_kork_aste_myohtutk] [nvarchar](50) NULL,
	[jarj_amm_kork_aste_kulunutaika] [nvarchar](100) NULL,
	[jarj_amk_koulala] [nvarchar](10) NULL,
	[jarj_amk_opala] [nvarchar](10) NULL,
	[jarj_amk_koulnimike] [nvarchar](10) NULL,
	[jarj_amk_myohtutk] [nvarchar](50) NULL,
	[jarj_amk_kulunutaika] [nvarchar](100) NULL,
	[jarj_amk_tutkmaara] [nvarchar](50) NULL,
	[jarj_amk_nuoraik] [nvarchar](50) NULL,
	[jarj_alempi_kk_koulala02] [nvarchar](10) NULL,
	[jarj_alempi_kk_koulala95] [nvarchar](10) NULL,
	[jarj_alempi_kk_opala] [nvarchar](10) NULL,
	[jarj_alempi_kk_koulnimike] [nvarchar](10) NULL,
	[jarj_alempi_kk_myohtutk] [nvarchar](50) NULL,
	[jarj_alempi_kk_kulunutaika] [nvarchar](100) NULL,
	[jarj_alempi_kk_tutkmaara] [nvarchar](50) NULL,
	[jarj_ylempi_amk_koulala] [nvarchar](10) NULL,
	[jarj_ylempi_amk_opala] [nvarchar](10) NULL,
	[jarj_ylempi_amk_koulnimike] [nvarchar](10) NULL,
	[jarj_ylempi_amk_myohtutk] [nvarchar](50) NULL,
	[jarj_ylempi_amk_kulunutaika] [nvarchar](100) NULL,
	[jarj_ylempi_kk_koulala02] [nvarchar](10) NULL,
	[jarj_ylempi_kk_koulala95] [nvarchar](10) NULL,
	[jarj_ylempi_kk_opala] [nvarchar](10) NULL,
	[jarj_ylempi_kk_koulnimike] [nvarchar](10) NULL,
	[jarj_ylempi_kk_myohtutk] [nvarchar](50) NULL,
	[jarj_ylempi_kk_kulunutaika] [nvarchar](100) NULL,
	[jarj_ylempi_kk_tutkmaara] [nvarchar](50) NULL,
	[jarj_laak_erik_koulnimike] [nvarchar](10) NULL,
	[jarj_laak_erik_myohtutk] [nvarchar](50) NULL,
	[jarj_laak_erik_kulunutaika] [nvarchar](100) NULL,
	[jarj_lis_koulala02] [nvarchar](10) NULL,
	[jarj_lis_koulala95] [nvarchar](10) NULL,
	[jarj_lis_opala] [nvarchar](10) NULL,
	[jarj_lis_koulnimike] [nvarchar](10) NULL,
	[jarj_lis_myohtutk] [nvarchar](50) NULL,
	[jarj_lis_kulunutaika] [nvarchar](100) NULL,
	[jarj_toht_koulala02] [nvarchar](10) NULL,
	[jarj_toht_koulala95] [nvarchar](10) NULL,
	[jarj_toht_opala] [nvarchar](10) NULL,
	[jarj_toht_koulnimike] [nvarchar](10) NULL,
	[jarj_toht_myohtutk] [nvarchar](50) NULL,
	[jarj_toht_kulunutaika] [nvarchar](100) NULL,
	[jarj_yliopisto_myohtutk] [nvarchar](50) NULL,
	[jarj_yojatko_myohtutk] [nvarchar](50) NULL,
	[jarj_opist_myohtutk] [nvarchar](50) NULL,
	[jarj_korkeakoulu_myohtutk] [nvarchar](50) NULL,
	[jarj_toinenaste_myohtutk] [nvarchar](50) NULL,
	[jarj_ammryhma1_myohtutk] [nvarchar](50) NULL,
	[jarj_ammryhma2_myohtutk] [nvarchar](50) NULL,
	[jarj_ammryhma3_myohtutk] [nvarchar](50) NULL,
	[jarj_samakoulutusala02_opisto] [nvarchar](10) NULL,
	[jarj_samakoulutusala02_ammka] [nvarchar](10) NULL,
	[jarj_samakoulutusala02_amk] [nvarchar](10) NULL,
	[jarj_samakoulutusala02_alempikk] [nvarchar](10) NULL,
	[jarj_samakoulutusala02_ylempiamk] [nvarchar](10) NULL,
	[jarj_samakoulutusala02_ylempikk] [nvarchar](10) NULL,
	[jarj_samakoulutusala02_laak] [nvarchar](10) NULL,
	[jarj_samakoulutusala02_lis] [nvarchar](10) NULL,
	[jarj_samakoulutusala02_toht] [nvarchar](10) NULL,
	[jarj_samakoulutusala02_yliopisto] [nvarchar](10) NULL,
	[jarj_samakoulutusala02_yojatko] [nvarchar](10) NULL,
	[jarj_samakoulutusala02_opistoammka] [nvarchar](10) NULL,
	[jarj_samakoulutusala02_korkeak] [nvarchar](10) NULL,
	[jarj_samakoulutusala02_toinenaste] [nvarchar](10) NULL,
	[jarj_samaopintoala02_lu] [nvarchar](10) NULL,
	[jarj_samaopintoala02_amm] [nvarchar](10) NULL,
	[jarj_samaopintoala02_opisto] [nvarchar](10) NULL,
	[jarj_samaopintoala02_ammka] [nvarchar](10) NULL,
	[jarj_samaopintoala02_amk] [nvarchar](10) NULL,
	[jarj_samaopintoala02_alempikk] [nvarchar](10) NULL,
	[jarj_samaopintoala02_ylempiamk] [nvarchar](10) NULL,
	[jarj_samaopintoala02_ylempikk] [nvarchar](10) NULL,
	[jarj_samaopintoala02_laak] [nvarchar](10) NULL,
	[jarj_samaopintoala02_lis] [nvarchar](10) NULL,
	[jarj_samaopintoala02_toht] [nvarchar](10) NULL,
	[jarj_samaopintoala02_yliopisto] [nvarchar](10) NULL,
	[jarj_samaopintoala02_yojatko] [nvarchar](10) NULL,
	[jarj_samaopintoala02_opistoammka] [nvarchar](10) NULL,
	[jarj_samaopintoala02_korkeak] [nvarchar](10) NULL,
	[jarj_samaopintoala02_toinenaste] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_lu] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_amm] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_opisto] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_ammka] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_amk] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_alempikk] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_ylempiamk] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_ylempikk] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_laak] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_lis] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_toht] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_yliopisto] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_yojatko] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_opistoammka] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_korkeak] [nvarchar](10) NULL,
	[jarj_samakoulutusala95_toinenaste] [nvarchar](10) NULL,
	[jarj_samaiscbroad_lu] [nvarchar](10) NULL,
	[jarj_samaiscbroad_amm] [nvarchar](10) NULL,
	[jarj_samaiscbroad_opisto] [nvarchar](10) NULL,
	[jarj_samaiscbroad_ammka] [nvarchar](10) NULL,
	[jarj_samaiscbroad_amk] [nvarchar](10) NULL,
	[jarj_samaiscbroad_alempikk] [nvarchar](10) NULL,
	[jarj_samaiscbroad_ylempiamk] [nvarchar](10) NULL,
	[jarj_samaiscbroad_ylempikk] [nvarchar](10) NULL,
	[jarj_samaiscbroad_laak] [nvarchar](10) NULL,
	[jarj_samaiscbroad_lis] [nvarchar](10) NULL,
	[jarj_samaiscbroad_toht] [nvarchar](10) NULL,
	[jarj_samaiscbroad_yliopisto] [nvarchar](10) NULL,
	[jarj_samaiscbroad_yojatko] [nvarchar](10) NULL,
	[jarj_samaiscbroad_opistoammka] [nvarchar](10) NULL,
	[jarj_samaiscbroad_korkeak] [nvarchar](10) NULL,
	[jarj_samaiscbroad_toinenaste] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_lu] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_amm] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_opisto] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_ammka] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_amk] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_alempikk] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_ylempiamk] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_ylempikk] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_laak] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_lis] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_toht] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_yliopisto] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_yojatko] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_opistoammka] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_korkeak] [nvarchar](10) NULL,
	[jarj_samaiscnarrow_toinenaste] [nvarchar](10) NULL,
	[Koodit Koulutusnimike] [nvarchar](6) NOT NULL,
	[Koodit Koulutusaste] [nvarchar](2) NOT NULL,
	[Koodit Koulutusala 02] [nvarchar](2) NOT NULL,
	[Koodit Koulutusala 95] [nvarchar](3) NOT NULL,
	[Koodit Opintoala] [nvarchar](3) NOT NULL,
	[Koodit Yo-tutkinnon koulutusnimike] [nvarchar](6) NOT NULL,
	[Koodit Amm. tutkinnon koulutusala] [nvarchar](2) NOT NULL,
	[Koodit Amm. tutkinnon opintoala] [nvarchar](3) NOT NULL,
	[Koodit Amm. tutkinnon koulutusnimike] [nvarchar](6) NOT NULL,
	[Koodit Opistoast. tutkinnon koulutusala] [nvarchar](2) NOT NULL,
	[Koodit Opistoast. tutkinnon opintoala] [nvarchar](3) NOT NULL,
	[Koodit Opistoast. tutkinnon koulutusnimike] [nvarchar](6) NOT NULL,
	[Koodit Amm. kork.asteen tutk. koulutusala] [nvarchar](2) NOT NULL,
	[Koodit Amm. kork.asteen tutk. opintoala] [nvarchar](3) NOT NULL,
	[Koodit Amm. kork.asteen tutk. koulutusnimike] [nvarchar](6) NOT NULL,
	[Koodit Amk-tutkinnon koulutusala] [nvarchar](2) NOT NULL,
	[Koodit Amk-tutkinnon opintoala] [nvarchar](3) NOT NULL,
	[Koodit Amk-tutkinnon koulutusnimike] [nvarchar](6) NOT NULL,
	[Koodit Alemman kk-tutk. koulutusala 02] [nvarchar](2) NOT NULL,
	[Koodit Alemman kk-tutk. koulutusala 95] [nvarchar](3) NOT NULL,
	[Koodit Alemman kk-tutk. opintoala] [nvarchar](3) NOT NULL,
	[Koodit Alemman kk-tutk. koulutusnimike] [nvarchar](6) NOT NULL,
	[Koodit Ylemmän amk-tutk. koulutusala] [nvarchar](2) NOT NULL,
	[Koodit Ylemmän amk-tutk. opintoala] [nvarchar](3) NOT NULL,
	[Koodit Ylemmän amk-tutk. koulutusnimike] [nvarchar](6) NOT NULL,
	[Koodit Ylemmän kk-tutk. koulutusala 02] [nvarchar](2) NOT NULL,
	[Koodit Ylemmän kk-tutk. koulutusala 95] [nvarchar](3) NOT NULL,
	[Koodit Ylemmän kk-tutk. opintoala] [nvarchar](3) NOT NULL,
	[Koodit Ylemmän kk-tutk. koulutusnimike] [nvarchar](6) NOT NULL,
	[Koodit Lääk. erikois.tutk. koulutusnimike] [nvarchar](6) NOT NULL,
	[Koodit Lisensiaatin tutk. koulutusala 02] [nvarchar](2) NOT NULL,
	[Koodit Lisensiaatin tutk. koulutusala 95] [nvarchar](3) NOT NULL,
	[Koodit Lisensiaatin tutk. opintoala] [nvarchar](3) NOT NULL,
	[Koodit Lisensiaatin tutk. koulutusnimike] [nvarchar](6) NOT NULL,
	[Koodit Tohtorin tutk. koulutusala 02] [nvarchar](2) NOT NULL,
	[Koodit Tohtorin tutk. koulutusala 95] [nvarchar](3) NOT NULL,
	[Koodit Tohtorin tutk. opintoala] [nvarchar](3) NOT NULL,
	[Koodit Tohtorin tutk. koulutusnimike] [nvarchar](6) NOT NULL,
	[rivinumero] [int] NULL,
	[Koulutusaste, taso 1] [nvarchar](255) NOT NULL,
	[Koulutusaste, taso 2] [nvarchar](255) NOT NULL,
	[Koulutusala, taso 1] [nvarchar](255) NOT NULL,
	[Koulutusala, taso 2] [nvarchar](255) NOT NULL,
	[Koulutusala, taso 3] [nvarchar](255) NOT NULL,
	[OKM ohjauksen ala] [nvarchar](255) NOT NULL,
	[jarj_isced_koulast1] [nvarchar](10) NULL,
	[jarj_isced_koulast2] [nvarchar](10) NULL,
	[jarj_isced_koulala1] [nvarchar](10) NULL,
	[jarj_isced_koulala2] [nvarchar](10) NULL,
	[jarj_isced_koulala3] [nvarchar](10) NULL,
	[jarj_isced_okmohjaus1] [nvarchar](10) NULL,
	[Koodit Koulutusaste, taso 1] [nvarchar](10) NOT NULL,
	[Koodit Koulutusaste, taso 2] [nvarchar](10) NOT NULL,
	[Koodit Koulutusala, taso 1] [nvarchar](10) NOT NULL,
	[Koodit Koulutusala, taso 2] [nvarchar](10) NOT NULL,
	[Koodit Koulutusala, taso 3] [nvarchar](10) NOT NULL,
	[Koodit OKM ohjauksen ala] [nvarchar](10) NOT NULL,
	[Yo-tutkinnon koulutusala 3] [nvarchar](255) NOT NULL,
	[Amm. tutkinnon koulutusala 1] [nvarchar](255) NOT NULL,
	[Amm. tutkinnon koulutusala 2] [nvarchar](255) NOT NULL,
	[Amm. tutkinnon koulutusala 3] [nvarchar](255) NOT NULL,
	[Opistoast. tutkinnon koulutusala 1] [nvarchar](255) NOT NULL,
	[Opistoast. tutkinnon koulutusala 2] [nvarchar](255) NOT NULL,
	[Opistoast. tutkinnon koulutusala 3] [nvarchar](255) NOT NULL,
	[Amm. kork.asteen tutk. koulutusala 1] [nvarchar](255) NOT NULL,
	[Amm. kork.asteen tutk. koulutusala 2] [nvarchar](255) NOT NULL,
	[Amm. kork.asteen tutk. koulutusala 3] [nvarchar](255) NOT NULL,
	[Amk-tutkinnon koulutusala 1] [nvarchar](255) NOT NULL,
	[Amk-tutkinnon OKM ohjauksen ala] [nvarchar](255) NOT NULL,
	[Amk-tutkinnon koulutusala 2] [nvarchar](255) NOT NULL,
	[Amk-tutkinnon koulutusala 3] [nvarchar](255) NOT NULL,
	[Alemman kk-tutk. koulutusala 1] [nvarchar](255) NOT NULL,
	[Alemman kk-tutk. OKM ohjauksen ala] [nvarchar](255) NOT NULL,
	[Alemman kk-tutk. koulutusala 2] [nvarchar](255) NOT NULL,
	[Alemman kk-tutk. koulutusala 3] [nvarchar](255) NOT NULL,
	[Ylemmän amk-tutk. koulutusala 1] [nvarchar](255) NOT NULL,
	[Ylemmän amk-tutk. OKM ohjauksen ala] [nvarchar](255) NOT NULL,
	[Ylemmän amk-tutk. koulutusala 2] [nvarchar](255) NOT NULL,
	[Ylemmän amk-tutk. koulutusala 3] [nvarchar](255) NOT NULL,
	[Ylemmän kk-tutk. koulutusala 1] [nvarchar](255) NOT NULL,
	[Ylemmän kk-tutk. OKM ohjauksen ala] [nvarchar](255) NOT NULL,
	[Ylemmän kk-tutk. koulutusala 2] [nvarchar](255) NOT NULL,
	[Ylemmän kk-tutk. koulutusala 3] [nvarchar](255) NOT NULL,
	[Lääk. erikois.tutk. koulutusala 3] [nvarchar](255) NOT NULL,
	[Lisensiaatin tutk. koulutusala 1] [nvarchar](255) NOT NULL,
	[Lisensiaatin tutk. OKM ohjauksen ala] [nvarchar](255) NOT NULL,
	[Lisensiaatin tutk. koulutusala 2] [nvarchar](255) NOT NULL,
	[Lisensiaatin tutk. koulutusala 3] [nvarchar](255) NOT NULL,
	[Tohtorin tutk. koulutusala 1] [nvarchar](255) NOT NULL,
	[Tohtorin tutk. OKM ohjauksen ala] [nvarchar](255) NOT NULL,
	[Tohtorin tutk. koulutusala 2] [nvarchar](255) NOT NULL,
	[Tohtorin tutk. koulutusala 3] [nvarchar](255) NOT NULL,
	[jarj_lukio_iscfi2013] [nvarchar](10) NULL,
	[jarj_amm_iscfibroad2013] [nvarchar](10) NULL,
	[jarj_amm_iscfinarrow2013] [nvarchar](10) NULL,
	[jarj_amm_iscfi2013] [nvarchar](10) NULL,
	[jarj_opisto_iscfibroad2013] [nvarchar](10) NULL,
	[jarj_opisto_iscfinarrow2013] [nvarchar](10) NULL,
	[jarj_opisto_iscfi2013] [nvarchar](10) NULL,
	[jarj_amm_kork_aste_iscfibroad2013] [nvarchar](10) NULL,
	[jarj_amm_kork_aste_iscfinarrow2013] [nvarchar](10) NULL,
	[jarj_amm_kork_aste_iscfi2013] [nvarchar](10) NULL,
	[jarj_amk_iscfibroad2013] [nvarchar](10) NULL,
	[jarj_amk_OKM_ohjauksen_ala] [nvarchar](10) NULL,
	[jarj_amk_iscfinarrow2013] [nvarchar](10) NULL,
	[jarj_amk_iscfi2013] [nvarchar](10) NULL,
	[jarj_alempi_kk_iscfibroad2013] [nvarchar](10) NULL,
	[jarj_alempi_kk_OKM_ohjauksen_ala] [nvarchar](10) NULL,
	[jarj_alempi_kk_iscfinarrow2013] [nvarchar](10) NULL,
	[jarj_alempi_kk_iscfi2013] [nvarchar](10) NULL,
	[jarj_ylempi_amk_iscfibroad2013] [nvarchar](10) NULL,
	[jarj_ylempi_amk_OKM_ohjauksen_ala] [nvarchar](10) NULL,
	[jarj_ylempi_amk_iscfinarrow2013] [nvarchar](10) NULL,
	[jarj_ylempi_amk_iscfi2013] [nvarchar](10) NULL,
	[jarj_ylempi_kk_iscfibroad2013] [nvarchar](10) NULL,
	[jarj_ylempi_kk_OKM_ohjauksen_ala] [nvarchar](10) NULL,
	[jarj_ylempi_kk_iscfinarrow2013] [nvarchar](10) NULL,
	[jarj_ylempi_kk_iscfi2013] [nvarchar](10) NULL,
	[jarj_laak_erik_iscfi2013] [nvarchar](10) NULL,
	[jarj_lis_iscfibroad2013] [nvarchar](10) NULL,
	[jarj_lis_OKM_ohjauksen_ala] [nvarchar](10) NULL,
	[jarj_lis_iscfinarrow2013] [nvarchar](10) NULL,
	[jarj_lis_iscfi2013] [nvarchar](10) NULL,
	[jarj_toht_iscfibroad2013] [nvarchar](10) NULL,
	[jarj_toht_OKM_ohjauksen_ala] [nvarchar](10) NULL,
	[jarj_toht_iscfinarrow2013] [nvarchar](10) NULL,
	[jarj_toht_iscfi2013] [nvarchar](10) NULL,
	[Koodit Yo-tutkinnon koulutusala 3] [nvarchar](10) NOT NULL,
	[Koodit Amm. tutkinnon koulutusala 1] [nvarchar](10) NOT NULL,
	[Koodit Amm. tutkinnon koulutusala 2] [nvarchar](10) NOT NULL,
	[Koodit Amm. tutkinnon koulutusala 3] [nvarchar](10) NOT NULL,
	[Koodit Opistoast. tutkinnon koulutusala 1] [nvarchar](10) NOT NULL,
	[Koodit Opistoast. tutkinnon koulutusala 2] [nvarchar](10) NOT NULL,
	[Koodit Opistoast. tutkinnon koulutusala 3] [nvarchar](10) NOT NULL,
	[Koodit Amm. kork.asteen tutk. koulutusala 1] [nvarchar](10) NOT NULL,
	[Koodit Amm. kork.asteen tutk. koulutusala 2] [nvarchar](10) NOT NULL,
	[Koodit Amm. kork.asteen tutk. koulutusala 3] [nvarchar](10) NOT NULL,
	[Koodit Amk-tutkinnon koulutusala 1] [nvarchar](10) NOT NULL,
	[Koodit Amk-tutkinnon OKM ohjauksen ala] [nvarchar](10) NOT NULL,
	[Koodit Amk-tutkinnon koulutusala 2] [nvarchar](10) NOT NULL,
	[Koodit Amk-tutkinnon koulutusala 3] [nvarchar](10) NOT NULL,
	[Koodit Alemman kk-tutk. koulutusala 1] [nvarchar](10) NOT NULL,
	[Koodit Alemman kk-tutk. OKM ohjauksen ala] [nvarchar](10) NOT NULL,
	[Koodit Alemman kk-tutk. koulutusala 2] [nvarchar](10) NOT NULL,
	[Koodit Alemman kk-tutk. koulutusala 3] [nvarchar](10) NOT NULL,
	[Koodit Ylemmän amk-tutk. koulutusala 1] [nvarchar](10) NOT NULL,
	[Koodit Ylemmän amk-tutk. OKM ohjauksen ala] [nvarchar](10) NOT NULL,
	[Koodit Ylemmän amk-tutk. koulutusala 2] [nvarchar](10) NOT NULL,
	[Koodit Ylemmän amk-tutk. koulutusala 3] [nvarchar](10) NOT NULL,
	[Koodit Ylemmän kk-tutk. koulutusala 1] [nvarchar](10) NOT NULL,
	[Koodit Ylemmän kk-tutk. OKM ohjauksen ala] [nvarchar](10) NOT NULL,
	[Koodit Ylemmän kk-tutk. koulutusala 2] [nvarchar](10) NOT NULL,
	[Koodit Ylemmän kk-tutk. koulutusala 3] [nvarchar](10) NOT NULL,
	[Koodit Lääk. erikois.tutk. koulutusala 3] [nvarchar](10) NOT NULL,
	[Koodit Lisensiaatin tutk. koulutusala 1] [nvarchar](10) NOT NULL,
	[Koodit Lisensiaatin tutk. OKM ohjauksen ala] [nvarchar](10) NOT NULL,
	[Koodit Lisensiaatin tutk. koulutusala 2] [nvarchar](10) NOT NULL,
	[Koodit Lisensiaatin tutk. koulutusala 3] [nvarchar](10) NOT NULL,
	[Koodit Tohtorin tutk. koulutusala 1] [nvarchar](10) NOT NULL,
	[Koodit Tohtorin tutk. OKM ohjauksen ala] [nvarchar](10) NOT NULL,
	[Koodit Tohtorin tutk. koulutusala 2] [nvarchar](10) NOT NULL,
	[Koodit Tohtorin tutk. koulutusala 3] [nvarchar](10) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_TJ_4_3_Tutkinnon_suorittaneiden_paaasiallinen_toiminta]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_TJ_4_3_Tutkinnon_suorittaneiden_paaasiallinen_toiminta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_TJ_4_3_Tutkinnon_suorittaneiden_paaasiallinen_toiminta](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[aineisto] [nvarchar](2) NULL,
	[aineisto_id] [int] NULL,
	[asuinmaakunta] [nvarchar](2) NULL,
	[asuinmaakunta_id] [int] NULL,
	[asuinmaakunta_historia_id] [int] NULL,
	[aikuisopiskelija] [nvarchar](2) NULL,
	[aikuisopiskelija_id] [int] NULL,
	[tutkinnon_suoritusvuosi] [nvarchar](4) NULL,
	[tutkinnon_suoritusvuosi_id] [nvarchar](10) NULL,
	[tutkinnon_suorittamismaakunta] [nvarchar](2) NULL,
	[tutkinnon_suorittamismaakunta_id] [int] NULL,
	[tutkinnon_suorittamismaakunta_historia_id] [int] NULL,
	[koulutuksen_jarjestaja] [nvarchar](10) NULL,
	[koulutuksen_jarjestaja_id] [int] NULL,
	[koulutuksen_jarjestaja_historia_id] [int] NULL,
	[oppilaitos] [nvarchar](5) NULL,
	[oppilaitos_id] [int] NULL,
	[oppilaitos_historia_id] [int] NULL,
	[valiaikainen_amk] [nvarchar](2) NULL,
	[valiaikainen_amk_id] [int] NULL,
	[koulutusluokitus] [nvarchar](6) NULL,
	[koulutusluokitus_id] [int] NULL,
	[koulutusluokitus_historia_id] [int] NULL,
	[koulutusmuoto] [nvarchar](2) NULL,
	[koulutusmuoto_id] [int] NULL,
	[oppisopimuskoulutus] [nvarchar](2) NULL,
	[oppisopimuskoulutus_id] [int] NULL,
	[ammatillisen_koulutuksen_koulutuslaji_tutkintorekisterissa] [nvarchar](2) NULL,
	[ammatillisen_koulutuksen_koulutuslaji_tutkintorekisterissa_id] [int] NULL,
	[paaasiallinen_toiminta_versio2] [nvarchar](2) NULL,
	[paaasiallinen_toiminta_versio2_id] [int] NULL,
	[maassaolo] [nvarchar](2) NULL,
	[maassaolo_id] [int] NULL,
	[ammattiasema] [nvarchar](2) NULL,
	[ammattiasema_id] [int] NULL,
	[ammattiluokitus_2010] [nvarchar](5) NULL,
	[ammattiluokitus_2010_id] [int] NULL,
	[lukumaara] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL,
	[aineistotunnus] [nvarchar](8) NULL,
	[tutkintolaji_tyollistymiseen] [nvarchar](2) NULL,
	[tutkintolaji_tyollistymiseen_id] [int] NULL,
	[sijoittuminen_1v_tutkinnon_jalkeen] [int] NULL,
	[sijoittuminen_3v_tutkinnon_jalkeen] [int] NULL,
	[sijoittuminen_5v_tutkinnon_jalkeen] [int] NULL,
	[paaasiallinen_toiminta_ja_maasta_muuttaneet] [nvarchar](2) NULL,
	[paaasiallinen_toiminta_ja_maasta_muuttaneet_id] [int] NULL,
	[paaasiallinen_toiminta_okm_id] [int] NULL,
	[eu_etamaat_id] [int] NULL,
	[aidinkieli_versio1_id] [int] NULL,
	[kansalaisuus_maanosa_id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_TJK_2_11_tutkintoon_johtamaton_koulutus]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_TJK_2_11_tutkintoon_johtamaton_koulutus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_TJK_2_11_tutkintoon_johtamaton_koulutus](
	[tilastointivuosi] [varchar](4) NULL,
	[opetustunti_avain] [varchar](10) NULL,
	[opetustunti_id] [int] NOT NULL,
	[oppilaitos_avain] [nvarchar](5) NULL,
	[oppilaitos_id] [int] NOT NULL,
	[koulutuksen_jarjestaja] [nvarchar](10) NULL,
	[oppilaitoksen_sijaintikunta_id] [int] NOT NULL,
	[yllapitajan_sijaintikunta_id] [int] NOT NULL,
	[sukupuoli_koodi] [nvarchar](10) NOT NULL,
	[sukupuoli_id] [int] NOT NULL,
	[Opetustuntien lukumäärä] [int] NULL,
	[Osallistuneiden lukumäärä] [int] NULL,
	[Suorittaneiden lukumäärä] [int] NULL,
	[Koulutusten lukumäärä] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_TOAK_2_20_Lukio_amm_oppis_opisk_ian_ja_aik_koul_mukaan]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_TOAK_2_20_Lukio_amm_oppis_opisk_ian_ja_aik_koul_mukaan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_TOAK_2_20_Lukio_amm_oppis_opisk_ian_ja_aik_koul_mukaan](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[lahde_id] [int] NULL,
	[oppilaitoksen_oppilaitostyyppi_id] [int] NULL,
	[koulutusluokitus_id] [int] NULL,
	[koulutusluokitus_historia_id] [int] NULL,
	[nuorten_aikuisten_koulutus_id] [int] NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus_id] [int] NULL,
	[ammatillisen_koulutuksen_koulutuslaji_id] [int] NULL,
	[opetushallinnon_koulutus_id] [int] NULL,
	[koulutuksen_kunta_id] [int] NULL,
	[koulutuksen_kunta_historia_id] [int] NULL,
	[rahoituslahde_id] [int] NULL,
	[sukupuoli_id] [int] NULL,
	[aidinkieli_versio1_id] [int] NULL,
	[kirjoihintulovuosi_id] [nvarchar](10) NULL,
	[kirjoihintulolukukausi_id] [nvarchar](10) NULL,
	[opiskelijan_olo_syys_id] [int] NULL,
	[aikaisempi_ylsk_koulutus_id] [int] NULL,
	[aikaisempi_ammpk_tarkempi] [nvarchar](100) NULL,
	[ammpk_pohjakoulutuksen_tila] [nvarchar](150) NULL,
	[aikaisemman_ammpk_opintoala2002_id] [int] NULL,
	[aikaisemman_ammpk_koulutusala2002_id] [int] NULL,
	[aikaisemman_ammpk_koulutusaste2002_id] [int] NULL,
	[aikaisemman_ammpk_suoritusvuosi_id] [nvarchar](10) NULL,
	[aikaisempi_ammpk_nayttotutkintona_tarkempi] [nvarchar](100) NULL,
	[aikaisempi_ammpk_oppisopimuskoulutuksena_tarkempi] [nvarchar](100) NULL,
	[aikaisempi_ammlisa_tarkempi] [nvarchar](100) NULL,
	[ammlisa_pohjakoulutuksen_tila] [nvarchar](150) NULL,
	[aikaisemman_ammlisa_opintoala2002_id] [int] NULL,
	[aikaisemman_ammlisa_koulutusala2002_id] [int] NULL,
	[aikaisemman_ammlisa_koulutusaste2002_id] [int] NULL,
	[aikaisemman_ammlisa_suoritusvuosi_id] [nvarchar](10) NULL,
	[aikaisempi_ammlisa_oppisopimuskoulutuksena_tarkempi] [nvarchar](100) NULL,
	[aikaisempi_alempi_kk_tarkempi] [nvarchar](100) NULL,
	[alempi_kk_pohjakoulutuksen_tila] [nvarchar](150) NULL,
	[aikaisemman_alemman_kk_opintoala1995_id] [int] NULL,
	[aikaisemman_alemman_kk_koulutusala1995_id] [int] NULL,
	[aikaisemman_alemman_kk_opintoala2002_id] [int] NULL,
	[aikaisemman_alemman_kk_koulutusala2002_id] [int] NULL,
	[aikaisemman_alemman_kk_koulutusaste2002_id] [int] NULL,
	[aikaisemman_alemman_kk_suoritusvuosi_id] [nvarchar](10) NULL,
	[aikaisempi_ylempi_kk_tarkempi] [nvarchar](100) NULL,
	[ylempi_kk_pohjakoulutuksen_tila] [nvarchar](150) NULL,
	[aikasemman_ylemman_kk_opintoala1995_id] [int] NULL,
	[aikasemman_ylemman_kk_koulutusala1995_id] [int] NULL,
	[aikasemman_ylemman_kk_opintoala2002_id] [int] NULL,
	[aikasemman_ylemman_kk_koulutusala2002_id] [int] NULL,
	[aikasemman_ylemman_kk_koulutusaste2002_id] [int] NULL,
	[aikaisemman_ylemman_kk_suoritusvuosi_id] [nvarchar](10) NULL,
	[opiskelijan_asuinkunta_id] [int] NULL,
	[opiskelijan_asuinkunta_historia_id] [int] NULL,
	[lukumaara] [int] NULL,
	[rivinumero] [int] NULL,
	[ika1v_id] [int] NULL,
	[ika5v_id] [int] NULL,
	[ika_14_65_id] [int] NULL,
	[aikaisemmasta_koulutuksesta_ammpk_kulunut_aika_id] [int] NULL,
	[aikaisemmasta_koulutuksesta_ammlisa_kulunut_aika_id] [int] NULL,
	[aikaisemmasta_koulutuksesta_alempi_kk_kulunut_aika_id] [int] NULL,
	[aikaisemmasta_koulutuksesta_ylempi_kk_kulunut_aika_id] [int] NULL,
	[aiemman_tutkinnon_ammpk_opintoala_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_ammpk_koulutusala_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_ammpk_koulutusaste_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_ammlisa_opintoala_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_ammlisa_koulutusala_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_ammlisa_koulutusaste_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_alempi_kk_opintoala_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_alempi_kk_koulutusala_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_alempi_kk_koulutusaste_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_ylempi_kk_opintoala_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_ylempi_kk_koulutusala_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_ylempi_kk_koulutusaste_sama] [nvarchar](100) NULL,
	[aikaisempi_korkein_tutkinto_id] [int] NULL,
	[aiemman_tutkinnon_opintoala2002_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_koulutusaste2002_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_koulutusala2002_sama] [nvarchar](100) NULL,
	[nuorten_aikuisten_koulutus_amm_id] [int] NULL,
	[koulutuksen_jarjestamismuoto_id] [int] NULL,
	[aloittaneet] [int] NULL,
	[viimeisimman_koulutuksen_suorituvuosi_id] [nvarchar](10) NULL,
	[viimeisimmasta_koulutuksesta_kulunut_aika_id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_tutkinnon_suorittaneiden_aiempi_koulutus_4_7]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_tutkinnon_suorittaneiden_aiempi_koulutus_4_7]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_tutkinnon_suorittaneiden_aiempi_koulutus_4_7](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[tarkastelujakso_koodi] [nvarchar](20) NOT NULL,
	[tarkastelujakso_id] [int] NOT NULL,
	[sukupuoli_koodi] [nvarchar](10) NULL,
	[sukupuoli_id] [int] NOT NULL,
	[aidinkieli_versio1_koodi] [nvarchar](2) NULL,
	[aidinkieli_id] [int] NOT NULL,
	[suorv] [varchar](4) NULL,
	[suorlk] [varchar](1) NULL,
	[suorituskausikoodi] [varchar](8) NULL,
	[suorituskausi_id] [nvarchar](10) NOT NULL,
	[koulutusluokitus_avain] [nvarchar](6) NULL,
	[koulutusluokitus_id] [int] NOT NULL,
	[alvv] [varchar](4) NULL,
	[allk] [varchar](1) NULL,
	[aloituskausikoodi] [varchar](8) NULL,
	[aloituskausi_id] [nvarchar](10) NOT NULL,
	[oppisopimuskoulutus_koodi] [nvarchar](2) NULL,
	[oppisopimuskoulutus_id] [int] NOT NULL,
	[ammatillisen_koulutuksen_koulutuslaji_koodi] [nvarchar](2) NULL,
	[ammatillisen_koulutuksen_koulutuslaji_id] [int] NOT NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus_koodi] [nvarchar](2) NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus_id] [int] NOT NULL,
	[nuorten_aikuisten_koulutus_amm_koodi] [nvarchar](2) NULL,
	[nuorten_aikuisten_koulutus_amm_id] [int] NOT NULL,
	[syntv] [varchar](4) NULL,
	[ika_avain] [nvarchar](10) NULL,
	[ika_id] [int] NOT NULL,
	[henkiloiden_lkm] [int] NULL,
	[lu_henkiloiden_lkm] [int] NULL,
	[lukoulk] [varchar](6) NULL,
	[lu_aiempi_koulutusluokitus_id] [int] NOT NULL,
	[lusuorv] [varchar](4) NULL,
	[luaikoul] [varchar](1) NULL,
	[lu_nuorten_aikuisten_koulutus_amm_id] [int] NOT NULL,
	[lu_ika] [int] NULL,
	[lu_ika_id] [int] NOT NULL,
	[lu_aiempi_tutkinto_suoritettu] [varchar](1) NOT NULL,
	[lu_aiempi_tutkinto_suoritettu_id] [int] NOT NULL,
	[ammlkm_id] [int] NOT NULL,
	[amm_henkiloiden_lkm] [int] NULL,
	[ammkoulk] [varchar](6) NULL,
	[amm_aiempi_koulutusluokitus_id] [int] NOT NULL,
	[ammsuorv] [varchar](4) NULL,
	[ammoppis] [varchar](1) NULL,
	[ammoppis_id] [int] NOT NULL,
	[ammtutklaja] [varchar](1) NULL,
	[ammtutklaja_id] [int] NOT NULL,
	[ammtutktav] [varchar](1) NULL,
	[ammtutktav_id] [int] NOT NULL,
	[ammatillinen_koulutus_ryhma] [nvarchar](10) NULL,
	[ammatillinen_koulutus_ryhma_id] [int] NOT NULL,
	[amm_ika] [int] NULL,
	[amm_ika_id] [int] NOT NULL,
	[amm_aiempi_tutkinto_suoritettu] [varchar](1) NOT NULL,
	[amm_aiempi_tutkinto_suoritettu_id] [int] NOT NULL,
	[opist_henkiloiden_lkm] [int] NULL,
	[opistkoulk] [varchar](6) NULL,
	[opist_aiempi_koulutusluokitus_id] [int] NOT NULL,
	[opistsuorv] [varchar](4) NULL,
	[opist_ika] [int] NULL,
	[opist_ika_id] [int] NOT NULL,
	[opist_aiempi_tutkinto_suoritettu] [varchar](1) NOT NULL,
	[opist_aiempi_tutkinto_suoritettu_id] [int] NOT NULL,
	[ammka_henkiloiden_lkm] [int] NULL,
	[ammkakoulk] [varchar](6) NULL,
	[ammka_aiempi_koulutusluokitus_id] [int] NOT NULL,
	[ammkasuorv] [varchar](4) NULL,
	[ammka_ika] [int] NULL,
	[ammka_ika_id] [int] NOT NULL,
	[ammka_aiempi_tutkinto_suoritettu] [varchar](1) NOT NULL,
	[ammka_aiempi_tutkinto_suoritettu_id] [int] NOT NULL,
	[amklkm_id] [int] NOT NULL,
	[amk_henkiloiden_lkm] [int] NULL,
	[amkkoulk] [varchar](6) NULL,
	[amk_aiempi_koulutusluokitus_id] [int] NOT NULL,
	[amksuorv] [varchar](4) NULL,
	[amkaikoul] [varchar](1) NULL,
	[amkaikoul_id] [int] NOT NULL,
	[amk_ika] [int] NULL,
	[amk_ika_id] [int] NOT NULL,
	[amk_aiempi_tutkinto_suoritettu] [varchar](1) NOT NULL,
	[amk_aiempi_tutkinto_suoritettu_id] [int] NOT NULL,
	[akklkm_id] [int] NOT NULL,
	[akk_henkiloiden_lkm] [int] NULL,
	[akkkoulk] [varchar](6) NULL,
	[akk_aiempi_koulutusluokitus_id] [int] NOT NULL,
	[akksuorv] [varchar](4) NULL,
	[akk_ika] [int] NULL,
	[akk_ika_id] [int] NOT NULL,
	[akk_aiempi_tutkinto_suoritettu] [varchar](1) NOT NULL,
	[akk_aiempi_tutkinto_suoritettu_id] [int] NOT NULL,
	[ylamklkm_henkiloiden_lkm] [int] NULL,
	[ylamkkoulk] [varchar](6) NULL,
	[ylamk_aiempi_koulutusluokitus_id] [int] NOT NULL,
	[ylamksuorv] [varchar](4) NULL,
	[ylamk_ika] [int] NULL,
	[ylamk_ika_id] [int] NOT NULL,
	[ylamk_aiempi_tutkinto_suoritettu] [varchar](1) NOT NULL,
	[ylamk_aiempi_tutkinto_suoritettu_id] [int] NOT NULL,
	[ykklkm_id] [int] NOT NULL,
	[ykk_henkiloiden_lkm] [int] NULL,
	[ykkkoulk] [varchar](6) NULL,
	[ykk_aiempi_koulutusluokitus_id] [int] NOT NULL,
	[ykksuorv] [varchar](4) NULL,
	[ykk_ika] [int] NULL,
	[ykk_ika_id] [int] NOT NULL,
	[ykk_aiempi_tutkinto_suoritettu] [varchar](1) NOT NULL,
	[ykk_aiempi_tutkinto_suoritettu_id] [int] NOT NULL,
	[laaker_henkiloiden_lkm] [int] NULL,
	[laakerkoulk] [varchar](6) NULL,
	[laaker_aiempi_koulutusluokitus_id] [int] NOT NULL,
	[laakersuorv] [varchar](4) NULL,
	[laaker_ika] [int] NULL,
	[laaker_ika_id] [int] NOT NULL,
	[laaker_aiempi_tutkinto_suoritettu] [varchar](1) NOT NULL,
	[laaker_aiempi_tutkinto_suoritettu_id] [int] NOT NULL,
	[lis_henkiloiden_lkm] [int] NULL,
	[liskoulk] [varchar](6) NULL,
	[lis_aiempi_koulutusluokitus_id] [int] NOT NULL,
	[lissuorv] [varchar](4) NULL,
	[lis_ika] [int] NULL,
	[lis_ika_id] [int] NOT NULL,
	[lis_aiempi_tutkinto_suoritettu] [varchar](1) NOT NULL,
	[lis_aiempi_tutkinto_suoritettu_id] [int] NOT NULL,
	[toht_henkiloiden_lkm] [int] NULL,
	[tohtkoulk] [varchar](6) NULL,
	[toht_aiempi_koulutusluokitus_id] [int] NOT NULL,
	[tohtsuorv] [varchar](4) NULL,
	[toht_ika] [int] NULL,
	[toht_ika_id] [int] NOT NULL,
	[toht_aiempi_tutkinto_suoritettu] [varchar](1) NOT NULL,
	[toht_aiempi_tutkinto_suoritettu_id] [int] NOT NULL,
	[yliopistotutkinto_aiempi_suoritettu_id] [int] NOT NULL,
	[yo_jatkotutkinto_aiempi_suoritettu_id] [int] NOT NULL,
	[opisto_tai_ammatillisen_korkea_asteen_tutkinto_aiempi_suoritettu_id] [int] NOT NULL,
	[korkeakoulututkinto_aiempi_suoritettu_id] [int] NOT NULL,
	[toisen_asteen_tutkinto_aiempi_suoritettu_id] [int] NOT NULL,
	[ammatillisen_tutkinto_aiempi_suoritettu_ryhma1_id] [int] NOT NULL,
	[ammatillisen_tutkinto_aiempi_suoritettu_ryhma2_id] [int] NOT NULL,
	[ammatillisen_tutkinto_aiempi_suoritettu_ryhma3_id] [int] NOT NULL,
	[Aiemman_yliopistotutkinnon_suorittaneiden_lkm] [int] NULL,
	[Aiemman_yo_jatkotutkinnon_suorittaneiden_lkm] [int] NULL,
	[Aiemman_opisto_tai_ammatillisen_korkea_asteen_tutkinnon_suorittaneiden_lkm] [int] NULL,
	[Aiemman_korkeakoulututkinnon_suorittaneiden_lkm] [int] NULL,
	[Aiemman_toisen_asteen_tutkinnon_suorittaneiden_lkm] [int] NULL,
	[Aiemman_ammatillisen_tutkinnon_ryhma1_suorittaneiden_lkm] [int] NULL,
	[Aiemman_ammatillisen_tutkinnon_ryhma2_suorittaneiden_lkm] [int] NULL,
	[Aiemman_ammatillisen_tutkinnon_ryhma3_suorittaneiden_lkm] [int] NULL,
	[Ei_aiempaa_perusasteen_jalkeista_tutkintoa_lkm] [int] NULL,
	[lu_sama_aiempi_koulutusala2002_id] [int] NOT NULL,
	[amm_sama_aiempi_koulutusala2002_id] [int] NOT NULL,
	[opist_sama_aiempi_koulutusala2002_id] [int] NOT NULL,
	[ammka_sama_aiempi_koulutusala2002_id] [int] NOT NULL,
	[akk_sama_aiempi_koulutusala2002_id] [int] NOT NULL,
	[amk_sama_aiempi_koulutusala2002_id] [int] NOT NULL,
	[ylamk_sama_aiempi_koulutusala2002_id] [int] NOT NULL,
	[ykk_sama_aiempi_koulutusala2002_id] [int] NOT NULL,
	[laaker_sama_aiempi_koulutusala2002_id] [int] NOT NULL,
	[lis_sama_aiempi_koulutusala2002_id] [int] NOT NULL,
	[toht_sama_aiempi_koulutusala2002_id] [int] NOT NULL,
	[yliopistotutkinto_sama_aiempi_koulutusala2002_id] [int] NOT NULL,
	[yo_jatkotutkinto_sama_aiempi_koulutusala2002_id] [int] NOT NULL,
	[opisto_tai_ammatillisen_korkea_asteen_tutkinto_sama_aiempi_koulutusala2002_id] [int] NOT NULL,
	[korkeakoulututkinto_sama_aiempi_koulutusala2002_id] [int] NOT NULL,
	[toisen_asteen_tutkinto_sama_aiempi_koulutusala2002_id] [int] NOT NULL,
	[lu_sama_aiempi_opintoala2002_id] [int] NOT NULL,
	[amm_sama_aiempi_opintoala2002_id] [int] NOT NULL,
	[opist_sama_aiempi_opintoala2002_id] [int] NOT NULL,
	[ammka_sama_aiempi_opintoala2002_id] [int] NOT NULL,
	[akk_sama_aiempi_opintoala2002_id] [int] NOT NULL,
	[amk_sama_aiempi_opintoala2002_id] [int] NOT NULL,
	[ylamk_sama_aiempi_opintoala2002_id] [int] NOT NULL,
	[ykk_sama_aiempi_opintoala2002_id] [int] NOT NULL,
	[laaker_sama_aiempi_opintoala2002_id] [int] NOT NULL,
	[lis_sama_aiempi_opintoala2002_id] [int] NOT NULL,
	[toht_sama_aiempi_opintoala2002_id] [int] NOT NULL,
	[yliopistotutkinto_sama_aiempi_opintoala2002_id] [int] NOT NULL,
	[yo_jatkotutkinto_sama_aiempi_opintoala2002_id] [int] NOT NULL,
	[opisto_tai_ammatillisen_korkea_asteen_tutkinto_sama_aiempi_opintoala2002_id] [int] NOT NULL,
	[korkeakoulututkinto_sama_aiempi_opintoala2002_id] [int] NOT NULL,
	[toisen_asteen_tutkinto_sama_aiempi_opintoala2002_id] [int] NOT NULL,
	[lu_sama_aiempi_opintoala1995_id] [int] NOT NULL,
	[amm_sama_aiempi_opintoala1995_id] [int] NOT NULL,
	[opist_sama_aiempi_opintoala1995_id] [int] NOT NULL,
	[ammka_sama_aiempi_opintoala1995_id] [int] NOT NULL,
	[akk_sama_aiempi_opintoala1995_id] [int] NOT NULL,
	[amk_sama_aiempi_opintoala1995_id] [int] NOT NULL,
	[ylamk_sama_aiempi_opintoala1995_id] [int] NOT NULL,
	[ykk_sama_aiempi_opintoala1995_id] [int] NOT NULL,
	[laaker_sama_aiempi_opintoala1995_id] [int] NOT NULL,
	[lis_sama_aiempi_opintoala1995_id] [int] NOT NULL,
	[toht_sama_aiempi_opintoala1995_id] [int] NOT NULL,
	[yliopistotutkinto_sama_aiempi_opintoala1995_id] [int] NOT NULL,
	[yo_jatkotutkinto_sama_aiempi_opintoala1995_id] [int] NOT NULL,
	[opisto_tai_ammatillisen_korkea_asteen_tutkinto_sama_aiempi_opintoala1995_id] [int] NOT NULL,
	[korkeakoulututkinto_sama_aiempi_opintoala1995_id] [int] NOT NULL,
	[toisen_asteen_tutkinto_sama_aiempi_opintoala1995_id] [int] NOT NULL,
	[lu_sama_aiempi_iscfibroad2013_id] [int] NOT NULL,
	[amm_sama_aiempi_iscfibroad2013_id] [int] NOT NULL,
	[opist_sama_aiempi_iscfibroad2013_id] [int] NOT NULL,
	[ammka_sama_aiempi_iscfibroad2013_id] [int] NOT NULL,
	[akk_sama_aiempi_iscfibroad2013_id] [int] NOT NULL,
	[amk_sama_aiempi_iscfibroad2013_id] [int] NOT NULL,
	[ylamk_sama_aiempi_iscfibroad2013_id] [int] NOT NULL,
	[ykk_sama_aiempi_iscfibroad2013_id] [int] NOT NULL,
	[laaker_sama_aiempi_iscfibroad2013_id] [int] NOT NULL,
	[lis_sama_aiempi_iscfibroad2013_id] [int] NOT NULL,
	[toht_sama_aiempi_iscfibroad2013_id] [int] NOT NULL,
	[yliopistotutkinto_sama_aiempi_iscfibroad2013_id] [int] NOT NULL,
	[yo_jatkotutkinto_sama_aiempi_iscfibroad2013_id] [int] NOT NULL,
	[opisto_tai_ammatillisen_korkea_asteen_tutkinto_sama_aiempi_iscfibroad2013_id] [int] NOT NULL,
	[korkeakoulututkinto_sama_aiempi_iscfibroad2013_id] [int] NOT NULL,
	[toisen_asteen_tutkinto_sama_aiempi_iscfibroad2013_id] [int] NOT NULL,
	[lu_sama_aiempi_iscfinarrow2013_id] [int] NOT NULL,
	[amm_sama_aiempi_iscfinarrow2013_id] [int] NOT NULL,
	[opist_sama_aiempi_iscfinarrow2013_id] [int] NOT NULL,
	[ammka_sama_aiempi_iscfinarrow2013_id] [int] NOT NULL,
	[akk_sama_aiempi_iscfinarrow2013_id] [int] NOT NULL,
	[amk_sama_aiempi_iscfinarrow2013_id] [int] NOT NULL,
	[ylamk_sama_aiempi_iscfinarrow2013_id] [int] NOT NULL,
	[ykk_sama_aiempi_iscfinarrow2013_id] [int] NOT NULL,
	[laaker_sama_aiempi_iscfinarrow2013_id] [int] NOT NULL,
	[lis_sama_aiempi_iscfinarrow2013_id] [int] NOT NULL,
	[toht_sama_aiempi_iscfinarrow2013_id] [int] NOT NULL,
	[yliopistotutkinto_sama_aiempi_iscfinarrow2013_id] [int] NOT NULL,
	[yo_jatkotutkinto_sama_aiempi_iscfinarrow2013_id] [int] NOT NULL,
	[opisto_tai_ammatillisen_korkea_asteen_tutkinto_sama_aiempi_iscfinarrow2013_id] [int] NOT NULL,
	[korkeakoulututkinto_sama_aiempi_iscfinarrow2013_id] [int] NOT NULL,
	[toisen_asteen_tutkinto_sama_aiempi_iscfinarrow2013_id] [int] NOT NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_tutkinnon_suorittaneiden_myohempi_koulutus_4_8]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_tutkinnon_suorittaneiden_myohempi_koulutus_4_8]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_tutkinnon_suorittaneiden_myohempi_koulutus_4_8](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[tarkastelujakso_koodi] [nvarchar](20) NOT NULL,
	[tarkastelujakso_id] [int] NOT NULL,
	[sukupuoli_koodi] [nvarchar](10) NULL,
	[sukupuoli_id] [int] NOT NULL,
	[aidinkieli_versio1_koodi] [nvarchar](2) NULL,
	[aidinkieli_id] [int] NOT NULL,
	[suorv] [varchar](4) NULL,
	[suorlk] [varchar](1) NULL,
	[suorituskausikoodi] [varchar](8) NULL,
	[suorituskausi_id] [nvarchar](10) NOT NULL,
	[koulutusluokitus_avain] [nvarchar](6) NULL,
	[koulutusluokitus_id] [int] NOT NULL,
	[alvv] [varchar](4) NULL,
	[allk] [varchar](1) NULL,
	[aloituskausikoodi] [varchar](8) NULL,
	[aloituskausi_id] [nvarchar](10) NOT NULL,
	[oppisopimuskoulutus_koodi] [nvarchar](2) NULL,
	[oppisopimuskoulutus_id] [int] NOT NULL,
	[ammatillisen_koulutuksen_koulutuslaji_koodi] [nvarchar](2) NULL,
	[ammatillisen_koulutuksen_koulutuslaji_id] [int] NOT NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus_koodi] [nvarchar](2) NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus_id] [int] NOT NULL,
	[nuorten_aikuisten_koulutus_amm_koodi] [nvarchar](2) NULL,
	[nuorten_aikuisten_koulutus_amm_id] [int] NOT NULL,
	[syntv] [varchar](4) NULL,
	[ika_avain] [nvarchar](10) NULL,
	[ika_id] [int] NOT NULL,
	[henkiloiden_lkm] [int] NULL,
	[lu_henkiloiden_lkm] [int] NULL,
	[lukoulk] [varchar](6) NULL,
	[lu_myohempi_koulutusluokitus_id] [int] NOT NULL,
	[lusuorv] [varchar](4) NULL,
	[luaikoul] [varchar](1) NULL,
	[lu_nuorten_aikuisten_koulutus_amm_id] [int] NOT NULL,
	[lu_ika] [int] NULL,
	[lu_ika_id] [int] NOT NULL,
	[lu_myohempi_tutkinto_suoritettu] [varchar](1) NOT NULL,
	[lu_myohempi_tutkinto_suoritettu_id] [int] NOT NULL,
	[ammlkm_id] [int] NOT NULL,
	[amm_henkiloiden_lkm] [int] NULL,
	[ammkoulk] [varchar](6) NULL,
	[amm_myohempi_koulutusluokitus_id] [int] NOT NULL,
	[ammsuorv] [varchar](4) NULL,
	[ammoppis] [varchar](1) NULL,
	[ammoppis_id] [int] NOT NULL,
	[ammtutklaja] [varchar](1) NULL,
	[ammtutklaja_id] [int] NOT NULL,
	[ammtutktav] [varchar](1) NULL,
	[ammtutktav_id] [int] NOT NULL,
	[ammatillinen_koulutus_ryhma] [nvarchar](10) NULL,
	[ammatillinen_koulutus_ryhma_id] [int] NOT NULL,
	[amm_ika] [int] NULL,
	[amm_ika_id] [int] NOT NULL,
	[amm_myohempi_tutkinto_suoritettu] [varchar](1) NOT NULL,
	[amm_myohempi_tutkinto_suoritettu_id] [int] NOT NULL,
	[opist_henkiloiden_lkm] [int] NULL,
	[opistkoulk] [varchar](6) NULL,
	[opist_myohempi_koulutusluokitus_id] [int] NOT NULL,
	[opistsuorv] [varchar](4) NULL,
	[opist_ika] [int] NULL,
	[opist_ika_id] [int] NOT NULL,
	[opist_myohempi_tutkinto_suoritettu] [varchar](1) NOT NULL,
	[opist_myohempi_tutkinto_suoritettu_id] [int] NOT NULL,
	[ammka_henkiloiden_lkm] [int] NULL,
	[ammkakoulk] [varchar](6) NULL,
	[ammka_myohempi_koulutusluokitus_id] [int] NOT NULL,
	[ammkasuorv] [varchar](4) NULL,
	[ammka_ika] [int] NULL,
	[ammka_ika_id] [int] NOT NULL,
	[ammka_myohempi_tutkinto_suoritettu] [varchar](1) NOT NULL,
	[ammka_myohempi_tutkinto_suoritettu_id] [int] NOT NULL,
	[amklkm_id] [int] NOT NULL,
	[amk_henkiloiden_lkm] [int] NULL,
	[amkkoulk] [varchar](6) NULL,
	[amk_myohempi_koulutusluokitus_id] [int] NOT NULL,
	[amksuorv] [varchar](4) NULL,
	[amkaikoul] [varchar](1) NULL,
	[amkaikoul_id] [int] NOT NULL,
	[amk_ika] [int] NULL,
	[amk_ika_id] [int] NOT NULL,
	[amk_myohempi_tutkinto_suoritettu] [varchar](1) NOT NULL,
	[amk_myohempi_tutkinto_suoritettu_id] [int] NOT NULL,
	[akklkm_id] [int] NOT NULL,
	[akk_henkiloiden_lkm] [int] NULL,
	[akkkoulk] [varchar](6) NULL,
	[akk_myohempi_koulutusluokitus_id] [int] NOT NULL,
	[akksuorv] [varchar](4) NULL,
	[akk_ika] [int] NULL,
	[akk_ika_id] [int] NOT NULL,
	[akk_myohempi_tutkinto_suoritettu] [varchar](1) NOT NULL,
	[akk_myohempi_tutkinto_suoritettu_id] [int] NOT NULL,
	[ylamklkm_henkiloiden_lkm] [int] NULL,
	[ylamkkoulk] [varchar](6) NULL,
	[ylamk_myohempi_koulutusluokitus_id] [int] NOT NULL,
	[ylamksuorv] [varchar](4) NULL,
	[ylamk_ika] [int] NULL,
	[ylamk_ika_id] [int] NOT NULL,
	[ylamk_myohempi_tutkinto_suoritettu] [varchar](1) NOT NULL,
	[ylamk_myohempi_tutkinto_suoritettu_id] [int] NOT NULL,
	[ykklkm_id] [int] NOT NULL,
	[ykk_henkiloiden_lkm] [int] NULL,
	[ykkkoulk] [varchar](6) NULL,
	[ykk_myohempi_koulutusluokitus_id] [int] NOT NULL,
	[ykksuorv] [varchar](4) NULL,
	[ykk_ika] [int] NULL,
	[ykk_ika_id] [int] NOT NULL,
	[ykk_myohempi_tutkinto_suoritettu] [varchar](1) NOT NULL,
	[ykk_myohempi_tutkinto_suoritettu_id] [int] NOT NULL,
	[laaker_henkiloiden_lkm] [int] NULL,
	[laakerkoulk] [varchar](6) NULL,
	[laaker_myohempi_koulutusluokitus_id] [int] NOT NULL,
	[laakersuorv] [varchar](4) NULL,
	[laaker_ika] [int] NULL,
	[laaker_ika_id] [int] NOT NULL,
	[laaker_myohempi_tutkinto_suoritettu] [varchar](1) NOT NULL,
	[laaker_myohempi_tutkinto_suoritettu_id] [int] NOT NULL,
	[lis_henkiloiden_lkm] [int] NULL,
	[liskoulk] [varchar](6) NULL,
	[lis_myohempi_koulutusluokitus_id] [int] NOT NULL,
	[lissuorv] [varchar](4) NULL,
	[lis_ika] [int] NULL,
	[lis_ika_id] [int] NOT NULL,
	[lis_myohempi_tutkinto_suoritettu] [varchar](1) NOT NULL,
	[lis_myohempi_tutkinto_suoritettu_id] [int] NOT NULL,
	[toht_henkiloiden_lkm] [int] NULL,
	[tohtkoulk] [varchar](6) NULL,
	[toht_myohempi_koulutusluokitus_id] [int] NOT NULL,
	[tohtsuorv] [varchar](4) NULL,
	[toht_ika] [int] NULL,
	[toht_ika_id] [int] NOT NULL,
	[toht_myohempi_tutkinto_suoritettu] [varchar](1) NOT NULL,
	[toht_myohempi_tutkinto_suoritettu_id] [int] NOT NULL,
	[yliopistotutkinto_myohempi_suoritettu_id] [int] NOT NULL,
	[yo_jatkotutkinto_myohempi_suoritettu_id] [int] NOT NULL,
	[opisto_tai_ammatillisen_korkea_asteen_tutkinto_myohempi_suoritettu_id] [int] NOT NULL,
	[korkeakoulututkinto_myohempi_suoritettu_id] [int] NOT NULL,
	[toisen_asteen_tutkinto_myohempi_suoritettu_id] [int] NOT NULL,
	[ammatillisen_tutkinto_myohempi_suoritettu_ryhma1_id] [int] NOT NULL,
	[ammatillisen_tutkinto_myohempi_suoritettu_ryhma2_id] [int] NOT NULL,
	[ammatillisen_tutkinto_myohempi_suoritettu_ryhma3_id] [int] NOT NULL,
	[myohemman_yliopistotutkinnon_suorittaneiden_lkm] [int] NULL,
	[myohemman_yo_jatkotutkinnon_suorittaneiden_lkm] [int] NULL,
	[myohemman_opisto_tai_ammatillisen_korkea_asteen_tutkinnon_suorittaneiden_lkm] [int] NULL,
	[myohemman_korkeakoulututkinnon_suorittaneiden_lkm] [int] NULL,
	[myohemman_toisen_asteen_tutkinnon_suorittaneiden_lkm] [int] NULL,
	[myohemman_ammatillisen_tutkinnon_ryhma1_suorittaneiden_lkm] [int] NULL,
	[myohemman_ammatillisen_tutkinnon_ryhma2_suorittaneiden_lkm] [int] NULL,
	[myohemman_ammatillisen_tutkinnon_ryhma3_suorittaneiden_lkm] [int] NULL,
	[lu_sama_myohempi_koulutusala2002_id] [int] NOT NULL,
	[amm_sama_myohempi_koulutusala2002_id] [int] NOT NULL,
	[opist_sama_myohempi_koulutusala2002_id] [int] NOT NULL,
	[ammka_sama_myohempi_koulutusala2002_id] [int] NOT NULL,
	[akk_sama_myohempi_koulutusala2002_id] [int] NOT NULL,
	[amk_sama_myohempi_koulutusala2002_id] [int] NOT NULL,
	[ylamk_sama_myohempi_koulutusala2002_id] [int] NOT NULL,
	[ykk_sama_myohempi_koulutusala2002_id] [int] NOT NULL,
	[laaker_sama_myohempi_koulutusala2002_id] [int] NOT NULL,
	[lis_sama_myohempi_koulutusala2002_id] [int] NOT NULL,
	[toht_sama_myohempi_koulutusala2002_id] [int] NOT NULL,
	[yliopistotutkinto_sama_myohempi_koulutusala2002_id] [int] NOT NULL,
	[yo_jatkotutkinto_sama_myohempi_koulutusala2002_id] [int] NOT NULL,
	[opisto_tai_ammatillisen_korkea_asteen_tutkinto_sama_myohempi_koulutusala2002_id] [int] NOT NULL,
	[korkeakoulututkinto_sama_myohempi_koulutusala2002_id] [int] NOT NULL,
	[toisen_asteen_tutkinto_sama_myohempi_koulutusala2002_id] [int] NOT NULL,
	[lu_sama_myohempi_opintoala2002_id] [int] NOT NULL,
	[amm_sama_myohempi_opintoala2002_id] [int] NOT NULL,
	[opist_sama_myohempi_opintoala2002_id] [int] NOT NULL,
	[ammka_sama_myohempi_opintoala2002_id] [int] NOT NULL,
	[akk_sama_myohempi_opintoala2002_id] [int] NOT NULL,
	[amk_sama_myohempi_opintoala2002_id] [int] NOT NULL,
	[ylamk_sama_myohempi_opintoala2002_id] [int] NOT NULL,
	[ykk_sama_myohempi_opintoala2002_id] [int] NOT NULL,
	[laaker_sama_myohempi_opintoala2002_id] [int] NOT NULL,
	[lis_sama_myohempi_opintoala2002_id] [int] NOT NULL,
	[toht_sama_myohempi_opintoala2002_id] [int] NOT NULL,
	[yliopistotutkinto_sama_myohempi_opintoala2002_id] [int] NOT NULL,
	[yo_jatkotutkinto_sama_myohempi_opintoala2002_id] [int] NOT NULL,
	[opisto_tai_ammatillisen_korkea_asteen_tutkinto_sama_myohempi_opintoala2002_id] [int] NOT NULL,
	[korkeakoulututkinto_sama_myohempi_opintoala2002_id] [int] NOT NULL,
	[toisen_asteen_tutkinto_sama_myohempi_opintoala2002_id] [int] NOT NULL,
	[lu_sama_myohempi_opintoala1995_id] [int] NOT NULL,
	[amm_sama_myohempi_opintoala1995_id] [int] NOT NULL,
	[opist_sama_myohempi_opintoala1995_id] [int] NOT NULL,
	[ammka_sama_myohempi_opintoala1995_id] [int] NOT NULL,
	[akk_sama_myohempi_opintoala1995_id] [int] NOT NULL,
	[amk_sama_myohempi_opintoala1995_id] [int] NOT NULL,
	[ylamk_sama_myohempi_opintoala1995_id] [int] NOT NULL,
	[ykk_sama_myohempi_opintoala1995_id] [int] NOT NULL,
	[laaker_sama_myohempi_opintoala1995_id] [int] NOT NULL,
	[lis_sama_myohempi_opintoala1995_id] [int] NOT NULL,
	[toht_sama_myohempi_opintoala1995_id] [int] NOT NULL,
	[yliopistotutkinto_sama_myohempi_opintoala1995_id] [int] NOT NULL,
	[yo_jatkotutkinto_sama_myohempi_opintoala1995_id] [int] NOT NULL,
	[opisto_tai_ammatillisen_korkea_asteen_tutkinto_sama_myohempi_opintoala1995_id] [int] NOT NULL,
	[korkeakoulututkinto_sama_myohempi_opintoala1995_id] [int] NOT NULL,
	[toisen_asteen_tutkinto_sama_myohempi_opintoala1995_id] [int] NOT NULL,
	[lu_sama_myohempi_iscfibroad2013_id] [int] NOT NULL,
	[amm_sama_myohempi_iscfibroad2013_id] [int] NOT NULL,
	[opist_sama_myohempi_iscfibroad2013_id] [int] NOT NULL,
	[ammka_sama_myohempi_iscfibroad2013_id] [int] NOT NULL,
	[akk_sama_myohempi_iscfibroad2013_id] [int] NOT NULL,
	[amk_sama_myohempi_iscfibroad2013_id] [int] NOT NULL,
	[ylamk_sama_myohempi_iscfibroad2013_id] [int] NOT NULL,
	[ykk_sama_myohempi_iscfibroad2013_id] [int] NOT NULL,
	[laaker_sama_myohempi_iscfibroad2013_id] [int] NOT NULL,
	[lis_sama_myohempi_iscfibroad2013_id] [int] NOT NULL,
	[toht_sama_myohempi_iscfibroad2013_id] [int] NOT NULL,
	[yliopistotutkinto_sama_myohempi_iscfibroad2013_id] [int] NOT NULL,
	[yo_jatkotutkinto_sama_myohempi_iscfibroad2013_id] [int] NOT NULL,
	[opisto_tai_ammatillisen_korkea_asteen_tutkinto_sama_myohempi_iscfibroad2013_id] [int] NOT NULL,
	[korkeakoulututkinto_sama_myohempi_iscfibroad2013_id] [int] NOT NULL,
	[toisen_asteen_tutkinto_sama_myohempi_iscfibroad2013_id] [int] NOT NULL,
	[lu_sama_myohempi_iscfinarrow2013_id] [int] NOT NULL,
	[amm_sama_myohempi_iscfinarrow2013_id] [int] NOT NULL,
	[opist_sama_myohempi_iscfinarrow2013_id] [int] NOT NULL,
	[ammka_sama_myohempi_iscfinarrow2013_id] [int] NOT NULL,
	[akk_sama_myohempi_iscfinarrow2013_id] [int] NOT NULL,
	[amk_sama_myohempi_iscfinarrow2013_id] [int] NOT NULL,
	[ylamk_sama_myohempi_iscfinarrow2013_id] [int] NOT NULL,
	[ykk_sama_myohempi_iscfinarrow2013_id] [int] NOT NULL,
	[laaker_sama_myohempi_iscfinarrow2013_id] [int] NOT NULL,
	[lis_sama_myohempi_iscfinarrow2013_id] [int] NOT NULL,
	[toht_sama_myohempi_iscfinarrow2013_id] [int] NOT NULL,
	[yliopistotutkinto_sama_myohempi_iscfinarrow2013_id] [int] NOT NULL,
	[yo_jatkotutkinto_sama_myohempi_iscfinarrow2013_id] [int] NOT NULL,
	[opisto_tai_ammatillisen_korkea_asteen_tutkinto_sama_myohempi_iscfinarrow2013_id] [int] NOT NULL,
	[korkeakoulututkinto_sama_myohempi_iscfinarrow2013_id] [int] NOT NULL,
	[toisen_asteen_tutkinto_sama_myohempi_iscfinarrow2013_id] [int] NOT NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_tutkinnon_suorittaneiden_osuus_aloittaneista_erityisopiskelijat]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_tutkinnon_suorittaneiden_osuus_aloittaneista_erityisopiskelijat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_tutkinnon_suorittaneiden_osuus_aloittaneista_erityisopiskelijat](
	[tilv] [int] NULL,
	[lahde_id] [int] NULL,
	[alvv] [int] NULL,
	[oppilaitoksen_taustatiedot_id] [int] NULL,
	[koulutusala_id] [int] NULL,
	[alueluokitus_id] [int] NULL,
	[suorv] [int] NULL,
	[suoritettu_koulutusala_id] [int] NULL,
	[suoritettu_tutkinto_id] [int] NULL,
	[tarkastelujakso_id] [int] NULL,
	[lkm] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_tutkinnon_suorittaneiden_osuus_poistumasta_erityisopiskelijat]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_tutkinnon_suorittaneiden_osuus_poistumasta_erityisopiskelijat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_tutkinnon_suorittaneiden_osuus_poistumasta_erityisopiskelijat](
	[tilv] [nvarchar](4) NOT NULL,
	[lahde_id] [int] NOT NULL,
	[alueluokitus_id] [int] NOT NULL,
	[oppilaitoksen_taustatiedot_id] [int] NOT NULL,
	[koulutusluokitus_id] [int] NOT NULL,
	[ophal_kylla_ei_id] [int] NOT NULL,
	[hallinnonala2_id] [int] NOT NULL,
	[tutkinnon_alueluokitus_id] [int] NOT NULL,
	[tutkinnon_oppilaitoksen_taustatiedot_id] [int] NOT NULL,
	[tutkinnon_koulutusluokitus_id] [int] NOT NULL,
	[seurv_alueluokitus_id] [int] NOT NULL,
	[seurv_oppilaitoksen_taustatiedot_id] [int] NOT NULL,
	[seurv_koulutusluokitus_id] [int] NOT NULL,
	[lkm] [int] NOT NULL,
	[opintojen_kulku_koul_jarj_mukaan_tutkinto_priorisoitu_id] [int] NOT NULL,
	[opintojen_kulku_koul_jarj_mukaan_opiskelu_priorisoitu_id] [int] NOT NULL,
	[opintojen_kulku_koul_maakunnan_mukaan_tutkinto_priorisoitu_id] [int] NOT NULL,
	[opintojen_kulku_koul_maakunnan_mukaan_opiskelu_priorisoitu_id] [int] NOT NULL,
	[opintojen_kulku_koul_asteen_mukaan_tutkinto_priorisoitu_id] [int] NOT NULL,
	[opintojen_kulku_koul_asteen_mukaan_opiskelu_priorisoitu_id] [int] NOT NULL,
	[opintojen_kulku_koul_alan_mukaan_tutkinto_priorisoitu_id] [int] NOT NULL,
	[opintojen_kulku_koul_alan_mukaan_opiskelu_priorisoitu_id] [int] NOT NULL,
	[opintojen_kulku_opintoalan_mukaan_tutkinto_priorisoitu_id] [int] NOT NULL,
	[opintojen_kulku_opintoalan_mukaan_opiskelu_priorisoitu_id] [int] NOT NULL,
	[tutkinto_tavoitet_koul_järjeställä_tutkinto_priorisoitu_id] [int] NOT NULL,
	[tutkinto_tavoitet_koul_järjeställä_opiskelu_priorisoitu_id] [int] NOT NULL,
	[opiskelee_tavoitet_koul_järjeställä_tutkinto_priorisoitu_id] [int] NOT NULL,
	[opiskelee_tavoitet_koul_järjeställä_opiskelu_priorisoitu_id] [int] NOT NULL,
	[tutkinto_tavoitet_maakunnassa_tutkinto_priorisoitu_id] [int] NOT NULL,
	[tutkinto_tavoitet_maakunnassa_opiskelu_priorisoitu_id] [int] NOT NULL,
	[opiskelee_tavoitet_maakunnassa_tutkinto_priorisoitu_id] [int] NOT NULL,
	[opiskelee_tavoitet_maakunnassa_opiskelu_priorisoitu_id] [int] NOT NULL,
	[tutkinto_tavoitet_koul_asteella_tutkinto_priorisoitu_id] [int] NOT NULL,
	[tutkinto_tavoitet_koul_asteella_opiskelu_priorisoitu_id] [int] NOT NULL,
	[opiskelee_tavoitet_koul_asteella_tutkinto_priorisoitu_id] [int] NOT NULL,
	[opiskelee_tavoitet_koul_asteella_opiskelu_priorisoitu_id] [int] NOT NULL,
	[tutkinto_tavoitet_koul_alalla_tutkinto_priorisoitu_id] [int] NOT NULL,
	[tutkinto_tavoitet_koul_alalla_opiskelu_priorisoitu_id] [int] NOT NULL,
	[opiskelee_tavoitet_koul_alalla_tutkinto_priorisoitu_id] [int] NOT NULL,
	[opiskelee_tavoitet_koul_alalla_opiskelu_priorisoitu_id] [int] NOT NULL,
	[tutkinto_tavoitet_opintoalalla_tutkinto_priorisoitu_id] [int] NOT NULL,
	[tutkinto_tavoitet_opintoalalla_opiskelu_priorisoitu_id] [int] NOT NULL,
	[opiskelee_tavoitet_opintoalalla_tutkinto_priorisoitu_id] [int] NOT NULL,
	[opiskelee_tavoitet_opintoalalla_opiskelu_priorisoitu_id] [int] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_tyollisten_ammattisiirtymat_ja_aiemmat_ammatit]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_tyollisten_ammattisiirtymat_ja_aiemmat_ammatit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_tyollisten_ammattisiirtymat_ja_aiemmat_ammatit](
	[tilastovuosi] [varchar](4) NULL,
	[sukupuoli_koodi] [varchar](2) NULL,
	[sukupuoli_id] [int] NULL,
	[aidinkieli_versio1_koodi] [varchar](2) NULL,
	[aidinkieli_versio1_id] [int] NULL,
	[ika_avain] [varchar](4) NULL,
	[ika_id] [int] NULL,
	[tyopaikan_sijaintimaakunta_avain] [varchar](6) NULL,
	[tyopaikan_sijaintimaakunta_id] [int] NULL,
	[tyopaikan_sijaintimaakunta_historia_id] [int] NULL,
	[mitenna_ammattiryhma2_koodi] [varchar](50) NULL,
	[mitenna_ammatti_id] [int] NULL,
	[paaasiallinen_toiminta_siirtyman_paassa_koodi] [varchar](2) NULL,
	[paaasiallinen_toiminta_siirtyman_paassa_id] [int] NULL,
	[tyopaikan_sijainti_v_tilastovuonna_avain] [varchar](1) NULL,
	[tyopaikan_sijainti_v_tilastovuonna_id] [int] NULL,
	[mitenna_ammattiryhma2_siirtyman_paassa_koodi] [varchar](50) NULL,
	[mitenna_ammatti_siirtyman_paassa_id] [int] NULL,
	[lkm] [int] NULL,
	[suhteellinen_ajankohta_avain] [varchar](10) NOT NULL,
	[suhteellinen_ajankohta_id] [int] NULL,
	[perusjoukko_tyolliset_avain] [varchar](4) NULL,
	[perusjoukko_tyolliset_id] [int] NULL,
	[siirtyman_tarkastelusuunta_avain] [int] NOT NULL,
	[siirtyman_tarkastelusuunta_id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_tyossakayvat_ammateittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_tyossakayvat_ammateittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_tyossakayvat_ammateittain](
	[tilv] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[aineisto] [nvarchar](8) NULL,
	[laatu_id] [int] NOT NULL,
	[tietolahde] [nvarchar](10) NULL,
	[rivinumero] [int] NULL,
	[lkm] [int] NULL,
	[amm2001_m1] [nvarchar](20) NULL,
	[amm2001_m2] [nvarchar](20) NULL,
	[mitenna_ammatti2_id] [int] NOT NULL,
	[amm2001_m] [nvarchar](20) NULL,
	[mitenna_ammatti_id] [int] NOT NULL,
	[sp] [nvarchar](10) NULL,
	[sukupuoli_id] [int] NOT NULL,
	[aikielir1] [nvarchar](10) NULL,
	[aikielir1_id] [int] NOT NULL,
	[ikar1] [nvarchar](10) NULL,
	[ikar1_koodi] [nvarchar](10) NOT NULL,
	[ika_id] [int] NOT NULL,
	[opmast] [nvarchar](10) NULL,
	[koulutusaste_id] [int] NOT NULL,
	[tutklaja] [nvarchar](10) NULL,
	[tutkintolaji_id] [int] NOT NULL,
	[opmopa] [nvarchar](10) NULL,
	[koulutusluokitus_id] [int] NOT NULL,
	[opintoala2002_koodi] [nvarchar](3) NOT NULL,
	[tmaak] [nvarchar](10) NULL,
	[tyomaakunta_historia_id] [int] NULL,
	[tyomaakunta_id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_ulkomaalaiset_maan_kansalaisuuden_aidinkielen_mukaan_2_13_14_15]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_ulkomaalaiset_maan_kansalaisuuden_aidinkielen_mukaan_2_13_14_15]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_ulkomaalaiset_maan_kansalaisuuden_aidinkielen_mukaan_2_13_14_15](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[Nakokulma] [nvarchar](50) NULL,
	[lahde_avain] [nvarchar](10) NULL,
	[lahde_id] [int] NOT NULL,
	[koulutusluokitus_avain] [nvarchar](6) NULL,
	[koulutusluokitus_id] [int] NOT NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus_avain] [nvarchar](2) NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus_id] [int] NOT NULL,
	[ammatillisen_koulutuksen_koulutuslaji_avain] [nvarchar](2) NULL,
	[ammatillisen_koulutuksen_koulutuslaji_id] [int] NOT NULL,
	[opetushallinnon_koulutus_avain] [nvarchar](2) NULL,
	[opetushallinnon_koulutus_id] [int] NOT NULL,
	[koulutuksen_opetuskieli_avain] [nvarchar](10) NULL,
	[koulutuksen_opetuskieli_id] [int] NOT NULL,
	[nuorten_aikuisten_koulutus_amm_avain] [nvarchar](2) NULL,
	[nuorten_aikuisten_koulutus_amm_id] [int] NOT NULL,
	[koulutuksen_sijaintimaakunta_avain] [nvarchar](6) NULL,
	[koulutuksen_sijaintimaakunta_id] [int] NOT NULL,
	[sukupuoli_avain] [nvarchar](2) NULL,
	[sukupuoli_id] [int] NOT NULL,
	[aikuisopiskelija_avain] [nvarchar](2) NULL,
	[aikuisopiskelija_id] [int] NOT NULL,
	[koulutuksen_aloittamislukuvuosi] [nvarchar](4) NULL,
	[koulutuksen_aloittamislukukausi] [nvarchar](1) NULL,
	[koulutuksen_aloittamislukukausi_avain] [nvarchar](5) NULL,
	[koulutuksen_aloittamislukukausi_id] [nvarchar](10) NOT NULL,
	[kirjoillaolo_tammikuu_avain] [nvarchar](10) NULL,
	[kirjoillaolo_tammikuu_id] [int] NOT NULL,
	[kirjoillaolo_syyskuu_avain] [nvarchar](10) NULL,
	[kirjoillaolo_syyskuu_id] [int] NOT NULL,
	[kotikunnan_kuntaryhma_avain] [nvarchar](2) NULL,
	[kotikunnan_kuntaryhma_id] [int] NOT NULL,
	[koulutusryhma_koulutuslaji3_avain] [nvarchar](2) NULL,
	[koulutusryhma_koulutuslaji3_id] [int] NOT NULL,
	[kansalaisuus_maa_avain] [nvarchar](3) NULL,
	[kansalaisuus_maa_id] [int] NOT NULL,
	[kansalaisuus_versio1_avain] [nvarchar](2) NULL,
	[kansalaisuus_versio1_id] [int] NOT NULL,
	[syntymavaltio_maa_avain] [nvarchar](3) NULL,
	[syntymavaltio_maa_id] [int] NOT NULL,
	[syntymavaltio_kansalaisuus_versio1_avain] [nvarchar](2) NULL,
	[syntymavaltio_kansalaisuus_versio1_id] [int] NOT NULL,
	[aidinkieli_kieli_avain] [nvarchar](10) NULL,
	[aidinkieli_kieli_id] [int] NOT NULL,
	[aidinkieli_versio3_avain] [nvarchar](2) NULL,
	[aidinkieli_versio3_id] [int] NOT NULL,
	[koulutussektori_avain] [nvarchar](2) NULL,
	[koulutussektori_id] [int] NOT NULL,
	[opiskelijoiden_lkm] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Vaestoennuste]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Vaestoennuste]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Vaestoennuste](
	[ennv] [varchar](4) NULL,
	[tilvaskun] [varchar](3) NULL,
	[tilvaskun_id] [int] NULL,
	[sp_id] [int] NULL,
	[ika_id] [int] NULL,
	[lkm] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_VKP_4_2_Vaeston_koulutusrakenne_ja_paaasiallinen_toiminta]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_VKP_4_2_Vaeston_koulutusrakenne_ja_paaasiallinen_toiminta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_VKP_4_2_Vaeston_koulutusrakenne_ja_paaasiallinen_toiminta](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[aineisto] [nvarchar](2) NULL,
	[aineisto_id] [int] NOT NULL,
	[sukupuoli] [nvarchar](1) NULL,
	[sukupuoli_id] [int] NOT NULL,
	[aidinkieli_versio1] [nvarchar](2) NULL,
	[aidinkieli_versio1_id] [int] NOT NULL,
	[syntymavuosi] [nvarchar](10) NULL,
	[syntymavuosi_id] [nvarchar](10) NOT NULL,
	[asuinmaakunta] [nvarchar](2) NULL,
	[asuinmaakunta_id] [int] NOT NULL,
	[asuinmaakunta_historia_id] [int] NOT NULL,
	[kansalaisuus_versio1] [nvarchar](1) NULL,
	[kansalaisuus_versio1_id] [int] NOT NULL,
	[pohjoismaa] [nvarchar](1) NULL,
	[pohjoismaa_id] [int] NOT NULL,
	[eumaa] [nvarchar](1) NULL,
	[eumaa_id] [int] NOT NULL,
	[etamaa] [nvarchar](1) NULL,
	[etamaa_id] [int] NOT NULL,
	[tutkinnon_suoritusvuosi] [nvarchar](10) NULL,
	[tutkinnon_suoritusvuosi_id] [nvarchar](10) NOT NULL,
	[tutkinnon_suoritusmaakunta] [nvarchar](2) NULL,
	[tutkinnon_suoritusmaakunta_id] [int] NOT NULL,
	[tutkinnon_suoritusmaakunta_historia_id] [int] NOT NULL,
	[koulutusluokitus] [nvarchar](6) NULL,
	[koulutusluokitus_id] [int] NOT NULL,
	[koulutusluokitus_historia_id] [int] NOT NULL,
	[koulutusmuoto] [nvarchar](1) NULL,
	[koulutusmuoto_id] [int] NOT NULL,
	[oppisopimuskoulutus] [nvarchar](1) NULL,
	[oppisopimuskoulutus_id] [int] NOT NULL,
	[ammatillisen_koulutuksen_koulutuslaji_tutkintorekisterissa] [nvarchar](1) NULL,
	[ammatillisen_koulutuksen_koulutuslaji_tutkintorekisterissa_id] [int] NOT NULL,
	[paaasiallinen_toiminta_versio6] [nvarchar](2) NULL,
	[paaasiallinen_toiminta_versio6_id] [int] NOT NULL,
	[ammattiluokitus_2001] [nvarchar](2) NULL,
	[ammattiluokitus_2001_id] [int] NOT NULL,
	[ammattiluokitus_2010] [nvarchar](2) NULL,
	[ammattiluokitus_2010_id] [int] NOT NULL,
	[tyossakayntitilaston_tyonantajasektori] [nvarchar](2) NULL,
	[tyossakayntitilaston_tyonantajasektori_id] [int] NOT NULL,
	[lukumaara] [int] NOT NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NOT NULL,
	[vaeston_ika_1v] [nvarchar](10) NULL,
	[vaeston_ika_1v_id] [int] NOT NULL,
	[vaeston_ika_5v] [nvarchar](10) NULL,
	[vaeston_ika_5v_id] [int] NOT NULL,
	[tutkinnon_suoritusika_1v] [nvarchar](10) NULL,
	[tutkinnon_suoritusika_1v_id] [int] NOT NULL,
	[tutkinnon_ika_1v] [nvarchar](10) NULL,
	[tutkinnon_ika_1v_id] [int] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_yli_15-vuotiaat_koulutuksen_kielen_ja_asuinkunnan_mukaan]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_yli_15-vuotiaat_koulutuksen_kielen_ja_asuinkunnan_mukaan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_yli_15-vuotiaat_koulutuksen_kielen_ja_asuinkunnan_mukaan](
	[tilv] [varchar](4) NULL,
	[aidinkieli_I_id] [int] NULL,
	[aidinkieli_II_id] [int] NULL,
	[alueluokitus_id] [int] NULL,
	[ika_id] [int] NULL,
	[koulutusala_id] [int] NULL,
	[koulutusaste_id] [int] NULL,
	[lkm] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_rahoitus]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_rahoitus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_rahoitus](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[yosairaala_avain] [varchar](5) NULL,
	[yosairaala_id] [int] NOT NULL,
	[rahoituslahde_avain] [varchar](10) NOT NULL,
	[rahoituslahde_id] [int] NOT NULL,
	[tutkimusrahoitus] [decimal](10, 3) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_tutkimushenkilokunta_alueittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_tutkimushenkilokunta_alueittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_tutkimushenkilokunta_alueittain](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[yosairaala_avain] [varchar](5) NULL,
	[yosairaala_id] [int] NOT NULL,
	[alueluokitus_avain] [varchar](3) NULL,
	[alueluokitus_id] [int] NOT NULL,
	[lkm_tutkimushenkilokunta_alueittain] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_tutkimushenkilokunta_paatieteenaloittain_tehtavittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_tutkimushenkilokunta_paatieteenaloittain_tehtavittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_tutkimushenkilokunta_paatieteenaloittain_tehtavittain](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[yosairaala_avain] [varchar](5) NULL,
	[yosairaala_id] [int] NOT NULL,
	[sukupuoli_avain] [varchar](1) NOT NULL,
	[sukupuoli_id] [int] NOT NULL,
	[tehtava_avain] [varchar](7) NOT NULL,
	[tehtava_id] [int] NOT NULL,
	[tieteenala_avain] [varchar](6) NOT NULL,
	[tieteenala_id] [int] NOT NULL,
	[lkm_tutkimushenkilokunta_paatieteenaloittain_tehtavittain] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_tutkimushenkilokunta_tutkintotasoittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_tutkimushenkilokunta_tutkintotasoittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_tutkimushenkilokunta_tutkintotasoittain](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[yosairaala_avain] [varchar](5) NULL,
	[yosairaala_id] [int] NOT NULL,
	[sukupuoli_avain] [varchar](1) NOT NULL,
	[sukupuoli_id] [int] NOT NULL,
	[tutkintotaso_avain] [varchar](2) NOT NULL,
	[tutkintotaso_id] [int] NOT NULL,
	[lkm_tutkimushenkilokunta_tutkintotasoittain] [int] NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_tutkimusmenot]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_tutkimusmenot]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_tutkimusmenot](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[yosairaala_avain] [varchar](5) NULL,
	[yosairaala_id] [int] NOT NULL,
	[menokohde_avain] [varchar](10) NOT NULL,
	[menokohde_id] [int] NOT NULL,
	[tutkimusmenot] [decimal](10, 3) NULL,
	[tutkimusmenot_arvio_seuraavatilastovuosi] [decimal](10, 3) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_tutkimusmenot_alueittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_tutkimusmenot_alueittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_tutkimusmenot_alueittain](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[yosairaala_avain] [varchar](5) NULL,
	[yosairaala_id] [int] NOT NULL,
	[alueluokitus_avain] [varchar](3) NULL,
	[alueluokitus_id] [int] NOT NULL,
	[tutkimusmenot_alueittain] [decimal](35, 3) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_tutkimusmenot_tieteenaloittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_tutkimusmenot_tieteenaloittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_tutkimusmenot_tieteenaloittain](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[yosairaala_avain] [varchar](5) NULL,
	[yosairaala_id] [int] NOT NULL,
	[tieteenala_avain] [varchar](10) NULL,
	[tieteenala_id] [int] NOT NULL,
	[tutkimusmenot_tieteenaloittain] [numeric](27, 11) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_tutkimustyovuodet_alueittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_tutkimustyovuodet_alueittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_tutkimustyovuodet_alueittain](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[yosairaala_avain] [varchar](5) NULL,
	[yosairaala_id] [int] NOT NULL,
	[alueluokitus_avain] [varchar](3) NULL,
	[alueluokitus_id] [int] NOT NULL,
	[lkm_tutkimustyovuodet_alueittain] [decimal](35, 3) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_tutkimustyovuodet_tehtavittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_tutkimustyovuodet_tehtavittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_tutkimustyovuodet_tehtavittain](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[yosairaala_avain] [varchar](5) NULL,
	[yosairaala_id] [int] NOT NULL,
	[tehtava_avain] [varchar](7) NOT NULL,
	[tehtava_id] [int] NOT NULL,
	[lkm_tutkimustyovuodet_tehtavittain] [decimal](12, 3) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_tutkimustyovuodet_tutkintotasoittain]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_tutkimustyovuodet_tutkintotasoittain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_Yosairaaloiden_tutkimus_ja_kehitys_tutkimustyovuodet_tutkintotasoittain](
	[tilastovuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[yosairaala_avain] [varchar](5) NULL,
	[yosairaala_id] [int] NOT NULL,
	[tutkintotaso_avain] [varchar](2) NOT NULL,
	[tutkintotaso_id] [int] NOT NULL,
	[lkm_tutkimustyovuodet_tutkintotasoittain] [decimal](16, 3) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Sarakeleveys]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sarakeleveys]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sarakeleveys](
	[Sarakeleveys] [char](1) NULL,
	[leveys] [varchar](100) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SSIS Configurations]    Script Date: 12.6.2017 17:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SSIS Configurations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SSIS Configurations](
	[ConfigurationFilter] [nvarchar](255) NOT NULL,
	[ConfiguredValue] [nvarchar](255) NULL,
	[PackagePath] [nvarchar](255) NOT NULL,
	[ConfiguredValueType] [nvarchar](20) NOT NULL
) ON [PRIMARY]
END



USE [ANTERO]