USE [ANTERO]
GO
/****** Object:  View [dw].[v_virta_otp_55_tilasto]    Script Date: 11.6.2018 15:25:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dw].[v_virta_otp_55_tilasto]'))
EXEC dbo.sp_executesql @statement = N'



CREATE VIEW [dw].[v_virta_otp_55_tilasto] AS

select 
      --suomi
      [Tilastovuosi] = f.[vuosi]
	  ,[Lukuvuosi] = cast(f.vuosi-1 as nvarchar)+''/''+cast(f.vuosi as nvarchar)
	  ,[Aika aloittamisesta] = coalesce(
		case 
			when f.vuosi-((year(lasna_aloituspvm))+case when month(lasna_aloituspvm)>7 then 1 else 0 end) >= 8 then ''8 tai enemmän'' 
			when f.vuosi-((year(lasna_aloituspvm))+case when month(lasna_aloituspvm)>7 then 1 else 0 end) < 0 then ''Ei tietoa''
			else cast(f.vuosi-((year(lasna_aloituspvm))+case when month(lasna_aloituspvm)>7 then 1 else 0 end) as varchar) 
		end,''Ei tietoa'')
	  ,[Henkilo_koodi] = f.henkilokoodi
	  ,[Sukupuoli] = d3.sukupuoli_fi
	  ,[Ikäryhmä] = d4.ikaryhma2_fi
      ,[uusi_opisk] = f.uusi_Opisk
	  ,[Aloittanut keväällä] = d5.kytkin_fi
      ,[Olo syksy] = f.lasna_syksy_edellinen
	  ,[Olo kevät] = f.lasna_kevat
	  ,[Lasna] = case when f.lasna_syksy_edellinen=1 or f.lasna_kevat=1 then 1 else 0 end
	  ,[Suorittanut55] = case when f.[suorittanut27]=1 or f.[suorittanut55ilmanPankkia]=1 or f.[suorittanut55PankinAvulla]=1 then 1 else 0 end
      ,[Opintopisteet syksy] = f.opintopisteet_syksy
      ,[Opintopisteet kevät] = f.opintopisteet_kevat
	  
	  ,[Sektori] = 	d1.oppilaitostyyppi_fi
	  ,[Korkeakoulu] = d1.organisaatio_fi
      ,[Tutkintokoodi] = d2.koulutusluokitus_koodi
	  ,[Tutkinto]  = d2.koulutusluokitus_fi
	  ,[OKM ohjauksen ala] = d2.okmohjauksenala_fi
	  ,[Koulutusaste, taso 1] = d2.koulutusastetaso1_fi
	  ,[Koulutusaste, taso 2] = d2.Koulutusastetaso2_fi
	  ,[Koulutusala, taso 1] = d2.koulutusalataso1_fi
	  ,[Koulutusala, taso 2] = d2.koulutusalataso2_fi
	  ,[Koulutusala, taso 3] = d2.koulutusalataso3_fi

      ,f.[suorittanut27]
      ,f.[suorittanut55IlmanPankkia]
      ,f.[suorittanut55PankinAvulla]

	  --ruotsi
	  ,[Statistikår] = f.[vuosi]
	  ,[Läsår] = cast(f.vuosi-1 as nvarchar)+''/''+cast(f.vuosi as nvarchar)
	  ,[Inlett studierna] = coalesce(
		case 
			when f.vuosi-((year(lasna_aloituspvm))+case when month(lasna_aloituspvm)>7 then 1 else 0 end) >= 8 then ''8 eller mer'' 
			when f.vuosi-((year(lasna_aloituspvm))+case when month(lasna_aloituspvm)>7 then 1 else 0 end) < 0 then ''Information saknas''
			else cast(f.vuosi-((year(lasna_aloituspvm))+case when month(lasna_aloituspvm)>7 then 1 else 0 end) as varchar) 
		end,''Information saknas'')
	  ,[Kön] = d3.sukupuoli_sv
	  ,[Åldersgrupp] = d4.ikaryhma2_sv
	  ,[Inlett studierna på våren] = d5.kytkin_sv 
	  ,[Sektor] = d1.oppilaitostyyppi_sv
	  ,[Högskola] = d1.organisaatio_sv
      ,[Examenskod] = d2.koulutusluokitus_koodi
	  ,[Examen]  = d2.koulutusluokitus_sv
	  ,[UKM-styrningsområde] = d2.okmohjauksenala_sv
	  ,[Utbildningsnivå, nivå 1] = d2.koulutusastetaso1_sv
	  ,[Utbildningsnivå, nivå 2] = d2.Koulutusastetaso2_sv
	  ,[Utbildningsområde, nivå 1] = d2.koulutusalataso1_sv
	  ,[Utbildningsområde, nivå 2] = d2.koulutusalataso2_sv
	  ,[Utbildningsområde, nivå 3] = d2.koulutusalataso3_sv

	  --englanti
	  ,[Statistical year] = f.[vuosi]
	  ,[Term] = cast(f.vuosi-1 as nvarchar)+''/''+cast(f.vuosi as nvarchar)
	  ,[Time since the beginning of studies] = coalesce(
		case 
			when f.vuosi-((year(lasna_aloituspvm))+case when month(lasna_aloituspvm)>7 then 1 else 0 end) >= 8 then ''8 or more'' 
			when f.vuosi-((year(lasna_aloituspvm))+case when month(lasna_aloituspvm)>7 then 1 else 0 end) < 0 then ''Missing data''
			else cast(f.vuosi-((year(lasna_aloituspvm))+case when month(lasna_aloituspvm)>7 then 1 else 0 end) as varchar) 
		end,''Missing data'')
	  ,[Gender] = d3.sukupuoli_en
	  ,[Age group] = d4.ikaryhma2_en
	  ,[Started studies in the spring] = d5.kytkin_en
	  ,[Sector] = d1.oppilaitostyyppi_en
	  ,[Higher education institution] = d1.organisaatio_en
      ,[Code of degree] = d2.koulutusluokitus_koodi
	  ,[Degree]  = d2.koulutusluokitus_en
	  ,[Field of education - HE steering] = d2.okmohjauksenala_en
	  ,[Level of education, tier 1] = d2.koulutusastetaso1_en
	  ,[Level of education, tier 2] = d2.Koulutusastetaso2_en
	  ,[Field of education, tier 1] = d2.koulutusalataso1_en
	  ,[Field of education, tier 2] = d2.koulutusalataso2_en
	  ,[Field of education, tier 3] = d2.koulutusalataso3_en

	  --järjestys
	  ,[Sukupuoli jarj] = d3.jarjestys_sukupuoli_koodi
	  ,[Ikäryhmä jarj] = d4.jarjestys_ikaryhma2
	  ,[Sektori jarj] = d2.jarjestys_koulutussektori_koodi
	  ,[OKM ohjauksen ala jarj] = d2.jarjestys_okmohjauksenala_koodi
	  ,[Koulutusaste, taso 1 jarj] = d2.jarjestys_koulutusastetaso1_koodi
	  ,[Koulutusaste, taso 2 jarj] = d2.jarjestys_koulutusastetaso2_koodi
	  ,[Koulutusala, taso 1 jarj] = d2.jarjestys_koulutusalataso1_koodi
	  ,[Koulutusala, taso 2 jarj] = d2.jarjestys_koulutusalataso1_koodi
	  ,[Koulutusala, taso 3 jarj] = d2.jarjestys_koulutusalataso1_koodi
   

  FROM [ANTERO].[dw].f_virta_otp_55_tilasto f

LEFT JOIN ANTERO.dw.d_organisaatioluokitus d1 on d1.id=f.d_organisaatio_id
LEFT JOIN ANTERO.dw.d_koulutusluokitus d2 on d2.id=f.d_koulutusluokitus_id
LEFT JOIN ANTERO.dw.d_sukupuoli d3 on d3.id=f.d_sukupuoli_id
LEFT JOIN ANTERO.dw.d_ika d4 on d4.id=f.d_ika_id
LEFT JOIN ANTERO.dw.d_kytkin d5 on d5.jarjestys_kytkin_koodi=f.uusi_opisk_kevat


' 
