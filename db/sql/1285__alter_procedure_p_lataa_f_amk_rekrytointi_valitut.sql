ALTER PROCEDURE [dw].[p_lataa_f_amk_rekrytointi_valitut]
AS
TRUNCATE TABLE [dw].[f_amk_rekrytointi_valitut]

INSERT INTO dw.f_amk_rekrytointi_valitut
	(
		[vuosi]
		,[d_amk_id]
		,[d_ek_nimike_id]
		,[d_amk_tehtavaryhma_id]
		,[d_amk_tehtavanjaottelu_id]
		,[d_nimitystapa_id]
		,[d_amk_kelpoisuus_tutkinto_id]
		,[d_amk_kelpoisuus_tyokokemus_id]
		,[d_amk_kelpoisuus_opettajankoulutusi_d]
		,[d_tieteenala_id]
		,[d_amk_paatoimiset_opettajat_id]
		,[d_koulutusluokitus_id]
		,[d_tutkinnon_taso_id]
		,[d_tohtorintutkinnon_suoritusmaa_id]
		,[d_amk_toimipisteen_toimipaikka_id]
		,[d_organisaation_alayksikko_id]
		,[d_sukupuoli_id]
		,[d_kansalaisuus_id]
		,[d_aidinkieli_id]
		,[d_ika_id]
		,[d_arvokysymys_id]
		,[d_arvovastaus_id]
		,[hakunumero]
		,[sopimusnumero]
		,[henkilonumero]
		,[sopimus_alkupvm]
		,[sopimus_loppupvm]
		,[loadtime]
		,[source]
		,[username]
		)

SELECT
		COALESCE(s1.[Tilastovuosi], -1) AS vuosi
		,COALESCE(s2.id, -1) AS [d_amk_id]
		,COALESCE(s3.id, -1) AS [d_ek_nimike_id]
		,COALESCE(s4.id, -1) AS [d_amk_tehtavaryhma_id]
		,COALESCE(s5.id, -1) AS [d_amk_tehtavanjaottelu_id]
		,COALESCE(s6.id, -1) AS [d_nimitystapa_id]
		,COALESCE(s7.id, -1) AS [d_amk_kelpoisuus_tutkinto_id]
		,COALESCE(s8.id, -1) AS [d_amk_kelpoisuus_tyokokemus_id]
		,COALESCE(s9.id, -1) AS [d_amk_kelpoisuus_opettajankoulutusi_d]
		,COALESCE(s10.id, -1) AS [d_tieteenala_id]
		,COALESCE(s11.id, -1) AS [d_amk_paatoimiset_opettajat_id]
		,COALESCE(s12.id, -1) AS [d_koulutusluokitus_id]
		,COALESCE(s13.id, -1) AS [d_tutkinnon_taso_id]
		,COALESCE(s14.id, -1) AS [d_tohtorintutkinnon_suoritusmaa_id]
		,COALESCE(s15.id, -1) AS [d_amk_toimipisteen_toimipaikka_id]
		,COALESCE(s16.id, -1) AS [d_organisaation_alayksikko_id]
		,COALESCE(s17.id, -1) AS [d_sukupuoli_id]
		,COALESCE(s18.id, -1) AS [d_kansalaisuus_id]
		,COALESCE(s19.id, -1) AS [d_aidinkieli_id]
		,COALESCE(s20.id, -1) AS [d_ika_id]
		,COALESCE(s21.id, -1) AS [d_arvokysymys_id]
		,COALESCE(s22.id, -1) AS [d_arvovastaus_id]
		,COALESCE(s1.hakunumero, '- 1') AS [hakunumero]
		,COALESCE(s1.sopimusnumero, '- 1') AS [sopimusnumero]
		,COALESCE(s1.henkilönumero, '- 1') AS [henkilonumero]
		,COALESCE(s1.[sopimuksen alkupäivämäärä], - 1) AS [sopimus_alkupvm]
		,COALESCE(s1.[sopimuksen loppupäivämäärä], - 1) AS [sopimus_loppupvm]
		,getdate() as loadtime
		,'etl: p_lataa_f_amk_rekrytointi_valitut - sa.sa_suorat_amk7d_rekrytointi_valitun_kaikki_tiedot' AS source
		,suser_sname() as username

FROM [sa].[sa_suorat_amk7d_rekrytointi_valitun_kaikki_tiedot] s1
LEFT JOIN [dw].[d_amk] s2 ON [s2].[amk_tunnus] = [s1].[Korkeakoulu]
LEFT JOIN [dw].[d_ek_nimike] s3 ON [s3].[selite_fi] = [s1].[Nimike]
LEFT JOIN [dw].[d_amk_tehtavaryhma] s4 ON [s4].[koodi] = [s1].[Tehtäväryhmä]
LEFT JOIN [dw].[d_amk_tehtavanjaottelu] s5 ON [s5].[koodi] = [s1].[Tehtävänjaottelu]
--HUOM!
--AMK:LLA NIMITYSAPA KOODI ERILAINEN ENNEN VUOTTA 2017
LEFT JOIN [dw].[d_nimitystapa] s6 ON (
		SELECT CASE
				WHEN s1.[Nimitystapa] = '1' and s1.Tilastovuosi <= 2016
					THEN '5'
        WHEN s1.[Nimitystapa] = '2' and s1.Tilastovuosi <= 2016
  				THEN '6'
        WHEN s1.Tilastovuosi >= 2017
            THEN s1.[Nimitystapa]
				ELSE '-1'
				END AS [Nimitystapa]) = s6.koodi
LEFT JOIN [dw].[d_amk_kelpoisuus] s7 ON [s7].[koodi] = [s1].[Kelpoisuus, tutkinto]
LEFT JOIN [dw].[d_amk_kelpoisuus] s8 ON [s7].[koodi] = [s1].[Kelpoisuus, työkokemus]
LEFT JOIN [dw].[d_amk_kelpoisuus] s9 ON [s7].[koodi] = [s1].[Kelpoisuus, opettajankoulutus]
LEFT JOIN [dw].[d_tieteenala] s10 ON [s10].[tieteenala_koodi] = [s1].[Pääasiallinen tieteenala]
LEFT JOIN [dw].[d_amk_paatoimiset_opettajat] s11 ON [s11].[koodi] = [s1].[Päätoimiset opettajat]
LEFT JOIN [dw].[d_koulutusluokitus] s12 ON [s12].[koulutusluokitus_koodi] = [s1].[Henkilön suorittama merkittävin tutkinto]
LEFT JOIN [dw].[d_tutkinnon_taso] s13 ON [s13].[koodi] = [s1].[Merkittävimmän tutkinnon taso]
LEFT JOIN [dw].[d_maatjavaltiot2] s14 ON [s14].[maatjavaltiot2_koodi] = [s1].[Tutkinnon suoritusmaa]
LEFT JOIN [dw].[d_amk_toimipisteen_toimipaikka] s15 ON [s15].[koodi_toimipaikka] = [s1].[toimipaikka] --AND s13.koodi_yliopisto = [s1].[korkeakoulu]
LEFT JOIN [dw].[d_organisaation_alayksikot] s16 ON [s16].[alayksikko_koodi] = [s1].[alayksikkö]
LEFT JOIN [dw].[d_sukupuoli] s17 ON [s17].[sukupuoli_koodi] = [s1].[sukupuoli]
LEFT JOIN [dw].[d_maatjavaltiot2] s18 ON [s18].[maatjavaltiot2_koodi] = [s1].[kansalaisuus]
LEFT JOIN [dw].[d_kieli] s19 ON [s19].[kieli_koodi] = [s1].[äidinkieli]
LEFT JOIN [dw].[d_ika] s20 ON [s20].[ika_avain] = [s1].[ikä]
LEFT JOIN [dw].[d_arvokysymys] s21 ON [s21].[kysymys_fi] = [s1].[Kysymys] -- AND[s19].[Kysymysryhma_fi] tai sitten  kysymysryhma_id = [s1].[Kysymysryhmä]
LEFT JOIN [dw].[d_arvovastaus] s22 ON [s22].[vastaus_fi] = [s1].[vastaus]
