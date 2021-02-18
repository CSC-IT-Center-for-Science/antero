USE [ANTERO]
GO
/****** Object:  Table [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste]    Script Date: 17.2.2021 22:52:55 ******/
DROP TABLE [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste]
GO
/****** Object:  Table [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste]    Script Date: 17.2.2021 22:52:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[haku] [varchar](255) NOT NULL,
	[haku_oid] [varchar](255) NULL,
	[koulutuksen_alkamiskausi] [varchar](255) NULL,
	[hakuvuosi] [nchar](10) NULL,
	[aloituspaikat] [date] NULL,
	[hakijat] [date] NULL,
	[valitut] [date] NULL,
	[vastaanottaneet] [date] NULL,
	[aloittaneet] [date] NULL,
	[pisterajat] [date] NULL,
	[extra] [date] NULL,
 CONSTRAINT [PK__sa_haku_ja_valinta_vuosikello_toinen_aste] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ON 

GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (1, N'Ammatillisen koulutuksen ja lukiokoulutuksen kevään 2014 yhteishaku', N'1.2.246.562.5.2013080813081926341927', NULL, N'2014      ', CAST(N'2015-01-01' AS Date), CAST(N'2015-01-01' AS Date), CAST(N'2015-01-01' AS Date), CAST(N'2015-01-01' AS Date), CAST(N'2015-01-01' AS Date), CAST(N'2014-10-03' AS Date), NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (2, N'Lisähaku kevään yhteishaussa vapaaksi jääneille opiskelupaikoille', N'1.2.246.562.29.32820950486', NULL, N'2014      ', CAST(N'2015-01-01' AS Date), CAST(N'2015-01-01' AS Date), CAST(N'2015-01-01' AS Date), CAST(N'2015-01-01' AS Date), CAST(N'2015-01-01' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (3, N'Ammatillisen koulutuksen ja lukiokoulutuksen syksyn 2014 yhteishaku', N'1.2.246.562.29.92175749016', NULL, N'2014      ', CAST(N'2015-01-01' AS Date), CAST(N'2015-01-01' AS Date), CAST(N'2015-01-01' AS Date), CAST(N'2015-01-01' AS Date), CAST(N'2015-01-01' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (4, N'Lisähaku syksyn 2014 ammatillisen koulutuksen yhteishaussa vapaaksi jääneille opiskelupaikoille', N'1.2.246.562.29.35400243156', NULL, N'2014      ', CAST(N'2015-01-01' AS Date), CAST(N'2015-01-01' AS Date), CAST(N'2015-01-01' AS Date), CAST(N'2015-01-01' AS Date), CAST(N'2015-01-01' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (5, N'Yhteishaku ammatilliseen ja lukioon, kevät 2015', N'1.2.246.562.29.90697286251', NULL, N'2015      ', CAST(N'2015-11-01' AS Date), CAST(N'2015-11-01' AS Date), CAST(N'2015-11-01' AS Date), CAST(N'2015-11-01' AS Date), CAST(N'2015-11-01' AS Date), CAST(N'2015-11-01' AS Date), NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (6, N'Lisähaku kevään 2015 ammatillisen ja lukiokoulutuksen yhteishaussa vapaaksi jääneille opiskelupaikoille', N'1.2.246.562.29.13657766393', NULL, N'2015      ', CAST(N'2015-11-01' AS Date), CAST(N'2015-11-01' AS Date), CAST(N'2015-11-01' AS Date), CAST(N'2015-11-01' AS Date), CAST(N'2015-11-01' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (7, N'Haku erityisopetuksena järjestettävään ammatilliseen koulutukseen, kevät 2015', N'1.2.246.562.29.61316288341', NULL, N'2015      ', CAST(N'2015-11-01' AS Date), CAST(N'2015-11-01' AS Date), CAST(N'2015-11-01' AS Date), CAST(N'2015-11-01' AS Date), CAST(N'2015-11-01' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (8, N'Lisähaku erityisopetuksena järjestettävään ammatilliseen koulutukseen, kevät 2015', N'1.2.246.562.29.14262905905', NULL, N'2015      ', CAST(N'2015-11-01' AS Date), CAST(N'2015-11-01' AS Date), CAST(N'2015-11-01' AS Date), CAST(N'2015-11-01' AS Date), CAST(N'2015-11-01' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (9, N'Perusopetuksen jälkeisen valmistavan koulutuksen kevään 2015 haku', N'1.2.246.562.29.14865319314', NULL, N'2015      ', CAST(N'2015-11-01' AS Date), CAST(N'2015-11-01' AS Date), CAST(N'2015-11-01' AS Date), CAST(N'2015-11-01' AS Date), CAST(N'2015-11-01' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (10, N'Perusopetuksen jälkeisen valmistavan koulutuksen kevään 2015 lisähaku', N'1.2.246.562.29.67129953195', NULL, N'2015      ', CAST(N'2015-11-01' AS Date), CAST(N'2015-11-01' AS Date), CAST(N'2015-11-01' AS Date), CAST(N'2015-11-01' AS Date), CAST(N'2015-11-01' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (11, N'Ammatillisen koulutuksen ja lukiokoulutuksen syksyn 2015 yhteishaku', N'1.2.246.562.29.80306203979', NULL, N'2015      ', CAST(N'2016-02-01' AS Date), CAST(N'2016-02-01' AS Date), CAST(N'2016-02-01' AS Date), CAST(N'2016-02-01' AS Date), CAST(N'2016-02-01' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (12, N'Lisähaku syksyn 2015 ammatillisen koulutuksen yhteishaussa vapaaksi jääneille opiskelupaikoille', N'1.2.246.562.29.94278815611', NULL, N'2015      ', CAST(N'2016-02-01' AS Date), CAST(N'2016-02-01' AS Date), CAST(N'2016-02-01' AS Date), CAST(N'2016-02-01' AS Date), CAST(N'2016-02-01' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (13, N'Yhteishaku ammatilliseen ja lukioon, kevät 2016', N'1.2.246.562.29.14662042044', NULL, N'2016      ', CAST(N'2016-10-03' AS Date), CAST(N'2016-10-03' AS Date), CAST(N'2016-10-03' AS Date), CAST(N'2016-10-03' AS Date), CAST(N'2016-10-03' AS Date), CAST(N'2016-10-03' AS Date), NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (14, N'Lisähaku kevään 2016 ammatillisen ja lukiokoulutuksen yhteishaussa vapaaksi jääneille opiskelupaikoille', N'1.2.246.562.29.98929669087', NULL, N'2016      ', CAST(N'2016-10-03' AS Date), CAST(N'2016-10-03' AS Date), CAST(N'2016-10-03' AS Date), CAST(N'2016-10-03' AS Date), CAST(N'2016-10-03' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (15, N'Perusopetuksen jälkeisen valmistavan koulutuksen kevään 2016 haku', N'1.2.246.562.29.94318919571', NULL, N'2016      ', CAST(N'2016-10-03' AS Date), CAST(N'2016-10-03' AS Date), CAST(N'2016-10-03' AS Date), CAST(N'2016-10-03' AS Date), CAST(N'2016-10-03' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (16, N'Perusopetuksen jälkeisen valmistavan koulutuksen kevään 2016 lisähaku', N'1.2.246.562.29.41716846138', NULL, N'2016      ', CAST(N'2016-10-03' AS Date), CAST(N'2016-10-03' AS Date), CAST(N'2016-10-03' AS Date), CAST(N'2016-10-03' AS Date), CAST(N'2016-10-03' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (17, N'Haku erityisopetuksena järjestettävään ammatilliseen koulutukseen, kevät 2016', N'1.2.246.562.29.669559278110', NULL, N'2016      ', CAST(N'2016-10-03' AS Date), CAST(N'2016-10-03' AS Date), CAST(N'2016-10-03' AS Date), CAST(N'2016-10-03' AS Date), CAST(N'2016-10-03' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (18, N'Lisähaku erityisopetuksena järjestettävään ammatilliseen koulutukseen, kevät 2016', N'1.2.246.562.29.67051356953', NULL, N'2016      ', CAST(N'2016-10-03' AS Date), CAST(N'2016-10-03' AS Date), CAST(N'2016-10-03' AS Date), CAST(N'2016-10-03' AS Date), CAST(N'2016-10-03' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (19, N'Ammatillisen koulutuksen syksyn 2016 haku keväällä alkavaan koulutukseen', N'1.2.246.562.29.74414985379', NULL, N'2016      ', CAST(N'2017-02-04' AS Date), CAST(N'2017-02-04' AS Date), CAST(N'2017-02-04' AS Date), CAST(N'2017-02-04' AS Date), CAST(N'2017-02-04' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (20, N'Haku erityisopetuksena järjestettävään ammatilliseen koulutukseen, kevät 2017', N'1.2.246.562.29.57263577488', NULL, N'2017      ', CAST(N'2017-10-03' AS Date), CAST(N'2017-10-03' AS Date), CAST(N'2017-10-03' AS Date), CAST(N'2017-10-03' AS Date), CAST(N'2017-10-03' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (21, N'Perusopetuksen jälkeisen valmistavan koulutuksen kevään 2017 haku', N'1.2.246.562.29.57768753733', NULL, N'2017      ', CAST(N'2017-10-03' AS Date), CAST(N'2017-10-03' AS Date), CAST(N'2017-10-03' AS Date), CAST(N'2017-10-03' AS Date), CAST(N'2016-10-03' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (22, N'Yhteishaku ammatilliseen ja lukioon, kevät 2017', N'1.2.246.562.29.10108985853', NULL, N'2017      ', CAST(N'2017-10-03' AS Date), CAST(N'2017-10-03' AS Date), CAST(N'2017-10-03' AS Date), CAST(N'2017-10-03' AS Date), CAST(N'2017-10-03' AS Date), CAST(N'2017-10-03' AS Date), NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (23, N'Lisähaku kevään 2017 ammatillisen ja lukiokoulutuksen yhteishaussa vapaaksi jääneille opiskelupaikoille', N'1.2.246.562.29.62377116603', NULL, N'2017      ', CAST(N'2017-10-07' AS Date), CAST(N'2017-10-07' AS Date), CAST(N'2017-10-07' AS Date), CAST(N'2018-01-05' AS Date), CAST(N'2018-01-05' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (24, N'Perusopetuksen jälkeisen valmistavan koulutuksen kevään 2017 lisähaku', N'1.2.246.562.29.48353453128', NULL, N'2017      ', CAST(N'2017-10-07' AS Date), CAST(N'2017-10-07' AS Date), CAST(N'2017-10-07' AS Date), CAST(N'2018-01-05' AS Date), CAST(N'2018-01-05' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (25, N'Lisähaku erityisopetuksena järjestettävään ammatilliseen koulutukseen, kevät 2017', N'1.2.246.562.29.59213949841', NULL, N'2017      ', CAST(N'2017-10-07' AS Date), CAST(N'2017-10-07' AS Date), CAST(N'2017-10-07' AS Date), CAST(N'2018-01-05' AS Date), CAST(N'2018-01-05' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (26, N'Erityisopetuksena järjestettävän ammatillisen koulutuksen haku keväällä 2018 alkavaan koulutukseen', N'1.2.246.562.29.83917330132', NULL, N'2017      ', CAST(N'2018-01-12' AS Date), CAST(N'2018-01-12' AS Date), CAST(N'2018-02-05' AS Date), CAST(N'2018-02-05' AS Date), CAST(N'2018-02-05' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (27, N'Perusopetuksen jälkeisen valmistavan koulutuksen haku keväällä 2018 alkavaan koulutukseen', N'1.2.246.562.29.82633706526', NULL, N'2017      ', CAST(N'2018-01-12' AS Date), CAST(N'2018-01-12' AS Date), CAST(N'2018-02-05' AS Date), CAST(N'2018-02-05' AS Date), CAST(N'2018-02-05' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (28, N'Ammatillisen koulutuksen syksyn 2017 haku keväällä alkavaan koulutukseen', N'1.2.246.562.29.69946045619', NULL, N'2017      ', CAST(N'2018-01-12' AS Date), CAST(N'2018-01-12' AS Date), CAST(N'2018-02-05' AS Date), CAST(N'2018-02-05' AS Date), CAST(N'2018-02-05' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (29, N'Yhteishaku ammatilliseen ja lukioon, kevät 2018', N'1.2.246.562.29.55739081531', NULL, N'2018      ', CAST(N'2018-03-21' AS Date), CAST(N'2018-03-21' AS Date), CAST(N'2018-06-15' AS Date), CAST(N'2018-08-18' AS Date), CAST(N'2018-08-18' AS Date), CAST(N'2018-06-15' AS Date), NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (30, N'Haku vaativana erityisenä tukena järjestettävään ammatilliseen koulutukseen, kevät 2018', N'1.2.246.562.29.98788866931', NULL, N'2018      ', CAST(N'2018-03-21' AS Date), CAST(N'2018-03-21' AS Date), CAST(N'2018-06-15' AS Date), CAST(N'2018-08-18' AS Date), CAST(N'2018-08-18' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (31, N'Perusopetuksen jälkeisen valmistavan koulutuksen kevään 2018 haku', N'1.2.246.562.29.50212298785', NULL, N'2018      ', CAST(N'2018-07-27' AS Date), CAST(N'2018-07-27' AS Date), CAST(N'2018-08-04' AS Date), CAST(N'2018-08-18' AS Date), CAST(N'2018-08-18' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (32, N'Lisähaku kymppiluokalle ja lukioon valmistavaan koulutukseen 2018', N'1.2.246.562.29.86099733445', NULL, N'2018      ', CAST(N'2018-08-18' AS Date), CAST(N'2018-08-18' AS Date), CAST(N'2018-08-18' AS Date), CAST(N'2018-08-18' AS Date), CAST(N'2018-08-18' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (33, N'Lisähaku lukiokoulutukseen kevään 2018 yhteishaussa vapaaksi jääneille opiskelupaikoille', N'1.2.246.562.29.21494502285', NULL, N'2018      ', CAST(N'2018-08-18' AS Date), CAST(N'2018-08-18' AS Date), CAST(N'2018-08-18' AS Date), CAST(N'2018-08-18' AS Date), CAST(N'2018-08-18' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (34, N'Yhteishaku ammatilliseen ja lukioon, kevät 2019', N'1.2.246.562.29.676633696010', NULL, N'2019      ', CAST(N'2019-03-18' AS Date), CAST(N'2019-03-18' AS Date), CAST(N'2019-06-14' AS Date), CAST(N'2019-08-19' AS Date), CAST(N'2019-08-19' AS Date), CAST(N'2019-06-14' AS Date), CAST(N'2019-10-04' AS Date))
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (35, N'Haku vaativana erityisenä tukena järjestettävään ammatilliseen koulutukseen, kevät 2019', N'1.2.246.562.29.69908067932', NULL, N'2019      ', CAST(N'2019-04-05' AS Date), CAST(N'2019-04-05' AS Date), CAST(N'2019-06-14' AS Date), CAST(N'2019-08-19' AS Date), CAST(N'2019-08-19' AS Date), NULL, CAST(N'2019-10-04' AS Date))
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (36, N'Perusopetuksen jälkeisen valmistavan koulutuksen kevään 2019 haku', N'1.2.246.562.29.99771464296', NULL, N'2019      ', CAST(N'2019-07-25' AS Date), CAST(N'2019-07-25' AS Date), CAST(N'2019-08-03' AS Date), CAST(N'2019-08-19' AS Date), CAST(N'2019-08-19' AS Date), NULL, CAST(N'2019-10-04' AS Date))
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (37, N'Lisähaku kymppiluokalle ja lukioon valmistavaan koulutukseen 2019', N'1.2.246.562.29.63366470076', NULL, N'2019      ', CAST(N'2019-08-19' AS Date), CAST(N'2019-08-19' AS Date), CAST(N'2019-08-19' AS Date), CAST(N'2019-08-19' AS Date), CAST(N'2019-08-19' AS Date), NULL, CAST(N'2019-10-04' AS Date))
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (38, N'Lisähaku lukiokoulutukseen kevään 2019 yhteishaussa vapaaksi jääneille opiskelupaikoille', N'1.2.246.562.29.77229148562', NULL, N'2019      ', CAST(N'2019-08-19' AS Date), CAST(N'2019-08-19' AS Date), CAST(N'2019-08-19' AS Date), CAST(N'2019-08-19' AS Date), CAST(N'2019-08-19' AS Date), NULL, CAST(N'2019-10-04' AS Date))
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (39, N'Yhteishaku ammatilliseen ja lukioon, kevät 2020', N'1.2.246.562.29.54537554997', NULL, N'2020      ', CAST(N'2020-03-16' AS Date), CAST(N'2020-03-16' AS Date), CAST(N'2020-06-12' AS Date), CAST(N'2020-08-17' AS Date), CAST(N'2020-08-17' AS Date), CAST(N'2020-06-12' AS Date), NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (40, N'Haku vaativana erityisenä tukena järjestettävään ammatilliseen koulutukseen, kevät 2020', N'1.2.246.562.29.29422216522', NULL, N'2020      ', CAST(N'2020-04-03' AS Date), CAST(N'2020-04-03' AS Date), CAST(N'2020-06-12' AS Date), CAST(N'2020-08-17' AS Date), CAST(N'2020-08-17' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (41, N'Perusopetuksen jälkeisen valmistavan koulutuksen kevään 2020 haku', N'1.2.246.562.29.47826913387', NULL, N'2020      ', CAST(N'2020-07-23' AS Date), CAST(N'2020-07-23' AS Date), CAST(N'2020-08-03' AS Date), CAST(N'2020-08-17' AS Date), CAST(N'2020-08-17' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (42, N'Lisähaku lukiokoulutukseen kevään 2020 yhteishaussa vapaaksi jääneille opiskelupaikoille', NULL, NULL, N'2020      ', CAST(N'2020-08-17' AS Date), CAST(N'2020-08-17' AS Date), CAST(N'2020-08-17' AS Date), CAST(N'2020-10-02' AS Date), CAST(N'2020-10-02' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (43, N'Lisähaku kymppiluokalle ja lukioon valmistavaan koulutukseen 2020', NULL, NULL, N'2020      ', CAST(N'2020-08-17' AS Date), CAST(N'2020-08-17' AS Date), CAST(N'2020-08-17' AS Date), CAST(N'2020-10-02' AS Date), CAST(N'2020-10-02' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (44, N'Yhteishaku ammatilliseen ja lukioon, kevät 2021', N'1.2.246.562.29.15658556293', NULL, N'2021      ', CAST(N'2021-03-29' AS Date), CAST(N'2021-03-29' AS Date), CAST(N'2021-06-18' AS Date), CAST(N'2021-08-21' AS Date), CAST(N'2021-08-21' AS Date), CAST(N'2021-06-18' AS Date), NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (45, N'Perusopetuksen jälkeisen valmistavan koulutuksen kevään 2021 haku', N'1.2.246.562.29.25223557569', NULL, N'2021      ', CAST(N'2021-03-29' AS Date), CAST(N'2021-03-29' AS Date), CAST(N'2021-06-18' AS Date), CAST(N'2021-08-21' AS Date), CAST(N'2021-08-21' AS Date), NULL, NULL)
GO
INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] ([id], [haku], [haku_oid], [koulutuksen_alkamiskausi], [hakuvuosi], [aloituspaikat], [hakijat], [valitut], [vastaanottaneet], [aloittaneet], [pisterajat], [extra]) VALUES (46, N'Haku vaativana erityisenä tukena järjestettävään ammatilliseen koulutukseen, kevät 2021', N'1.2.246.562.29.95684437676', NULL, N'2021      ', CAST(N'2021-03-29' AS Date), CAST(N'2021-03-29' AS Date), CAST(N'2021-06-18' AS Date), CAST(N'2021-08-21' AS Date), CAST(N'2021-08-21' AS Date), NULL, NULL)
GO
SET IDENTITY_INSERT [sa].[sa_haku_ja_valinta_vuosikello_toinen_aste] OFF
GO
