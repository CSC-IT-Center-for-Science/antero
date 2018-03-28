USE [VipunenTK_DW]
GO
/****** Object:  Table [dbo].[sa_2_20_Lukio_amm_oppis_opisk_ian_ja_aik_koul_mukaan]    Script Date: 27.3.2018 17:39:33 ******/
DROP TABLE IF EXISTS [dbo].[sa_2_20_Lukio_amm_oppis_opisk_ian_ja_aik_koul_mukaan]
GO
/****** Object:  Table [dbo].[f_2_20_Lukio_amm_oppis_opisk_ian_ja_aik_koul_mukaan]    Script Date: 27.3.2018 17:39:33 ******/
DROP TABLE IF EXISTS [dbo].[f_2_20_Lukio_amm_oppis_opisk_ian_ja_aik_koul_mukaan]
GO
/****** Object:  Table [dbo].[f_2_20_Lukio_amm_oppis_opisk_ian_ja_aik_koul_mukaan]    Script Date: 27.3.2018 17:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_2_20_Lukio_amm_oppis_opisk_ian_ja_aik_koul_mukaan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[f_2_20_Lukio_amm_oppis_opisk_ian_ja_aik_koul_mukaan](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[lahde] [nvarchar](2) NULL,
	[oppilaitoksen_oppilaitostyyppi] [nvarchar](10) NULL,
	[koulutusluokitus] [nvarchar](6) NULL,
	[nuorten_aikuisten_koulutus] [nvarchar](1) NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus] [nvarchar](1) NULL,
	[ammatillisen_koulutuksen_koulutuslaji] [nvarchar](1) NULL,
	[opetushallinnon_koulutus] [nvarchar](1) NULL,
	[koulutuksen_kunta] [nvarchar](3) NULL,
	[rahoituslahde] [nvarchar](1) NULL,
	[sukupuoli] [nvarchar](1) NULL,
	[aidinkieli_versio1] [nvarchar](2) NULL,
	[kirjoihintulovuosi] [nvarchar](4) NULL,
	[kirjoihintulolukukausi] [nvarchar](1) NULL,
	[opiskelijan_olo_syys] [nvarchar](1) NULL,
	[aikaisempi_ylsk_koulutus] [nvarchar](1) NULL,
	[aikaisempi_ammpk] [nvarchar](1) NULL,
	[aikaisempi_ammpk_tarkempi] [nvarchar](100) NULL,
	[ammpk_pohjakoulutuksen_tila] [nvarchar](150) NULL,
	[aikaisemman_ammpk_opintoala1995] [nvarchar](2) NULL,
	[aikaisemman_ammpk_koulutusala1995] [nvarchar](1) NULL,
	[aikaisemman_ammpk_koulutusaste1995] [nvarchar](1) NULL,
	[aikaisemman_ammpk_opintoala2002] [nvarchar](3) NULL,
	[aikaisemman_ammpk_koulutusala2002] [nvarchar](1) NULL,
	[aikaisemman_ammpk_koulutusaste2002] [nvarchar](2) NULL,
	[aikaisemman_ammpk_koulutusala_taso2] [nvarchar](3) NULL,
	[aikaisemman_ammpk_koulutusaste_taso2] [nvarchar](2) NULL,
	[aikaisemman_ammpk_suoritusvuosi] [nvarchar](4) NULL,
	[aikaisempi_ammpk_nayttotutkintona] [nvarchar](1) NULL,
	[aikaisempi_ammpk_nayttotutkintona_tarkempi] [nvarchar](100) NULL,
	[aikaisempi_ammpk_oppisopimuskoulutuksena] [nvarchar](1) NULL,
	[aikaisempi_ammpk_oppisopimuskoulutuksena_tarkempi] [nvarchar](100) NULL,
	[aikaisempi_ammlisa] [nvarchar](1) NULL,
	[aikaisempi_ammlisa_tarkempi] [nvarchar](100) NULL,
	[ammlisa_pohjakoulutuksen_tila] [nvarchar](150) NULL,
	[aikaisemman_ammlisa_opintoala1995] [nvarchar](2) NULL,
	[aikaisemman_ammlisa_koulutusala1995] [nvarchar](1) NULL,
	[aikaisemman_ammlisa_koulutusaste1995] [nvarchar](1) NULL,
	[aikaisemman_ammlisa_opintoala2002] [nvarchar](3) NULL,
	[aikaisemman_ammlisa_koulutusala2002] [nvarchar](1) NULL,
	[aikaisemman_ammlisa_koulutusaste2002] [nvarchar](2) NULL,
	[aikaisemman_ammlisa_koulutusala_taso2] [nvarchar](3) NULL,
	[aikaisemman_ammlisa_koulutusaste_taso2] [nvarchar](2) NULL,
	[aikaisemman_ammlisa_suoritusvuosi] [nvarchar](4) NULL,
	[aikaisempi_ammlisa_oppisopimuskoulutuksena] [nvarchar](1) NULL,
	[aikaisempi_ammlisa_oppisopimuskoulutuksena_tarkempi] [nvarchar](100) NULL,
	[aikaisempi_alempi_kk] [nvarchar](1) NULL,
	[aikaisempi_alempi_kk_tarkempi] [nvarchar](100) NULL,
	[alempi_kk_pohjakoulutuksen_tila] [nvarchar](150) NULL,
	[aikaisemman_alemman_kk_opintoala1995] [nvarchar](2) NULL,
	[aikaisemman_alemman_kk_koulutusala1995] [nvarchar](1) NULL,
	[aikaisemman_alemman_kk_koulutusaste1995] [nvarchar](1) NULL,
	[aikaisemman_alemman_kk_opintoala2002] [nvarchar](3) NULL,
	[aikaisemman_alemman_kk_koulutusala2002] [nvarchar](1) NULL,
	[aikaisemman_alemman_kk_koulutusaste2002] [nvarchar](2) NULL,
	[aikaisemman_alemman_kk_koulutusala_taso2] [nvarchar](3) NULL,
	[aikaisemman_alemman_kk_koulutusaste_taso2] [nvarchar](2) NULL,
	[aikaisemman_alemman_kk_suoritusvuosi] [nvarchar](4) NULL,
	[aikaisempi_ylempi_kk] [nvarchar](1) NULL,
	[aikaisempi_ylempi_kk_tarkempi] [nvarchar](100) NULL,
	[ylempi_kk_pohjakoulutuksen_tila] [nvarchar](150) NULL,
	[aikasemman_ylemman_kk_opintoala1995] [nvarchar](2) NULL,
	[aikasemman_ylemman_kk_koulutusala1995] [nvarchar](1) NULL,
	[aikasemman_ylemman_kk_koulutusaste1995] [nvarchar](1) NULL,
	[aikasemman_ylemman_kk_opintoala2002] [nvarchar](3) NULL,
	[aikasemman_ylemman_kk_koulutusala2002] [nvarchar](1) NULL,
	[aikasemman_ylemman_kk_koulutusaste2002] [nvarchar](2) NULL,
	[aikasemman_ylemman_kk_koulutusala_taso2] [nvarchar](3) NULL,
	[aikasemman_ylemman_kk_koulutusaste_taso2] [nvarchar](2) NULL,
	[aikaisemman_ylemman_kk_suoritusvuosi] [nvarchar](4) NULL,
	[opiskelijan_asuinkunta] [nvarchar](3) NULL,
	[syntymavuosi] [nvarchar](10) NULL,
	[lukumaara] [int] NULL,
	[tietolahde] [nvarchar](100) NULL,
	[rivinumero] [int] NULL,
	[ika_1v] [nvarchar](10) NULL,
	[ika_5v] [nvarchar](10) NULL,
	[ika_14_65] [nvarchar](10) NULL,
	[aikaisemmasta_koulutuksesta_ammpk_kulunut_aika] [nvarchar](10) NULL,
	[aikaisemmasta_koulutuksesta_ammlisa_kulunut_aika] [nvarchar](10) NULL,
	[aikaisemmasta_koulutuksesta_alempi_kk_kulunut_aika] [nvarchar](10) NULL,
	[aikaisemmasta_koulutuksesta_ylempi_kk_kulunut_aika] [nvarchar](10) NULL,
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
	[aikaisempi_korkein_tutkinto] [nvarchar](2) NULL,
	[aiemman_tutkinnon_opintoala2002_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_koulutusaste2002_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_koulutusala2002_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_koulutusala_taso2_sama] [nvarchar](100) NULL,
	[aiemman_tutkinnon_koulutusaste_taso2_sama] [nvarchar](100) NULL,
	[nuorten_aikuisten_koulutus_amm] [nvarchar](2) NULL,
	[koulutuksen_jarjestamismuoto] [nvarchar](2) NULL,
	[aloittaneet] [int] NULL,
	[viimeisimman_koulutuksen_suorituvuosi] [nvarchar](4) NULL,
	[viimeisimmasta_koulutuksesta_kulunut_aika] [nvarchar](10) NULL,
	[hallinnonala2] [nvarchar](2) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sa_2_20_Lukio_amm_oppis_opisk_ian_ja_aik_koul_mukaan]    Script Date: 27.3.2018 17:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sa_2_20_Lukio_amm_oppis_opisk_ian_ja_aik_koul_mukaan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sa_2_20_Lukio_amm_oppis_opisk_ian_ja_aik_koul_mukaan](
	[tilv] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[lahde] [nvarchar](2) NULL,
	[oltyp] [nvarchar](2) NULL,
	[koulk] [nvarchar](6) NULL,
	[koulk_opintoala] [nvarchar](6) NULL,
	[koulk_koulutusala] [nvarchar](6) NULL,
	[koulk_koulutusaste] [nvarchar](6) NULL,
	[koulk_koulutusala_taso2] [nvarchar](6) NULL,
	[koulk_koulutusala_taso1] [nvarchar](6) NULL,
	[koulk_koulutusaste_taso2] [nvarchar](6) NULL,
	[koulk_koulutusaste_taso1] [nvarchar](6) NULL,
	[aikoul] [nvarchar](1) NULL,
	[tutktav] [nvarchar](1) NULL,
	[tutklaja] [nvarchar](1) NULL,
	[ophal] [nvarchar](1) NULL,
	[kkun] [nvarchar](3) NULL,
	[rahoitus] [nvarchar](1) NULL,
	[sp] [nvarchar](1) NULL,
	[aikielir1] [nvarchar](2) NULL,
	[alvv] [nvarchar](4) NULL,
	[allk] [nvarchar](1) NULL,
	[olosyys] [nvarchar](1) NULL,
	[ylsivx] [nvarchar](1) NULL,
	[peruskx] [nvarchar](1) NULL,
	[oalapex] [nvarchar](2) NULL,
	[oastepex] [nvarchar](1) NULL,
	[oalapeux] [nvarchar](3) NULL,
	[oalapeux_koulutusala] [nvarchar](3) NULL,
	[oastpeux] [nvarchar](2) NULL,
	[iscfinarrow_pex] [nvarchar](3) NULL,
	[kaste_t2_pex] [nvarchar](2) NULL,
	[ammvupe] [nvarchar](4) NULL,
	[nayttox] [nvarchar](1) NULL,
	[oppispex] [nvarchar](1) NULL,
	[lisakx] [nvarchar](1) NULL,
	[oalalix] [nvarchar](2) NULL,
	[oastelix] [nvarchar](1) NULL,
	[oalaliux] [nvarchar](3) NULL,
	[oalaliux_koulutusala] [nvarchar](3) NULL,
	[oastliux] [nvarchar](2) NULL,
	[iscfinarrow_lix] [nvarchar](3) NULL,
	[kaste_t2_lix] [nvarchar](2) NULL,
	[ammvuli] [nvarchar](4) NULL,
	[oppislix] [nvarchar](1) NULL,
	[alempikax] [nvarchar](1) NULL,
	[oalaakx] [nvarchar](2) NULL,
	[oasteakx] [nvarchar](1) NULL,
	[oalauakx] [nvarchar](3) NULL,
	[oalauakx_koulutusala] [nvarchar](3) NULL,
	[oasteuakx] [nvarchar](2) NULL,
	[iscfinarrow_akx] [nvarchar](3) NULL,
	[kaste_t2_akx] [nvarchar](2) NULL,
	[svuosiak] [nvarchar](4) NULL,
	[ylempikax] [nvarchar](1) NULL,
	[oalaykx] [nvarchar](2) NULL,
	[oasteykx] [nvarchar](1) NULL,
	[oalauykx] [nvarchar](3) NULL,
	[oalauykx_koulutusala] [nvarchar](3) NULL,
	[oasteuykx] [nvarchar](2) NULL,
	[iscfinarrow_ykx] [nvarchar](3) NULL,
	[kaste_t2_ykx] [nvarchar](2) NULL,
	[svuosiyk] [nvarchar](4) NULL,
	[askun] [nvarchar](3) NULL,
	[syntv] [nvarchar](4) NULL,
	[lkm] [int] NULL,
	[tietolahde] [nvarchar](100) NULL,
	[rivinumero] [int] NULL
) ON [PRIMARY]
END
GO
USE [ANTERO]