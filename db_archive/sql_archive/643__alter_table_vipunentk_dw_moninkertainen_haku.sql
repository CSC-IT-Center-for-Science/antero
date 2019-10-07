USE [VipunenTK_DW]
GO

/****** Object:  Table [dbo].[f_K3_16_Moninkertainen_haku]    Script Date: 26.6.2017 14:17:42 ******/
DROP TABLE [dbo].[f_K3_16_Moninkertainen_haku]
GO

/****** Object:  Table [dbo].[f_K3_16_Moninkertainen_haku]    Script Date: 26.6.2017 14:17:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[f_K3_16_Moninkertainen_haku](
	[Tilastovuosi] [varchar](4) NULL,
	[tilv_date] [date] NULL,
	[Koulutuksen_alkamislukukausi_avain] [varchar](5) NULL,
	[Koulutuksen_alkamislukukausi] [varchar](1) NULL,
	[luammhaku1_tunn] [varchar](5) NULL,
	[luammhaku2_tunn] [varchar](5) NULL,
	[luammhaku3_tunn] [varchar](5) NULL,
	[luammhaku4_tunn] [varchar](5) NULL,
	[luammhaku5_tunn] [varchar](5) NULL,
	[luammhaku1_opmast_avain] [varchar](8) NULL,
	[luammhaku2_opmast_avain] [varchar](8) NULL,
	[luammhaku3_opmast_avain] [varchar](8) NULL,
	[luammhaku4_opmast_avain] [varchar](8) NULL,
	[luammhaku5_opmast_avain] [varchar](8) NULL,
	[luammhaku1_opmopa_avain] [varchar](9) NULL,
	[luammhaku2_opmopa_avain] [varchar](9) NULL,
	[luammhaku3_opmopa_avain] [varchar](9) NULL,
	[luammhaku4_opmopa_avain] [varchar](9) NULL,
	[luammhaku5_opmopa_avain] [varchar](9) NULL,
	[luammhaku1_opm95opa_avain] [varchar](11) NULL,
	[luammhaku2_opm95opa_avain] [varchar](11) NULL,
	[luammhaku3_opm95opa_avain] [varchar](11) NULL,
	[luammhaku4_opm95opa_avain] [varchar](11) NULL,
	[luammhaku5_opm95opa_avain] [varchar](11) NULL,
	[luammhaku1_opmala_avain] [nvarchar](8) NULL,
	[luammhaku2_opmala_avain] [nvarchar](8) NULL,
	[luammhaku3_opmala_avain] [nvarchar](8) NULL,
	[luammhaku4_opmala_avain] [nvarchar](8) NULL,
	[luammhaku5_opmala_avain] [nvarchar](8) NULL,
	[luammhaku1_opm95ala_avain] [nvarchar](10) NULL,
	[luammhaku2_opm95ala_avain] [nvarchar](10) NULL,
	[luammhaku3_opm95ala_avain] [nvarchar](10) NULL,
	[luammhaku4_opm95ala_avain] [nvarchar](10) NULL,
	[luammhaku5_opm95ala_avain] [nvarchar](10) NULL,
	[luammhaku1_opmast] [varchar](2) NULL,
	[luammhaku2_opmast] [varchar](2) NULL,
	[luammhaku3_opmast] [varchar](2) NULL,
	[luammhaku4_opmast] [varchar](2) NULL,
	[luammhaku5_opmast] [varchar](2) NULL,
	[luammhaku1_opmopa] [varchar](3) NULL,
	[luammhaku2_opmopa] [varchar](3) NULL,
	[luammhaku3_opmopa] [varchar](3) NULL,
	[luammhaku4_opmopa] [varchar](3) NULL,
	[luammhaku5_opmopa] [varchar](3) NULL,
	[luammhaku1_opm95opa] [varchar](3) NULL,
	[luammhaku2_opm95opa] [varchar](3) NULL,
	[luammhaku3_opm95opa] [varchar](3) NULL,
	[luammhaku4_opm95opa] [varchar](3) NULL,
	[luammhaku5_opm95opa] [varchar](3) NULL,
	[luammhaku1_opmala] [nvarchar](2) NULL,
	[luammhaku2_opmala] [nvarchar](2) NULL,
	[luammhaku3_opmala] [nvarchar](2) NULL,
	[luammhaku4_opmala] [nvarchar](2) NULL,
	[luammhaku5_opmala] [nvarchar](2) NULL,
	[luammhaku1_opm95ala] [nvarchar](2) NULL,
	[luammhaku2_opm95ala] [nvarchar](2) NULL,
	[luammhaku3_opm95ala] [nvarchar](2) NULL,
	[luammhaku4_opm95ala] [nvarchar](2) NULL,
	[luammhaku5_opm95ala] [nvarchar](2) NULL,
	[luammhaku1_okieli] [varchar](1) NULL,
	[luammhaku2_okieli] [varchar](1) NULL,
	[luammhaku3_okieli] [varchar](1) NULL,
	[luammhaku4_okieli] [varchar](1) NULL,
	[luammhaku5_okieli] [varchar](1) NULL,
	[luammhaku1_hyv] [varchar](1) NULL,
	[luammhaku2_hyv] [varchar](1) NULL,
	[luammhaku3_hyv] [varchar](1) NULL,
	[luammhaku4_hyv] [varchar](1) NULL,
	[luammhaku5_hyv] [varchar](1) NULL,
	[luammhaku1_vastotto] [varchar](1) NULL,
	[luammhaku2_vastotto] [varchar](1) NULL,
	[luammhaku3_vastotto] [varchar](1) NULL,
	[luammhaku4_vastotto] [varchar](1) NULL,
	[luammhaku5_vastotto] [varchar](1) NULL,
	[amkhaku1_tunn] [varchar](5) NULL,
	[amkhaku2_tunn] [varchar](5) NULL,
	[amkhaku3_tunn] [varchar](5) NULL,
	[amkhaku4_tunn] [varchar](5) NULL,
	[amkhaku5_tunn] [varchar](5) NULL,
	[amkhaku6_tunn] [varchar](5) NULL,
	[amkhakum_tunn] [varchar](5) NULL,
	[amkhaku1_opmast_avain] [varchar](9) NULL,
	[amkhaku2_opmast_avain] [varchar](9) NULL,
	[amkhaku3_opmast_avain] [varchar](9) NULL,
	[amkhaku4_opmast_avain] [varchar](9) NULL,
	[amkhaku5_opmast_avain] [varchar](9) NULL,
	[amkhaku6_opmast_avain] [varchar](9) NULL,
	[amkhakum_opmast_avain] [varchar](9) NULL,
	[amkhaku1_opmopa_avain] [varchar](9) NULL,
	[amkhaku2_opmopa_avain] [varchar](9) NULL,
	[amkhaku3_opmopa_avain] [varchar](9) NULL,
	[amkhaku4_opmopa_avain] [varchar](9) NULL,
	[amkhaku5_opmopa_avain] [varchar](9) NULL,
	[amkhaku6_opmopa_avain] [varchar](9) NULL,
	[amkhakum_opmopa_avain] [varchar](9) NULL,
	[amkhaku1_opm95opa_avain] [varchar](11) NULL,
	[amkhaku2_opm95opa_avain] [varchar](11) NULL,
	[amkhaku3_opm95opa_avain] [varchar](11) NULL,
	[amkhaku4_opm95opa_avain] [varchar](11) NULL,
	[amkhaku5_opm95opa_avain] [varchar](11) NULL,
	[amkhaku6_opm95opa_avain] [varchar](11) NULL,
	[amkhakum_opm95opa_avain] [varchar](11) NULL,
	[amkhaku1_opmala_avain] [nvarchar](8) NULL,
	[amkhaku2_opmala_avain] [nvarchar](8) NULL,
	[amkhaku3_opmala_avain] [nvarchar](8) NULL,
	[amkhaku4_opmala_avain] [nvarchar](8) NULL,
	[amkhaku5_opmala_avain] [nvarchar](8) NULL,
	[amkhaku6_opmala_avain] [nvarchar](8) NULL,
	[amkhakum_opmala_avain] [nvarchar](8) NULL,
	[amkhaku1_opm95ala_avain] [nvarchar](10) NULL,
	[amkhaku2_opm95ala_avain] [nvarchar](10) NULL,
	[amkhaku3_opm95ala_avain] [nvarchar](10) NULL,
	[amkhaku4_opm95ala_avain] [nvarchar](10) NULL,
	[amkhaku5_opm95ala_avain] [nvarchar](10) NULL,
	[amkhaku6_opm95ala_avain] [nvarchar](10) NULL,
	[amkhakum_opm95ala_avain] [nvarchar](10) NULL,
	[amkhaku1_opmast] [varchar](3) NULL,
	[amkhaku2_opmast] [varchar](3) NULL,
	[amkhaku3_opmast] [varchar](3) NULL,
	[amkhaku4_opmast] [varchar](3) NULL,
	[amkhaku5_opmast] [varchar](3) NULL,
	[amkhaku6_opmast] [varchar](3) NULL,
	[amkhakum_opmast] [varchar](3) NULL,
	[amkhaku1_opmopa] [varchar](3) NULL,
	[amkhaku2_opmopa] [varchar](3) NULL,
	[amkhaku3_opmopa] [varchar](3) NULL,
	[amkhaku4_opmopa] [varchar](3) NULL,
	[amkhaku5_opmopa] [varchar](3) NULL,
	[amkhaku6_opmopa] [varchar](3) NULL,
	[amkhakum_opmopa] [varchar](3) NULL,
	[amkhaku1_opm95opa] [varchar](3) NULL,
	[amkhaku2_opm95opa] [varchar](3) NULL,
	[amkhaku3_opm95opa] [varchar](3) NULL,
	[amkhaku4_opm95opa] [varchar](3) NULL,
	[amkhaku5_opm95opa] [varchar](3) NULL,
	[amkhaku6_opm95opa] [varchar](3) NULL,
	[amkhakum_opm95opa] [varchar](3) NULL,
	[amkhaku1_opmala] [nvarchar](2) NULL,
	[amkhaku2_opmala] [nvarchar](2) NULL,
	[amkhaku3_opmala] [nvarchar](2) NULL,
	[amkhaku4_opmala] [nvarchar](2) NULL,
	[amkhaku5_opmala] [nvarchar](2) NULL,
	[amkhaku6_opmala] [nvarchar](2) NULL,
	[amkhakum_opmala] [nvarchar](2) NULL,
	[amkhaku1_opm95ala] [nvarchar](2) NULL,
	[amkhaku2_opm95ala] [nvarchar](2) NULL,
	[amkhaku3_opm95ala] [nvarchar](2) NULL,
	[amkhaku4_opm95ala] [nvarchar](2) NULL,
	[amkhaku5_opm95ala] [nvarchar](2) NULL,
	[amkhaku6_opm95ala] [nvarchar](2) NULL,
	[amkhakum_opm95ala] [nvarchar](2) NULL,
	[amkhaku1_koultyp] [varchar](1) NULL,
	[amkhaku2_koultyp] [varchar](1) NULL,
	[amkhaku3_koultyp] [varchar](1) NULL,
	[amkhaku4_koultyp] [varchar](1) NULL,
	[amkhakum_koultyp] [varchar](1) NULL,
	[amkhaku1_okieli] [varchar](1) NULL,
	[amkhaku2_okieli] [varchar](1) NULL,
	[amkhaku3_okieli] [varchar](1) NULL,
	[amkhaku4_okieli] [varchar](1) NULL,
	[amkhaku5_okieli] [varchar](1) NULL,
	[amkhaku6_okieli] [varchar](1) NULL,
	[amkhakum_okieli] [varchar](1) NULL,
	[amkhaku1_hyv] [varchar](1) NULL,
	[amkhaku2_hyv] [varchar](1) NULL,
	[amkhaku3_hyv] [varchar](1) NULL,
	[amkhaku4_hyv] [varchar](1) NULL,
	[amkhaku5_hyv] [varchar](1) NULL,
	[amkhaku6_hyv] [varchar](1) NULL,
	[amkhakum_hyv] [varchar](1) NULL,
	[amkhaku1_vastotto] [varchar](1) NULL,
	[amkhaku2_vastotto] [varchar](1) NULL,
	[amkhaku3_vastotto] [varchar](1) NULL,
	[amkhaku4_vastotto] [varchar](1) NULL,
	[amkhaku5_vastotto] [varchar](1) NULL,
	[amkhaku6_vastotto] [varchar](1) NULL,
	[amkhakum_vastotto] [varchar](1) NULL,
	[yohakua_tunn] [varchar](5) NULL,
	[yohakub_tunn] [varchar](5) NULL,
	[yohakuc_tunn] [varchar](5) NULL,
	[yohakud_tunn] [varchar](5) NULL,
	[yohakue_tunn] [varchar](5) NULL,
	[yohakuf_tunn] [varchar](5) NULL,
	[yohakug_tunn] [varchar](5) NULL,
	[yohakuh_tunn] [varchar](5) NULL,
	[yohakui_tunn] [varchar](5) NULL,
	[yohakua_opmast_avain] [varchar](8) NULL,
	[yohakub_opmast_avain] [varchar](8) NULL,
	[yohakuc_opmast_avain] [varchar](8) NULL,
	[yohakud_opmast_avain] [varchar](8) NULL,
	[yohakue_opmast_avain] [varchar](8) NULL,
	[yohakuf_opmast_avain] [varchar](8) NULL,
	[yohakug_opmast_avain] [varchar](8) NULL,
	[yohakuh_opmast_avain] [varchar](8) NULL,
	[yohakui_opmast_avain] [varchar](8) NULL,
	[yohakua_opmopa_avain] [varchar](9) NULL,
	[yohakub_opmopa_avain] [varchar](9) NULL,
	[yohakuc_opmopa_avain] [varchar](9) NULL,
	[yohakud_opmopa_avain] [varchar](9) NULL,
	[yohakue_opmopa_avain] [varchar](9) NULL,
	[yohakuf_opmopa_avain] [varchar](9) NULL,
	[yohakug_opmopa_avain] [varchar](9) NULL,
	[yohakuh_opmopa_avain] [varchar](9) NULL,
	[yohakui_opmopa_avain] [varchar](9) NULL,
	[yohakua_opm95opa_avain] [varchar](11) NULL,
	[yohakub_opm95opa_avain] [varchar](11) NULL,
	[yohakuc_opm95opa_avain] [varchar](11) NULL,
	[yohakud_opm95opa_avain] [varchar](11) NULL,
	[yohakue_opm95opa_avain] [varchar](11) NULL,
	[yohakuf_opm95opa_avain] [varchar](11) NULL,
	[yohakug_opm95opa_avain] [varchar](11) NULL,
	[yohakuh_opm95opa_avain] [varchar](11) NULL,
	[yohakui_opm95opa_avain] [varchar](11) NULL,
	[yohakua_opmala_avain] [nvarchar](8) NULL,
	[yohakub_opmala_avain] [nvarchar](8) NULL,
	[yohakuc_opmala_avain] [nvarchar](8) NULL,
	[yohakud_opmala_avain] [nvarchar](8) NULL,
	[yohakue_opmala_avain] [nvarchar](8) NULL,
	[yohakuf_opmala_avain] [nvarchar](8) NULL,
	[yohakug_opmala_avain] [nvarchar](8) NULL,
	[yohakuh_opmala_avain] [nvarchar](8) NULL,
	[yohakui_opmala_avain] [nvarchar](8) NULL,
	[yohakua_opm95ala_avain] [nvarchar](10) NULL,
	[yohakub_opm95ala_avain] [nvarchar](10) NULL,
	[yohakuc_opm95ala_avain] [nvarchar](10) NULL,
	[yohakud_opm95ala_avain] [nvarchar](10) NULL,
	[yohakue_opm95ala_avain] [nvarchar](10) NULL,
	[yohakuf_opm95ala_avain] [nvarchar](10) NULL,
	[yohakug_opm95ala_avain] [nvarchar](10) NULL,
	[yohakuh_opm95ala_avain] [nvarchar](10) NULL,
	[yohakui_opm95ala_avain] [nvarchar](10) NULL,
	[yohakua_opmast] [varchar](2) NULL,
	[yohakub_opmast] [varchar](2) NULL,
	[yohakuc_opmast] [varchar](2) NULL,
	[yohakud_opmast] [varchar](2) NULL,
	[yohakue_opmast] [varchar](2) NULL,
	[yohakuf_opmast] [varchar](2) NULL,
	[yohakug_opmast] [varchar](2) NULL,
	[yohakuh_opmast] [varchar](2) NULL,
	[yohakui_opmast] [varchar](2) NULL,
	[yohakua_opmopa] [varchar](3) NULL,
	[yohakub_opmopa] [varchar](3) NULL,
	[yohakuc_opmopa] [varchar](3) NULL,
	[yohakud_opmopa] [varchar](3) NULL,
	[yohakue_opmopa] [varchar](3) NULL,
	[yohakuf_opmopa] [varchar](3) NULL,
	[yohakug_opmopa] [varchar](3) NULL,
	[yohakuh_opmopa] [varchar](3) NULL,
	[yohakui_opmopa] [varchar](3) NULL,
	[yohakua_opm95opa] [varchar](3) NULL,
	[yohakub_opm95opa] [varchar](3) NULL,
	[yohakuc_opm95opa] [varchar](3) NULL,
	[yohakud_opm95opa] [varchar](3) NULL,
	[yohakue_opm95opa] [varchar](3) NULL,
	[yohakuf_opm95opa] [varchar](3) NULL,
	[yohakug_opm95opa] [varchar](3) NULL,
	[yohakuh_opm95opa] [varchar](3) NULL,
	[yohakui_opm95opa] [varchar](3) NULL,
	[yohakua_opmala] [nvarchar](2) NULL,
	[yohakub_opmala] [nvarchar](2) NULL,
	[yohakuc_opmala] [nvarchar](2) NULL,
	[yohakud_opmala] [nvarchar](2) NULL,
	[yohakue_opmala] [nvarchar](2) NULL,
	[yohakuf_opmala] [nvarchar](2) NULL,
	[yohakug_opmala] [nvarchar](2) NULL,
	[yohakuh_opmala] [nvarchar](2) NULL,
	[yohakui_opmala] [nvarchar](2) NULL,
	[yohakua_opm95ala] [nvarchar](2) NULL,
	[yohakub_opm95ala] [nvarchar](2) NULL,
	[yohakuc_opm95ala] [nvarchar](2) NULL,
	[yohakud_opm95ala] [nvarchar](2) NULL,
	[yohakue_opm95ala] [nvarchar](2) NULL,
	[yohakuf_opm95ala] [nvarchar](2) NULL,
	[yohakug_opm95ala] [nvarchar](2) NULL,
	[yohakuh_opm95ala] [nvarchar](2) NULL,
	[yohakui_opm95ala] [nvarchar](2) NULL,
	[yohakua_hyv] [varchar](1) NULL,
	[yohakub_hyv] [varchar](1) NULL,
	[yohakuc_hyv] [varchar](1) NULL,
	[yohakud_hyv] [varchar](1) NULL,
	[yohakue_hyv] [varchar](1) NULL,
	[yohakuf_hyv] [varchar](1) NULL,
	[yohakug_hyv] [varchar](1) NULL,
	[yohakuh_hyv] [varchar](1) NULL,
	[yohakui_hyv] [varchar](1) NULL,
	[yohakua_vastotto] [varchar](1) NULL,
	[yohakub_vastotto] [varchar](1) NULL,
	[yohakuc_vastotto] [varchar](1) NULL,
	[yohakud_vastotto] [varchar](1) NULL,
	[yohakue_vastotto] [varchar](1) NULL,
	[yohakuf_vastotto] [varchar](1) NULL,
	[yohakug_vastotto] [varchar](1) NULL,
	[yohakuh_vastotto] [varchar](1) NULL,
	[yohakui_vastotto] [varchar](1) NULL,
	[yohakua_harekast] [varchar](2) NULL,
	[yohakub_harekast] [varchar](2) NULL,
	[yohakuc_harekast] [varchar](2) NULL,
	[yohakud_harekast] [varchar](2) NULL,
	[yohakue_harekast] [varchar](2) NULL,
	[yohakuf_harekast] [varchar](2) NULL,
	[yohakug_harekast] [varchar](2) NULL,
	[yohakuh_harekast] [varchar](2) NULL,
	[yohakui_harekast] [varchar](2) NULL,
	[yohakua_ylempi] [varchar](1) NOT NULL,
	[yohakub_ylempi] [varchar](1) NOT NULL,
	[yohakuc_ylempi] [varchar](1) NOT NULL,
	[yohakud_ylempi] [varchar](1) NOT NULL,
	[yohakue_ylempi] [varchar](1) NOT NULL,
	[yohakuf_ylempi] [varchar](1) NOT NULL,
	[yohakug_ylempi] [varchar](1) NOT NULL,
	[yohakuh_ylempi] [varchar](1) NOT NULL,
	[yohakui_ylempi] [varchar](1) NOT NULL,
	[yohakua_erval] [varchar](1) NULL,
	[yohakub_erval] [varchar](1) NULL,
	[yohakuc_erval] [varchar](1) NULL,
	[yohakud_erval] [varchar](1) NULL,
	[yohakue_erval] [varchar](1) NULL,
	[yohakuf_erval] [varchar](1) NULL,
	[yohakug_erval] [varchar](1) NULL,
	[yohakuh_erval] [varchar](1) NULL,
	[yohakui_erval] [varchar](1) NULL,
	[luhakux] [varchar](1) NULL,
	[luhaku2x] [varchar](1) NULL,
	[luhaku3x] [varchar](1) NULL,
	[ammhakux] [varchar](1) NULL,
	[ammhaku2x] [varchar](1) NULL,
	[ammhaku3x] [varchar](1) NULL,
	[amkhakux] [varchar](1) NULL,
	[amkhaku2x] [varchar](1) NULL,
	[amkhaku3x] [varchar](1) NULL,
	[yohakux] [varchar](1) NULL,
	[yohaku2x] [varchar](1) NULL,
	[yohaku3x] [varchar](1) NULL,
	[Sukupuoli_avain] [varchar](1) NULL,
	[Aidinkielir1_avain] [varchar](2) NULL,
	[Syntymavuosi] [varchar](4) NULL,
	[Ika] [int] NULL,
	[Kotikunta_vuotta_aiemmin_avain] [varchar](3) NULL,
	[Kansalaisuusr1_avain] [varchar](1) NULL,
	[aikyotutk] [varchar](1) NULL,
	[aikyotutkkoulk] [varchar](6) NULL,
	[aikyotutkkoulk_opmast] [nvarchar](2) NULL,
	[aikyotutkkoulk_opm95opa] [nvarchar](3) NULL,
	[aikyotutkkoulk_opmopa] [nvarchar](3) NULL,
	[aikyotutkkoulk_opm95ala] [nvarchar](2) NULL,
	[aikyotutkkoulk_opmala] [nvarchar](2) NULL,
	[suvuosiyotutk] [varchar](4) NULL,
	[tunnyotutk] [varchar](5) NULL,
	[aikamm] [varchar](1) NULL,
	[aikammkoulk] [varchar](6) NULL,
	[aikammkoulk_opmast] [nvarchar](2) NULL,
	[aikammkoulk_opm95opa] [nvarchar](3) NULL,
	[aikammkoulk_opmopa] [nvarchar](3) NULL,
	[aikammkoulk_opm95ala] [nvarchar](2) NULL,
	[aikammkoulk_opmala] [nvarchar](2) NULL,
	[suvuosiamm] [varchar](4) NULL,
	[tunnamm] [varchar](5) NULL,
	[aikamk] [varchar](1) NULL,
	[aikamkkoulk] [varchar](6) NULL,
	[aikamkkoulk_opmast] [nvarchar](2) NULL,
	[aikamkkoulk_opm95opa] [nvarchar](3) NULL,
	[aikamkkoulk_opmopa] [nvarchar](3) NULL,
	[aikamkkoulk_opm95ala] [nvarchar](2) NULL,
	[aikamkkoulk_opmala] [nvarchar](2) NULL,
	[suvuosiamk] [varchar](4) NULL,
	[tunnamk] [varchar](5) NULL,
	[aikylamk] [varchar](1) NULL,
	[aikylamkkoulk] [varchar](6) NULL,
	[aikylamkkoulk_opmast] [nvarchar](2) NULL,
	[aikylamkkoulk_opm95opa] [nvarchar](3) NULL,
	[aikylamkkoulk_opmopa] [nvarchar](3) NULL,
	[aikylamkkoulk_opm95ala] [nvarchar](2) NULL,
	[aikylamkkoulk_opmala] [nvarchar](2) NULL,
	[suvuosiylamk] [varchar](4) NULL,
	[tunnylamk] [varchar](5) NULL,
	[aikalkk] [varchar](1) NULL,
	[aikalkkkoulk] [varchar](6) NULL,
	[aikalkkkoulk_opmast] [nvarchar](2) NULL,
	[aikalkkkoulk_opm95opa] [nvarchar](3) NULL,
	[aikalkkkoulk_opmopa] [nvarchar](3) NULL,
	[aikalkkkoulk_opm95ala] [nvarchar](2) NULL,
	[aikalkkkoulk_opmala] [nvarchar](2) NULL,
	[suvuosialkk] [varchar](4) NULL,
	[tunnalkk] [varchar](5) NULL,
	[aikylkk] [varchar](1) NULL,
	[aikylkkkoulk] [varchar](6) NULL,
	[aikylkkkoulk_opmast] [nvarchar](2) NULL,
	[aikylkkkoulk_opm95opa] [nvarchar](3) NULL,
	[aikylkkkoulk_opmopa] [nvarchar](3) NULL,
	[aikylkkkoulk_opm95ala] [nvarchar](2) NULL,
	[aikylkkkoulk_opmala] [nvarchar](2) NULL,
	[suvuosiylkk] [varchar](4) NULL,
	[tunnylkk] [varchar](5) NULL,
	[aiklistri] [varchar](1) NULL,
	[aiklistrikoulk] [varchar](6) NULL,
	[aiklistrikoulk_opmast] [nvarchar](2) NULL,
	[aiklistrikoulk_opm95opa] [nvarchar](3) NULL,
	[aiklistrikoulk_opmopa] [nvarchar](3) NULL,
	[aiklistrikoulk_opm95ala] [nvarchar](2) NULL,
	[aiklistrikoulk_opmala] [nvarchar](2) NULL,
	[suvuosilistri] [varchar](4) NULL,
	[tunnlistri] [varchar](5) NULL,
	[yotutkopisx] [varchar](1) NULL,
	[yotutkopisxkoulk] [varchar](6) NULL,
	[yotutkopisxkoulk_opmast] [nvarchar](2) NULL,
	[yotutkopisxkoulk_opm95opa] [nvarchar](3) NULL,
	[yotutkopisxkoulk_opmopa] [nvarchar](3) NULL,
	[yotutkopisxkoulk_opm95ala] [nvarchar](2) NULL,
	[yotutkopisxkoulk_opmala] [nvarchar](2) NULL,
	[yotutkopisxtunn] [varchar](5) NULL,
	[ammopisx] [varchar](1) NULL,
	[ammopisxkoulk] [varchar](6) NULL,
	[ammopisxkoulk_opmast] [nvarchar](2) NULL,
	[ammopisxkoulk_opm95opa] [nvarchar](3) NULL,
	[ammopisxkoulk_opmopa] [nvarchar](3) NULL,
	[ammopisxkoulk_opm95ala] [nvarchar](2) NULL,
	[ammopisxkoulk_opmala] [nvarchar](2) NULL,
	[ammopisxtunn] [varchar](6) NULL,
	[amkopisx1] [varchar](1) NULL,
	[amkopisxkoulk1] [varchar](6) NULL,
	[amkopisxkoulk1_opmast] [nvarchar](2) NULL,
	[amkopisxkoulk1_opm95opa] [nvarchar](3) NULL,
	[amkopisxkoulk1_opmopa] [nvarchar](3) NULL,
	[amkopisxkoulk1_opm95ala] [nvarchar](2) NULL,
	[amkopisxkoulk1_opmala] [nvarchar](2) NULL,
	[amkopisxtunn1] [varchar](5) NULL,
	[amkopisx2] [varchar](1) NULL,
	[amkopisxkoulk2] [varchar](6) NULL,
	[amkopisxkoulk2_opmast] [nvarchar](2) NULL,
	[amkopisxkoulk2_opm95opa] [nvarchar](3) NULL,
	[amkopisxkoulk2_opmopa] [nvarchar](3) NULL,
	[amkopisxkoulk2_opm95ala] [nvarchar](2) NULL,
	[amkopisxkoulk2_opmala] [nvarchar](2) NULL,
	[amkopisxtunn2] [varchar](5) NULL,
	[amkopisx3] [varchar](1) NULL,
	[amkopisxkoulk3] [varchar](6) NULL,
	[amkopisxkoulk3_opmast] [nvarchar](2) NULL,
	[amkopisxkoulk3_opm95opa] [nvarchar](3) NULL,
	[amkopisxkoulk3_opmopa] [nvarchar](3) NULL,
	[amkopisxkoulk3_opm95ala] [nvarchar](2) NULL,
	[amkopisxkoulk3_opmala] [nvarchar](2) NULL,
	[amkopisxtunn3] [varchar](5) NULL,
	[yoopisx1] [varchar](1) NULL,
	[yoopisxkoulk1] [varchar](6) NULL,
	[yoopisxkoulk1_opmast] [nvarchar](2) NULL,
	[yoopisxkoulk1_opm95opa] [nvarchar](3) NULL,
	[yoopisxkoulk1_opmopa] [nvarchar](3) NULL,
	[yoopisxkoulk1_opm95ala] [nvarchar](2) NULL,
	[yoopisxkoulk1_opmala] [nvarchar](2) NULL,
	[yoopisxtunn1] [varchar](5) NULL,
	[yoopisx2] [varchar](1) NULL,
	[yoopisxkoulk2] [varchar](6) NULL,
	[yoopisxkoulk2_opmast] [nvarchar](2) NULL,
	[yoopisxkoulk2_opm95opa] [nvarchar](3) NULL,
	[yoopisxkoulk2_opmopa] [nvarchar](3) NULL,
	[yoopisxkoulk2_opm95ala] [nvarchar](2) NULL,
	[yoopisxkoulk2_opmala] [nvarchar](2) NULL,
	[yoopisxtunn2] [varchar](5) NULL,
	[yoopisx3] [varchar](1) NULL,
	[yoopisxkoulk3] [varchar](6) NULL,
	[yoopisxkoulk3_opmast] [nvarchar](2) NULL,
	[yoopisxkoulk3_opm95opa] [nvarchar](3) NULL,
	[yoopisxkoulk3_opmopa] [nvarchar](3) NULL,
	[yoopisxkoulk3_opm95ala] [nvarchar](2) NULL,
	[yoopisxkoulk3_opmala] [nvarchar](2) NULL,
	[yoopisxtunn3] [varchar](5) NULL,
	[ptoim1r3x] [varchar](2) NULL,
	[htok] [varchar](1) NULL,
	[lkm] [int] NULL,
	[tietolahde] [varchar](31) NOT NULL,
	[rivinumero] [bigint] NULL
) ON [PRIMARY]

GO


USE [ANTERO]