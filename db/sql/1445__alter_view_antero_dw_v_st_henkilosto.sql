﻿USE [ANTERO]
GO

/****** Object:  View [dw].[v_st_henkilosto]    Script Date: 15.3.2018 14:06:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE view [dw].[v_st_henkilosto] as
--amk
select
Tilastovuosi = vuosi

,Sukupuoli = d1.sukupuoli_fi
,Kansalaisuus = case when d2.maatjavaltiot2_fi in ('Suomi','Ahvenanmaa') then 'Suomi' else d2.maanosa_fi end
,Tehtäväjaottelu = d3.selite_fi
,[Tutkijanuravaihe tai tuntiopettajuus] = null
,[Henkilöstöryhmä] = null
,[Henkilöstöryhmä (harjoittelukoulut)] = null
,[Merkittävimmän tutkinnon taso] = d8.selite_fi
,[Muun henkilöstön henkilöstöryhmä] = d9.selite_fi
,[Työsuhteen nimitystapa] = d10.selite_fi

,[Sektori] = 'Ammattikorkeakoulutus'
,[Koulutusala 02] = d4.selite_fi
,[Koulutusala 95] = null
,[OKM ohjauksen ala] = d5.ohjauksenala_nimi_fi
,Päätieteenala = d6.paatieteenala_nimi_fi
,Tieteenala = d6.tieteenala_nimi_fi

,Ammattikorkeakoulu = d7.amk_nimi_fi
,Yliopisto = null

--enkku
,[Statistical year] = vuosi

,Gender = d1.sukupuoli_en
,Nationality = case when d2.maatjavaltiot2_en in ('Finland','Åland Islands') then 'Finland' else d2.maanosa_en end
,[Task categorisation] = d3.selite_en
,[Research career phase or hourly teaching] = null
,[Personnel group] = null
,[Personnel group (teacher training schools)] = null
,[Level of the most significant degree] = d8.selite_en
,[Personnel group of other staff] = d9.selite_en
,[Employment relationship] = d10.selite_en

,[Sector] = 'University of applied sciences education'
,[Field of education 02] = d4.selite_en
,[Field of education 95] = null
,[Field of education - HE steering] = d5.ohjauksenala_nimi_en
,[Main discipline] = d6.paatieteenala_nimi_en
,Discipline = d6.tieteenala_nimi_en

,[University of applied sciences] = d7.amk_nimi_en
,University = null

--ruotsi
,Statistikår = vuosi

,Kön = d1.sukupuoli_sv
,Medborgarskap = case when d2.maatjavaltiot2_sv in ('Finland','Åland') then 'Finland' else d2.maanosa_sv end
,Uppgiftsindelning = d3.selite_sv
,[Forskarkarriärens skede eller timundervisning] = null
,[Personalgrupp] = null
,[Personalgrupp (övningsskolor)] = null
,[Den mest betydande examens nivå] = d8.selite_sv
,[Övriga personal personalgrupp] = d9.selite_sv
,[Typ av anställningsförhållande] = d10.selite_sv

,[Sektor] = 'Yrkeshögskoleutbildning'
,[Utbildningsområde 02] = d4.selite_sv
,[Utbildningsområde 95] = null
,[UKM-styrningsområde​] = d5.ohjauksenala_nimi_sv
,[Huvudsakligt vetenskapsområde] = d6.paatieteenala_nimi_sv
,Vetenskapsområde = d6.tieteenala_nimi_sv

,Yrkeshögskola = d7.amk_nimi_sv
,Universitet = null

--mittarit
,[henkilotyovuosi]

--koodit
,[Koodit Tehtäväjaottelu] = d3.koodi
,[Koodit Ammattikorkeakoulu] = d7.amk_tunnus
,[Koodit Yliopisto] = null
,[Koodit Henkilöstöryhmä] = null
,[Koodit OKM ohjauksen ala] = case d5.ohjauksenala_koodi when -1 then 99 else d5.ohjauksenala_koodi end
,[Koodit Tieteenala] = d6.tieteenala_koodi
,[Koodit Päätieteenala] = d6.paatieteenala_koodi
,[Koodit Merkittävimmän tutkinnon taso] = d8.koodi
,[Koodit Muun henkilöstön henkilöstöryhmä] = d9.koodi
,[Koodit Työsuhteen nimitystapa] = d10.koodi

--järjestykset
,[Kansalaisuus järj] =
  case
  when d2.maatjavaltiot2_fi in ('Suomi','Ahvenanmaa') then 1
  when d2.maatjavaltiot2_koodi = '-1' then 9
  when d2.maanosa_koodi = '-1' then 9
  when d2.maanosa_koodi in ('2A','2B') then 2+1
  else cast(d2.maanosa_koodi as int)+1
  end

from [dw].[f_amk_henkilon_tyo] f
left join dw.d_sukupuoli d1 on d1.id=f.d_sukupuoli_id
left join dw.d_maatjavaltiot2 d2 on d2.id=f.d_maa_id
left join dw.d_amk_tehtavanjaottelu d3 on d3.id=f.d_tehtavanjaottelu
left join dw.d_koulutusala_2002 d4 on d4.id=f.d_koulutusala02_id
left join dw.d_ohjauksenala d5 on d5.id=f.d_ohjauksenala_id
left join dw.d_tieteenala d6 on d6.id=f.d_tieteenala_id
left join dw.d_amk d7 on d7.id=f.d_amk_id
left join dw.d_tutkinnon_taso d8 on d8.id=f.d_tutkinnon_taso
left join dw.d_amk_muun_henkilokunnan_henkilostoryhma d9 on d9.id=f.d_muun_henkiloston_henkilostoryhma_id
left join dw.d_yo_nimitystapa d10 on d10.id=f.d_nimitystapa_id

UNION ALL

--yo
select 
Tilastovuosi = vuosi

,Sukupuoli = d1.sukupuoli_fi
,Kansalaisuus = case when d2.maatjavaltiot2_fi in ('Suomi','Ahvenanmaa') then 'Suomi' else d2.maanosa_fi end
,Tehtäväjaottelu = d3.selite_fi
,[Tutkijanuravaihe tai tuntiopettajuus] = d8.selite_fi
,[Henkilöstöryhmä] = d9.selite_fi
,[Henkilöstöryhmä (harjoittelukoulut)] = d10.selite_fi
,[Tutkinnon taso] = null
,[Muun henkilöstön henkilöstöryhmä] = null
,[Työsuhteen nimitystapa] = d11.selite_fi

,[Sektori] = 'Yliopistokoulutus'
,[Koulutusala 02] = null
,[Koulutusala 95] = d4.selite_fi
,[OKM ohjauksen ala] = d5.ohjauksenala_nimi_fi
,Päätieteenala = d6.paatieteenala_nimi_fi
,Tieteenala = d6.tieteenala_nimi_fi

,Ammattikorkeakoulu = null
,Yliopisto = d7.yo_nimi_fi

--enkku
,[Statistical year]  = vuosi

,Gender = d1.sukupuoli_en
,Nationality = case when d2.maatjavaltiot2_en in ('Finland','Åland Islands') then 'Finland' else d2.maanosa_en end
,[Task categorisation] = d3.selite_en
,[Research career phase or hourly teaching] = d8.selite_en
,[Personnel group] =d9.selite_en
,[Personnel group (teacher training schools)] = d10.selite_en
,[Level of the most significant degree] = null
,[Personnel group of other staff] = null
,[Employment relationship] = d11.selite_en

,[Sector] = 'University education'
,[Field of education 02] = null
,[Field of education 95] = d4.selite_en
,[Field of education - HE steering] = d5.ohjauksenala_nimi_en
,[Main discipline] = d6.paatieteenala_nimi_en
,Discipline = d6.tieteenala_nimi_en

,[University of applied sciences] = null
,University = d7.yo_nimi_en

--ruotsi
,Statistikår = vuosi

,Kön = d1.sukupuoli_sv
,Medborgarskap = case when d2.maatjavaltiot2_sv in ('Finland','Åland') then 'Finland' else d2.maanosa_sv end
,Uppgiftsindelning = d3.selite_sv
,[Forskarkarriärens skede eller timundervisning] = d8.selite_sv
,[Personalgrupp] = d9.selite_sv
,[Personalgrupp (övningsskolor)] = d10.selite_sv
,[Merkittävimmän tutkinnon taso] = null
,[Övriga personal personalgrupp] = null
,[Den mest betydande examens nivå] = d11.selite_sv

,[Sektor] = 'Universitetsutbildning'
,[Utbildningsområde 02] = null
,[Utbildningsområde 95] = d4.selite_sv
,[UKM-styrningsområde​] = d5.ohjauksenala_nimi_sv
,[Huvudsakligt vetenskapsområde] = d6.paatieteenala_nimi_sv
,Vetenskapsområde = d6.tieteenala_nimi_sv

,Yrkeshögskola = null
,Universitet =  d7.yo_nimi_sv

--mittarit
,[henkilotyovuosi]

--koodit
,[Koodit Tehtäväjaottelu] = case when d3.selite_fi='Muu henkilökunta' then 3 else d3.koodi end
,[Koodit Ammattikorkeakoulu] = null
,[Koodit Yliopisto] = d7.yo_tunnus
,[Koodit Henkilöstöryhmä] = d10.koodi
,[Koodit OKM ohjauksen ala] = case d5.ohjauksenala_koodi when -1 then 99 else d5.ohjauksenala_koodi end
,[Koodit Tieteenala] = d6.tieteenala_koodi
,[Koodit Päätieteenala] = d6.paatieteenala_koodi
,[Koodit Merkittävimmän tutkinnon taso] = 9
,[Koodit Muun henkilöstön henkilöstöryhmä] = 9
,[Koodit Työsuhteen nimitystapa] = d11.koodi

--järjestykset
,[Kansalaisuus järj] =
  case
  when d2.maatjavaltiot2_fi in ('Suomi','Ahvenanmaa') then 1
  when d2.maatjavaltiot2_koodi = '-1' then 9
  when d2.maanosa_koodi = '-1' then 9
  when d2.maanosa_koodi in ('2A','2B') then 2+1
  else cast(d2.maanosa_koodi as int)+1
  end

from [dw].[f_yo_henkilon_tyo] f
left join dw.d_sukupuoli d1 on d1.id=f.d_sukupuoli_id
left join dw.d_maatjavaltiot2 d2 on d2.id=f.d_kansalaisuus_id
left join dw.d_yo_tehtavanjaottelu d3 on d3.id=f.d_tehtavanjaottelu_id
left join dw.d_koulutusala_1995 d4 on d4.id=f.d_koulutusala_id
left join dw.d_ohjauksenala d5 on d5.id=f.d_ohjauksenala_id
left join dw.d_tieteenala d6 on d6.id=f.d_tieteenala_id
left join dw.d_yo d7 on d7.id=f.d_yliopisto_id
left join dw.d_yo_tutkijanuravaihe d8 on d8.id=f.d_tutkijanuravaihe_id
left join dw.d_yo_henkilostoryhma d9 on d9.id=f.d_henkilostoryhma_id
left join dw.d_yo_harjoittelukoulujen_henkilostoryhma d10 on d10.id=f.d_harjoittelukoulujen_henkilostoryhma_id
left join dw.d_yo_nimitystapa d11 on d11.id=f.d_nimitystapa_id


GO


