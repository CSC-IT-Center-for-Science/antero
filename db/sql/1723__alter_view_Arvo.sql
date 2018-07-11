USE [ANTERO]
GO

/****** Object:  View [dw].[v_arvo]    Script Date: 11.7.2018 14:00:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO









ALTER VIEW [dw].[v_arvo] AS
SELECT
 d_kalenteri.vuosi AS 'Tilastovuosi'
,d_kalenteri.vuosi AS 'Statistik�r'
,d_kalenteri.vuosi AS 'Statistical year'

,d_organisaatioluokitus.organisaatio_koodi as 'Koodit Organisaatio'
,d_organisaatioluokitus.organisaatio_fi as 'Organisaatio'

,d_organisaatioluokitus.organisaatio_sv as 'Organisation'
,d_organisaatioluokitus.organisaatio_en as 'Organization'

,d_koulutusluokitus.koulutusluokitus_koodi as 'Koodit Koulutus'
,d_koulutusluokitus.koulutusluokitus_fi as 'Koulutus'
,d_koulutusluokitus.koulutusluokitus_sv as 'Utbildning'
,d_koulutusluokitus.koulutusluokitus_en as 'Education'

,d_koulutusluokitus.koulutusastetaso1_fi as 'Koulutusaste, taso 1'
,d_koulutusluokitus.koulutusastetaso2_fi as 'Koulutusaste, taso 2'
,d_koulutusluokitus.koulutusalataso1_fi as 'Koulutusala, taso 1'
,d_koulutusluokitus.koulutusalataso2_fi as 'Koulutusala, taso 2'
,d_koulutusluokitus.koulutusalataso3_fi as 'Koulutusala, taso 3'
,d_koulutusluokitus.okmohjauksenala_fi as 'OKM ohjauksen ala'
,d_koulutusluokitus.koulutusluokitus_fi as 'Koulutusnimike'

,d_koulutusluokitus.koulutusastetaso1_sv as 'Utbildningsniv�, niv� 1'
,d_koulutusluokitus.koulutusastetaso2_sv as 'Utbildningsniv�, niv� 2'
,d_koulutusluokitus.koulutusalataso1_sv as 'Utbildningsomr�de, niv� 1'
,d_koulutusluokitus.koulutusalataso2_sv as 'Utbildningsomr�de, niv� 2'
,d_koulutusluokitus.koulutusalataso3_sv as 'Utbildningsomr�de, niv� 3'
,d_koulutusluokitus.okmohjauksenala_sv as 'UKM-styrningsomr�de?'
,d_koulutusluokitus.koulutusluokitus_sv as 'Utbildningsben�mning'

,d_koulutusluokitus.koulutusastetaso1_en as 'Level of education, tier 1'
,d_koulutusluokitus.koulutusastetaso2_en as 'Level of education, tier 2'
,d_koulutusluokitus.koulutusalataso1_en as 'Field of education, tier 1'
,d_koulutusluokitus.koulutusalataso2_en as 'Field of education, tier 2'
,d_koulutusluokitus.koulutusalataso3_en as 'Field of education, tier 3'
,d_koulutusluokitus.okmohjauksenala_en as 'Field of education - HE steering'
,d_koulutusluokitus.koulutusluokitus_en as 'Name of education'

,d_kieli.kieli_koodi as 'Koodit Kieli'
,d_kieli.kieli_fi as 'Kieli'
,d_kieli.kieli_sv as'Spr�k'
,d_kieli.kieli_en as 'Language'

,d_alueluokitus.kunta_koodi as 'Koodit Kunta'
,d_alueluokitus.kunta_fi as 'Kunta'
,d_alueluokitus.kunta_sv as 'Kommun'
,d_alueluokitus.kunta_en as 'Municipality'
,d_alueluokitus.maakunta_koodi as 'Koodit Maakunta'
,d_alueluokitus.maakunta_fi as 'Maakunta'
,d_alueluokitus.maakunta_sv as 'Landskap'
,d_alueluokitus.maakunta_en 'Region'

,d_kalenteri.kalenteri_avain as 'Koodit Kalenteri'
,d_kalenteri.vuosi as 'Vastausvuosi'
,d_kalenteri.kuukausi as 'Koodit Kuukausi'
,d_kalenteri.kuukausi_fi as 'Vastauskuukausi'
,d_kalenteri.kuukausi_sv as 'Svaret m�nad'
,d_kalenteri.kuukausi_en as 'Answer month'
,d_kalenteri.paiva as 'Vastausp�iv�'

,d_arvokysymys.kysymys_fi as 'Kysymys'
,d_arvokysymys.kysymys_sv as 'Fr�ga'
,d_arvokysymys.kysymys_en as 'Question'

,case when organisaatio_fi = 'Poliisiammattikorkeakoulu' then 'Muiden hallinnonalojen alainen koulutus' else 'Opetushallinnon alainen koulutus' end as 'Hallinnonala'
,case when organisaatio_fi = 'Poliisiammattikorkeakoulu' then 'Annan �n utbildning som �r underst�lld utbildningsf�rvaltningen' else 'Utbildning som �r underst�lld utbildningsf�rvaltningen' end as 'F�rvaltningsomr�de'
,case when organisaatio_fi = 'Poliisiammattikorkeakoulu' then 'Oher than education under the education administration' else 'Education under the education administration' end as 'Administrative sector'

,case 
	when kysymys_fi = 'Ty�el�m�n asiantuntijoiden osaamista hy�dynnettiin onnistuneesti korkeakouluni toiminnassa.' and (kyselypohja = 'AVOP-AMK' or (kyselypohja = 'AVOP-YAMK' and d_arvokyselykerta.vuosi = 2016)) then 'Ei'--purkkaa
	when d_arvokysymys.rahoitusmallikysymys = 1 then 'Kyll�' 
	when d_arvokysymys.rahoitusmallikysymys = 0 then 'Ei' 
	else 'Tieto puuttuu' 
end as rahoitusmallikysymys

,case 
	when kysymys_fi = 'Ty�el�m�n asiantuntijoiden osaamista hy�dynnettiin onnistuneesti korkeakouluni toiminnassa.' and (kyselypohja = 'AVOP-AMK' or (kyselypohja = 'AVOP-YAMK' and d_arvokyselykerta.vuosi = 2016)) then 'Nej'--purkkaa
	when d_arvokysymys.rahoitusmallikysymys = 1 then 'Ja' 
	when d_arvokysymys.rahoitusmallikysymys = 0 then 'Nej' 
	else 'Information saknas' 
end as Finansieringsmodellsfr�ga  

,case 
	when kysymys_fi = 'Ty�el�m�n asiantuntijoiden osaamista hy�dynnettiin onnistuneesti korkeakouluni toiminnassa.' and (kyselypohja = 'AVOP-AMK' or (kyselypohja = 'AVOP-YAMK' and d_arvokyselykerta.vuosi = 2016)) then 'No'--purkkaa
	when d_arvokysymys.rahoitusmallikysymys = 1 then 'Yes' 
	when d_arvokysymys.rahoitusmallikysymys = 0 then 'No' 
	else 'Missing data' 
end as 'Funding model question'

,d_arvokyselykerta.kysely_fi as 'Kysely'
,d_arvokyselykerta.kysely_sv as 'Fr�geformul�r'  --***
,d_arvokyselykerta.kysely_en as 'Survey' --***

,d_arvokyselykerta.kyselykerta

,d_arvokyselykerta.kyselypohja 

,d_arvokyselykerta.vuosi as 'Kyselyvuosi'
,d_arvokyselykerta.vuosi as '�r'
,d_arvokyselykerta.vuosi as 'Survey year'

,koulutusmuoto
,d_arvokysymys.vastaustyyppi
,vaihtoehto
,case when monivalintavaihtoehto is null then case when vaihtoehto='1' then 'Kyll�' when vaihtoehto='0' then 'Ei' else NULL end else monivalintavaihtoehto end as monivalintavaihtoehto
,numerovalinta

,coalesce(taustakysymys_ika,'Tieto puuttuu') as 'taustakysymys_ika'
,coalesce(taustakysymys_ika,'Information saknas') as '�lder'
,coalesce(taustakysymys_ika,'Missing data') as 'Age'

,coalesce(taustakysymys_sukupuoli,'Tieto puuttuu') as 'taustakysymys_sukupuoli'
, case when taustakysymys_sukupuoli ='Mies' then 'Man' when taustakysymys_sukupuoli='Nainen' then 'Kvinna' else 'Information saknas' end as K�n
, case when taustakysymys_sukupuoli ='Mies' then 'Male' when taustakysymys_sukupuoli='Nainen' then 'Female' else 'Missing data' end as Gender

,coalesce(taustakysymys_pohjakoulutus,'Tieto puuttuu') as 'taustakysymys_pohjakoulutus'
,NULL as 'Grundutbildning'
,NULL as 'Prior education'


,vastaajaid

,lukumaara


,valtakunnallinen
,case when kysymysryhma_fi = 'Taustatiedot' OR kysymysryhma_fi like 'Osa 1%' OR kysymysryhma_fi like 'Osa 2%' OR kysymysryhma_fi like 'Osa 3%' OR kysymysryhma_fi like 'Osa 4%' OR kysymysryhma_fi like 'Osa 5%'  then 1 else 0 end as 'kandikysymys'

,case when d_arvokyselykerta.vuosi < YEAR(GETDATE()) then 1 else 0 end as vuosi_tilasto
,case when kyselypohja = 'AVOP-AMK' then 1 else 0 end as avop_amk
,case when kyselypohja = 'AVOP-YAMK' then 1 else 0 end as avop_yamk
,case when kyselypohja = 'KANDIPALAUTE' then 1 else 0 end as kandipalaute
,case when kyselypohja = 'URASEURANTA-AMK' then 1 else 0 end as ura_amk
,case when kyselypohja = 'URASEURANTA-YAMK' then 1 else 0 end as ura_yamk
,case when kyselypohja = 'URASEURANTA-KANDI' then 1 else 0 end as ura_kandi
,case when kyselypohja = 'URASEURANTA-MAISTERI' then 1 else 0 end as ura_maisteri
,case when kyselypohja = 'URASEURANTA-TOHTORI' then 1 else 0 end as ura_tohtori
--
,d_arvokysymys.kysymysjarjestys
,d_arvokysymys.kysymysryhma_fi as 'Kysymysryhm�'
,d_arvokysymys.kysymysryhma_sv as 'Grupper av fr�gor'
,d_arvokysymys.kysymysryhma_en as 'Question group'
,d_arvokysymys.kysymysryhmajarjestys
,case when monivalintavaihtoehto is null then case when vaihtoehto='1' then 'Ky' when vaihtoehto='0' then 'Ei' else '99' end else left(monivalintavaihtoehto,2) end as jarjestys_monivalintavaihtoehto
,case taustakysymys_sukupuoli when 'Mies' then 1 when 'Nainen' then 2 when 'Muu' then 3 when 'En halua vastata' then 4 else 9 end as jarjestys_sukupuoli
,case taustakysymys_ika when 'alle 25 vuotta' then 1 when '25-34 vuotta'  then 2 when '35-45 vuotta' then 3 when 'yli 45 vuotta' then 4 else 9 end as jarjestys_ika
,case taustakysymys_pohjakoulutus
	when 'Ylioppilastutkinto' then 1
	when 'Ylioppilastutkinto / IB-tutkinto' then 2
	when 'Ammatillinen perustutkinto/ammattitutkinto' then 3
	when 'Ylioppilastutkinto sek� ammatillinen perustutkinto/ammattitutkinto' then 4
	when 'Opistoasteen tai ammatillisen korkea-asteen tutkinto' then 5
	when 'Ammattikorkeakoulututkinto' then 6
	when 'Korkeakoulututkinto' then 7
	when 'Alempi korkeakoulututkinto' then 8
	when 'Ylempi korkeakoulututkinto' then 9
	when 'Ulkomailla suoritettu tutkinto' then 10
	when 'Ei peruskoulun j�lkeist� tutkintoa' then 11
	when 'Muu' then 12
	else 99
end as jarjestys_pohjakoulutus
,jarjestys_okmohjauksenala_koodi as jarjestys_ohjauksenala
,jarjestys_koulutusastetaso1_koodi as jarjestys_koulutusaste1
,jarjestys_koulutusastetaso2_koodi as jarjestys_koulutusaste2
,jarjestys_koulutusalataso1_koodi as jarjestys_koulutusala1
,jarjestys_koulutusalataso2_koodi as jarjestys_koulutusala2
,jarjestys_koulutusalataso3_koodi as jarjestys_koulutusala3

FROM dw.f_arvo AS f
LEFT JOIN dw.d_organisaatioluokitus ON f.d_organisaatio_id=d_organisaatioluokitus.id
LEFT JOIN dw.d_koulutusluokitus ON f.d_koulutusluokitus_id=d_koulutusluokitus.id
LEFT JOIN dw.d_kieli ON f.d_kieli_id=d_kieli.id
LEFT JOIN dw.d_alueluokitus ON f.d_alueluokitus_id=d_alueluokitus.id
LEFT JOIN dw.d_kalenteri ON f.d_kalenteri_id=d_kalenteri.id
LEFT JOIN dw.d_arvokysymys ON f.d_arvokysymys_id=d_arvokysymys.id
LEFT JOIN dw.d_arvokyselykerta ON f.d_arvokyselykerta_id=d_arvokyselykerta.id
where valtakunnallinen=1 and kyselypohja not like '%URASEURANTA%'






GO