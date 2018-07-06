USE [VipunenTK_DW]
GO
/****** Object:  Table [dbo].[sa_K3_16_Moninkertainen_haku]    Script Date: 6.7.2018 15:40:37 ******/
DROP TABLE IF EXISTS [dbo].[sa_K3_16_Moninkertainen_haku]
GO
/****** Object:  Table [dbo].[sa_K3_16_Moninkertainen_haku]    Script Date: 6.7.2018 15:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sa_K3_16_Moninkertainen_haku]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sa_K3_16_Moninkertainen_haku](
	[tilv] [varchar](4) NULL,
	[tilv_date] [date] NULL,
	[allk] [varchar](1) NULL,
	[luammhaku1_tunn] [varchar](5) NULL,
	[luammhaku2_tunn] [varchar](5) NULL,
	[luammhaku3_tunn] [varchar](5) NULL,
	[luammhaku4_tunn] [varchar](5) NULL,
	[luammhaku5_tunn] [varchar](5) NULL,
	[luammhaku1_opmast] [varchar](2) NULL,
	[luammhaku2_opmast] [varchar](2) NULL,
	[luammhaku3_opmast] [varchar](2) NULL,
	[luammhaku4_opmast] [varchar](2) NULL,
	[luammhaku5_opmast] [varchar](2) NULL,
	[luammhaku1_kaste_t2] [varchar](2) NULL,
	[luammhaku2_kaste_t2] [varchar](2) NULL,
	[luammhaku3_kaste_t2] [varchar](2) NULL,
	[luammhaku4_kaste_t2] [varchar](2) NULL,
	[luammhaku5_kaste_t2] [varchar](2) NULL,
	[luammhaku1_iscfibroad2013] [varchar](2) NULL,
	[luammhaku2_iscfibroad2013] [varchar](2) NULL,
	[luammhaku3_iscfibroad2013] [varchar](2) NULL,
	[luammhaku4_iscfibroad2013] [varchar](2) NULL,
	[luammhaku5_iscfibroad2013] [varchar](2) NULL,
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
	[yohakua_ylempi] [varchar](1) NULL,
	[yohakub_ylempi] [varchar](1) NULL,
	[yohakuc_ylempi] [varchar](1) NULL,
	[yohakud_ylempi] [varchar](1) NULL,
	[yohakue_ylempi] [varchar](1) NULL,
	[yohakuf_ylempi] [varchar](1) NULL,
	[yohakug_ylempi] [varchar](1) NULL,
	[yohakuh_ylempi] [varchar](1) NULL,
	[yohakui_ylempi] [varchar](1) NULL,
	[yohakua_erval] [varchar](1) NULL,
	[yohakub_erval] [varchar](1) NULL,
	[yohakuc_erval] [varchar](1) NULL,
	[yohakud_erval] [varchar](1) NULL,
	[yohakue_erval] [varchar](1) NULL,
	[yohakuf_erval] [varchar](1) NULL,
	[yohakug_erval] [varchar](1) NULL,
	[yohakuh_erval] [varchar](1) NULL,
	[yohakui_erval] [varchar](1) NULL,
	[kkhaku1_kaste_t2] [varchar](2) NULL,
	[kkhaku2_kaste_t2] [varchar](2) NULL,
	[kkhaku3_kaste_t2] [varchar](2) NULL,
	[kkhaku4_kaste_t2] [varchar](2) NULL,
	[kkhaku5_kaste_t2] [varchar](2) NULL,
	[kkhaku6_kaste_t2] [varchar](2) NULL,
	[kkhaku1_iscfibroad2013] [varchar](2) NULL,
	[kkhaku2_iscfibroad2013] [varchar](2) NULL,
	[kkhaku3_iscfibroad2013] [varchar](2) NULL,
	[kkhaku4_iscfibroad2013] [varchar](2) NULL,
	[kkhaku5_iscfibroad2013] [varchar](2) NULL,
	[kkhaku6_iscfibroad2013] [varchar](2) NULL,
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
	[sp] [varchar](1) NULL,
	[aikielir1] [varchar](2) NULL,
	[syntv] [varchar](4) NULL,
	[tilvaskunx] [varchar](3) NULL,
	[kansalr1] [varchar](1) NULL,
	[aikyotutk] [varchar](1) NULL,
	[aikyotutkkoulk] [varchar](6) NULL,
	[suvuosiyotutk] [varchar](4) NULL,
	[tunnyotutk] [varchar](5) NULL,
	[aikamm] [varchar](1) NULL,
	[aikammkoulk] [varchar](6) NULL,
	[suvuosiamm] [varchar](4) NULL,
	[tunnamm] [varchar](5) NULL,
	[aikamk] [varchar](1) NULL,
	[aikamkkoulk] [varchar](6) NULL,
	[suvuosiamk] [varchar](4) NULL,
	[tunnamk] [varchar](5) NULL,
	[aikylamk] [varchar](1) NULL,
	[aikylamkkoulk] [varchar](6) NULL,
	[suvuosiylamk] [varchar](4) NULL,
	[tunnylamk] [varchar](5) NULL,
	[aikalkk] [varchar](1) NULL,
	[aikalkkkoulk] [varchar](6) NULL,
	[suvuosialkk] [varchar](4) NULL,
	[tunnalkk] [varchar](5) NULL,
	[aikylkk] [varchar](1) NULL,
	[aikylkkkoulk] [varchar](6) NULL,
	[suvuosiylkk] [varchar](4) NULL,
	[tunnylkk] [varchar](5) NULL,
	[aiklistri] [varchar](1) NULL,
	[aiklistrikoulk] [varchar](6) NULL,
	[suvuosilistri] [varchar](4) NULL,
	[tunnlistri] [varchar](5) NULL,
	[yotutkopisx] [varchar](1) NULL,
	[yotutkopisxkoulk] [varchar](6) NULL,
	[yotutkopisxtunn] [varchar](5) NULL,
	[ammopisx] [varchar](1) NULL,
	[ammopisxkoulk] [varchar](6) NULL,
	[ammopisxtunn] [varchar](6) NULL,
	[amkopisx1] [varchar](1) NULL,
	[amkopisxkoulk1] [varchar](6) NULL,
	[amkopisxtunn1] [varchar](5) NULL,
	[amkopisx2] [varchar](1) NULL,
	[amkopisxkoulk2] [varchar](6) NULL,
	[amkopisxtunn2] [varchar](5) NULL,
	[amkopisx3] [varchar](1) NULL,
	[amkopisxkoulk3] [varchar](6) NULL,
	[amkopisxtunn3] [varchar](5) NULL,
	[yoopisx1] [varchar](1) NULL,
	[yoopisxkoulk1] [varchar](6) NULL,
	[yoopisxtunn1] [varchar](5) NULL,
	[yoopisx2] [varchar](1) NULL,
	[yoopisxkoulk2] [varchar](6) NULL,
	[yoopisxtunn2] [varchar](5) NULL,
	[yoopisx3] [varchar](1) NULL,
	[yoopisxkoulk3] [varchar](6) NULL,
	[yoopisxtunn3] [varchar](5) NULL,
	[ptoim1r3x] [varchar](2) NULL,
	[htok] [varchar](1) NULL,
	[lkm] [int] NULL,
	[tietolahde] [varchar](31) NOT NULL,
	[rivinumero] [bigint] NULL
) ON [PRIMARY]
END
GO
USE [ANTERO]