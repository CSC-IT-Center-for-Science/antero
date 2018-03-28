
ALTER view [dw].[v_indikaattori_asemointi] as
/****** Korkeakoulututkinnot ******/
SELECT
	[tilastointivuosi] as 'Tilastovuosi'
	  ,Null as 'Aloituslukuvuosi (läpäisy)' 
      ,d50.organisaatio_fi as 'Oppilaitos'
	  ,[Sektori]=case  when d50.organisaatio_fi in 
			('Aalto-yliopisto','Helsingin yliopisto','Itä-Suomen yliopisto','Jyväskylän yliopisto','Lapin yliopisto','Lappeenrannan tekn. yliopisto','Oulun yliopisto','Svenska handelshögskolan','Taideyliopisto','Tampereen tekn. yliopisto','Tampereen yliopisto','Turun yliopisto','Vaasan yliopisto','Åbo Akademi','Kuvataideakatemia','Sibelius-Akatemia','Teatterikorkeakoulu','Lappeenrannan teknillinen yliopisto', 'Tampereen teknillinen yliopisto') 
		then 'Yliopisto'
			else 'Ammattikorkeakoulu'
		end
	  , d2.koulutusaste2002 as 'Koulutusaste 2002'
	  , d2.OKM_ohjauksen_ala 'OKM ohjauksen ala'
	  , d2.OKM_ohjauksen_ala_amk_tav as 'Rahoitusmalliala, amk'
	  , d2.OKM_ohjauksen_ala_yo_tav as 'Rahoitusmalliala, yo'
	  , d2.iscle2011 as 'Koulutusaste, taso 1'
	  , d2.Koulutusaste_taso2 'Koulutusaste, taso 2'
	  , d2.iscfibroad2013 as 'Koulutusala, taso 1'
	  , d2.iscfinarrow2013 as 'Koulutusala, taso 2'
	  , d2.iscfi2013 as 'Koulutusala, taso 3'
	  , d90.paatieteenala_nimi_fi as 'Päätieteenala'
	  , d90.tieteenala_nimi_fi as 'Tieteenala'
	  , null as 'Tutkijanuravaihe'
      ,d20.kunta as 'Kunta'
      ,d3.[kansalaisuus_versio2] as 'Kansalaisuus'
      ,[tutkinnot]
	  ,NULL AS 'Yo 7v aloittaneet lkm'
	  ,NULL AS '5v_Aloittaneet_lkm'
	  ,NULL AS '7v_suorittaneet_lkm'
	  ,NULL AS '5v_suorittaneet_lkm'
	  ,NULL AS 'Läsnäolevat opiskelijat (55op)'--lasna
	  ,NULL AS '55op suorittaneet' --suorittanut55
	  ,NULL as 'Läsnäolleet opiskelijat (1-14op)'
	  ,NULL AS '1-14op suorittaneet' --lkm_op1_14
	  ,NULL AS 'Yliopiston opetus- ja tutkimushenkilötyövuodet'
	  ,NULL AS 'IV tutkijanuraportaan henkilötyövuodet'
	  ,NULL AS 'Ammattikorkeakoulun opetushenkilökunta'
	  ,NULL AS 'Ammattikorkeakoulun TKI-henkilökunta'
	  ,null as 'JulkaisuID'
	  ,null as 'Jufotaso'
	  ,NULL AS 'AMK Julkaisut (A-E)'
	  ,NULL AS 'AMK julkaisut (F ja I)'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 2 ja 3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1) jufotaso 1-3'
	  ,NULL AS 'YO kansainvälinen yhteisjulkaisu (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'Kilpailtu tutkimusrahoitus'
	  ,NULL AS 'Kilpailtu tutkimusrahoitus (SA,Tekes, EU-puiteohjelma)'
	  ,NULL AS 'kv_vaihtoopiskelijat_op_lkm'
	  ,NULL AS 'ulkom_hyv_luetut_op_lkm'
	  ,NULL AS 'erilopintooik_op_lkm'
	  ,NULL AS 'avoinamk_op_amk_lkm'
	  ,NULL AS 'mamu_op_lkm'
	  ,NULL AS 'erikoul_suor_op_lkm'
	  ,NULL AS 'sijoittuminen_1v_tutkinnon_jalkeen'
	  ,null as 'työlliset 1v tutkinnon jälkeen'
	  ,null AS 'sijoittuminen_3v_tutkinnon_jalkeen'
	  ,NULL as 'Työlliset 3v tutkinnon jälkeen'
	  ,null AS 'Kandikyselyn pistemäärä'
	  ,null AS 'AVOP-AMK pistemäärä'
	  ,NULL as 'AVOP-AMK Opiskelijapalaute_työelämä'
	  ,NULL as 'AVOP-YAMK Opiskelijapalaute_työelämä'
	  ,NULL as 'Ensisijainen hakija'
	  ,NULL as 'Paikan vastaanottaneet'
	  , d2.OKM_ohjauksen_ala_koodi as 'Koodit OKM ohjauksen ala'
	  , d50.organisaatio_koodi as 'Koodit oppilaitos'
	  , d20.kunta_koodi as 'Koodit kunta'
  	  , case when d2.jarjestys_iscle2011='ööö' then null else d2.jarjestys_iscle2011 end as 'jarj. koulutusaste, taso 1'
  	  , case when d2.jarjestys_Koulutusaste_taso2='ööö' then null else d2.jarjestys_Koulutusaste_taso2 end as 'jarj. koulutusaste, taso 2'
	  , case 
			when d2.OKM_ohjauksen_ala_koodi='1' then 1 
			when d2.OKM_ohjauksen_ala_koodi='2' then 2 
			when d2.OKM_ohjauksen_ala_koodi='3' then 3 
			when d2.OKM_ohjauksen_ala_koodi='4' then 4
			when d2.OKM_ohjauksen_ala_koodi='5' then 5
			when d2.OKM_ohjauksen_ala_koodi='6' then 6
			when d2.OKM_ohjauksen_ala_koodi='7' then 7
			when d2.OKM_ohjauksen_ala_koodi='8' then 8  
			when d2.OKM_ohjauksen_ala_koodi='9' then 9
			when d2.OKM_ohjauksen_ala_koodi='10' then 10
			when d2.OKM_ohjauksen_ala_koodi='11' then 11
			when d2.OKM_ohjauksen_ala_koodi='12' then 12 
			when d2.OKM_ohjauksen_ala_koodi='-1' then 99999
		end as 'jarj. OKM ohjauksen ala'
	  , d2.jarjestys_OKM_ohjauksen_ala_amk_tav as 'jarj. rahoitusmalliala amk'
	  , d2.jarjestys_OKM_ohjauksen_ala_yo_tav as 'jarj. rahoitusmalliala yo'
	  , d90.jarjestys_paatieteenala_koodi as 'jarj. paatieteenala'
	  , d90.jarjestys_tieteenala_koodi as 'jarj. tieteenala'
 FROM [VipunenTK].[dbo].[f_OTV_2_9_Korkeakoulututkinnot] f
 left join VipunenTK.dbo.d_oppilaitoksen_taustatiedot as d1 on oppilaitos_id = d1.id
 left join antero.dw.d_organisaatioluokitus as d50 on d50.organisaatio_koodi=d1.oppilaitoskoodi 
 left join VipunenTK.dbo.d_koulutusluokitus as d2 on koulutusluokitus_id = d2.id
 left join VipunenTK.dbo.d_kansalaisuus_versio2 as d3 on kansalaisuus_versio2_id = d3.id
 left join VipunenTK.dbo.d_alueluokitus as d20 on [koulutuksen_kunta]=d20.kunta_koodi
 left join VipunenTK_lisatiedot.dbo.koulutuskoodin_tieteenala d59 on d59.koulutuskoodi=f.koulutusluokitus
 left join ANTERO.dw.d_tieteenala d90 on 'TTHV_'+d90.tieteenala_koodi=d59.tieteenala_avain
 Where (aineisto = 'L' or (aineisto = 'E' and tilastointivuosi=YEAR(GETDATE())-1)) and tilastointivuosi>2010 AND koulutusaste2002_koodi in ('62','71','63','72','82')


 union all
/****** Läpäisy ******/
 SELECT
		case when tarkastelujakso='7,5' and lukukausi='1' then d10.vuosiselite+7 When  tarkastelujakso='7,5' and lukukausi='2' then d10.vuosiselite+8
			When  tarkastelujakso='5,5' and lukukausi='1' then d10.vuosiselite+5 When  tarkastelujakso='5,5' and lukukausi='2' then d10.vuosiselite+6
			end as 'Tilastovuosi'
	  ,d10.lukuvuosi as 'Aloituslukuvuosi (läpäisy)' 
      ,d50.organisaatio_fi
	  ,[Sektori]=case  when d50.organisaatio_fi in 
			('Aalto-yliopisto','Helsingin yliopisto','Itä-Suomen yliopisto','Jyväskylän yliopisto','Lapin yliopisto','Lappeenrannan tekn. yliopisto','Oulun yliopisto','Svenska handelshögskolan','Taideyliopisto','Tampereen tekn. yliopisto','Tampereen yliopisto','Turun yliopisto','Vaasan yliopisto','Åbo Akademi','Kuvataideakatemia','Sibelius-Akatemia','Teatterikorkeakoulu','Lappeenrannan teknillinen yliopisto', 'Tampereen teknillinen yliopisto') 
		then 'Yliopisto'
			else 'Ammattikorkeakoulu'
		end
	  , d2.koulutusaste2002
	  , d2.OKM_ohjauksen_ala
	  , d2.OKM_ohjauksen_ala_amk_tav as 'Rahoitusmalliala (AMK)'
	  , d2.OKM_ohjauksen_ala_yo_tav as 'Rahoitusmalliala (YO)'
	  , d2.iscle2011 as 'Koulutusaste, taso1'
	  , d2.Koulutusaste_taso2
	  , d2.iscfibroad2013 as 'Koulutusala, taso 1'
	  , d2.iscfinarrow2013 as 'Koulutusala, taso 2'
	  , d2.iscfi2013 as 'Koulutusala, taso 3'
	  , d90.paatieteenala_nimi_fi as 'Päätieteenala'
	  , d90.tieteenala_nimi_fi as 'Tieteenala'
	  , null as 'Tutkijanuravaihe'
      ,NULL as 'koulutuksen_kunta'
      ,NULL as 'kansalaisuus_versio2'
      ,NULL as 'tutkinnot'
	  ,case when tarkastelujakso='7,5' and (d6.koulutuslaji2_koodi='51b'  OR (d2.koulutus_koodi in (612101, 613101,613401,672401,634101))) then f.lkm_int else 0 end AS 'YO_7v_aloittaneet_lkm'
	  ,case when tarkastelujakso='5,5' AND d2.koulutusaste2002_koodi=62 then f.lkm_int else 0 end AS 'AMK_5v_Aloittaneet_lkm'
	  ,case when tarkastelujakso='7,5' and (d6.koulutuslaji2_koodi='51b'  OR (d2.koulutus_koodi in (612101, 613101,613401,672401,634101))) and [1a Aloittaneiden opintojen kulku koulutuslajin mukaan prioriteettina mikä tahansa tutkinto]='Tutkinto alkuperäisessä tutkintolajissa' then f.lkm_int else 0 end AS '7v_suorittaneet_lkm'
	  ,case when tarkastelujakso='5,5' AND d2.koulutusaste2002_koodi=62 and [1a Aloittaneiden opintojen kulku koulutuslajin mukaan prioriteettina mikä tahansa tutkinto]='Tutkinto alkuperäisessä tutkintolajissa' then f.lkm_int else 0 end AS '5v_suorittaneet_lkm'
	  ,NULL as 'lasna'
	  ,NULL as 'suorittanut55'
	  ,NULL as 'Läsnäolleet opiskelijat (1-14op)'
	  ,NULL as 'lkm_op1_14'
	  ,NULL as 'opetus- tutkimushenkilökunta HTV'
	  ,NULL as 'IV porras HTV'
	  ,NULL as 'Opetus- ja TKI henkilökunta'
	  ,NULL AS 'Ammattikorkeakoulun TKI-henkilökunta'
	  ,NULL as 'JulkaisuID'
	  ,NULL as 'Jufotaso'
	  ,NULL as 'AMK Julkaisut (A-E)'
	  ,NULL as 'AMK julkaisut (F ja I)'
	  ,NULL as 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 2 ja 3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1) jufotaso 1-3'
	  ,NULL AS 'YO kansainvälinen yhteisjulkaisu (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'Kilpailtu tutkimusrahoitus'
	  ,NULL AS 'Kilpailtu tutkimusrahoitus (SA,Tekes, EU-puiteohjelma)'
	  ,NULL AS 'kv_vaihtoopiskelijat_op_lkm'
	  ,NULL AS 'ulkom_hyv_luetut_op_lkm'
	  ,NULL AS 'erilopintooik_op_lkm'
	  ,NULL AS 'avoinamk_op_amk_lkm'
	  ,NULL AS 'mamu_op_lkm'
	  ,NULL AS 'erikoul_suor_op_lkm'
	  ,NULL AS 'sijoittuminen_1v_tutkinnon_jalkeen'
	  ,null AS 'työlliset 1v tutkinnon jälkeen'
	  ,null AS 'sijoittuminen_3v_tutkinnon_jalkeen'
	  ,NULL as 'Työlliset 3v tutkinnon jälkeen'
	  ,null AS 'Kandikyselyn pistemäärä'
	  ,null AS 'AVOP-AMK pistemäärä'
	  ,NULL as 'AVOP-AMK Opiskelijapalaute_työelämä'
	  ,NULL as 'AVOP-YAMK Opiskelijapalaute_työelämä'
	  ,NULL as 'Ensisijainen hakija'
	  ,NULL as 'Paikan vastaanottaneet'
	  , d2.OKM_ohjauksen_ala_koodi as 'Koodit OKM ohjauksen ala'
	  , d50.organisaatio_koodi as 'Koodit oppilaitos'
	  , NULL as 'Koodit kunta'
  	  , case when d2.jarjestys_iscle2011='ööö' then null else d2.jarjestys_iscle2011 end as 'jarj. koulutusaste, taso 1'
  	  , case when d2.jarjestys_Koulutusaste_taso2='ööö' then null else d2.jarjestys_Koulutusaste_taso2 end as 'jarj. koulutusaste, taso 2'
	  , case 
			when d2.OKM_ohjauksen_ala_koodi='1' then 1 
			when d2.OKM_ohjauksen_ala_koodi='2' then 2 
			when d2.OKM_ohjauksen_ala_koodi='3' then 3 
			when d2.OKM_ohjauksen_ala_koodi='4' then 4
			when d2.OKM_ohjauksen_ala_koodi='5' then 5
			when d2.OKM_ohjauksen_ala_koodi='6' then 6
			when d2.OKM_ohjauksen_ala_koodi='7' then 7
			when d2.OKM_ohjauksen_ala_koodi='8' then 8  
			when d2.OKM_ohjauksen_ala_koodi='9' then 9
			when d2.OKM_ohjauksen_ala_koodi='10' then 10
			when d2.OKM_ohjauksen_ala_koodi='11' then 11
			when d2.OKM_ohjauksen_ala_koodi='12' then 12 
			when d2.OKM_ohjauksen_ala_koodi='-1' then 99999
		end as 'jarj. OKM ohjauksen ala'
	  , d2.jarjestys_OKM_ohjauksen_ala_amk_tav as 'jarj. rahoitusmalliala amk'
	  , d2.jarjestys_OKM_ohjauksen_ala_yo_tav as 'jarj. rahoitusmalliala yo'
	  , d90.jarjestys_paatieteenala_koodi as 'jarj. paatieteenala'
	  , d90.jarjestys_tieteenala_koodi as 'jarj. tieteenala'
 FROM [VipunenTK].[dbo].[f_aloittaneiden_lapaisy] f
 left join VipunenTK.dbo.d_kausi AS d10 ON d10.kausi_id = aloituskausikoodi
 left join VipunenTK.dbo.d_oppilaitoksen_taustatiedot as d1 on oppilaitoksen_taustatiedot_id = d1.id
 left join antero.dw.d_organisaatioluokitus as d50 on d50.organisaatio_koodi=d1.oppilaitoskoodi 
 left join VipunenTK.dbo.d_koulutusluokitus as d2 on koulk_id= d2.id
 left join VipunenTK.dbo.d_koulutuslaji2 AS d6 ON d6.id = koulutuslaji2_id
 left join VipunenTK_lisatiedot.dbo.koulutuskoodin_tieteenala d59 on d59.koulutuskoodi=f.koulk
 left join ANTERO.dw.d_tieteenala d90 on 'TTHV_'+d90.tieteenala_koodi=d59.tieteenala_avain
 where 
[1a Aloittaneiden opintojen kulku koulutuslajin mukaan prioriteettina mikä tahansa tutkinto] <> 'Virhetilanne'
AND ((tarkastelujakso = '5,5' and koulutussektori= 'Ammattikorkeakoulukoulutus'AND koulutusaste2002_koodi=62)) 
OR (tarkastelujakso= '7,5' and  koulutussektori= 'Yiopistokoulutus' ) 

union all
/****** 55op suorittaneet ******/
SELECT 
      
      [Tilastovuosi] = f.[vuosi]
	  ,NULL as 'Aloituslukuvuosi (läpäisy)'
	  ,[Korkeakoulu] = d1.organisaatio_fi
	  ,[Sektori]=case  when d1.organisaatio_fi in 
			('Aalto-yliopisto','Helsingin yliopisto','Itä-Suomen yliopisto','Jyväskylän yliopisto','Lapin yliopisto','Lappeenrannan tekn. yliopisto','Oulun yliopisto','Svenska handelshögskolan','Taideyliopisto','Tampereen tekn. yliopisto','Tampereen yliopisto','Turun yliopisto','Vaasan yliopisto','Åbo Akademi','Kuvataideakatemia','Sibelius-Akatemia','Teatterikorkeakoulu','Lappeenrannan teknillinen yliopisto', 'Tampereen teknillinen yliopisto') 
		then 'Yliopisto'
			else 'Ammattikorkeakoulu'
		end
	  ,null As 'koulutusala2002'
	  ,[OKM ohjauksen ala] = coalesce(d2.okmohjauksenala_fi,'Tuntematon')
	  , d60.OKM_ohjauksen_ala_amk_tav as 'Rahoitusmalliala (AMK)'
	  , d60.OKM_ohjauksen_ala_yo_tav as 'Rahoitusmalliala (YO)'
	  ,[Koulutusaste, taso 1] = coalesce(d2.koulutusastetaso1_fi,'Tuntematon')
	  ,[Koulutusaste, taso 2] = coalesce(d2.Koulutusastetaso2_fi,'Tuntematon')
	  ,[Koulutusala, taso 1] = coalesce(d2.koulutusalataso1_fi,'Tuntematon')
	  ,[Koulutusala, taso 2] = coalesce(d2.koulutusalataso2_fi,'Tuntematon')
	  ,[Koulutusala, taso 3] = coalesce(d2.koulutusalataso3_fi,'Tuntematon')
	  , d90.paatieteenala_nimi_fi as 'Päätieteenala'
	  , d90.tieteenala_nimi_fi as 'Tieteenala'
	  ,null as 'Tutkijanuravaihe'
	  ,null as 'kunta'
	  ,NULL as 'kansalaisuus'
	  ,NULL AS 'tutkinnot'
	  ,NULL AS '7v_aloittaneet_lkm'
	  ,NULL AS '5v_Aloittaneet_lkm'
	  ,NULL AS '7v_suorittaneet_lkm'
	  ,NULL AS '5v_suorittaneet_lkm'
	  ,[Lasna] = case when f.edellinenSyysolo=1 or f.olok=1 then 1 else 0 end
	  ,[Suorittanut55] = case when f.[suorittanut27]=1 or f.[suorittanut55ilmanPankkia]=1 or f.[suorittanut55PankinAvulla]=1 then 1 else 0 end
	  ,NULL AS  'Läsnäolleet opiskelijat (1-14op)'
	  ,NULL AS 'lkm_op1_14'
	  ,NULL AS 'opetus- tutkimushenkilökunta HTV'
	  ,NULL AS 'IV porras HTV'
	  ,NULL AS 'Opetus- ja TKI henkilökunta'
	  ,NULL AS 'Ammattikorkeakoulun TKI-henkilökunta'
	  ,NULL as 'JulkaisuID'
	  ,NULL as 'Jufotaso'
	  ,NULL AS  'AMK Julkaisut (A-E)'
	  ,NULL AS 'AMK julkaisut (F ja I)'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 2 ja 3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1) jufotaso 1-3'
	  ,NULL AS 'YO kansainvälinen yhteisjulkaisu (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'Kilpailtu tutkimusrahoitus'
	  ,NULL AS 'Kilpailtu tutkimusrahoitus (SA,Tekes, EU-puiteohjelma)'
	  ,NULL AS 'kv_vaihtoopiskelijat_op_lkm'
	  ,NULL AS 'ulkom_hyv_luetut_op_lkm'
	  ,NULL AS 'erilopintooik_op_lkm'
	  ,NULL AS 'avoinamk_op_amk_lkm'
	  ,NULL AS 'mamu_op_lkm'
	  ,NULL AS 'erikoul_suor_op_lkm'
	  ,NULL AS 'sijoittuminen_1v_tutkinnon_jalkeen'
	  ,NULL AS 'työlliset 1v tutkinnon jälkeen'
	  ,null AS 'sijoittuminen_3v_tutkinnon_jalkeen'
	  ,NULL as 'Työlliset 3v tutkinnon jälkeen'
	  ,NULL AS 'Kandikyselyn pistemäärä'
	  ,NULL AS 'AVOP-AMK pistemäärä'
	  ,NULL as 'AVOP-AMK Opiskelijapalaute_työelämä'
	  ,NULL as 'AVOP-YAMK Opiskelijapalaute_työelämä'
	  ,NULL as 'Ensisijainen hakija'
	  ,NULL as 'Paikan vastaanottaneet'
	  , d2.okmohjauksenala_koodi 'Koodit OKM ohjauksen ala'
	  , d1.organisaatio_koodi as 'Koodit oppilaitos'
	  , NULL as 'Koodit kunta'
  	  , case when d2.jarjestys_koulutusastetaso1_koodi ='ööö' then null else d2.jarjestys_koulutusastetaso1_koodi end as 'jarj. koulutusaste, taso 1'
  	  , case when d2.jarjestys_koulutusastetaso2_koodi ='ööö' then null else d2.jarjestys_koulutusastetaso2_koodi end as 'jarj. koulutusaste, taso 2'
	  , case 
			when d2.okmohjauksenala_koodi='1' then 1 
			when d2.okmohjauksenala_koodi='2' then 2 
			when d2.okmohjauksenala_koodi='3' then 3 
			when d2.okmohjauksenala_koodi='4' then 4
			when d2.okmohjauksenala_koodi='5' then 5
			when d2.okmohjauksenala_koodi='6' then 6
			when d2.okmohjauksenala_koodi='7' then 7
			when d2.okmohjauksenala_koodi='8' then 8  
			when d2.okmohjauksenala_koodi='9' then 9
			when d2.okmohjauksenala_koodi='10' then 10
			when d2.okmohjauksenala_koodi='11' then 11
			when d2.okmohjauksenala_koodi='12' then 12 
			when d2.okmohjauksenala_koodi='-1' then 99999
		end as 'jarj. OKM ohjauksen ala'
	  , d60.jarjestys_OKM_ohjauksen_ala_amk_tav as 'jarj. rahoitusmalliala amk'
	  , d60.jarjestys_OKM_ohjauksen_ala_yo_tav as 'jarj. rahoitusmalliala yo'
	  , d90.jarjestys_paatieteenala_koodi as 'jarj. paatieteenala'
	  , d90.jarjestys_tieteenala_koodi as 'jarj. tieteenala'
  FROM [ANTERO].[sa].[sa_virta_otp_viisviis] f
LEFT JOIN ANTERO.dw.d_organisaatioluokitus d1 on d1.organisaatio_koodi=f.oppilaitostunnus
LEFT JOIN ANTERO.dw.d_koulutusluokitus d2 on d2.koulutusluokitus_koodi=f.tkoodi
left join VipunenTK.dbo.d_koulutusluokitus d60 on d2.koulutusluokitus_koodi=d60.koulutusluokitus_avain
 left join VipunenTK_lisatiedot.dbo.koulutuskoodin_tieteenala d59 on d59.koulutuskoodi=d60.koulutusluokitus_avain
 left join ANTERO.dw.d_tieteenala d90 on 'TTHV_'+d90.tieteenala_koodi=d59.tieteenala_avain
where vuosi>2010

union all
/****** 1-14op suorittaneet ******/
SELECT [tilastointivuosi]
	  ,NULL as 'Aloituslukuvuosi (läpäisy)'
      ,d50.organisaatio_fi
	  ,[Sektori]=case  when d50.organisaatio_fi in 
			('Aalto-yliopisto','Helsingin yliopisto','Itä-Suomen yliopisto','Jyväskylän yliopisto','Lapin yliopisto','Lappeenrannan tekn. yliopisto','Oulun yliopisto','Svenska handelshögskolan','Taideyliopisto','Tampereen tekn. yliopisto','Tampereen yliopisto','Turun yliopisto','Vaasan yliopisto','Åbo Akademi','Kuvataideakatemia','Sibelius-Akatemia','Teatterikorkeakoulu','Lappeenrannan teknillinen yliopisto', 'Tampereen teknillinen yliopisto') 
		then 'Yliopisto'
			else 'Ammattikorkeakoulu'
		end
	  , d2.koulutusaste2002
	  , d2.OKM_ohjauksen_ala
	  , d2.OKM_ohjauksen_ala_amk_tav as 'Rahoitusmalliala (AMK)'
	  , d2.OKM_ohjauksen_ala_yo_tav as 'Rahoitusmalliala (YO)'
	  , d2.iscle2011 as 'Koulutusaste, taso1'
	  , d2.Koulutusaste_taso2
	  , d2.iscfibroad2013 as 'Koulutusala, taso 1'
	  , d2.iscfinarrow2013 as 'Koulutusala, taso 2'
	  , d2.iscfi2013 as 'Koulutusala, taso 3'
	  , d90.paatieteenala_nimi_fi as 'Päätieteenala'
	  , d90.tieteenala_nimi_fi as 'Tieteenala'
	  , null as 'Tutkijanuravaihe'
      ,d20.kunta as 'Kunta'
      ,d3.[kansalaisuus_versio2]
      ,NULL AS 'tutkinnot'
	  ,NULL AS '7v_aloittaneet_lkm'
	  ,NULL AS '5v_Aloittaneet_lkm'
	  ,NULL AS '7v_suorittaneet_lkm'
	  ,NULL AS '5v_suorittaneet_lkm'
	  ,NULL AS 'Läsnäolevat opiskelijat'--lasna
	  ,NULL AS '55op suorittaneet' --suorittanut55
	  ,[1-14 lasna]= case when f.opiskelijan_olo_syys=1 then f.lukumaara else 0 END
	  ,lkm_op1_14
	  ,NULL AS 'opetus- tutkimushenkilökunta HTV'
	  ,NULL AS 'IV porras HTV'
	  ,NULL AS 'Opetus- ja TKI henkilökunta'
	  ,NULL AS 'Ammattikorkeakoulun TKI-henkilökunta'
	  ,NULL as 'JulkaisuID'
	  ,NULL as 'Jufotaso'
	  ,NULL AS  'AMK Julkaisut (A-E)'
	  ,NULL AS  'AMK julkaisut (F ja I)'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 2 ja 3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1) jufotaso 1-3'
	  ,NULL AS 'YO kansainvälinen yhteisjulkaisu (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'Kilpailtu tutkimusrahoitus'
	  ,NULL AS 'Kilpailtu tutkimusrahoitus (SA,Tekes, EU-puiteohjelma)'
	  ,NULL AS 'kv_vaihtoopiskelijat_op_lkm'
	  ,NULL AS 'ulkom_hyv_luetut_op_lkm'
	  ,NULL AS 'erilopintooik_op_lkm'
	  ,NULL AS 'avoinamk_op_amk_lkm'
	  ,NULL AS 'mamu_op_lkm'
	  ,NULL AS 'erikoul_suor_op_lkm'
	  ,NULL AS 'sijoittuminen_1v_tutkinnon_jalkeen'
	  ,NULL AS 'työlliset 1v tutkinnon jälkeen'
	  ,null AS 'sijoittuminen_3v_tutkinnon_jalkeen'
	  ,NULL as 'Työlliset 3v tutkinnon jälkeen'
	  ,NULL AS 'Kandikyselyn pistemäärä'
	  ,NULL AS 'AVOP-AMK pistemäärä'
	  ,NULL as 'AVOP-AMK Opiskelijapalaute_työelämä'
	  ,NULL as 'AVOP-YAMK Opiskelijapalaute_työelämä'
	  ,NULL as 'Ensisijainen hakija'
	  ,NULL as 'Paikan vastaanottaneet'
	  , d2.OKM_ohjauksen_ala_koodi as 'Koodit OKM ohjauksen ala'
	  , d50.organisaatio_koodi as 'Koodit oppilaitos'
	  , d20.kunta_koodi as 'Koodit kunta'
  	  , case when d2.jarjestys_iscle2011='ööö' then null else d2.jarjestys_iscle2011 end as 'jarj. koulutusaste, taso 1'
	  , case when d2.jarjestys_Koulutusaste_taso2 ='ööö' then null else d2.jarjestys_Koulutusaste_taso2 end as 'jarj. koulutusaste, taso 2'
	  , case 
			when d2.OKM_ohjauksen_ala_koodi='1' then 1 
			when d2.OKM_ohjauksen_ala_koodi='2' then 2 
			when d2.OKM_ohjauksen_ala_koodi='3' then 3 
			when d2.OKM_ohjauksen_ala_koodi='4' then 4
			when d2.OKM_ohjauksen_ala_koodi='5' then 5
			when d2.OKM_ohjauksen_ala_koodi='6' then 6
			when d2.OKM_ohjauksen_ala_koodi='7' then 7
			when d2.OKM_ohjauksen_ala_koodi='8' then 8  
			when d2.OKM_ohjauksen_ala_koodi='9' then 9
			when d2.OKM_ohjauksen_ala_koodi='10' then 10
			when d2.OKM_ohjauksen_ala_koodi='11' then 11
			when d2.OKM_ohjauksen_ala_koodi='12' then 12 
			when d2.OKM_ohjauksen_ala_koodi='-1' then 99999
		end as 'jarj. OKM ohjauksen ala'
	  , d2.jarjestys_OKM_ohjauksen_ala_amk_tav as 'jarj. rahoitusmalliala amk'
	  , d2.jarjestys_OKM_ohjauksen_ala_yo_tav as 'jarj. rahoitusmalliala yo'
	  , d90.jarjestys_paatieteenala_koodi as 'jarj. paatieteenala'
	  , d90.jarjestys_tieteenala_koodi as 'jarj. tieteenala'
 FROM [VipunenTK].[dbo].[f_OTV_2_8_Korkeakouluopiskelijat] f
 left join VipunenTK.dbo.d_oppilaitoksen_taustatiedot as d1 on oppilaitos_id = d1.id
 left join antero.dw.d_organisaatioluokitus as d50 on d50.organisaatio_koodi=d1.oppilaitoskoodi 
 left join VipunenTK.dbo.d_koulutusluokitus as d2 on koulutusluokitus_id = d2.id
 left join VipunenTK.dbo.d_kansalaisuus_versio2 as d3 on kansalaisuus_versio2_id = d3.id
 left join VipunenTK.dbo.d_alueluokitus as d20 on [koulutuksen_kunta]=d20.kunta_koodi 
 left join VipunenTK_lisatiedot.dbo.koulutuskoodin_tieteenala d59 on d59.koulutuskoodi=koulutus_koodi
 left join ANTERO.dw.d_tieteenala d90 on 'TTHV_'+d90.tieteenala_koodi=d59.tieteenala_avain
 Where aineisto = 'L' and tilastointivuosi>2010 and d2.koulutusaste2002_koodi in ('62','71')

 union all
 /****** YO opetus- ja tutkimushenkilökunta sekä IV tutkijanuraporras ******/
SELECT [vuosi]
	  ,NULL as 'Aloituslukuvuosi (läpäisy)'
      , d50.organisaatio_fi
	  ,[Sektori]=case  when d50.organisaatio_fi in 
			('Aalto-yliopisto','Helsingin yliopisto','Itä-Suomen yliopisto','Jyväskylän yliopisto','Lapin yliopisto','Lappeenrannan tekn. yliopisto','Oulun yliopisto','Svenska handelshögskolan','Taideyliopisto','Tampereen tekn. yliopisto','Tampereen yliopisto','Turun yliopisto','Vaasan yliopisto','Åbo Akademi','Kuvataideakatemia','Sibelius-Akatemia','Teatterikorkeakoulu','Lappeenrannan teknillinen yliopisto', 'Tampereen teknillinen yliopisto') 
		then 'Yliopisto'
			else 'Ammattikorkeakoulu'
		end
	  , NULL AS 'koulutusaste2002'
	  , d4.ohjauksenala_nimi_fi
	  , NULL AS 'Rahoitusmalliala (AMK)'
	  , NULL AS 'Rahoitusmalliala (YO)'
	  , NULL AS 'Koulutusaste, taso1'
	  , NULL AS 'Koulutusaste_taso2'
	  , NULL AS 'Koulutusala, taso 1'
	  , NULL AS 'Koulutusala, taso 2'
	  , NULL AS 'Koulutusala, taso 3'
	  , d90.paatieteenala_nimi_fi as 'Päätieteenala'
	  , d90.tieteenala_nimi_fi as 'Tieteenala'
	  ,d8.selite_fi as 'Tutkijanuravaihe'
      ,NULL AS 'koulutuksen_kunta'
      ,case when d60.maatjavaltiot2_fi in ('Suomi','Ahvenanmaa') then 'Suomi' when d60.maatjavaltiot2_fi in ('Islanti', 'Liechtenstein', 'Norja') then 'EU/ETA' else 'Muu' end
      ,NULL AS 'tutkinnot'
	  ,NULL AS '7v_aloittaneet_lkm'
	  ,NULL AS '5v_Aloittaneet_lkm'
	  ,NULL AS '7v_suorittaneet_lkm'
	  ,NULL AS '5v_suorittaneet_lkm'
	  ,NULL AS 'Läsnäolevat opiskelijat'--lasna
	  ,NULL AS '55op suorittaneet' --suorittanut55
	  ,NULL AS  'Läsnäolleet opiskelijat (1-14op)'
	  ,NULL AS 'lkm_op1_14'
	  ,case when d_tehtavanjaottelu_id=0 then henkilotyovuosi else 0 end AS 'Opetus- ja tutkimushenkilökunta'
	  ,case when d_tutkijanuravaihe_id=3 then henkilotyovuosi else 0 end as 'IV tutkijanuraporras'
	  ,NULL AS 'Opetus- ja TKI henkilökunta'
	  ,NULL AS 'Ammattikorkeakoulun TKI-henkilökunta'
	  ,NULL as 'JulkaisuID'
	  ,NULL as 'Jufotaso'
	  ,NULL AS  'AMK Julkaisut (A-E)'
	  ,NULL AS  'AMK julkaisut (F ja I)'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 2 ja 3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1) jufotaso 1-3'
	  ,NULL AS 'YO kansainvälinen yhteisjulkaisu (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'Kilpailtu tutkimusrahoitus'
	  ,NULL AS 'Kilpailtu tutkimusrahoitus (SA,Tekes, EU-puiteohjelma)'
	  ,NULL AS 'kv_vaihtoopiskelijat_op_lkm'
	  ,NULL AS 'ulkom_hyv_luetut_op_lkm'
	  ,NULL AS 'erilopintooik_op_lkm'
	  ,NULL AS 'avoinamk_op_amk_lkm'
	  ,NULL AS 'mamu_op_lkm'
	  ,NULL AS 'erikoul_suor_op_lkm'
	  ,NULL AS 'sijoittuminen_1v_tutkinnon_jalkeen'
	  ,NULL AS 'työlliset 1v tutkinnon jälkeen'
	  ,null AS 'sijoittuminen_3v_tutkinnon_jalkeen'
	  ,NULL as 'Työlliset 3v tutkinnon jälkeen'
	  ,NULL AS 'Kandikyselyn pistemäärä'
	  ,NULL AS 'AVOP-AMK pistemäärä'
	  ,NULL as 'AVOP-AMK Opiskelijapalaute_työelämä'
	  ,NULL as 'AVOP-YAMK Opiskelijapalaute_työelämä'
	  ,NULL as 'Ensisijainen hakija'
	  ,NULL as 'Paikan vastaanottaneet'
	  , d4.ohjauksenala_koodi as 'Koodit OKM ohjauksen ala'
	  , d50.organisaatio_koodi as 'Koodit oppilaitos'
	  , NULL as 'Koodit kunta'	  
  	  , NULL AS 'jarjestys_iscle2011'
	  , NULL AS 'jarjestys_Koulutusaste_taso2'
	  , case 
			when d4.ohjauksenala_koodi='1' then 1 
			when d4.ohjauksenala_koodi='2' then 2 
			when d4.ohjauksenala_koodi='3' then 3 
			when d4.ohjauksenala_koodi='4' then 4
			when d4.ohjauksenala_koodi='5' then 5
			when d4.ohjauksenala_koodi='6' then 6
			when d4.ohjauksenala_koodi='7' then 7
			when d4.ohjauksenala_koodi='8' then 8  
			when d4.ohjauksenala_koodi='9' then 9
			when d4.ohjauksenala_koodi='10' then 10
			when d4.ohjauksenala_koodi='11' then 11
			when d4.ohjauksenala_koodi='12' then 12 
			when d4.ohjauksenala_koodi='-1' then 99999
		end as 'jarj. OKM ohjauksen ala'
	  , '99999' as 'jarj. rahoitusmalliala amk'
	  , '99999' as 'jarj. rahoitusmalliala yo'
	  , d90.jarjestys_paatieteenala_koodi as 'jarj. paatieteenala'
	  , d90.jarjestys_tieteenala_koodi as 'jarj. tieteenala'
 FROM [ANTERO].[dw].[f_yo_henkilon_tyo] f
 left join ANTERO.dw.d_yo as d1 on d_yliopisto_id = d1.id
 left join ANTERO.dw.d_organisaatioluokitus as d50 on d50.organisaatio_koodi=d1.yo_tunnus
 left join ANTERO.dw.d_koulutusala_2002 as d2 on d_koulutusala_id = d2.id
 left join ANTERO.dw.d_ohjauksenala as d4 on d_ohjauksenala_id = d4.id
 left join ANTERO.dw.d_maatjavaltiot2 d60 on d60.id=d_kansalaisuus_id
 left join antero.dw.d_yo_tehtavanjaottelu as d7 on d7.id=d_tehtavanjaottelu_id
 left join ANTERO.dw.d_yo_tutkijanuravaihe as d8 on d8.id=d_tutkijanuravaihe_id
 left join ANTERO.dw.d_tieteenala d90 on d90.id=f.d_tieteenala_id
 where d7.koodi in (1,3)

  union all
  /****** AMK opetus- ja TKI henkilökunta ******/
SELECT [vuosi]
	  ,NULL as 'Aloituslukuvuosi (läpäisy)'
      , d50.organisaatio_fi
	  , [Sektori]='Ammattikorkeakoulu'
	  , NULL AS 'koulutusaste2002'
	  , d4.ohjauksenala_nimi_fi
	  , NULL AS 'Rahoitusmalliala (AMK)'
	  , NULL AS 'Rahoitusmalliala (YO)'
	  , NULL AS 'Koulutusaste, taso1'
	  , NULL AS 'Koulutusaste_taso2'
	  , NULL AS 'Koulutusala, taso 1'
	  , NULL AS 'Koulutusala, taso 2'
	  , NULL AS 'Koulutusala, taso 3'
	  , d90.paatieteenala_nimi_fi as 'Päätieteenala'
	  , d90.tieteenala_nimi_fi as 'Tieteenala'
	  , null as 'Tutkijanuravaihe'
      ,NULL AS 'koulutuksen_kunta'
      ,case when d60.maatjavaltiot2_fi in ('Suomi','Ahvenanmaa') then 'Suomi' when d60.maatjavaltiot2_fi in 
	  ('Islanti', 'Liechtenstein', 'Norja', 'Alankomaat', 'Belgia', 'Bulgaria', 'Espanja', 'Irlanti', 'Italia', 'Itävalta', 'Kreikka', 'Kroatia','Kypros', 'Latvia', 'Liettua', 'Luxemburg', 'Malta', 'Portugali', 'Puola', 'Ranska', 'Romania', 'Ruotsi', 'Saksa', 'Slovakia', 'Slovenia', 'Tanska', 'Tšekki', 'Unkari', 'Viro', 'Britannia') 
	  then 'EU/ETA' else 'Muu' end as 'Kansalaisuus'
      ,NULL AS 'tutkinnot'
	  ,NULL AS '7v_aloittaneet_lkm'
	  ,NULL AS '5v_Aloittaneet_lkm'
	  ,NULL AS '7v_suorittaneet_lkm'
	  ,NULL AS '5v_suorittaneet_lkm'
	  ,NULL AS 'Läsnäolevat opiskelijat'--lasna
	  ,NULL AS '55op suorittaneet' --suorittanut55
	  ,NULL AS  'Läsnäolleet opiskelijat (1-14op)'
	  ,NULL AS 'lkm_op1_14'
	  ,NULL AS  'Opetus- ja tutkimushenkilökunta'
	  ,NULL AS  'IV tutkijanuraporras'
	  ,case when d_tehtavanjaottelu=0 then henkilotyovuosi end AS 'AMK Opetushenkilökunta'
	  ,case when d_tehtavanjaottelu=1 then henkilotyovuosi end AS 'AMK TKI-henkilökunta'
	  ,NULL as 'JulkaisuID'
	  ,NULL as 'Jufotaso'
	  ,NULL AS  'AMK Julkaisut (A-E)'
	  ,NULL AS  'AMK julkaisut (F ja I)'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 2 ja 3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1) jufotaso 1-3'
	  ,NULL AS 'YO kansainvälinen yhteisjulkaisu (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'Kilpailtu tutkimusrahoitus'
	  ,NULL AS 'Kilpailtu tutkimusrahoitus (SA,Tekes, EU-puiteohjelma)'
	  ,NULL AS 'kv_vaihtoopiskelijat_op_lkm'
	  ,NULL AS 'ulkom_hyv_luetut_op_lkm'
	  ,NULL AS 'erilopintooik_op_lkm'
	  ,NULL AS 'avoinamk_op_amk_lkm'
	  ,NULL AS 'mamu_op_lkm'
	  ,NULL AS 'erikoul_suor_op_lkm'
	  ,NULL AS 'sijoittuminen_1v_tutkinnon_jalkeen'
	  ,NULL AS 'työlliset 1v tutkinnon jälkeen'
	  ,null AS 'sijoittuminen_3v_tutkinnon_jalkeen'
	  ,NULL as 'Työlliset 3v tutkinnon jälkeen'
	  ,NULL AS 'Kandikyselyn pistemäärä'
	  ,NULL AS 'AVOP-AMK pistemäärä'
	  ,NULL as 'AVOP-AMK Opiskelijapalaute_työelämä'
	  ,NULL as 'AVOP-YAMK Opiskelijapalaute_työelämä'
	  ,NULL as 'Ensisijainen hakija'
	  ,NULL as 'Paikan vastaanottaneet'
	  , d4.ohjauksenala_koodi as 'Koodit OKM ohjauksen ala'
	  , d50.organisaatio_koodi as 'Koodit oppilaitos'
	  , NULL as 'Koodit kunta'
  	  , NULL AS 'jarjestys_iscle2011'
	  , NULL AS 'jarjestys_Koulutusaste_taso2'
	  , case 
			when d4.ohjauksenala_koodi='1' then 1 
			when d4.ohjauksenala_koodi='2' then 2 
			when d4.ohjauksenala_koodi='3' then 3 
			when d4.ohjauksenala_koodi='4' then 4
			when d4.ohjauksenala_koodi='5' then 5
			when d4.ohjauksenala_koodi='6' then 6
			when d4.ohjauksenala_koodi='7' then 7
			when d4.ohjauksenala_koodi='8' then 8  
			when d4.ohjauksenala_koodi='9' then 9
			when d4.ohjauksenala_koodi='10' then 10
			when d4.ohjauksenala_koodi='11' then 11
			when d4.ohjauksenala_koodi='12' then 12 
			when d4.ohjauksenala_koodi='-1' then 99999
		end as 'jarj. OKM ohjauksen ala'
	  , '99999' as 'jarj. rahoitusmalliala amk'
	  , '99999' as 'jarj. rahoitusmalliala yo'
	  , d90.jarjestys_paatieteenala_koodi as 'jarj. paatieteenala'
	  , d90.jarjestys_tieteenala_koodi as 'jarj. tieteenala'
 FROM [ANTERO].[dw].[f_amk_henkilon_tyo] f
 left join ANTERO.dw.d_amk as d1 on d_amk_id = d1.id
 left join antero.dw.d_organisaatioluokitus as d50 on d50.organisaatio_koodi=d1.amk_tunnus
 left join ANTERO.dw.d_koulutusala_2002 as d2 on d_koulutusala02_id = d2.id
 left join ANTERO.dw.d_ohjauksenala as d4 on d_ohjauksenala_id = d4.id
 left join ANTERO.dw.d_maatjavaltiot2 d60 on d60.id=d_maa_id
 left join ANTERO.dw.d_tieteenala d90 on d90.id=f.d_tieteenala_id 
 where d_tehtavanjaottelu in (0, 1)

union all

 /****** Julkaisut ******/

SELECT tilastovuosi
	  ,NULL as 'Aloituslukuvuosi (läpäisy)'
      , d3.organisaatio_fi
	  ,[Sektori]=case  when d3.organisaatio_fi in 
			('Aalto-yliopisto','Helsingin yliopisto','Itä-Suomen yliopisto','Jyväskylän yliopisto','Lapin yliopisto','Lappeenrannan tekn. yliopisto','Oulun yliopisto','Svenska handelshögskolan','Taideyliopisto','Tampereen tekn. yliopisto','Tampereen yliopisto','Turun yliopisto','Vaasan yliopisto','Åbo Akademi','Kuvataideakatemia','Sibelius-Akatemia','Teatterikorkeakoulu','Lappeenrannan teknillinen yliopisto', 'Tampereen teknillinen yliopisto') 
		then 'Yliopisto'
			else 'Ammattikorkeakoulu'
		end
	  , NULL AS 'koulutusaste2002'
	  , d4.ohjauksenala_nimi_fi
	  , NULL AS 'Rahoitusmalliala (AMK)'
	  , NULL AS 'Rahoitusmalliala (YO)'
	  , NULL AS 'Koulutusaste, taso1'
	  , NULL AS 'Koulutusaste_taso2'
	  , NULL AS 'Koulutusala, taso 1'
	  , NULL AS 'Koulutusala, taso 2'
	  , NULL AS 'Koulutusala, taso 3'
	  , d90.paatieteenala_nimi_fi as 'Päätieteenala'
	  , d90.tieteenala_nimi_fi as 'Tieteenala'
	  , null as 'Tutkijanuravaihe'
      ,NULL AS 'koulutuksen_kunta'
      ,NULL AS'kansalaisuus_versio2'
      ,NULL AS 'tutkinnot'
	  ,NULL AS '7v_aloittaneet_lkm'
	  ,NULL AS '5v_Aloittaneet_lkm'
	  ,NULL AS '7v_suorittaneet_lkm'
	  ,NULL AS '5v_suorittaneet_lkm'
	  ,NULL AS 'Läsnäolevat opiskelijat'--lasna
	  ,NULL AS '55op suorittaneet' --suorittanut55
	  ,NULL AS  'Läsnäolleet opiskelijat (1-14op)'
	  ,NULL AS 'lkm_op1_14'
	  ,NULL AS  'Opetus- ja tutkimushenkilökunta'
	  ,NULL AS  'IV tutkijanuraporras'
	  ,NULL AS  'Opetus- ja TKI henkilökunta'
	  ,NULL AS 'Ammattikorkeakoulun TKI-henkilökunta'
	  ,case when d3.oppilaitostyyppi_koodi='41' OR (d3.oppilaitostyyppi_koodi='42' AND julkaisutyyppi_koodi in ('A1','A2','A3','A4','C1','C2') AND d5.julkaisufoorumitaso_koodi in (1,2,3)) then julkaisunTunnus end as 'JulkaisuID'
	  ,case when d3.oppilaitostyyppi_koodi='41' OR (d3.oppilaitostyyppi_koodi='42' AND julkaisutyyppi_koodi in ('A1','A2','A3','A4','C1','C2') AND d5.julkaisufoorumitaso_koodi in (1,2,3)) then cast(julkaisufoorumitaso_koodi as integer) end as 'Jufotaso'
	  ,case when d3.oppilaitostyyppi_koodi='41' then lukumaara else NULL end AS 'AMK Julkaisut (A-E)'
	  ,NULL as 'AMK julkaisut (F ja I)'
	  ,case when d3.oppilaitostyyppi_koodi='42' AND julkaisutyyppi_koodi in ('A1','A2','A3','A4','C1','C2') AND d5.julkaisufoorumitaso_koodi in (2,3) then lukumaara else NULL end AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 2 ja 3'
	  ,case when d3.oppilaitostyyppi_koodi='42' AND julkaisutyyppi_koodi in ('A1','A2','A3','A4','C1','C2') AND d5.julkaisufoorumitaso_koodi in (1,2,3) then lukumaara else NULL end AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,case when d3.oppilaitostyyppi_koodi='42' AND julkaisutyyppi_koodi in ('A1','A2','A3','A4','C1') AND d5.julkaisufoorumitaso_koodi in (1,2,3) then lukumaara else NULL end AS 'YO Julkaisut (A1-A4, C1) jufotaso 1-3'
	  ,case when d3.oppilaitostyyppi_koodi='42' AND julkaisutyyppi_koodi in ('A1','A2','A3','A4','C1','C2') AND d5.julkaisufoorumitaso_koodi in (1,2,3) AND d_kansainvalinen_yhteisjulkaisu_id=2 then lukumaara else NULL end AS 'YO kansainvälinen yhteisjulkaisu (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'Kilpailtu tutkimusrahoitus'
	  ,NULL AS 'Kilpailtu tutkimusrahoitus (SA,Tekes, EU-puiteohjelma)'
	  ,NULL AS 'kv_vaihtoopiskelijat_op_lkm'
	  ,NULL AS 'ulkom_hyv_luetut_op_lkm'
	  ,NULL AS 'erilopintooik_op_lkm'
	  ,NULL AS 'avoinamk_op_amk_lkm'
	  ,NULL AS 'mamu_op_lkm'
	  ,NULL AS 'erikoul_suor_op_lkm'
	  ,NULL AS 'sijoittuminen_1v_tutkinnon_jalkeen'
	  ,NULL AS 'työlliset 1v tutkinnon jälkeen'
	  ,null AS 'sijoittuminen_3v_tutkinnon_jalkeen'
	  ,NULL as 'Työlliset 3v tutkinnon jälkeen'
	  ,NULL AS 'Kandikyselyn pistemäärä'
	  ,NULL AS 'AVOP-AMK pistemäärä'
	  ,NULL as 'AVOP-AMK Opiskelijapalaute_työelämä'
	  ,NULL as 'AVOP-YAMK Opiskelijapalaute_työelämä'
	  ,NULL as 'Ensisijainen hakija'
	  ,NULL as 'Paikan vastaanottaneet'
	  , d4.ohjauksenala_koodi as 'Koodit OKM ohjauksen ala'
	  , d3.organisaatio_koodi as 'Koodit oppilaitos'
	  , NULL as 'Koodit kunta'
  	  , NULL AS 'jarjestys_iscle2011'
	  , NULL AS 'jarjestys_Koulutusaste_taso2'
	  , case 
			when d4.ohjauksenala_koodi='1' then 1 
			when d4.ohjauksenala_koodi='2' then 2 
			when d4.ohjauksenala_koodi='3' then 3 
			when d4.ohjauksenala_koodi='4' then 4
			when d4.ohjauksenala_koodi='5' then 5
			when d4.ohjauksenala_koodi='6' then 6
			when d4.ohjauksenala_koodi='7' then 7
			when d4.ohjauksenala_koodi='8' then 8  
			when d4.ohjauksenala_koodi='9' then 9
			when d4.ohjauksenala_koodi='10' then 10
			when d4.ohjauksenala_koodi='11' then 11
			when d4.ohjauksenala_koodi='12' then 12 
			when d4.ohjauksenala_koodi='-1' then 99999
		end as 'jarj. OKM ohjauksen ala'
	  , '99999' as 'jarj. rahoitusmalliala amk'
	  , '99999' as 'jarj. rahoitusmalliala yo'
	  , d90.jarjestys_paatieteenala_koodi as 'jarj. paatieteenala'
	  , d90.jarjestys_tieteenala_koodi as 'jarj. tieteenala'
 FROM [ANTERO].[dw].[f_virta_jtp_tilasto] f
 left join ANTERO.dw.d_julkaisutyyppi as d1 on d_julkaisutyyppi_id = d1.id
 left join ANTERO.dw.d_koulutusala_2002 as d2 on d_koulutusala02_id = d2.id
 left join ANTERO.dw.d_ohjauksenala as d4 on d_ohjauksenala_id = d4.id
 left join ANTERO.dw.d_organisaatioluokitus as d3 on d_organisaatio_id = d3.id
 left join ANTERO.dw.d_tieteenala d90 on d90.id=f.d_tieteenala_id
 left join antero.dw.d_julkaisufoorumitaso as d5 on d_julkaisufoorumitaso_id=d5.id
 where d1.julkaisunpaaluokka_koodi in ('A', 'B', 'C', 'D', 'E', 'F', 'I') and d3.oppilaitostyyppi_koodi in ('41','42')

 union all

 /****** AMK julkaisut F ja I ******/
 SELECT vuosi as 'tilastovuosi'
	  ,NULL as 'Aloituslukuvuosi (läpäisy)'
      ,d3.organisaatio_fi as 'Organisaatio'
	  ,[Sektori]=case  when d3.organisaatio_fi in 
			('Aalto-yliopisto','Helsingin yliopisto','Itä-Suomen yliopisto','Jyväskylän yliopisto','Lapin yliopisto','Lappeenrannan tekn. yliopisto','Oulun yliopisto','Svenska handelshögskolan','Taideyliopisto','Tampereen tekn. yliopisto','Tampereen yliopisto','Turun yliopisto','Vaasan yliopisto','Åbo Akademi','Kuvataideakatemia','Sibelius-Akatemia','Teatterikorkeakoulu','Lappeenrannan teknillinen yliopisto', 'Tampereen teknillinen yliopisto') 
		then 'Yliopisto'
			else 'Ammattikorkeakoulu'
		end
	  , NULL AS 'koulutusaste2002'
	  , d4.ohjauksenala_nimi_fi
	  , NULL AS 'Rahoitusmalliala (AMK)'
	  , NULL AS 'Rahoitusmalliala (YO)'
	  , NULL AS 'Koulutusaste, taso1'
	  , NULL AS 'Koulutusaste_taso2'
	  , NULL AS 'Koulutusala, taso 1'
	  , NULL AS 'Koulutusala, taso 2'
	  , NULL AS 'Koulutusala, taso 3'
	  , d90.paatieteenala_nimi_fi as 'Päätieteenala'
	  , d90.tieteenala_nimi_fi as 'Tieteenala'
	  , null as 'Tutkijanuravaihe'
      ,NULL AS 'koulutuksen_kunta'
      ,NULL AS 'kansalaisuus'
      ,NULL AS 'tutkinnot'
	  ,NULL AS '7v_aloittaneet_lkm'
	  ,NULL AS '5v_Aloittaneet_lkm'
	  ,NULL AS '7v_suorittaneet_lkm'
	  ,NULL AS '5v_suorittaneet_lkm'
	  ,NULL AS 'Läsnäolevat opiskelijat'--lasna
	  ,NULL AS '55op suorittaneet' --suorittanut55
	  ,NULL AS  'Läsnäolleet opiskelijat (1-14op)'
	  ,NULL AS 'lkm_op1_14'
	  ,NULL AS  'Opetus- ja tutkimushenkilökunta'
	  ,NULL AS  'IV tutkijanuraporras'
	  ,NULL AS  'Opetus- ja TKI henkilökunta'
	  ,NULL AS 'Ammattikorkeakoulun TKI-henkilökunta'
	  ,NULL as 'JulkaisuID'
	  ,NULL as 'Jufotaso'
	  ,NULL AS 'AMK Julkaisut (A-E)'
	  ,f.julkaisujen_maara as 'AMK julkaisut (F ja I)'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 2 ja 3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1) jufotaso 1-3'
	  ,null AS 'YO kansainvälinen yhteisjulkaisu (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'Kilpailtu tutkimusrahoitus'
	  ,NULL AS 'Kilpailtu tutkimusrahoitus (SA,Tekes, EU-puiteohjelma)'
	  ,NULL AS 'kv_vaihtoopiskelijat_op_lkm'
	  ,NULL AS 'ulkom_hyv_luetut_op_lkm'
	  ,NULL AS 'erilopintooik_op_lkm'
	  ,NULL AS 'avoinamk_op_amk_lkm'
	  ,NULL AS 'mamu_op_lkm'
	  ,NULL AS 'erikoul_suor_op_lkm'
	  ,NULL AS 'sijoittuminen_1v_tutkinnon_jalkeen'
	  ,NULL AS 'työlliset 1v tutkinnon jälkeen'
	  ,null AS 'sijoittuminen_3v_tutkinnon_jalkeen'
	  ,NULL as 'Työlliset 3v tutkinnon jälkeen'
	  ,NULL AS 'Kandikyselyn pistemäärä'
	  ,NULL AS 'AVOP-AMK pistemäärä'
	  ,NULL as 'AVOP-AMK Opiskelijapalaute_työelämä'
	  ,NULL as 'AVOP-YAMK Opiskelijapalaute_työelämä'
	  ,NULL as 'Ensisijainen hakija'
	  ,NULL as 'Paikan vastaanottaneet'
	  , d4.ohjauksenala_koodi as 'Koodit OKM ohjauksen ala'
	  , d3.organisaatio_koodi as 'Koodit oppilaitos'
	  , NULL as 'Koodit kunta'
  	  , NULL AS 'jarjestys_iscle2011'
	  , NULL AS 'jarjestys_Koulutusaste_taso2'
	  , case 
			when d4.ohjauksenala_koodi='1' then 1 
			when d4.ohjauksenala_koodi='2' then 2 
			when d4.ohjauksenala_koodi='3' then 3 
			when d4.ohjauksenala_koodi='4' then 4
			when d4.ohjauksenala_koodi='5' then 5
			when d4.ohjauksenala_koodi='6' then 6
			when d4.ohjauksenala_koodi='7' then 7
			when d4.ohjauksenala_koodi='8' then 8  
			when d4.ohjauksenala_koodi='9' then 9
			when d4.ohjauksenala_koodi='10' then 10
			when d4.ohjauksenala_koodi='11' then 11
			when d4.ohjauksenala_koodi='12' then 12 
			when d4.ohjauksenala_koodi='-1' then 99999
		end as 'jarj. OKM ohjauksen ala'
      , '99999' as 'jarj. rahoitusmalliala amk'
	  , '99999' as 'jarj. rahoitusmalliala yo'
	  , d90.jarjestys_paatieteenala_koodi as 'jarj. paatieteenala'
	  , d90.jarjestys_tieteenala_koodi as 'jarj. tieteenala'
 FROM [ANTERO].[dw].[f_amk_julkaisut_f_i] as f
 left join ANTERO.dw.d_julkaisutyyppi as d1 on d_julkaisutyyppi_id = d1.id
 left join ANTERO.dw.d_ohjauksenala as d4 on d_ohjauksenala_id = d4.id
 left join ANTERO.dw.d_amk as d6 on d_amk_id = d6.id
 left join ANTERO.dw.d_organisaatioluokitus as d3 on d6.amk_tunnus = d3.organisaatio_koodi
 left join ANTERO.dw.d_tieteenala d90 on d90.id=f.d_tieteenala_id
 where d1.julkaisunpaaluokka_koodi in ('A', 'B', 'C', 'D', 'E', 'F', 'I')

 UNION ALL

    /****** YO talous ******/

SELECT tilikausi as 'Tilastointivuosi'
	  ,NULL as 'Aloituslukuvuosi (läpäisy)'
      , d50.organisaatio_fi
	  ,[Sektori]='Yliopisto'
	  , NULL AS 'koulutusaste2002'
	  , d4.ohjauksenala_nimi_fi
	  , NULL AS 'Rahoitusmalliala (AMK)'
	  , NULL AS 'Rahoitusmalliala (YO)'
	  , NULL AS 'Koulutusaste, taso1'
	  , NULL AS'Koulutusaste_taso2'
	  , NULL AS 'Koulutusala, taso 1'
	  , NULL AS 'Koulutusala, taso 2'
	  , NULL AS 'Koulutusala, taso 3'
	  , d90.paatieteenala_nimi_fi as 'Päätieteenala'
	  , d90.tieteenala_nimi_fi as 'Tieteenala'
	  , null as 'Tutkijanuravaihe'
      ,NULL AS 'koulutuksen_kunta'
      ,NULL AS 'kansalaisuus'
      ,NULL AS 'tutkinnot'
	  ,NULL AS '7v_aloittaneet_lkm'
	  ,NULL AS '5v_Aloittaneet_lkm'
	  ,NULL AS '7v_suorittaneet_lkm'
	  ,NULL AS '5v_suorittaneet_lkm'
	  ,NULL AS 'Läsnäolevat opiskelijat'--lasna
	  ,NULL AS '55op suorittaneet' --suorittanut55
	  ,NULL AS  'Läsnäolleet opiskelijat (1-14op)'
	  ,NULL AS 'lkm_op1_14'
	  ,NULL AS  'Opetus- ja tutkimushenkilökunta'
	  ,NULL AS  'IV tutkijanuraporras'
	  ,NULL AS 'Opetus- ja TKI henkilökunta'
	  ,NULL AS 'Ammattikorkeakoulun TKI-henkilökunta'
	  ,NULL as 'JulkaisuID'
	  ,NULL as 'Jufotaso'
	  ,NULL AS 'AMK Julkaisut (A-E)'
	  ,NULL AS 'AMK julkaisut (F ja I)'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 2 ja 3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1) jufotaso 1-3'
	  ,NULL AS 'YO kansainvälinen yhteisjulkaisu (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,case when tili_taso2_fi IN ('Suomen Akatemia','Tekes','Kotimaiset yritykset','Ulkomaiset yritykset','EU-puiteohjelmarahoitus ja muu laadullisesti kilpailtu EU-rahoitus','Ulkomaiset rahastot ja säätiöt','Kansainväliset järjestöt', 'Muu ulkomainen rahoitus') then arvo else 0 end AS 'Kilpailtu tutkimusrahoitus'
  	  ,NULL AS 'Kilpailtu tutkimusrahoitus (SA,Tekes, EU-puiteohjelma)'
	  ,null AS 'kv_vaihtoopiskelijat_op_lkm'
	  ,null AS 'ulkom_hyv_op_lkm'
	  ,null AS 'erilopintooik_op_lkm'
	  ,null AS 'avoinamk_op_amk_lkm'
	  ,null AS 'mamu_op_lkm'
	  ,null AS 'erikoul_suor_op_lkm'
	  ,null AS 'sijoittuminen_1v_tutkinnon_jalkeen'
	  ,NULL AS 'Työlliset 1v tutkinnon jälkeen'
	  ,null AS 'sijoittuminen_3v_tutkinnon_jalkeen'
	  ,NULL as 'Työlliset 3v tutkinnon jälkeen'
	  ,NULL AS 'Kandikyselyn pistemäärä'
	  ,NULL AS 'AVOP-AMK pistemäärä'
	  ,NULL as 'AVOP-AMK Opiskelijapalaute_työelämä'
	  ,NULL as 'AVOP-YAMK Opiskelijapalaute_työelämä'
	  ,NULL as 'Ensisijainen hakija'
	  ,NULL as 'Paikan vastaanottaneet'
	  , d4.ohjauksenala_koodi as 'Koodit OKM ohjauksen ala'
	  , d50.organisaatio_koodi as 'Koodit oppilaitos'
	  , NULL as 'Koodit kunta'
  	  , NULL as 'jarjestys_iscle2011'
	  , NULL as 'jarjestys_Koulutusaste_taso2'
	  , case 
			when d4.ohjauksenala_koodi='1' then 1 
			when d4.ohjauksenala_koodi='2' then 2 
			when d4.ohjauksenala_koodi='3' then 3 
			when d4.ohjauksenala_koodi='4' then 4
			when d4.ohjauksenala_koodi='5' then 5
			when d4.ohjauksenala_koodi='6' then 6
			when d4.ohjauksenala_koodi='7' then 7
			when d4.ohjauksenala_koodi='8' then 8  
			when d4.ohjauksenala_koodi='9' then 9
			when d4.ohjauksenala_koodi='10' then 10
			when d4.ohjauksenala_koodi='11' then 11
			when d4.ohjauksenala_koodi='12' then 12 
			when d4.ohjauksenala_koodi='-1' then 99999
		end as 'jarj. OKM ohjauksen ala'
	  , '99999' as 'jarj. rahoitusmalliala amk'
	  , '99999' as 'jarj. rahoitusmalliala yo'
	  , d90.jarjestys_paatieteenala_koodi as 'jarj. paatieteenala'
	  , d90.jarjestys_tieteenala_koodi as 'jarj. tieteenala'
 FROM [ANTERO].[dw].[f_yo_talous] f
 LEFT JOIN ANTERO.DW.d_tili d5 ON d_tili_id = d5.id
 LEFT join antero.dw.d_yo d10 on d_yo_id=d10.id
 left join antero.dw.d_organisaatioluokitus as d50 on d50.organisaatio_koodi=d10.yo_tunnus 
 LEFT JOIN antero.dw.d_ohjauksenala d4 ON d_ohjauksenala_id = d4.id
 LEFT join antero.dw.d_opintoala95 d2 ON d_opintoala95_id = d2.id
 left join ANTERO.dw.d_tieteenala d90 on d90.id='-1'
 left join antero.dw.d_aineistotyyppi d1 on f.d_aineistotyyppi_id=d1.id
 WHERE konserni='E' AND d1.aineistotyyppi_koodi='L'

 union all
     /****** YO talous - kilpailtu rahoitus ******/

SELECT tilastovuosi as 'Tilastointivuosi'
	  ,NULL as 'Aloituslukuvuosi (läpäisy)'
      , d3.organisaatio_fi
	  ,[Sektori]='Yliopisto'
	  , d4.koulutusaste2002_fi AS 'koulutusaste2002'
	  , d4.okmohjauksenala_fi as 'Ohjauksen ala'
	  , null AS 'Rahoitusmalliala (AMK)'
	  , d5.OKM_ohjauksen_ala_yo_tav AS 'Rahoitusmalliala (YO)'
	  , d4.koulutusastetaso1_fi AS 'Koulutusaste, taso1'
	  , d4.koulutusastetaso2_fi AS'Koulutusaste_taso2'
	  , d4.koulutusalataso1_fi AS 'Koulutusala, taso 1'
	  , d4.koulutusalataso2_fi AS 'Koulutusala, taso 2'
	  , d4.koulutusalataso3_fi AS 'Koulutusala, taso 3'
	  , d90.paatieteenala2010 as 'Päätieteenala'
	  , d90.tieteenala2010 as 'Tieteenala'
	  , null as 'Tutkijanuravaihe'
      ,NULL AS 'koulutuksen_kunta'
      ,NULL AS 'kansalaisuus'
      ,NULL AS 'tutkinnot'
	  ,NULL AS '7v_aloittaneet_lkm'
	  ,NULL AS '5v_Aloittaneet_lkm'
	  ,NULL AS '7v_suorittaneet_lkm'
	  ,NULL AS '5v_suorittaneet_lkm'
	  ,NULL AS 'Läsnäolevat opiskelijat'--lasna
	  ,NULL AS '55op suorittaneet' --suorittanut55
	  ,NULL AS  'Läsnäolleet opiskelijat (1-14op)'
	  ,NULL AS 'lkm_op1_14'
	  ,NULL AS  'Opetus- ja tutkimushenkilökunta'
	  ,NULL AS  'IV tutkijanuraporras'
	  ,NULL AS 'Opetus- ja TKI henkilökunta'
	  ,NULL AS 'Ammattikorkeakoulun TKI-henkilökunta'
	  ,NULL as 'JulkaisuID'
	  ,NULL as 'Jufotaso'
	  ,NULL AS 'AMK Julkaisut (A-E)'
	  ,NULL AS 'AMK julkaisut (F ja I)'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 2 ja 3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1) jufotaso 1-3'
	  ,NULL AS 'YO kansainvälinen yhteisjulkaisu (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'Kilpailtu tutkimusrahoitus'
  	  ,f.tutkimusrahoitus*1000 AS 'Kilpailtu tutkimusrahoitus (SA,Tekes, EU-puiteohjelma)'
	  ,null AS 'kv_vaihtoopiskelijat_op_lkm'
	  ,null AS 'ulkom_hyv_op_lkm'
	  ,null AS 'erilopintooik_op_lkm'
	  ,null AS 'avoinamk_op_amk_lkm'
	  ,null AS 'mamu_op_lkm'
	  ,null AS 'erikoul_suor_op_lkm'
	  ,null AS 'sijoittuminen_1v_tutkinnon_jalkeen'
	  ,NULL AS 'Työlliset 1v tutkinnon jälkeen'
	  ,null AS 'sijoittuminen_3v_tutkinnon_jalkeen'
	  ,NULL as 'Työlliset 3v tutkinnon jälkeen'
	  ,NULL AS 'Kandikyselyn pistemäärä'
	  ,NULL AS 'AVOP-AMK pistemäärä'
	  ,NULL as 'AVOP-AMK Opiskelijapalaute_työelämä'
	  ,NULL as 'AVOP-YAMK Opiskelijapalaute_työelämä'
	  ,NULL as 'Ensisijainen hakija'
	  ,NULL as 'Paikan vastaanottaneet'
	  ,NULL as 'Koodit OKM ohjauksen ala'
	  ,d3.organisaatio_koodi as 'Koodit oppilaitos'
	  , NULL as 'Koodit kunta'
  	  , NULL as 'jarjestys_iscle2011'
	  , NULL as 'jarjestys_Koulutusaste_taso2'
	  , case 
			when d4.okmohjauksenala_fi='1' then 1 
			when d4.okmohjauksenala_fi='2' then 2 
			when d4.okmohjauksenala_fi='3' then 3 
			when d4.okmohjauksenala_fi='4' then 4
			when d4.okmohjauksenala_fi='5' then 5
			when d4.okmohjauksenala_fi='6' then 6
			when d4.okmohjauksenala_fi='7' then 7
			when d4.okmohjauksenala_fi='8' then 8  
			when d4.okmohjauksenala_fi='9' then 9
			when d4.okmohjauksenala_fi='10' then 10
			when d4.okmohjauksenala_fi='11' then 11
			when d4.okmohjauksenala_fi='12' then 12 
			when d4.okmohjauksenala_fi='-1' then 99999
		end as 'jarj. OKM ohjauksen ala'
	  , '99999' as 'jarj. rahoitusmalliala amk'
	  , '99999' as 'jarj. rahoitusmalliala yo'
	  , d90.jarjestys_paatieteenala2010 as 'jarj. paatieteenala'
	  , d90.jarjestys_tieteenala2010 as 'jarj. tieteenala'
  FROM [VipunenTK].[dbo].[f_korkeakoulujen_tutkimus_kehitys_5_3_rahoitus] f
  left join VipunenTK_lisatiedot.dbo.rahoituslahde d1 on f.rahoituslahde_id=d1.id
  left join VipunenTK.dbo.d_tieteenala d90 on f.tieteenala_id=d90.id
  left join ANTERO.dw.d_organisaatioluokitus d3 on f.oppilaitos_avain=d3.organisaatio_koodi
  left join VipunenTK_lisatiedot.dbo.koulutuskoodin_tieteenala d59 on d59.tieteenala_avain=d90.tieteenala_avain
  left join antero.dw.d_koulutusluokitus d4 on d59.koulutuskoodi=d4.koulutusluokitus_koodi
  left join vipunentk.dbo.d_koulutusluokitus d5 on d59.koulutuskoodi=d5.koulutus_koodi
  where rahoituslahde_avain in ('SAKAT','TEKES','Eupuite')

  union all

   /****** YO Vaihto-opiskelijoiden (lähteneet ja saapuneet) opintopisteet ******/

SELECT vuosi
	  ,NULL as 'Aloituslukuvuosi (läpäisy)'
      , d3.organisaatio_fi
	  ,[Sektori]='Yliopisto'
	  ,NULL AS 'd2.koulutusaste2002'
	  , d4.ohjauksenala_nimi_fi
	  ,NULL AS 'Rahoitusmalliala (AMK)'
	  ,NULL AS 'Rahoitusmalliala (YO)'
	  ,NULL AS 'Koulutusaste, taso1'
	  ,NULL AS 'Koulutusaste_taso2'
	  ,NULL AS 'Koulutusala, taso 1'
	  ,NULL AS 'Koulutusala, taso 2'
	  ,NULL AS 'Koulutusala, taso 3'
	  , d90.paatieteenala_nimi_fi as 'Päätieteenala'
	  , d90.tieteenala_nimi_fi as 'Tieteenala'
	  ,NULL AS 'Tutkijanuravaihe'
      ,NULL AS '[koulutuksen_kunta'
      ,NULL AS 'kansalaisuus'
      ,NULL AS 'tutkinnot'
	  ,NULL AS '7v_aloittaneet_lkm'
	  ,NULL AS '5v_Aloittaneet_lkm'
	  ,NULL AS '7v_suorittaneet_lkm'
	  ,NULL AS '5v_suorittaneet_lkm'
	  ,NULL AS 'Läsnäolevat opiskelijat'--lasna
	  ,NULL AS '55op suorittaneet' --suorittanut55
	  ,NULL AS 'Läsnäolleet opiskelijat (1-14op)'
	  ,NULL AS 'lkm_op1_14'
	  ,NULL AS 'Opetus- ja tutkimushenkilökunta'
	  ,NULL AS 'IV tutkijanuraporras'
	  ,NULL AS 'Opetus- ja TKI henkilökunta'
	  ,NULL AS 'Ammattikorkeakoulun TKI-henkilökunta'
	  ,NULL as 'JulkaisuID'
	  ,NULL as 'Jufotaso'
	  ,NULL AS 'AMK Julkaisut (A-E)'
	  ,NULL AS 'AMK julkaisut (F ja I)'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 2 ja 3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1) jufotaso 1-3'
	  ,NULL AS 'YO kansainvälinen yhteisjulkaisu (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'Kilpailtu tutkimusrahoitus'
	  ,NULL AS 'Kilpailtu tutkimusrahoitus (SA,Tekes, EU-puiteohjelma)'
	  ,kv_vaihtoopiskelijat_op_lkm
	  ,ulkom_hyv_luetut_op_lkm
	  ,NULL AS 'erilopintooik_op_lkm'
	  ,NULL AS 'avoinamk_op_amk_lkm'
	  ,NULL AS 'mamu_op_lkm'
	  ,NULL AS 'erikoul_suor_op_lkm'
	  ,NULL AS 'sijoittuminen_1v_tutkinnon_jalkeen'
	  ,NULL AS 'työlliset 1v tutkinnon jälkeen'
	  ,null AS 'sijoittuminen_3v_tutkinnon_jalkeen'
	  ,NULL as 'Työlliset 3v tutkinnon jälkeen'
	  ,NULL AS 'Kandikyselyn pistemäärä'
	  ,NULL AS 'AVOP-AMK pistemäärä'
	  ,NULL as 'AVOP-AMK Opiskelijapalaute_työelämä'
	  ,NULL as 'AVOP-YAMK Opiskelijapalaute_työelämä'
	  ,NULL as 'Ensisijainen hakija'
	  ,NULL as 'Paikan vastaanottaneet'
	  , d4.ohjauksenala_koodi as 'Koodit OKM ohjauksen ala'
	  , d3.organisaatio_koodi as 'Koodit oppilaitos'
	  , NULL as 'Koodit kunta'
  	  ,NULL AS 'jarjestys_iscle2011'
	  ,NULL AS 'jarjestys_Koulutusaste_taso2'
	  , case 
			when d4.ohjauksenala_koodi='1' then 1 
			when d4.ohjauksenala_koodi='2' then 2 
			when d4.ohjauksenala_koodi='3' then 3 
			when d4.ohjauksenala_koodi='4' then 4
			when d4.ohjauksenala_koodi='5' then 5
			when d4.ohjauksenala_koodi='6' then 6
			when d4.ohjauksenala_koodi='7' then 7
			when d4.ohjauksenala_koodi='8' then 8  
			when d4.ohjauksenala_koodi='9' then 9
			when d4.ohjauksenala_koodi='10' then 10
			when d4.ohjauksenala_koodi='11' then 11
			when d4.ohjauksenala_koodi='12' then 12 
			when d4.ohjauksenala_koodi='-1' then 99999
		end as 'jarj. OKM ohjauksen ala'
	  , '99999' as 'jarj. rahoitusmalliala amk'
	  , '99999' as 'jarj. rahoitusmalliala yo'
	  , d90.jarjestys_paatieteenala_koodi as 'jarj. paatieteenala'
	  , d90.jarjestys_tieteenala_koodi as 'jarj. tieteenala'
 FROM [ANTERO].[dw].[f_yo_opintopisteet] f
 LEFT join antero.dw.d_yo d10 on d_yo_id=d10.id
 LEFT join antero.dw.d_organisaatioluokitus d3 on d10.yo_tunnus=d3.organisaatio_koodi
 LEFT JOIN antero.dw.d_ohjauksenala d4 ON d_ohjauksenala_id = d4.id
 --LEFT join antero.dw.d_opintoala95 d2 ON d_opintoala95_id = d2.id
 left join ANTERO.dw.d_tieteenala d90 on d90.id='-1'

  union all

   /****** AMK Vaihto-opiskelijoiden (lähteneet ja saapuneet) opintopisteet ******/

SELECT vuosi
	  ,NULL as 'Aloituslukuvuosi (läpäisy)'
      , d3.organisaatio_fi
	  ,[Sektori]='Ammattikorkeakoulu'
	  , NULL AS 'koulutusaste2002'
	  , d4.ohjauksenala_nimi_fi
	  , NULL AS 'Rahoitusmalliala (AMK)'
	  , NULL AS 'Rahoitusmalliala (YO)'
	  , NULL AS 'Koulutusaste, taso1'
	  , NULL AS 'Koulutusaste_taso2'
	  , NULL AS 'Koulutusala, taso 1'
	  , NULL AS 'Koulutusala, taso 2'
	  , NULL AS 'Koulutusala, taso 3'
	  , d90.paatieteenala_nimi_fi as 'Päätieteenala'
	  , d90.tieteenala_nimi_fi as 'Tieteenala'
	  ,NULL AS 'Tutkijanuravaihe'
      ,NULL AS '[koulutuksen_kunta'
      ,NULL AS 'kansalaisuus'
      ,NULL AS 'tutkinnot'
	  ,NULL AS '7v_aloittaneet_lkm'
	  ,NULL AS '5v_Aloittaneet_lkm'
	  ,NULL AS '7v_suorittaneet_lkm'
	  ,NULL AS '5v_suorittaneet_lkm'
	  ,NULL AS 'Läsnäolevat opiskelijat'--lasna
	  ,NULL AS '55op suorittaneet' --suorittanut55
	  ,NULL AS 'Läsnäolleet opiskelijat (1-14op)'
	  ,NULL AS 'lkm_op1_14'
	  ,NULL AS 'Opetus- ja tutkimushenkilökunta'
	  ,NULL AS 'IV tutkijanuraporras'
	  ,NULL AS 'Opetus- ja TKI henkilökunta'
	  ,NULL AS 'Ammattikorkeakoulun TKI-henkilökunta'
	  ,NULL as 'JulkaisuID'
	  ,NULL as 'Jufotaso'
	  ,NULL AS 'AMK Julkaisut (A-E)'
	  ,NULL AS 'AMK julkaisut (F ja I)'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 2 ja 3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1) jufotaso 1-3'
	  ,NULL AS 'YO kansainvälinen yhteisjulkaisu (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'Kilpailtu tutkimusrahoitus'
	  ,NULL AS 'Kilpailtu tutkimusrahoitus (SA,Tekes, EU-puiteohjelma)'
	  ,kv_vaihtoopiskelijat_op_lkm
	  ,ulkom_hyv_op_lkm
	  ,erilopintooik_op_lkm
	  ,avoinamk_op_amk_lkm
	  ,mamu_op_lkm
	  ,erikoul_suor_op_lkm
	  ,NULL AS 'sijoittuminen_1v_tutkinnon_jalkeen'
	  ,NULL AS 'työlliset 1v tutkinnon jälkeen'
	  ,null AS 'sijoittuminen_3v_tutkinnon_jalkeen'
	  ,NULL as 'Työlliset 3v tutkinnon jälkeen'
	  ,NULL AS 'Kandikyselyn pistemäärä'
	  ,NULL AS 'AVOP-AMK pistemäärä'
	  ,NULL as 'AVOP-AMK Opiskelijapalaute_työelämä'
	  ,NULL as 'AVOP-YAMK Opiskelijapalaute_työelämä'
	  ,NULL as 'Ensisijainen hakija'
	  ,NULL as 'Paikan vastaanottaneet'
	  , d4.ohjauksenala_koodi as 'Koodit OKM ohjauksen ala'
	  , d3.organisaatio_koodi as 'Koodit oppilaitos'
	  , NULL as 'Koodit kunta'
  	  ,NULL AS 'jarjestys_iscle2011'
	  ,NULL AS 'jarjestys_Koulutusaste_taso2'
	  , case 
			when d4.ohjauksenala_koodi='1' then 1 
			when d4.ohjauksenala_koodi='2' then 2 
			when d4.ohjauksenala_koodi='3' then 3 
			when d4.ohjauksenala_koodi='4' then 4
			when d4.ohjauksenala_koodi='5' then 5
			when d4.ohjauksenala_koodi='6' then 6
			when d4.ohjauksenala_koodi='7' then 7
			when d4.ohjauksenala_koodi='8' then 8  
			when d4.ohjauksenala_koodi='9' then 9
			when d4.ohjauksenala_koodi='10' then 10
			when d4.ohjauksenala_koodi='11' then 11
			when d4.ohjauksenala_koodi='12' then 12 
			when d4.ohjauksenala_koodi='-1' then 99999
		end as 'jarj. OKM ohjauksen ala'
	  , '99999' as 'jarj. rahoitusmalliala amk'
	  , '99999' as 'jarj. rahoitusmalliala yo'
	  , d90.jarjestys_paatieteenala_koodi as 'jarj. paatieteenala'
	  , d90.jarjestys_tieteenala_koodi as 'jarj. tieteenala'
 FROM [ANTERO].[dw].[f_amk_opintopisteet] f
 LEFT join antero.dw.d_amk d10 on d_amk_id=d10.id
 LEFT join antero.dw.d_organisaatioluokitus d3 on d10.amk_tunnus=d3.organisaatio_koodi
 LEFT JOIN antero.dw.d_ohjauksenala d4 ON d_ohjauksenala_id = d4.id
 left join ANTERO.dw.d_koulutusala_2002 as d2 on d_koulutusala_2002_id = d2.id
 left join ANTERO.dw.d_amk_koulutustyyppi as d70 on d_amk_koulutustyyppi_id=d70.id
 left join ANTERO.dw.d_tieteenala d90 on d90.id='-1'
 

 UNION ALL

    /****** Työllistyneet 1v jälkeen ******/

SELECT tilastointivuosi
	  ,NULL as 'Aloituslukuvuosi (läpäisy)'
      , d3.organisaatio_fi
	  ,[Sektori]=case  when d3.organisaatio_fi in 
			('Aalto-yliopisto','Helsingin yliopisto','Itä-Suomen yliopisto','Jyväskylän yliopisto','Lapin yliopisto','Lappeenrannan tekn. yliopisto','Oulun yliopisto','Svenska handelshögskolan','Taideyliopisto','Tampereen tekn. yliopisto','Tampereen yliopisto','Turun yliopisto','Vaasan yliopisto','Åbo Akademi','Kuvataideakatemia','Sibelius-Akatemia','Teatterikorkeakoulu','Lappeenrannan teknillinen yliopisto', 'Tampereen teknillinen yliopisto') 
		then 'Yliopisto'
			else 'Ammattikorkeakoulu'
		end
	  , D11.koulutusaste2002
	  , D11.OKM_ohjauksen_ala
	  , d11.OKM_ohjauksen_ala_amk_tav as 'Rahoitusmalliala (AMK)'
	  , d11.OKM_ohjauksen_ala_yo_tav as 'Rahoitusmalliala (YO)'
	  , d11.iscle2011
	  , d11.Koulutusaste_taso2
	  , d11.iscfibroad2013 as 'Koulutusala, taso 1'
	  , d11.iscfinarrow2013 as 'Koulutusala, taso 2'
	  , d11.iscfi2013 as 'Koulutusala, taso 3'
	  , d90.paatieteenala_nimi_fi as 'Päätieteenala'
	  , d90.tieteenala_nimi_fi as 'Tieteenala'
	  , null as 'Tutkijanuravaihe'
      ,null as 'koulutuksen_kunta'
      ,case when d60.maa in ('Suomi','Ahvenanmaa') then 'Suomi' when d60.maa in ('Islanti', 'Liechtenstein', 'Norja') or (d60.eumaa_koodi=1 or d60.etamaa_koodi=1) then 'EU/ETA' else 'Muu' end
      ,NULL AS 'tutkinnot'
	  ,NULL AS '7v_aloittaneet_lkm'
	  ,NULL AS '5v_Aloittaneet_lkm'
	  ,NULL AS '7v_suorittaneet_lkm'
	  ,NULL AS '5v_suorittaneet_lkm'
	  ,NULL AS 'Läsnäolevat opiskelijat'--lasna
	  ,NULL AS '55op suorittaneet' --suorittanut55
	  ,NULL AS 'Läsnäolleet opiskelijat (1-14op)'
	  ,NULL AS 'lkm_op1_14'
	  ,NULL AS 'Opetus- ja tutkimushenkilökunta'
	  ,NULL AS 'IV tutkijanuraporras'
	  ,NULL AS 'Opetus- ja TKI henkilökunta'
	  ,NULL AS 'Ammattikorkeakoulun TKI-henkilökunta'
	  ,NULL as 'JulkaisuID'
	  ,NULL as 'Jufotaso'
	  ,NULL AS 'AMK Julkaisut (A-E)'
	  ,NULL AS 'AMK julkaisut (F ja I)'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 2 ja 3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1) jufotaso 1-3'
	  ,NULL AS 'YO kansainvälinen yhteisjulkaisu (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'Kilpailtu tutkimusrahoitus'
	  ,NULL AS 'Kilpailtu tutkimusrahoitus (SA,Tekes, EU-puiteohjelma)'
	  ,null AS 'kv_vaihtoopiskelijat_op_lkm'
	  ,null AS 'ulkom_hyv_op_lkm'
	  ,null AS 'erilopintooik_op_lkm'
	  ,null AS 'avoinamk_op_amk_lkm'
	  ,null AS 'mamu_op_lkm'
	  ,null AS 'erikoul_suor_op_lkm'
	  ,sijoittuminen_1v_tutkinnon_jalkeen
	  ,case when d4.paaasiallinen_toiminta_okm_koodi=1 then sijoittuminen_1v_tutkinnon_jalkeen else null end as 'Työlliset 1v tutkinnon jälkeen'
	  ,sijoittuminen_3v_tutkinnon_jalkeen
	  ,case when d4.paaasiallinen_toiminta_okm_koodi=1 then sijoittuminen_3v_tutkinnon_jalkeen else null end as 'Työlliset 3v tutkinnon jälkeen'
	  ,NULL AS 'Kandikyselyn pistemäärä'
	  ,NULL AS 'AVOP-AMK pistemäärä'
	  ,NULL as 'AVOP-AMK Opiskelijapalaute_työelämä'
	  ,NULL as 'AVOP-YAMK Opiskelijapalaute_työelämä'
	  ,NULL as 'Ensisijainen hakija'
	  ,NULL as 'Paikan vastaanottaneet'
	  , d11.OKM_ohjauksen_ala_koodi as 'Koodit OKM ohjauksen ala'
	  , d3.organisaatio_koodi as 'Koodit oppilaitos'
	  , NULL as 'Koodit kunta'
  	  , case when d11.jarjestys_iscle2011 ='ööö' then null else d11.jarjestys_iscle2011 end as 'jarj. koulutusaste, taso 1'
	  , case when d11.jarjestys_Koulutusaste_taso2 ='ööö' then null else d11.jarjestys_Koulutusaste_taso2 end as 'jarj. koulutusaste, taso 2'
	  , case 
			when d11.OKM_ohjauksen_ala_koodi='1' then 1 
			when d11.OKM_ohjauksen_ala_koodi='2' then 2 
			when d11.OKM_ohjauksen_ala_koodi='3' then 3 
			when d11.OKM_ohjauksen_ala_koodi='4' then 4
			when d11.OKM_ohjauksen_ala_koodi='5' then 5
			when d11.OKM_ohjauksen_ala_koodi='6' then 6
			when d11.OKM_ohjauksen_ala_koodi='7' then 7
			when d11.OKM_ohjauksen_ala_koodi='8' then 8  
			when d11.OKM_ohjauksen_ala_koodi='9' then 9
			when d11.OKM_ohjauksen_ala_koodi='10' then 10
			when d11.OKM_ohjauksen_ala_koodi='11' then 11
			when d11.OKM_ohjauksen_ala_koodi='12' then 12 
			when d11.OKM_ohjauksen_ala_koodi='-1' then 99999
		end as 'jarj. OKM ohjauksen ala'
	  , d11.jarjestys_OKM_ohjauksen_ala_amk_tav as 'jarj. rahoitusmalliala amk'
	  , d11.jarjestys_OKM_ohjauksen_ala_yo_tav as 'jarj. rahoitusmalliala yo'
	  , d90.jarjestys_paatieteenala_koodi as 'jarj. paatieteenala'
	  , d90.jarjestys_tieteenala_koodi as 'jarj. tieteenala'
 FROM [VipunenTK].[dbo].f_TJ_4_3_Tutkinnon_suorittaneiden_paaasiallinen_toiminta f
 LEFT join antero.dw.d_organisaatioluokitus d3 on oppilaitos=d3.organisaatio_koodi
 LEFT JOIN VipunenTK.dbo.d_koulutusluokitus d11 on koulutusluokitus_id=d11.id
 left join VipunenTK.dbo.d_valtio d60 on kansalaisuus_maanosa_id=d60.id
 left join VipunenTK_lisatiedot.dbo.koulutuskoodin_tieteenala d59 on d59.koulutuskoodi=f.koulutusluokitus
 left join ANTERO.dw.d_tieteenala as d90 on 'TTHV_'+d90.tieteenala_koodi=d59.tieteenala_avain
 left join VipunenTK.dbo.d_paaasiallinen_toiminta_okm as d4 on paaasiallinen_toiminta_okm_id=d4.id
 Where aineisto='L' and tilastointivuosi>2010 and d11.koulutusaste2002_koodi in ('62','71','63','72','82') AND
 d3.organisaatio_koodi <> '02557' AND d3.organisaatio_koodi <> '10031'  AND NOT (sijoittuminen_1v_tutkinnon_jalkeen = 0 AND sijoittuminen_3v_tutkinnon_jalkeen = 0 AND sijoittuminen_5v_tutkinnon_jalkeen = 0)

 union all


     /****** ARVO ******/

SELECT vuosi
	  ,NULL as 'Aloituslukuvuosi (läpäisy)'
      , d3.organisaatio_fi
	  ,[Sektori]=case  when d3.organisaatio_fi in 
			('Aalto-yliopisto','Helsingin yliopisto','Itä-Suomen yliopisto','Jyväskylän yliopisto','Lapin yliopisto','Lappeenrannan tekn. yliopisto','Oulun yliopisto','Svenska handelshögskolan','Taideyliopisto','Tampereen tekn. yliopisto','Tampereen yliopisto','Turun yliopisto','Vaasan yliopisto','Åbo Akademi','Kuvataideakatemia','Sibelius-Akatemia','Teatterikorkeakoulu','Lappeenrannan teknillinen yliopisto', 'Tampereen teknillinen yliopisto') 
		then 'Yliopisto'
			else 'Ammattikorkeakoulu'
		end
	  ,NULL AS  'koulutusaste2002'
	  ,d12.okmohjauksenala_fi
	  , d2.OKM_ohjauksen_ala_amk_tav as 'Rahoitusmalliala (AMK)'
	  , d2.OKM_ohjauksen_ala_yo_tav as 'Rahoitusmalliala (YO)'
	  ,d12.koulutusastetaso1_fi
	  ,d12.koulutusastetaso2_fi
	  ,d12.koulutusalataso1_fi as 'Koulutusala, taso 1'
	  ,d12.koulutusalataso2_fi as 'Koulutusala, taso 2'
	  ,d12.koulutusalataso3_fi as 'Koulutusala, taso 3'
	  , d90.paatieteenala_nimi_fi as 'Päätieteenala'
	  , d90.tieteenala_nimi_fi as 'Tieteenala'
	  ,null as 'Tutkijanuravaihe'
      ,NULL AS 'koulutuksen_kunta'
      ,NULL AS 'kansalaisuus'
      ,NULL AS 'tutkinnot'
	  ,NULL AS '7v_aloittaneet_lkm'
	  ,NULL AS '5v_Aloittaneet_lkm'
	  ,NULL AS '7v_suorittaneet_lkm'
	  ,NULL AS '5v_suorittaneet_lkm'
	  ,NULL AS 'Läsnäolevat opiskelijat'--lasna
	  ,NULL AS '55op suorittaneet' --suorittanut55
	  ,NULL AS 'Läsnäolleet opiskelijat (1-14op)'
	  ,NULL AS 'lkm_op1_14'
	  ,NULL AS 'Opetus- ja tutkimushenkilökunta'
	  ,NULL AS 'IV tutkijanuraporras'
	  ,NULL AS 'Opetus- ja TKI henkilökunta'
	  ,NULL AS 'Ammattikorkeakoulun TKI-henkilökunta'
	  ,NULL as 'JulkaisuID'
	  ,NULL as 'Jufotaso'
	  ,NULL AS 'AMK Julkaisut (A-E)'
	  ,NULL AS 'AMK julkaisut (F ja I)'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 2 ja 3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1) jufotaso 1-3'
	  ,NULL AS 'YO kansainvälinen yhteisjulkaisu (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'Kilpailtu tutkimusrahoitus'
	  ,NULL AS 'Kilpailtu tutkimusrahoitus (SA,Tekes, EU-puiteohjelma)'
	  ,null AS 'kv_vaihtoopiskelijat_op_lkm'
	  ,null AS 'ulkom_hyv_op_lkm'
	  ,null AS 'erilopintooik_op_lkm'
	  ,null AS 'avoinamk_op_amk_lkm'
	  ,null AS 'mamu_op_lkm'
	  ,null AS 'erikoul_suor_op_lkm'
	  ,null AS 'sijoittuminen_1v_tutkinnon_jalkeen'
	  ,NULL AS 'Työlliset 1v tutkinnon jälkeen'
	  ,null AS 'sijoittuminen_3v_tutkinnon_jalkeen'
	  ,NULL as 'Työlliset 3v tutkinnon jälkeen'
	  ,case when (kyselypohja='KANDIPALAUTE') AND (d14.kysymysid in ('1150','1116','1168','1119','1147','1142','1139','1138','1117','1140','1120','1149','1136')) then numerovalinta else null end as 'Kandikyselyn pistemäärä'
	  ,case when kyselypohja='AVOP-AMK' and rahoitusmallikysymys='1' then 
		 case when d14.kysymysid in ('1477','73') and numerovalinta='0' then cast(7 as integer)
			when  d14.kysymysid in ('1477','73') and numerovalinta='1' then cast(5.5 as integer)
			when d14.kysymysid in ('1477','73') and numerovalinta='2' then cast(4 as integer)
			when d14.kysymysid in ('1477','73') and numerovalinta='3' then cast(2.5 as integer)
			when d14.kysymysid in ('1477','73') and numerovalinta='4' then cast(1 as integer)
			when d14.vastaustyyppi='arvosana7' then cast(numerovalinta as integer) else null
			end
		end as 'AVOP-AMK pistemäärä'
	  ,case when d14.kysymysryhmaid in ('10','11','12') and d13.kyselypohja='AVOP-AMK' then 
		 case when d14.kysymysid in ('1477','73') and numerovalinta='0' then cast(7 as integer)
			when  d14.kysymysid in ('1477','73') and numerovalinta='1' then cast(5.5 as integer)
			when d14.kysymysid in ('1477','73') and numerovalinta='2' then cast(4 as integer)
			when d14.kysymysid in ('1477','73') and numerovalinta='3' then cast(2.5 as integer)
			when d14.kysymysid in ('1477','73') and numerovalinta='4' then cast(1 as integer)
			when d14.vastaustyyppi='arvosana7' then cast(numerovalinta as integer) else null
			end
		end as 'AVOP-AMK Opiskelijapalaute_työelämä'
	  ,case when d14.kysymysryhmaid in ('10','11') and d13.kyselypohja='AVOP-YAMK' then 
		 case when d14.kysymysid in ('1477','73') and numerovalinta='0' then cast(7 as integer)
			when  d14.kysymysid in ('1477','73') and numerovalinta='1' then cast(5.5 as integer)
			when d14.kysymysid in ('1477','73') and numerovalinta='2' then cast(4 as integer)
			when d14.kysymysid in ('1477','73') and numerovalinta='3' then cast(2.5 as integer)
			when d14.kysymysid in ('1477','73') and numerovalinta='4' then cast(1 as integer)
			when d14.vastaustyyppi='arvosana7' then cast(numerovalinta as integer) else null
			end
		end as 'AVOP-YAMK Opiskelijapalaute_työelämä'
	  ,NULL as 'Ensisijainen hakija'
	  ,NULL as 'Paikan vastaanottaneet'
	  , d12.okmohjauksenala_koodi as 'Koodit OKM ohjauksen ala'
	  , d3.organisaatio_koodi as 'Koodit oppilaitos'
	  ,NULL as 'Koodit kunta'
	  , case when d12.jarjestys_koulutusastetaso1_koodi ='ööö' then null else d12.jarjestys_koulutusastetaso1_koodi end as 'jarj. koulutusaste, taso 1'
	  , case when d12.jarjestys_koulutusastetaso2_koodi ='ööö' then null else d12.jarjestys_koulutusastetaso2_koodi end as 'jarj. koulutusaste, taso 2'
	  , case 
			when d12.okmohjauksenala_koodi='1' then 1 
			when d12.okmohjauksenala_koodi='2' then 2 
			when d12.okmohjauksenala_koodi='3' then 3 
			when d12.okmohjauksenala_koodi='4' then 4
			when d12.okmohjauksenala_koodi='5' then 5
			when d12.okmohjauksenala_koodi='6' then 6
			when d12.okmohjauksenala_koodi='7' then 7
			when d12.okmohjauksenala_koodi='8' then 8  
			when d12.okmohjauksenala_koodi='9' then 9
			when d12.okmohjauksenala_koodi='10' then 10
			when d12.okmohjauksenala_koodi='11' then 11
			when d12.okmohjauksenala_koodi='12' then 12 
			when d12.okmohjauksenala_koodi='-1' then 99999
		end as 'jarj. OKM ohjauksen ala'
	  , d2.jarjestys_OKM_ohjauksen_ala_amk_tav as 'jarj. rahoitusmalliala amk'
	  , d2.jarjestys_OKM_ohjauksen_ala_yo_tav as 'jarj. rahoitusmalliala yo'
	  , d90.jarjestys_paatieteenala_koodi as 'jarj. paatieteenala'
	  , d90.jarjestys_tieteenala_koodi as 'jarj. tieteenala'
	  FROM [ANTERO].dw.f_arvo f
 left join antero.dw.d_organisaatioluokitus d3 on d_organisaatio_id= d3.id
 left JOIN ANTERO.dw.d_koulutusluokitus d12 on d_koulutusluokitus_id=d12.id
 left join antero.dw.d_arvokyselykerta d13 on d_arvokyselykerta_id=d13.id
 left join antero.dw.d_arvokysymys d14 on d_arvokysymys_id=d14.id
 left join VipunenTK.dbo.d_koulutusluokitus d2 on d2.koulutusluokitus_avain=d12.koulutusluokitus_koodi
 left join VipunenTK_lisatiedot.dbo.koulutuskoodin_tieteenala d59 on d59.koulutuskoodi=d2.koulutusluokitus_avain
 left join ANTERO.dw.d_tieteenala as d90 on 'TTHV_'+d90.tieteenala_koodi=d59.tieteenala_avain
 where kyselypohja in ('KANDIPALAUTE','AVOP-AMK') and d3.oppilaitostyyppi_koodi in ('41','42')

 union all


 /****** HAKU ja valinta ******/

SELECT koulutuksen_alkamisvuosi
	  ,NULL as 'Aloituslukuvuosi (läpäisy)'
      , d3.organisaatio_fi
	  ,[Sektori]=case  when d3.organisaatio_fi in 
			('Aalto-yliopisto','Helsingin yliopisto','Itä-Suomen yliopisto','Jyväskylän yliopisto','Lapin yliopisto','Lappeenrannan tekn. yliopisto','Oulun yliopisto','Svenska handelshögskolan','Taideyliopisto','Tampereen tekn. yliopisto','Tampereen yliopisto','Turun yliopisto','Vaasan yliopisto','Åbo Akademi','Kuvataideakatemia','Sibelius-Akatemia','Teatterikorkeakoulu','Lappeenrannan teknillinen yliopisto', 'Tampereen teknillinen yliopisto') 
		then 'Yliopisto'
			else 'Ammattikorkeakoulu'
		end
	  ,d12.koulutusaste2002_fi AS  'koulutusaste2002'
	  ,d12.okmohjauksenala_fi
	  ,d2.OKM_ohjauksen_ala_amk_tav as 'Rahoitusmalliala (AMK)'
	  ,d2.OKM_ohjauksen_ala_yo_tav as 'Rahoitusmalliala (YO)'
	  ,d12.koulutusastetaso1_fi
	  ,d12.koulutusastetaso2_fi
	  ,d12.koulutusalataso1_fi as 'Koulutusala, taso 1'
	  ,d12.koulutusalataso2_fi as 'Koulutusala, taso 2'
	  ,d12.koulutusalataso3_fi as 'Koulutusala, taso 3'
	  ,d90.paatieteenala_nimi_fi as 'Päätieteenala'
	  ,d90.tieteenala_nimi_fi as 'Tieteenala'
	  ,null as 'Tutkijanuravaihe'
      ,NULL AS 'koulutuksen_kunta'
      ,NULL AS 'kansalaisuus'
      ,NULL AS 'tutkinnot'
	  ,NULL AS '7v_aloittaneet_lkm'
	  ,NULL AS '5v_Aloittaneet_lkm'
	  ,NULL AS '7v_suorittaneet_lkm'
	  ,NULL AS '5v_suorittaneet_lkm'
	  ,NULL AS 'Läsnäolevat opiskelijat'--lasna
	  ,NULL AS '55op suorittaneet' --suorittanut55
	  ,NULL AS 'Läsnäolleet opiskelijat (1-14op)'
	  ,NULL AS 'lkm_op1_14'
	  ,NULL AS 'Opetus- ja tutkimushenkilökunta'
	  ,NULL AS 'IV tutkijanuraporras'
	  ,NULL AS 'Opetus- ja TKI henkilökunta'
	  ,NULL AS 'Ammattikorkeakoulun TKI-henkilökunta'
	  ,NULL as 'JulkaisuID'
	  ,NULL as 'Jufotaso'
	  ,NULL AS 'AMK Julkaisut (A-E)'
	  ,NULL AS 'AMK julkaisut (F ja I)'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 2 ja 3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'YO Julkaisut (A1-A4, C1) jufotaso 1-3'
	  ,NULL AS 'YO kansainvälinen yhteisjulkaisu (A1-A4, C1 ja C2) jufotaso 1-3'
	  ,NULL AS 'Kilpailtu tutkimusrahoitus'
	  ,NULL AS 'Kilpailtu tutkimusrahoitus (SA,Tekes, EU-puiteohjelma)'
	  ,null AS 'kv_vaihtoopiskelijat_op_lkm'
	  ,null AS 'ulkom_hyv_op_lkm'
	  ,null AS 'erilopintooik_op_lkm'
	  ,null AS 'avoinamk_op_amk_lkm'
	  ,null AS 'mamu_op_lkm'
	  ,null AS 'erikoul_suor_op_lkm'
	  ,null AS 'sijoittuminen_1v_tutkinnon_jalkeen'
	  ,NULL AS 'Työlliset 1v tutkinnon jälkeen'
	  ,null AS 'sijoittuminen_3v_tutkinnon_jalkeen'
	  ,NULL as 'Työlliset 3v tutkinnon jälkeen'
	  ,NULL as 'Kandikyselyn pistemäärä'
	  ,NULL as 'AVOP-AMK pistemäärä'
	  ,NULL as 'AVOP-AMK Opiskelijapalaute_työelämä'
	  ,NULL as 'AVOP-YAMK Opiskelijapalaute_työelämä' 
	  ,case when d_hakukohde_id=d_hakukohde_ensisijainen_id then 1 else null end as 'Ensisijainen hakija'
	  ,case when f.vastaanoton_tila='VASTAANOTTANUT_SITOVASTI' then 1 else null end as 'Paikan vastaanottaneet'
	  , d12.okmohjauksenala_koodi as 'Koodit OKM ohjauksen ala'
	  , d3.organisaatio_koodi as 'Koodit oppilaitos'
	  ,NULL as 'Koodit kunta'
	  , case when d12.jarjestys_koulutusastetaso1_koodi ='ööö' then null else d12.jarjestys_koulutusastetaso1_koodi end as 'jarj. koulutusaste, taso 1'
	  , case when d12.jarjestys_koulutusastetaso2_koodi ='ööö' then null else d12.jarjestys_koulutusastetaso2_koodi end as 'jarj. koulutusaste, taso 2'
	  , case 
			when d12.okmohjauksenala_koodi='1' then 1 
			when d12.okmohjauksenala_koodi='2' then 2 
			when d12.okmohjauksenala_koodi='3' then 3 
			when d12.okmohjauksenala_koodi='4' then 4
			when d12.okmohjauksenala_koodi='5' then 5
			when d12.okmohjauksenala_koodi='6' then 6
			when d12.okmohjauksenala_koodi='7' then 7
			when d12.okmohjauksenala_koodi='8' then 8  
			when d12.okmohjauksenala_koodi='9' then 9
			when d12.okmohjauksenala_koodi='10' then 10
			when d12.okmohjauksenala_koodi='11' then 11
			when d12.okmohjauksenala_koodi='12' then 12 
			when d12.okmohjauksenala_koodi='-1' then 99999
		end as 'jarj. OKM ohjauksen ala'
	  , d2.jarjestys_OKM_ohjauksen_ala_amk_tav as 'jarj. rahoitusmalliala amk'
	  , d2.jarjestys_OKM_ohjauksen_ala_yo_tav as 'jarj. rahoitusmalliala yo'
	  , d90.jarjestys_paatieteenala_koodi as 'jarj. paatieteenala'
	  , d90.jarjestys_tieteenala_koodi as 'jarj. tieteenala'
	  FROM [ANTERO].dw.f_haku_ja_valinta_hakeneet_korkea_aste as f
	left join antero.dw.d_organisaatioluokitus d3 on d_organisaatio_koulutuksen_jarjestaja_id= d3.id
	left JOIN ANTERO.dw.d_koulutusluokitus d12 on d_koulutusluokitus_hakukohde_id=d12.id
	left join VipunenTK.dbo.d_koulutusluokitus d2 on d2.koulutusluokitus_avain=d12.koulutusluokitus_koodi
	left join VipunenTK_lisatiedot.dbo.koulutuskoodin_tieteenala d59 on d59.koulutuskoodi=d2.koulutusluokitus_avain
	left join ANTERO.dw.d_tieteenala as d90 on 'TTHV_'+d90.tieteenala_koodi=d59.tieteenala_avain
	left join antero.dw.d_hakukohde as d5 on f.d_hakukohde_id=d5.id
	left join antero.dw.d_haku as d6 on f.d_haku_id=d6.id


GO
USE [ANTERO]

