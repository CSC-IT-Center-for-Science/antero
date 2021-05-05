USE [VipunenTK_lisatiedot]
GO
/****** Object:  Table [dbo].[koulutusryhma]    Script Date: 3.5.2021 22:01:14 ******/
DROP TABLE [dbo].[koulutusryhma]
GO
/****** Object:  Table [dbo].[koulutusryhma]    Script Date: 3.5.2021 22:01:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[koulutusryhma](
	[id] [int] NOT NULL,
	[luotu] [date] NULL,
	[koulutusryhma_koodi] [nvarchar](2) NULL,
	[koulutusryhma] [nvarchar](255) NULL,
	[koulutusryhma_SV] [nvarchar](255) NULL,
	[koulutusryhma_EN] [nvarchar](255) NULL,
	[koulutusryhma2] [nvarchar](255) NULL,
	[koulutusryhma2_SV] [nvarchar](255) NULL,
	[koulutusryhma2_EN] [nvarchar](255) NULL,
	[jarjestys] [nvarchar](50) NULL,
	[virhetilanne] [nchar](10) NULL,
	[poistettu] [nchar](1) NULL,
	[tietolahde] [nvarchar](50) NULL,
	[kommentti] [nvarchar](250) NULL,
	[jarjestys2] [int] NULL
) ON [PRIMARY]

GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (-1, CAST(N'2014-12-01' AS Date), N'-1', N'Tuntematon', N'Information saknas', N'Missing data', N'Tuntematon', N'Information saknas', N'Missing data', N'1980', N'K         ', N' ', N'Manuaalinen', N'CSC Lasse', 1980)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (-2, CAST(N'2014-12-01' AS Date), N'-2', N'Virhetilanne', N'Feltillstånd', N'Error occurred', N'Virhetilanne', N'Feltillstånd', N'Error occurred', N'1990', N'K         ', N' ', N'Manuaalinen', N'CSC Lasse', 1990)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (1, CAST(N'2014-12-01' AS Date), N'21', N'Lukiokoulutus, nuorten OPS', N'Gymnasieutbildning, LP för unga', N'General upper secondary education, curriculum for young people', N'Lukiokoulutus (nuorten opetussuunnitelma)', N'Gymnasieutbildning, LP för unga', N'General upper secondary education, curriculum for young people', N'1020', N'E         ', N' ', N'Manuaalinen', N'CSC Lasse', 1020)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (2, CAST(N'2014-12-01' AS Date), N'22', N'Lukiokoulutus, aikuisten OPS', N'Gymnasieutbildning, LP för vuxna', N'General upper secondary education, curriculum for adults', N'Lukiokoulutus (aikuisten opetussuunnitelma)', N'Gymnasieutbildning, LP för vuxna', N'General upper secondary education, curriculum for adults', N'1021', N'E         ', N' ', N'Manuaalinen', N'CSC Lasse', 1030)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (3, CAST(N'2014-12-01' AS Date), N'31', N'Ammatilliset perustutkinnot (ei oppisopimuskoulutus)', N'Yrkesinriktade grundexamina (ej läroavtalsutbildning)', N'Vocational qualifications (not apprenticeship training)', N'Ammatilliset perustutkinnot (ei oppisopimuskoulutus)', N'Yrkesinriktade grundexamina (ej läroavtalsutbildning)', N'Vocational qualifications (not apprenticeship training)', N'1040', N'E         ', N' ', N'Manuaalinen', N'CSC Lasse', 1040)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (4, CAST(N'2014-12-01' AS Date), N'32', N'Ammatilliset perustutkinnot (ei oppisopimuskoulutus)', N'Yrkesinriktade grundexamina (ej läroavtalsutbildning)', N'Vocational qualifications (not apprenticeship training)', N'Ammatilliset perustutkinnot (ei oppisopimuskoulutus)', N'Yrkesinriktade grundexamina (ej läroavtalsutbildning)', N'Vocational qualifications (not apprenticeship training)', N'1040', N'E         ', N' ', N'Manuaalinen', N'CSC Lasse', 1040)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (5, CAST(N'2014-12-01' AS Date), N'33', N'Ammatti- ja erikoisammattitutkinnot (ei oppisopimuskoulutus)', N'Yrkes- och specialyrkesexamina (ej läroavtalsutbildning)', N'Further and specialist vocational qualifications (not apprenticeship training)', N'Ammatti- ja erikoisammattitutkinnot (ei oppisopimuskoulutus)', N'Yrkes- och specialyrkesexamina (ej läroavtalsutbildning)', N'Further and specialist vocational qualifications (not apprenticeship training)', N'1050', N'E         ', N' ', N'Manuaalinen', N'CSC Lasse', 1050)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (6, CAST(N'2014-12-01' AS Date), N'35', N'Oppisopimuskoulutus', N'Läroavtalsutbildning', N'Apprenticeship training', N'Oppisopimuskoulutus', N'Läroavtalsutbildning', N'Apprenticeship training', N'1070', N'E         ', N' ', N'Manuaalinen', N'CSC Lasse', 1070)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (10, CAST(N'2014-12-01' AS Date), N'41', N'AMK-tutkinto, päivätoteutus', N'YH-examen, dagstudier', N'UAS degree, daytime studies', N'Ammattikorkeakoulututkinto', N'YH-examen', N'UAS degree', N'1080', N'E         ', N' ', N'Manuaalinen', N'CSC Lasse', 1080)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (11, CAST(N'2014-12-01' AS Date), N'42', N'AMK-tutkinto, monimuotototeutus', N'YH-examen, flerformsstudier', N'UAS degree, multiform studies', N'Ammattikorkeakoulututkinto', N'YH-examen', N'UAS degree', N'1080', N'E         ', N' ', N'Manuaalinen', N'CSC Lasse', 1080)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (12, CAST(N'2020-07-16' AS Date), N'43', N'Ammattikorkeakoulujen erikoistumisopinnot', N'Specialiseringsstudier vid yrkeshögskolor', N'Specialisation studies in UAS', N'Muu korkeakoulutus', N'Övrig högskoleutbildning', N'Other higher education', N'1130', N'E         ', N' ', N'Manuaalinen', N'CSC Juha', 1130)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (13, CAST(N'2020-07-16' AS Date), N'44', N'Ammattikorkeakoulujen erikoistumiskoulutukset', N'Specialiseringsutbildning vid yrkeshögskolor', N'Specialisation studies in UAS', N'Muu korkeakoulutus', N'Övrig högskoleutbildning', N'Other higher education', N'1130', N'E         ', N' ', N'Manuaalinen', N'CSC Juha', 1130)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (14, CAST(N'2020-07-16' AS Date), N'45', N'Ammattikorkeakoulujen ammatillinen opettajankoulutus', N'Yrkesinriktad lärarutbildning', N'Vocational teacher education', N'Muu korkeakoulutus', N'Övrig högskoleutbildning', N'Other higher education', N'1130', N'E         ', N' ', N'Manuaalinen', N'CSC Juha', 1130)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (15, CAST(N'2014-12-01' AS Date), N'46', N'Ylempi AMK-tutkinto', N'Högre YH-examen', N'UAS Master''s degree', N'Ylempi ammattikorkeakoulututkinto', N'Högre YH-examen', N'UAS Master''s degree', N'1100', N'E         ', N' ', N'Manuaalinen', N'CSC Lasse', 1100)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (20, CAST(N'2014-12-01' AS Date), N'51', N'Alempi ja ylempi korkeakoulututkinto', N'Lägre och högre högskoleexamina', N'Bachelor''s and Master''s degrees', N'Alempi ja ylempi korkeakoulututkinto', N'Lägre och högre högskoleexamina', N'Bachelor''s and Master''s degrees', N'1110', N'E         ', N' ', N'Manuaalinen', N'CSC Lasse', 1110)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (21, CAST(N'2014-12-01' AS Date), N'52', N'Lisensiaatin- ja tohtorintutkinnot sekä lääkärien erikoistumiskoulutus', N'Licentiat- och doktorsexamina samt specialiseringsutbildning för läkare', N'Licentiate and doctoral degrees and specialist degrees in medicine', N'Lisensiaatin- ja tohtorintutkinnot sekä lääkärien erikoistumiskoulutus', N'Licentiat- och doktorsexamina samt specialiseringsutbildning för läkare', N'Licentiate and doctoral degrees and specialist degrees in medicine', N'1120', N'E         ', N' ', N'Manuaalinen', N'CSC Lasse', 1120)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (22, CAST(N'2020-07-16' AS Date), N'53', N'Lääkärien ja hammaslääkärien erikoistumiskoulutus', N'Specialiseringsutbildning för läkare och tandläkare', N'Specialist training in medicine and dentistry', N'Lisensiaatin- ja tohtorintutkinnot sekä lääkärien erikoistumiskoulutus', N'Licentiat- och doktorsexamina samt specialiseringsutbildning för läkare', N'Licentiate and doctoral degrees and specialist degrees in medicine', N'1120', N'E         ', N' ', N'Manuaalinen', N'CSC Juha', 1120)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (23, CAST(N'2020-07-16' AS Date), N'54', N'Yliopistojen erikoistumiskoulutukset pl. lääkärit ja hammaslääkärit', N'Specialiseringsutbildning vid universitet exkl. läkare och tandläkare', N'Specialisation studies in universities excl. medicine and dentistry', N'Muu korkeakoulutus', N'Övrig högskoleutbildning', N'Other higher education', N'1130', N'E         ', N' ', N'Manuaalinen', N'CSC Juha', 1130)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (31, CAST(N'2020-07-16' AS Date), N'61', N'Ammatilliset perustutkinnot (ei oppisopimuskoulutus)', N'Yrkesinriktade grundexamina (ej läroavtalsutbildning)', N'Vocational qualifications (not apprenticeship training)', N'Ammatilliset perustutkinnot (ei oppisopimuskoulutus)', N'Yrkesinriktade grundexamina (ej läroavtalsutbildning)', N'Vocational qualifications (not apprenticeship training)', N'1040', N'E         ', N' ', N'Manuaalinen', N'CSC Juha', 1040)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (32, CAST(N'2020-07-16' AS Date), N'62', N'Ammattitutkinnot (ei oppisopimuskoulutus)', N'Yrkesexamina (ej läroavtalsutbildning)', N'Further vocational qualifications (not apprenticeship training)', N'Ammatti- ja erikoisammattitutkinnot (ei oppisopimuskoulutus)', N'Yrkes- och specialyrkesexamina (ej läroavtalsutbildning)', N'Further and specialist vocational qualifications (not apprenticeship training)', N'1041', N'E         ', N' ', N'Manuaalinen', N'CSC Juha', 1050)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (33, CAST(N'2020-07-16' AS Date), N'63', N'Erikoisammattitutkinnot (ei oppisopimuskoulutus)', N'Specialyrkesexamina (ej läroavtalsutbildning)', N'Specialist vocational qualifications (not apprenticeship training)', N'Ammatti- ja erikoisammattitutkinnot (ei oppisopimuskoulutus)', N'Yrkes- och specialyrkesexamina (ej läroavtalsutbildning)', N'Further and specialist vocational qualifications (not apprenticeship training)', N'1042', N'E         ', N' ', N'Manuaalinen', N'CSC Juha', 1050)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (34, CAST(N'2020-07-16' AS Date), N'64', N'Ammatilliset perustutkinnot (oppisopimuskoulutus)', N'Yrkesinriktade grundexamina (läroavtalsutbildning)', N'Vocational qualifications (apprenticeship training)', N'Oppisopimuskoulutus', N'Läroavtalsutbildning', N'Apprenticeship training', N'1061', N'E         ', N' ', N'Manuaalinen', N'CSC Juha', 1070)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (35, CAST(N'2020-07-16' AS Date), N'65', N'Ammattitutkinnot (oppisopimuskoulutus)', N'Yrkesexamina (läroavtalsutbildning)', N'Further vocational qualifications (apprenticeship training)', N'Oppisopimuskoulutus', N'Läroavtalsutbildning', N'Apprenticeship training', N'1062', N'E         ', N' ', N'Manuaalinen', N'CSC Juha', 1070)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (36, CAST(N'2020-07-16' AS Date), N'66', N'Erikoisammattitutkinnot (oppisopimuskoulutus)', N'Specialyrkesexamina (läroavtalsutbildning)', N'Specialist vocational qualifications (apprenticeship training)', N'Oppisopimuskoulutus', N'Läroavtalsutbildning', N'Apprenticeship training', N'1063', N'E         ', N' ', N'Manuaalinen', N'CSC Juha', 1070)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (37, CAST(N'2020-07-16' AS Date), N'67', N'Oppisopimuskoulutus', N'Läroavtalsutbildning', N'Apprenticeship training', N'Oppisopimuskoulutus', N'Läroavtalsutbildning', N'Apprenticeship training', N'1070', N'E         ', N' ', N'Manuaalinen', N'CSC Juha', 1070)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (38, CAST(N'2021-05-03' AS Date), N'71', N'Ammatilliset perustutkinnot  (ei sisällä koulutussopimus- eikä oppisopimusjaksoja)', N'Grundläggande yrkesutbildning (omfattar inte utbildningsavtals- eller läroavtalsperioder)', N'Initial vocational qualifications (training agreement or apprenticeship training periods not included)', N'Ammatilliset perustutkinnot (ei oppisopimuskoulutus)', N'Yrkesinriktade grundexamina (ej läroavtalsutbildning)', N'Vocational qualifications (not apprenticeship training)', N'1030', N'E         ', N' ', N'Manuaalinen', N'CSC Juha', 1040)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (39, CAST(N'2021-05-03' AS Date), N'72', N'Ammatti- ja erikoisammattitutkinnot  (ei sisällä koulutussopimus- eikä oppisopimusjaksoja)', N'Yrkes- och specialyrkesexamina (omfattar inte utbildningsavtals- eller läroavtalsperioder)', N'Further and specialist vocational qualifications (training agreement or apprenticeship training periods not included)', N'Ammatti- ja erikoisammattitutkinnot (ei oppisopimuskoulutus)', N'Yrkes- och specialyrkesexamina (ej läroavtalsutbildning)', N'Further and specialist vocational qualifications (not apprenticeship training)', N'1031', N'E         ', N' ', N'Manuaalinen', N'CSC Juha', 1050)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (40, CAST(N'2021-05-03' AS Date), N'74', N'Ammatilliset perustutkinnot (sisältää sekä koulutus- että oppisopimusjaksoja)', N'Grundläggande yrkesutbildning (omfattar både utbildningsavtals- och läroavtalsperioder)', N'Initial vocational qualifications (training agreement and apprenticeship training periods included)', N'Oppisopimuskoulutus', N'Läroavtalsutbildning', N'Apprenticeship training', N'1036', N'E         ', N' ', N'Manuaalinen', N'CSC Juha', 1070)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (41, CAST(N'2021-05-03' AS Date), N'75', N'Ammatti- ja erikoisammattitutkinnot (sisältää sekä koulutus- että oppisopimusjaksoja)', N'Yrkes- och specialyrkesexamina (omfattar både utbildningsavtals- och läroavtalsperioder)', N'Further and specialist vocational qualifications (training agreement and apprenticeship training periods included)', N'Oppisopimuskoulutus', N'Läroavtalsutbildning', N'Apprenticeship training', N'1037', N'E         ', N' ', N'Manuaalinen', N'CSC Juha', 1070)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (42, CAST(N'2021-05-03' AS Date), N'77', N'Ammatilliset perustutkinnot (sisältää koulutussopimusjaksoja)', N'Grundläggande yrkesutbildning (omfattar utbildningsavtalsperioder)', N'Initial vocational qualifications (training agreement periods included)', N'Ammatilliset perustutkinnot (ei oppisopimuskoulutus)', N'Yrkesinriktade grundexamina (ej läroavtalsutbildning)', N'Vocational qualifications (not apprenticeship training)', N'1034', N'E         ', N' ', N'Manuaalinen', N'CSC Juha', 1040)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (43, CAST(N'2021-05-03' AS Date), N'78', N'Ammatti- ja erikoisammattitutkinnot (sisältää koulutussopimusjaksoja)', N'Yrkes- och specialyrkesexamina (omfattar utbildningsavtalsperioder)', N'Further and specialist vocational qualifications (training agreement periods included)', N'Ammatti- ja erikoisammattitutkinnot (ei oppisopimuskoulutus)', N'Yrkes- och specialyrkesexamina (ej läroavtalsutbildning)', N'Further and specialist vocational qualifications (not apprenticeship training)', N'1035', N'E         ', N' ', N'Manuaalinen', N'CSC Juha', 1050)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (44, CAST(N'2021-05-03' AS Date), N'80', N'Ammatilliset perustutkinnot (sisältää oppisopimusjaksoja)', N'Grundläggande yrkesutbildning (omfattar läroavtalsperioder)', N'Initial vocational qualifications (apprenticeship training periods included)', N'Oppisopimuskoulutus', N'Läroavtalsutbildning', N'Apprenticeship training', N'1032', N'E         ', N' ', N'Manuaalinen', N'CSC Juha', 1070)
GO
INSERT [dbo].[koulutusryhma] ([id], [luotu], [koulutusryhma_koodi], [koulutusryhma], [koulutusryhma_SV], [koulutusryhma_EN], [koulutusryhma2], [koulutusryhma2_SV], [koulutusryhma2_EN], [jarjestys], [virhetilanne], [poistettu], [tietolahde], [kommentti], [jarjestys2]) VALUES (45, CAST(N'2021-05-03' AS Date), N'81', N'Ammatti- ja erikoisammattitutkinnot (sisältää oppisopimusjaksoja)', N'Yrkes- och specialyrkesexamina (omfattar läroavtalsperioder)', N'Further and specialist vocational qualifications (apprenticeship training periods included)', N'Oppisopimuskoulutus', N'Läroavtalsutbildning', N'Apprenticeship training', N'1033', N'E         ', N' ', N'Manuaalinen', N'CSC Juha', 1070)
GO
