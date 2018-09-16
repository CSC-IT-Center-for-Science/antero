-- v_virta_otp_tavoiteajassa_tutkinnon_suorittaneet_poissaolot tiedot mukana näkymä
 
IF NOT EXISTS ( SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dw.v_virta_otp_tavoiteajassa_tutkinnon_suorittaneet_poissaolot') )
	EXEC dbo.sp_executesql @statement = N'CREATE VIEW dw.v_virta_otp_tavoiteajassa_tutkinnon_suorittaneet_poissaolot AS select 1 AS a'
GO

ALTER VIEW  dw.v_virta_otp_tavoiteajassa_tutkinnon_suorittaneet_poissaolot 
AS
		SELECT   			 		   
			  [Korkeakoulu] = d1.organisaatio_fi
			, [Tutkinnon suorittamisvuosi] = f.tutkintovuosi			  
			, [Tutkintokoodi] = coalesce(f.tutkintokoodi,'999999')
			, [Tutkinto]  = coalesce(d2.koulutusluokitus_fi,'Tuntematon') 
			, [Tutkinnon vaadittu op laajuus] = f.vaadittuop  
			, [Tavoiteaika lukukaudet] = f.tavoitelukukaudet			 
			, [Tutkinnon aloitusvuosi] = f.aloitusvuosi  		     
			, [Tavoite ajassa valmistunut] = case f.tavoiteajassavalmistunut when 1 then 'Kyllä' when 0 then 'Ei' else 'Tuntematon' end 						 
			, f.tavoiteajassavalmistunut			 
			, [Tutkintosuoritus aika vuosia] = f.vuosia
			, [Tutkintosuoritus aika lukukausia] = f.kaytetytlukukaudet					
			
			, [Poissaolokausia ei kuluta opiskeluaikaa syy] = coalesce(f.kaytetytpoissakoodi3kaudet,0)
			, [Poissaolopäiviä ei kuluta opiskeluaikaa syy] = coalesce(f.kaytetytpoissakoodi3paivia,0)
		
			, [Poissaolokausia muu syy] = coalesce(f.kaytetytpoissakoodi2kaudet,0)
			, [Poissaolopäiviä muu syy] = coalesce(f.kaytetytpoissakoodi2paivia,0)	
			
			, [Tutkintosuoritus aika päiviä] = f.paivia			 
			, [Aiempi korkeakoulututkinto] = case f.onaiempitutkinto when 1 then 'Kyllä' when 0 then 'Ei' else 'Tuntematon' end 			 
			, f.onaiempitutkinto 			 
			, [Henkilo_koodi] = opiskelijaavain+opiskeluoikeusAvain+d1.organisaatio_koodi			 
			, [Sukupuoli] = coalesce(d3.sukupuoli_fi,'Tuntematon')
			, [Ikä] = coalesce(f.ika,'Tuntematon')
			, [Ikäryhmä] = coalesce(d4.ikaryhma1_fi,'Tuntematon')		
			, [Sektori] = 
				case 
					when d1.organisaatio_fi in 
					('Aalto-yliopisto',
					'Helsingin yliopisto',
					'Itä-Suomen yliopisto',
					'Jyväskylän yliopisto',
					'Lapin yliopisto',
					'Lappeenrannan teknillinen yliopisto',
					'Oulun yliopisto',
					'Svenska handelshögskolan',
					'Taideyliopisto',
					'Tampereen teknillinen yliopisto',
					'Tampereen yliopisto',
					'Turun yliopisto',
					'Vaasan yliopisto',
					'Åbo Akademi') then 'Yliopisto'
					else 'Ammattikorkeakoulu'
				end
			
			, [OKM ohjauksen ala] = coalesce(d2.okmohjauksenala_fi,'Tuntematon')
			, [Koulutusaste, taso 1] = coalesce(d2.koulutusastetaso1_fi,'Tuntematon')
			, [Koulutusaste, taso 2] = coalesce(d2.Koulutusastetaso2_fi,'Tuntematon')
			, [Koulutusala, taso 1] = coalesce(d2.koulutusalataso1_fi,'Tuntematon')
			, [Koulutusala, taso 2] = coalesce(d2.koulutusalataso2_fi,'Tuntematon')
			, [Koulutusala, taso 3] = coalesce(d2.koulutusalataso3_fi,'Tuntematon')

				-- Järjestys
			, [OKM ohjauksen ala jarj] = coalesce(d2.jarjestys_okmohjauksenala_koodi,'99999')
			, [Koulutusaste, taso 1 jarj] = coalesce(d2.jarjestys_koulutusastetaso1_koodi,'99999')
			, [Koulutusaste, taso 2 jarj] = coalesce(d2.jarjestys_koulutusastetaso2_koodi,'99999')
			, [Koulutusala, taso 1 jarj] = coalesce(d2.jarjestys_koulutusalataso1_koodi,'99999')
			, [Koulutusala, taso 2 jarj] = coalesce(d2.jarjestys_koulutusalataso1_koodi,'99999')
			, [Koulutusala, taso 3 jarj] = coalesce(d2.jarjestys_koulutusalataso1_koodi,'99999')
			
			, [Ikä jarj] 			= coalesce(d4.jarjestys_ika,'999')
			, [Ikäryhmä jarj]		= coalesce(d4.jarjestys_ikaryhma1,'999')			  				  
			  
	FROM 	ANTERO.sa.sa_virta_otp_tavoiteajassa_tutkinnon_suorittaneet f 
				LEFT JOIN ANTERO.dw.d_organisaatioluokitus d1 on d1.organisaatio_koodi	=	f.oppilaitosnro
				LEFT JOIN ANTERO.dw.d_koulutusluokitus d2 on d2.koulutusluokitus_koodi	=	f.tutkintokoodi
				LEFT JOIN ANTERO.dw.d_sukupuoli d3 on d3.sukupuoli_koodi	=	f.sukupuoli
				LEFT JOIN ANTERO.dw.d_ika d4 ON d4.ika_avain  = f.ika	  			  
