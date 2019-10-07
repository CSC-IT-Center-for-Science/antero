


ALTER view [dw].[v_st_erilliset_opinto_oikeudet] as

select 

[Tilastovuosi] = vuosi

,Koulutusala = 'Tuntematon'
,[OKM ohjauksen ala] = 'Tuntematon'

,[Yliopisto] = d6.yo_nimi_fi

--mittarit
,f.suorittaneiden_lkm
,f.opettajakoulutus_suorittaneiden_lkm
,erillisilla_oik_op_lkm = null
,erillisilla_oik_opkoul_op_lkm = null

--koodit
,[Koodit Yliopisto] = d6.yo_tunnus
,[Koodit Koulutusala] = 99
,[Koodit OKM ohjauksen ala] = 99

from [dw].[f_yo_erillisella_opinto_oikeudella_opiskelevat] f
join dw.d_yo d6 on d6.id=f.d_yliopisto_id

union all

select 

[Tilastovuosi] = f.vuosi

,Koulutusala = d1.opintoala95_nimi_fi
,[OKM ohjauksen ala] = d2.ohjauksenala_nimi_fi

,[Yliopisto] = case d6.yo_nimi_fi when 'Turun yliopisto (-2009)' then 'Turun yliopisto' else d6.yo_nimi_fi end

--mittarit
,null
,null
,[erillisilla_oik_op_lkm]
,[erillisilla_oik_opkoul_op_lkm]

--koodit
,[Koodit Yliopisto] = d6.yo_tunnus
,[Koodit Koulutusala] = case d1.opintoala95_koodi when -1 then 99 else d1.opintoala95_koodi end
,[Koodit OKM ohjauksen ala] = d2.ohjauksenala_koodi


from [dw].[f_yo_opintopisteet] f
left join dw.d_opintoala95 d1 on d1.id=f.d_opintoala95_id
join dw.d_ohjauksenala d2 on d2.id=f.d_ohjauksenala_id
join dw.d_yo d6 on d6.id=f.d_yo_id
left join dw.d_kalenteri d7 on d7.id=f.d_tilannepvm_id

where (d7.paivays like '%-03-02' and f.vuosi>=2016) or f.vuosi<2016




