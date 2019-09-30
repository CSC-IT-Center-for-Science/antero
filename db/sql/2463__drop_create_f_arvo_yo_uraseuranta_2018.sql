USE [ANTERO]
GO

/****** Object:  Table [dw].[f_arvo_yo_uraseuranta_2018]    Script Date: 27.9.2019 16:59:19 ******/
DROP TABLE [dw].[f_arvo_yo_uraseuranta_2018]
GO

/****** Object:  Table [dw].[f_arvo_yo_uraseuranta_2018]    Script Date: 27.9.2019 16:59:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dw].[f_arvo_yo_uraseuranta_2018](
	[Ikä (valmistuessa)] [varchar](15) NULL,
	[Ikäryhmä (valmistuessa)] [nvarchar](100) NULL,
	[Sukupuoli] [nvarchar](100) NULL,
	[Äidinkieli] [nvarchar](100) NULL,
	[Kansalaisuus] [nvarchar](100) NULL,
	[Kansalaisuus (maanosa)] [nvarchar](200) NULL,
	[Asuinkunta] [varchar](11) NOT NULL,
	[Asuinmaakunta] [varchar](11) NOT NULL,
	[Laajuus] [int] NULL,
	[Pääaine] [varchar](11) NOT NULL,
	[Arvosana] [varchar](11) NOT NULL,
	[Asteikko] [varchar](11) NOT NULL,
	[Valintavuosi] [int] NULL,
	[Valmistumisvuosi] [int] NULL,
	[Läsnäolo (lukukausia)] [varchar](11) NOT NULL,
	[Kirjoillaolo (kuukausia)] [int] NULL,
	[Koulutusaste, taso 1] [nvarchar](200) NULL,
	[Koulutusaste, taso 2] [nvarchar](200) NULL,
	[Koulutusala, taso 1] [nvarchar](200) NULL,
	[Koulutusala, taso 2] [nvarchar](200) NULL,
	[Koulutusala, taso 3] [nvarchar](200) NULL,
	[OKM ohjauksen ala] [nvarchar](200) NULL,
	[Koulutusnimike] [nvarchar](200) NULL,
	[Koulutuksen kieli] [varchar](11) NOT NULL,
	[Koulutuksen kunta] [varchar](11) NOT NULL,
	[Koulutuksen maakunta] [varchar](11) NOT NULL,
	[Kysely] [varchar](11) NOT NULL,
	[Kyselykerta] [varchar](11) NOT NULL,
	[Kysymysryhmä] [nvarchar](max) NULL,
	[Kysymys] [nvarchar](500) NULL,
	[Kyselypohja] [varchar](100) NULL,
	[Kyselyvuosi] [int] NOT NULL,
	[Rahoitusmallikysymys] [varchar](5) NOT NULL,
	[Rahoituskysymys_paino] [decimal](18, 10) NULL,
	[Monivalintavaihtoehto] [varchar](160) NULL,
	[numerovalinta] [bigint] NULL,
	[vastaustyyppi] [varchar](50) NULL,
	[vaihtoehto] [int] NULL,
	[valtakunnallinen] [int] NULL,
	[Korkeakoulu] [nvarchar](255) NULL,
	[vastaajaid] [bigint] NULL,
	[lukumaara] [int] NOT NULL,
	[Högskola] [nvarchar](255) NULL,
	[Utbildningens språk] [varchar](13) NOT NULL,
	[Utbildningens kommun] [varchar](13) NOT NULL,
	[Utbildningens landskap] [varchar](13) NOT NULL,
	[kysely_sv] [varchar](13) NOT NULL,
	[Frågegrupp] [nvarchar](max) NULL,
	[Fråga] [nvarchar](500) NULL,
	[Flervalsalternativ] [varchar](13) NOT NULL,
	[Utbildningsnivå, nivå 1] [nvarchar](200) NULL,
	[Utbildningsnivå, nivå 2] [nvarchar](200) NULL,
	[Utbildningsområde, nivå 1] [nvarchar](200) NULL,
	[Utbildningsområde, nivå 2] [nvarchar](200) NULL,
	[Utbildningsområde, nivå 3] [nvarchar](200) NULL,
	[UKM-styrningsområde] [nvarchar](200) NULL,
	[Utbildningsbenämning] [varchar](13) NOT NULL,
	[Higher education institution] [varchar](13) NOT NULL,
	[Language of education] [varchar](13) NOT NULL,
	[Municipality of education] [varchar](13) NOT NULL,
	[Region of education] [varchar](13) NOT NULL,
	[kysely_en] [varchar](13) NOT NULL,
	[Question group] [nvarchar](max) NULL,
	[Question] [nvarchar](500) NULL,
	[Multiple choice option] [varchar](13) NOT NULL,
	[Level of education, tier 1] [nvarchar](200) NULL,
	[Level of education, tier 2] [nvarchar](200) NULL,
	[Field of education, tier 1] [nvarchar](200) NULL,
	[Field of education, tier 2] [nvarchar](200) NULL,
	[Field of education, tier 3] [nvarchar](200) NULL,
	[Field of education, HE steering] [varchar](13) NOT NULL,
	[Name of education] [varchar](13) NOT NULL,
	[vuosi_tilasto] [int] NOT NULL,
	[ura_amk] [int] NOT NULL,
	[ura_yamk] [int] NOT NULL,
	[ura_kandi] [int] NOT NULL,
	[ura_maisteri] [int] NOT NULL,
	[ura_tohtori] [int] NOT NULL,
	[Koodit Korkeakoulu] [int] NULL,
	[Koodit Koulutus] [int] NULL,
	[Koodit Koulutuksen kieli] [varchar](3) NOT NULL,
	[Koodit Koulutuksen kunta] [int] NULL,
	[Koodit Koulutuksen maakunta] [int] NULL,
	[jarjestys_ika] [nvarchar](100) NULL,
	[jarjestys_sukupuoli] [varchar](10) NULL,
	[jarjestys_kansalaisuus] [varchar](10) NULL,
	[jarjestys_asuinmaakunta] [int] NULL,
	[jarjestys_kysymysryhma] [int] NOT NULL,
	[jarjestys_kysymys] [int] NULL,
	[jarjestys_ohjauksenala] [varchar](10) NULL,
	[jarjestys_koulutusaste1] [varchar](10) NULL,
	[jarjestys_koulutusaste2] [varchar](10) NULL,
	[jarjestys_koulutusala1] [varchar](10) NULL,
	[jarjestys_koulutusala2] [varchar](10) NULL,
	[jarjestys_koulutusala3] [varchar](10) NULL,
	[jarjestys_monivalinta] [bigint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
