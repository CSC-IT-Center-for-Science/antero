USE [VipunenTK]
GO

/****** Object:  View [dbo].[v_f_tab_koulutukseen_sijoittuneet_6v_peruskoulu]    Script Date: 14.3.2018 14:44:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO












ALTER VIEW [dbo].[v_f_tab_koulutukseen_sijoittuneet_6v_peruskoulu] AS

Select
[lkm_int2] = lkm
,[tilastovuosi] AS Tilastovuosi
,d17.tarkastelujakso AS Tarkastelujakso
,d16.sukupuoli AS Sukupuoli
,d2.aidinkieli_versio1 AS Äidinkieli
,d5.ika AS Ikä
,d5b.ika5v AS Ikäryhmä
,d6.tutkintoryhma AS "Tutkintoryhmä"
,d7.koulutus AS "Pohjakoulutus"
,d8.koulutusaste2002 AS "Koul. sijoittuneen koulutusaste"
,d8.koulutusala2002 AS "Koul. sijoittuneen koulutusala"
,d8.opintoala2002 AS "Koul. sijoittuneen opintoala"
,d8.koulutus AS "Koul. sijoittuneen koulutusnimike"
--,d3.kunta AS "Asuinkunta"
--,d3.maakunta AS "Asuinmaakunta"
--,d3.avi AS "Asuinpaikan AVI"
--,d3.ely AS "Asuinpaikan ELY"
--,d3.seutukunta AS "Asuinpaikan seutukunta"
--,d3.suuralue AS "Asuinpaikan suuralue"
--,d3.kuntaryhma AS "Asuinpaikan kuntaryhmä"
--,d3.laani AS "Asuinpaikan lääni"
--,d3.kielisuhde AS "Asuinpaikan kunnan kielisuhde"
,d4.maakunta AS "Koul. sijoittuneen opiskelumaakunta"
--,d4.avi AS "Koul. sijoittuneen opiskelupaikan AVI"
--,d4.ely AS "Koul. sijoittuneen opiskelupaikan ELY"
--,d4.seutukunta AS "Koul. sijoittuneen opiskelupaikan seutukunta"
--,d4.suuralue AS "Koul. sijoittuneen opiskelupaikan suuralue"
--,d4.kuntaryhma AS "Koul. sijoittuneen opiskelupaikan kuntaryhmä"
--,d4.laani AS "Koul. sijoittuneen opiskelupaikan lääni"
,d4b.maakunta AS "Tutkinnon suoritusmaakunta"
--,d4b.avi AS "Tutk. suorituspaikan AVI"
--,d4b.ely AS "Tutk. suorituspaikan ELY"
--,d4b.seutukunta AS "Tutk. suorituspaikan seutukunta"
--,d4b.suuralue AS "Tutk. suorituspaikan suuralue"
--,d4b.kuntaryhma AS "Tutk. suorituspaikan kuntaryhmä"
--,d4b.laani AS "Tutk. suorituspaikan lääni"
,d13.oppilaitos AS "Oppilaitos"
,d13.oppilaitostyyppi AS "Oppilaitostyyppi"
--,d13.oppilaitoksen_omistajatyyppi AS "Oppil. omistajatyyppi"
,d13.opetuskieli AS "Oppil. opetuskieli"
,d13.koulutuksen_jarjestaja AS "Koulutuksen järjestäjä"
--,d13.koulutuksen_jarjestajan_omistajatyyppi AS "Koul. järjestäjän omistajatyyppi"
--,d13.koulutuksen_jarjestajan_kieli AS "Koul. järjestäjän kieli"
--,d13.peruskoulujen_ryhmitys AS "Peruskoulujen ryhmitys"
--,d13.peruskoulujen_vuosilks AS "Peruskoulujen vuosiluokat"
,d14.oppilaitos AS "Koul. sijoittuneen oppilaitos"
--,d14.oppilaitostyyppi AS "Koul. sijoittuneen oppil.tyyppi"
--,d14.oppilaitoksen_omistajatyyppi AS "Koul. sijoittuneen oppil. omistajatyyppi"
--,d14.opetuskieli AS "Koul. sijoittuneen oppil. opetuskieli"
,d14.koulutuksen_jarjestaja AS "Koul. sijoittuneen koul. järjestäjä"
--,d14.koulutuksen_jarjestajan_omistajatyyppi AS "Koul. sijoittuneen koul. järjestäjän omistajatyyppi"
--,d14.koulutuksen_jarjestajan_kieli AS "Koul. sijoittuneen koul. järjestäjän kieli"
--,d14.peruskoulujen_ryhmitys AS "Koul. sijoittuneen peruskoulujen ryhmitys"
--,d14.peruskoulujen_vuosilks AS "Koul. sijoittuneen peruskoulujen vuosiluokat"
,d15.vuosiselite AS "Tutkinnon suoritusvuosi"
,d18.lukukausiselite AS "Tutkinnon suorituslukukausi"
--,d19.vuosiselite AS "Syntymävuosi"
--,d20.pohjoismaa AS "Pohjoismaan kansalainen"
,d21.kansalaisuus_versio1 AS "Kansalaisuus"
--,d22.opetuskieli AS "Opetuskieli"
--,d23.ammatillisen_koulutuksen_koulutuslaji AS "Tutkintotyyppi"
--,d24.opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus AS "Järjestämistapa"
--,d25.nuorten_aikuisten_koulutus AS "Nuoret/aikuiset"
--,d26.moninkertainen_haku AS "Koul. sijoittuneiden haut"
--,d27.paaasiallinen_toiminta AS "Pääasiallinen toiminta"
--,d28.ammattiasema AS "Ammattiasema"
,d29.koulutuksen_paattaneiden_toiminta AS "Koul. päättäneiden toiminta"
--,d30.eumaa AS "EU-maan kansalainen"
--,d31.etamaa AS "ETA-maan kansalainen"

--ruotsi
,[tilastovuosi] AS Statistikår
,d17.tarkastelujakso_SV AS Granskningsperiod
,d16.sukupuoli_SV AS Kön
,d2.aidinkieli_versio1_SV AS Modersmål
,d5.ika_SV AS Ålder
,d5b.ika5v_SV AS Åldersgrupp
,d6.tutkintoryhma_SV AS Examenskategori
,d7.koulutus_SV AS Grundutbildning
,d8.koulutusaste2002_SV AS "Placering i utbildning – utbildningsnivå"
,d8.koulutusala2002_SV AS "Placering i utbildning – utbildningsområde"
,d8.opintoala2002_SV AS "Placering i utbildning – studieområde"
,d8.koulutus_SV AS "Placering i utbildning – utbildningsbenämning"
,d4.maakunta_SV AS "Placering i utbildning – landskapet för studieplatsen"
,d4b.maakunta_SV AS [Landskap där examen avlagts]
,d13.oppilaitos AS "Läroanstalt"
,d13.oppilaitostyyppi_SV AS Läroanstaltstyp
,d13.opetuskieli_SV AS [Läroanstaltens undervisningsspråk]
,d13.koulutuksen_jarjestaja_SV AS Utbildningsanordnare
,d14.oppilaitos_SV AS "Placering i utbildning – läroanstalt"
,d14.koulutuksen_jarjestaja_SV AS "Placering i utbildning – utbildningsanordnare"
,d15.vuosiselite_SV AS [År då utbildningen avlagts]
,d18.lukukausiselite_SV AS [Termin då utbildningen avlagts]
,d21.kansalaisuus_versio1_SV AS Medborgaskap
--,d25.nuorten_aikuisten_koulutus_SV AS [Ungdoms-/vuxenutbildning]
,d29.koulutuksen_paattaneiden_toiminta_SV AS [Sysselsättning av utexaminerade]

--englanti
,[tilastovuosi] AS [Statistical year]
,d17.tarkastelujakso_EN AS [Reference period]
,d16.sukupuoli_EN AS Gender
,d2.aidinkieli_versio1_EN AS [Mother tongue]
,d5.ika_EN AS Age
,d5b.ika5v_EN AS [Age group]
,d6.tutkintoryhma_EN AS [Degree/Qualification group]
,d7.koulutus_EN AS [Previous education]
,d8.koulutusaste2002_EN AS [Placed in further ed. - level of education]
,d8.koulutusala2002_EN AS [Placed in further ed. - field of education]
,d8.opintoala2002_EN AS [Placed in further ed. - subfield of education]
,d8.koulutus_EN AS [Placed in further ed. - name of education]
,d4.maakunta_EN AS [Placed in further ed. - region]
,d4b.maakunta_EN AS [Region of degree/qualification]
,d13.oppilaitos AS "Educational institution"
,d13.oppilaitostyyppi_EN AS [Type of institution]
,d13.opetuskieli_EN AS [Language of the institution]
,d13.koulutuksen_jarjestaja_EN AS [Education provider]
,d14.oppilaitos_EN AS [Placed in further ed. - ed. institution]
,d14.koulutuksen_jarjestaja_EN AS [Placed in further ed. - education provider]
,d15.vuosiselite_EN AS [Graduation year]
,d18.lukukausiselite_EN AS [Term of graduation]
,d21.kansalaisuus_versio1_EN AS Nationality
--,d25.nuorten_aikuisten_koulutus_EN AS [Youth/adult education]
,d29.koulutuksen_paattaneiden_toiminta_EN AS [Completers' activity]

--isced
,d8.iscle2011 as "Koul. sijoittuneen koulutusaste, taso 1"
,d8.Koulutusaste_taso2 as "Koul. sijoittuneen koulutusaste, taso 2"
,d8.iscfibroad2013 as "Koul. sijoittuneen koulutusala, taso 1"
,d8.iscfinarrow2013 as "Koul. sijoittuneen koulutusala, taso 2"
,d8.iscfi2013 as "Koul. sijoittuneen koulutusala, taso 3"
,d8.OKM_ohjauksen_ala as "Koul. sijoittuneen OKM ohjauksen ala, korkeak."

,d8.iscle2011_SV as "Placering i utbildning – utb.nivå, nivå 1"
,d8.Koulutusaste_taso2_SV as "Placering i utbildning – utb.nivå, nivå 2"
,d8.iscfibroad2013_SV as "Placering i utbildning – utb.område, nivå 1"
,d8.iscfinarrow2013_SV as "Placering i utbildning – utb.område, nivå 2"
,d8.iscfi2013_SV as "Placering i utbildning – utb.område, nivå 3"
,d8.OKM_ohjauksen_ala_SV as "Placering i utbildning – UKM-styrningsområde, högskolor"

,d8.iscle2011_EN as "Placed in further ed. - level of education, tier 1"
,d8.Koulutusaste_taso2_EN as "Placed in further ed. - level of education, tier 2"
,d8.iscfibroad2013_EN as "Placed in further ed. - field of education, tier 1"
,d8.iscfinarrow2013_EN as "Placed in further ed. - field of education, tier 2"
,d8.iscfi2013_EN as "Placed in further ed. - field of education, tier 3"
,d8.OKM_ohjauksen_ala_EN as "Placed in further ed. - field of ed., HE steering"

,d8.jarjestys_iscle2011 as jarj_isced_koulast1
,d8.jarjestys_Koulutusaste_taso2 as jarj_isced_koulast2
,d8.jarjestys_iscfibroad2013 as jarj_isced_koulala1
,d8.jarjestys_iscfinarrow2013 as jarj_isced_koulala2
,d8.jarjestys_iscfi2013 as jarj_isced_koulala3
,d8.jarjestys_OKM_ohjauksen_ala as jarj_isced_okmohjaus1

--koodit
,d8.koulutusala2002_koodi as "Koodit Koulutusala 2002"
,d8.opintoala1995_koodi as "Koodit Koulutusala 1995"
,d8.opintoala2002_koodi as "Koodit Opintoala 2002"
,d8.koulutus_koodi as "Koodit Koulutusnimike"
,d8.koulutusaste2002_koodi as "Koodit Koulutusaste 2002"
,d14.koulutuksen_jarjestajakoodi as "Koodit Koul. sij. koul. järjestäjä"
,d14.oppilaitoskoodi as "Koodit Koul. sij. oppilaitos"
,d13.koulutuksen_jarjestajakoodi as "Koodit Koul. järjestäjä"
,d4b.maakunta_koodi as "Koodit Tutk. suor.maakunta"
,d4.maakunta_koodi as "Koodit Opiskelumaakunta"
,d8.iscle2011_koodi as "Koodit Koulutusaste, taso 1"
,d8.Koulutusaste_taso2_koodi as "Koodit Koulutusaste, taso 2"
,d8.iscfibroad2013_koodi as "Koodit Koulutusala, taso 1"
,d8.iscfinarrow2013_koodi as "Koodit Koulutusala, taso 2"
,d8.iscfi2013_koodi as "Koodit Koulutusala, taso 3"
,d8.OKM_ohjauksen_ala_koodi as "Koodit OKM ohjauksen ala, korkeak."

--järjestys
,d17.jarjestys AS tarkastelujakso_jarjestys
,d16.jarjestys AS sukupuoli_jarjestys
,d2.jarjestys AS aidinkieli_jarjestys
,d5.jarjestys_ika
,d5b.jarjestys_ika5v
,d6.jarjestys AS tutkintoryhma_jarjestys
,d7.jarjestys AS jarjestys_pohjakoulutus
,d8.jarjestys_koulutusaste2002 AS jarjestys_sij_koulutusaste2002
,d8.jarjestys_koulutusala2002 AS jarjestys_sij_koulutusala2002
,d8.jarjestys_opintoala2002 AS jarjestys_sij_opintoala
,d8.jarjestys AS jarjestys_sij_koulutusnimike
--,d3.jarjestys AS alueluokitus_jarjestys
--,d3.jarjestys_maakunta
--,d3.jarjestys_avi
--,d3.jarjestys_ely
--,d3.jarjestys_seutukunta
--,d3.jarjestys_suuralue
--,d3.jarjestys_kuntaryhma
--,d3.jarjestys_laani
--,d3.jarjestys_kielisuhde
,d4.jarjestys_maakunta AS sijoittuneen_al_jarjestys_maakunta
--,d4.jarjestys_avi AS sijoittuneen_al_jarjestys_avi
--,d4.jarjestys_ely AS sijoittuneen_al_jarjestys_ely
--,d4.jarjestys_seutukunta AS sijoittuneen_al_jarjestys_seutukunta
--,d4.jarjestys_suuralue AS sijoittuneen_al_jarjestys_suuralue
--,d4.jarjestys_kuntaryhma AS sijoittuneen_al_jarjestys_kuntaryhma
--,d4.jarjestys_laani AS sijoittuneen_al_jarjestys_laani
--,d4.jarjestys_kielisuhde AS sijoittuneen_al_jarjestys_kielisuhde
,d4b.jarjestys_maakunta AS tutksuor_al_jarjestys_maakunta
--,d4b.jarjestys_avi AS tutksuor_al_jarjestys_avi
--,d4b.jarjestys_ely AS tutksuor_al_jarjestys_ely
--,d4b.jarjestys_seutukunta AS tutksuor_al_jarjestys_seutukunta
--,d4b.jarjestys_suuralue AS tutksuor_al_jarjestys_suuralue
--,d4b.jarjestys_kuntaryhma AS tutksuor_al_jarjestys_kuntaryhma
--,d4b.jarjestys_laani AS tutksuor_al_jarjestys_laani
--,d4b.jarjestys_kielisuhde AS tutksuor_al_jarjestys_kielisuhde
--,d13.jarjestys_oppilaitos
,d13.jarjestys_oppilaitostyyppi
--,d13.jarjestys_omistajatyyppi
,d13.jarjestys_opetuskieli
--,d13.jarjestys_koulutuksen_jarjestaja
--,d13.jarjestys_koulutuksen_jarjestajan_kieli
--,d13.jarjestys_peruskoulujen_ryhmitys
--,d13.jarjestys_peruskoulujen_vuosilks
--,d14.jarjestys_oppilaitos AS sijoittuneen_jarjestys_oppilaitos
--,d14.jarjestys_oppilaitostyyppi AS sijoittuneen_jarjestys_oppilaitostyyppi
--,d14.jarjestys_omistajatyyppi AS sijoittuneen_jarjestys_omistajatyyppi
--,d14.jarjestys_opetuskieli AS sijoittuneen_jarjestys_opetuskieli
--,d14.jarjestys_koulutuksen_jarjestaja AS sijoittuneen_jarjestys_koulutuksen_jarjestaja
--,d14.jarjestys_koulutuksen_jarjestajan_kieli AS sijoittuneen_jarjestys_koulutuksen_jarjestajan_kieli
--,d14.jarjestys_peruskoulujen_ryhmitys AS sijoittuneen_peruskoulujen_ryhmitys
--,d14.jarjestys_peruskoulujen_vuosilks AS sijoittuneen_peruskoulujen_vuosilks
,d18.lukukausi AS tutksuor_lukukausi_jarjestys
--,d20.jarjestys AS pohjoismaa_jarjestys
,d21.jarjestys AS kansalaisuus_jarjestys
--,d22.jarjestys AS opetuskieli_jarjestys
--,d23.jarjestys AS tutktyyppi_jarjestys
--,d24.jarjestys AS jarjestamistapa_jarjestys
,d25.jarjestys AS nuoraik_jarjestys
--,d26.jarjestys AS monihaku_jarjestys
--,d27.jarjestys AS paaastoim_jarjestys
--,d28.jarjestys AS ammasema_jarjestys
,d29.jarjestys AS koul_paattaneiden_toiminta_jarjestys
--,d30.jarjestys_eumaa
--,d31.jarjestys_etamaa
,[lukiokoulutuksessa_ja_ammatillisessa_koulutuksessa_ke] AS "Koul. sijoittuneet lukiokoulutuksessa ja ammatillisessa koulutuksessa"
,[lukiokoulutuksessa_ke] AS "Koul. sijoittuneet lukiokoulutuksessa"
,[ammatillisessa_koulutuksessa_ke] AS "Koul. sijoittuneet ammatillisessa koulutuksessa"
,[ammattikorkeakoulutuksessa_ke] AS "Koul. sijoittuneet ammattikorkeakoulutuksessa"
,[yliopistokoulutuksessa_ke] AS "Koul. sijoittuneet yliopistokoulutuksessa"
,[ammattikorkeakoulutuksessa_ja_yliopistokoulutuksessa_ke] AS "Koul. sijoittuneet ammattikorkeakoulutuksessa ja yliopistokoulutuksessa"
,[toisen_asteen_ammatillisessa_koulutuksessa_ja_korkeakoulutuksessa_ke] AS "Koul. sijoittuneet toisen asteen ammatillisessa koulutuksessa ja korkeakoulutuksessa"
,[lukiokoulutuksessa_ja_ammatillisessa_koulutuksessa]
,[lukiokoulutuksessa]
,[ammatillisessa_koulutuksessa]
,[ammattikorkeakoulutuksessa]
,[yliopistokoulutuksessa]
,[ammattikorkeakoulutuksessa_ja_yliopistokoulutuksessa]
,[toisen_asteen_ammatillisessa_koulutuksessa_ja_korkeakoulutuksessa]
FROM            dbo.f_koulutukseen_sijoittuneet_6v
	LEFT JOIN d_aidinkieli_versio1 d2 ON d2.id = aidinkieli_versio_1_id
	LEFT JOIN d_sukupuoli d16 ON d16.id = sukupuoli_id
	LEFT JOIN d_tarkastelujakso d17 ON d17.id = tarkastelujakso_id
	LEFT JOIN d_alueluokitus d3 ON d3.id = asuinkunta_id
	LEFT JOIN d_alueluokitus d4 ON d4.id = koulutukseen_sijoittuneen_maakunta_id
	LEFT JOIN d_alueluokitus d4b ON d4b.id = pohjakoulutuksen_tutkinnon_suoritusmaakunta_id
	LEFT JOIN d_ika d5 ON d5.id = ika_1v_id
	LEFT JOIN d_ika d5b ON d5b.id = ika_5v_id
	LEFT JOIN d_tutkintoryhma d6 ON d6.id = tutkintoryhma_id
	LEFT JOIN d_koulutusluokitus d7 ON d7.id = pohjakoulutus_id
	LEFT JOIN d_koulutusluokitus d8 ON d8.id = koulutukseen_sijoittuneen_koulutus_id
	LEFT JOIN d_oppilaitoksen_taustatiedot d13 ON d13.id = pohjakoulutuksen_oppilaitos_id
	LEFT JOIN d_oppilaitoksen_taustatiedot d14 ON d14.id = koulutukseen_sijoittuneen_oppilaitos_id
	LEFT JOIN d_kausi d15 on d15.kausi_id = suoritusvuosi_id
	LEFT JOIN d_kausi d18 on d18.kausi_id = suorituslukukausi_id
	LEFT JOIN d_kausi d19 on d19.kausi_id = syntymavuosi_id
	LEFT JOIN d_pohjoismaa d20 on d20.id = pohjoismaa_id
	LEFT JOIN d_kansalaisuus_versio1 d21 on d21.id = kansalaisuus_id
	LEFT JOIN d_opetuskieli d22 on d22.id = pohjakoulutuksen_opetuskieli_id
	LEFT JOIN d_ammatillisen_koulutuksen_koulutuslaji d23 on d23.id = pohjakoulutuksen_koulutuslaji_id
	LEFT JOIN d_opetussuunnitelmaperusteinen_koulutus_nayttotutkintoon_valmistava_koulutus d24 on d24.id = pohjakoulutuksen_tutktav_id
	LEFT JOIN d_nuorten_aikuisten_koulutus d25 on d25.id = pohjakoulutuksen_aikoul_id
	LEFT JOIN d_moninkertainen_haku d26 on d26.id = moninkertainen_haku_id
	LEFT JOIN d_paaasiallinen_toiminta d27 on d27.id = paaasiallinen_toiminta_id
	LEFT JOIN d_ammattiasema d28 on d28.id = ammattiasema_id
	LEFT JOIN d_koulutuksen_paattaneiden_toiminta d29 on d29.id = koulutuksen_paattaneiden_toiminta_id
	LEFT JOIN d_valtio d30 on d30.id = eumaa_id
	LEFT JOIN d_valtio d31 on d31.id = etamaa_id
WHERE tutkintoryhma_koodi = 1


GO


USE [ANTERO]