USE [VipunenTK]
GO

/****** Object:  Table [dbo].[f_2_3h_Lukiokoulutuksen_ja_ammatillisen_koulutuksen_opiskelijat]    Script Date: 15.11.2018 12:14:31 ******/
DROP TABLE [dbo].[f_2_3h_Lukiokoulutuksen_ja_ammatillisen_koulutuksen_opiskelijat]
GO

/****** Object:  Table [dbo].[f_2_3h_Lukiokoulutuksen_ja_ammatillisen_koulutuksen_opiskelijat]    Script Date: 15.11.2018 12:14:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[f_2_3h_Lukiokoulutuksen_ja_ammatillisen_koulutuksen_opiskelijat](
	[tilastointivuosi] [nvarchar](4) NULL,
	[tilv_date] [date] NULL,
	[lahde] [nvarchar](2) NULL,
	[lahde_id] [int] NULL,
	[oppilaitos] [nvarchar](10) NULL,
	[oppilaitos_id] [int] NULL,
	[oppilaitos_historia_id] [int] NULL,
	[koulutuksen_jarjestaja] [nvarchar](20) NULL,
	[koulutuksen_jarjestaja_id] [int] NULL,
	[koulutuksen_jarjestaja_historia_id] [int] NULL,
	[oppisopimuskoulutuksen_jarjestaja] [nvarchar](20) NULL,
	[oppisopimuskoulutuksen_jarjestaja_id] [int] NULL,
	[oppisopimuskoulutuksen_jarjestaja_historia_id] [int] NULL,
	[koulutusala] [nvarchar](10) NULL,
	[koulutusala_id] [int] NULL,
	[koulutusala_taso1] [nvarchar](10) NULL,
	[koulutusala_taso1_id] [int] NULL,
	[koulutusaste] [nvarchar](10) NULL,
	[koulutusaste_id] [int] NULL,
	[koulutusaste_taso2] [nvarchar](10) NULL,
	[koulutusaste_taso2_id] [int] NULL,
	[koulutuksen_kieli] [nvarchar](10) NULL,
	[koulutuksen_kieli_id] [int] NULL,
	[koulutuksen_kunta] [nvarchar](30) NULL,
	[koulutuksen_kunta_id] [int] NULL,
	[koulutuksen_kunta_historia_id] [int] NULL,
	[opetushallinnon_koulutus] [nvarchar](20) NULL,
	[opetushallinnon_koulutus_id] [int] NULL,
	[kirjoihintulovuosi] [nvarchar](40) NULL,
	[kirjoihintulovuosi_id] [nvarchar](100) NULL,
	[opiskelijan_olo_syys] [nvarchar](10) NULL,
	[opiskelijan_olo_syys_id] [int] NULL,
	[ika_5v] [nvarchar](20) NULL,
	[ika_id] [int] NULL,
	[lukumaara] [int] NULL,
	[lukiokoulutuksen_koulutuslaji] [nvarchar](20) NULL,
	[lukiokoulutuksen_koulutuslaji_id] [int] NULL,
	[nuorten_aikuisten_koulutus] [nvarchar](20) NULL,
	[nuorten_aikuisten_koulutus_id] [int] NULL,
	[ammatillisen_koulutuksen_koulutuslaji] [nvarchar](20) NULL,
	[ammatillisen_koulutuksen_koulutuslaji_id] [int] NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus] [nvarchar](20) NULL,
	[opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus_id] [int] NULL,
	[tyovoimapoliittinen_koulutus] [nvarchar](20) NULL,
	[tyovoimapoliittinen_koulutus_id] [int] NULL,
	[rahoituslahde_amm] [nvarchar](20) NULL,
	[rahoituslahde_amm_id] [int] NULL,
	[tutkinnon_tavoite] [nvarchar](20) NULL,
	[tutkinnon_tavoite_id] [int] NULL,
	[yrittajan_oppisopimuskoulutus] [nvarchar](20) NULL,
	[yrittajan_oppisopimuskoulutus_id] [int] NULL,
	[tietolahde] [nvarchar](500) NULL,
	[rivinumero] [nvarchar](100) NULL,
	[aineistotunnus] [varchar](40) NOT NULL,
	[koulutussektori] [nvarchar](20) NULL,
	[koulutussektori_id] [int] NULL,
	[hallinnonala] [nvarchar](20) NULL,
	[hallinnonala_id] [int] NULL,
	[hallinnonala2] [nvarchar](20) NULL,
	[hallinnonala2_id] [int] NULL,
	[koulutuksen_jarjestamismuoto] [nvarchar](20) NULL,
	[koulutuksen_jarjestamismuoto_id] [int] NULL,
	[ammatillinen_peruskoulutus_lisakoulutus] [nvarchar](20) NULL,
	[ammatillinen_peruskoulutus_lisakoulutus_id] [int] NULL,
	[koulutuksen_tavoite_toteuma] [nvarchar](20) NULL,
	[koulutuksen_tavoite_toteuma_id] [int] NULL,
	[tyovoimapoliittinen] [nvarchar](20) NULL,
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
	[kotikunta] [nvarchar](100) NULL,
	[kotikunta_ed_id] [int] NULL,
	[kotikunta_ed] [nvarchar](100) NULL,
	[kotikunta_sama_kuin_koulutuksen_kunta_id] [int] NULL,
	[kotimaakunta_sama_kuin_koulutuksen_maakunta_id] [int] NULL,
	[kotikunta_sama_kuin_ed_vuonna_id] [int] NULL,
	[kotimaakunta_sama_kuin_ed_vuonna_id] [int] NULL,
	[ed_vuoden_kotimaakunta_sama_kuin_koulutuksen_maakunta_id] [int] NULL,
	[ed_vuoden_kotikunta_sama_kuin_koulutuksen_kunta_id] [int] NULL
) ON [PRIMARY]

GO


USE [ANTERO]