


ALTER VIEW [dw].[v_virta_jtp_tilasto] AS

SELECT
Tilastovuosi
,[Koodit Sektori]
,[Sektori]
,[Sektor]
,[Sector]
,[Koodit Organisaatio]
,[Organisaatio]
,[OrganisationSV]
,[OrganisationEN]
,[Koodit Julkaisufoorumitaso]
,[Julkaisufoorumitaso]
,[JulkaisufoorumitasoSV]
,[JulkaisufoorumitasoEN]
,[Koodit Julkaisun pääluokka]
,[Julkaisun pääluokka]
,[Julkaisun pääluokkaSV]
,[Julkaisun pääluokkaEN]
,[Koodit Julkaisutyyppi]
,[Julkaisutyyppi]
,[JulkaisutyyppiSV]
,[JulkaisutyyppiEN]
,[Koodit Julkaisun kansainvälisyys]
,[Julkaisun kansainvälisyys]
,[Julkaisun kansainvälisyysSV]
,[Julkaisun kansainvälisyysEN]
,[Koodit Kansainvälinen yhteisjulkaisu]
,[Kansainvälinen yhteisjulkaisu]
,[Kansainvälinen yhteisjulkaisuSV]
,[Kansainvälinen yhteisjulkaisuEN]
,case [Koodit Päätieteenala] when -1 then 9 else [Koodit Päätieteenala] end as [Koodit Päätieteenala]
,[Päätieteenala]
,[PäätieteenalaSV]
,[PäätieteenalaEN]
,case [Koodit Tieteenala] when -1 then 9999 else [Koodit Tieteenala] end as [Koodit Tieteenala]
,[Tieteenala]
,[TieteenalaSV]
,[TieteenalaEN]
,case [Koodit OKM ohjauksen ala] when -1 then 99 else [Koodit OKM ohjauksen ala] end as [Koodit OKM ohjauksen ala]
,[OKM ohjauksen ala]
,[OKM ohjauksen alaSV]
,[OKM ohjauksen alaEN]
,case [Koodit Koulutusala 95] when -1 then 99 else [Koodit Koulutusala 95] end as [Koodit Koulutusala 95]
,[Koulutusala 95]
,[Utbildningsområde 95]
,[Field of education 95]
,case [Koodit Koulutusala 02] when -1 then 9 else [Koodit Koulutusala 02] end as [Koodit Koulutusala 02]
,[Koulutusala 02]
,[Utbildningsområde 02]
,[Field of education 02]
,[Yhteisjulk. yliop. sairaanhoitopiiri]
,[Yhteisjulk. valtion sektoritutkimuslaitos]
,[Yhteisjulk. muu kotim. tutkimusorganisaatio]
,[lukumaara]


FROM

(


SELECT f.tilastovuosi AS "Tilastovuosi"
  ,d2.virtajtpsektori_koodi as 'Koodit Sektori'
  ,d2.virtajtpsektori_fi as 'Sektori'
  ,d2.virtajtpsektori_sv as 'Sektor'
  ,d2.virtajtpsektori_en as 'Sector'
  ,d3.organisaatio_koodi as 'Koodit Organisaatio'
  ,d3.organisaatio_fi as 'Organisaatio'
  ,d3.organisaatio_sv as 'OrganisationSV'
  ,d3.organisaatio_en as 'OrganisationEN'
  ,d5.julkaisufoorumitaso_koodi as 'Koodit Julkaisufoorumitaso'
  ,d5.julkaisufoorumitaso_fi as 'Julkaisufoorumitaso'
  ,d5.julkaisufoorumitaso_sv as 'JulkaisufoorumitasoSV'
  ,d5.julkaisufoorumitaso_en as 'JulkaisufoorumitasoEN'
  ,d4.julkaisunpaaluokka_koodi as 'Koodit Julkaisun pääluokka'
  ,d4.julkaisunpaaluokka_nimi_fi as 'Julkaisun pääluokka'
  ,d4.julkaisunpaaluokka_nimi_sv as 'Julkaisun pääluokkaSV'
  ,d4.julkaisunpaaluokka_nimi_en as 'Julkaisun pääluokkaEN'
  ,d4.julkaisutyyppi_koodi as 'Koodit Julkaisutyyppi'
  ,d4.julkaisutyyppi_nimi_fi as 'Julkaisutyyppi'
  ,d4.julkaisutyyppi_nimi_sv as 'JulkaisutyyppiSV'
  ,d4.julkaisutyyppi_nimi_en as 'JulkaisutyyppiEN'
  ,d6.julkaisun_kansainvalisyys_koodi as 'Koodit Julkaisun kansainvälisyys'
  ,d6.julkaisun_kansainvalisyys_fi as 'Julkaisun kansainvälisyys'
  ,d6.julkaisun_kansainvalisyys_sv as 'Julkaisun kansainvälisyysSV'
  ,d6.julkaisun_kansainvalisyys_en as 'Julkaisun kansainvälisyysEN'
  ,d7.kansainvalinen_yhteisjulkaisu_koodi as 'Koodit Kansainvälinen yhteisjulkaisu'
  ,d7.kansainvalinen_yhteisjulkaisu_fi as 'Kansainvälinen yhteisjulkaisu'
  ,d7.kansainvalinen_yhteisjulkaisu_sv as 'Kansainvälinen yhteisjulkaisuSV'
  ,d7.kansainvalinen_yhteisjulkaisu_en as 'Kansainvälinen yhteisjulkaisuEN'
  ,d1.paatieteenala_koodi as 'Koodit Päätieteenala'
  ,d1.paatieteenala_nimi_fi as 'Päätieteenala'
  ,d1.paatieteenala_nimi_sv as 'PäätieteenalaSV'
  ,d1.paatieteenala_nimi_en as 'PäätieteenalaEN'
  ,d1.tieteenala_koodi as 'Koodit Tieteenala'
  ,d1.tieteenala_nimi_fi as 'Tieteenala'
  ,d1.tieteenala_nimi_sv as 'TieteenalaSV'
  ,d1.tieteenala_nimi_en as 'TieteenalaEN'
  ,d8.ohjauksenala_koodi as 'Koodit OKM ohjauksen ala'
  ,d8.ohjauksenala_nimi_fi as 'OKM ohjauksen ala'
  ,d8.ohjauksenala_nimi_sv as 'OKM ohjauksen alaSV'
  ,d8.ohjauksenala_nimi_en as 'OKM ohjauksen alaEN'
  ,d9.koodi as 'Koodit Koulutusala 95'
  ,d9.selite_fi as 'Koulutusala 95'
  ,d9.selite_sv as 'Utbildningsområde 95'
  ,d9.selite_en as 'Field of education 95'
  ,d10.koodi as 'Koodit Koulutusala 02'
  ,d10.selite_fi as 'Koulutusala 02'
  ,d10.selite_sv as 'Utbildningsområde 02'
  ,d10.selite_en as 'Field of education 02'
  ,d12.kytkin_fi as 'Yhteisjulk. yliop. sairaanhoitopiiri'
  ,d13.kytkin_fi as 'Yhteisjulk. valtion sektoritutkimuslaitos'
  ,d14.kytkin_fi as 'Yhteisjulk. muu kotim. tutkimusorganisaatio'
  ,f.lukumaara
FROM f_virta_jtp_tilasto f
LEFT JOIN d_tieteenala d1 ON d1.id=f.d_tieteenala_id
LEFT JOIN d_virtajtpsektori d2 ON d2.id=f.d_virtajtpsektori_id
LEFT JOIN d_organisaatioluokitus d3 ON d3.id=f.d_organisaatio_id
LEFT JOIN d_julkaisutyyppi d4 ON d4.id=f.d_julkaisutyyppi_id
LEFT JOIN d_julkaisufoorumitaso d5 ON d5.id=f.d_julkaisufoorumitaso_id
LEFT JOIN d_julkaisun_kansainvalisyys d6 ON d6.id=f.d_julkaisun_kansainvalisyys_id
LEFT JOIN d_kansainvalinen_yhteisjulkaisu d7 ON d7.id=f.d_kansainvalinen_yhteisjulkaisu_id
LEFT JOIN dw.d_ohjauksenala d8 on d8.id=f.d_ohjauksenala_id
LEFT JOIN dw.d_koulutusala_1995 d9 on d9.id=f.d_koulutusala95_id
LEFT JOIN dw.d_koulutusala_2002 d10 on d10.id=f.d_koulutusala02_id
LEFT JOIN dw.d_kytkin d12 on d12.id = d_yhteisjulkaisuSHPKytkin_id
LEFT JOIN dw.d_kytkin d13 on d13.id = d_yhteisjulkaisuTutkimuslaitosKytkin_id
LEFT JOIN dw.d_kytkin d14 on d14.id = d_yhteisjulkaisuMuuKytkin_id

UNION ALL

SELECT f.vuosi AS "Tilastovuosi"
  ,d2.virtajtpsektori_koodi as 'Koodit Sektori'
  ,d2.virtajtpsektori_fi as 'Sektori'
  ,d2.virtajtpsektori_sv
  ,d2.virtajtpsektori_en
  ,d3.yo_tunnus as 'Koodit Organisaatio'
  ,d3.yo_nimi_fi as 'Organisaatio'
  ,d3.yo_nimi_sv
  ,d3.yo_nimi_en
  ,d5.julkaisufoorumitaso_koodi as 'Koodit Julkaisufoorumitaso'
  ,d5.julkaisufoorumitaso_fi as 'Julkaisufoorumitaso'
  ,d5.julkaisufoorumitaso_sv
  ,d5.julkaisufoorumitaso_en
  ,d4.julkaisunpaaluokka_koodi as 'Koodit Julkaisun pääluokka'
  ,d4.julkaisunpaaluokka_nimi_fi as 'Julkaisun pääluokka'
  ,d4.julkaisunpaaluokka_nimi_sv
  ,d4.julkaisunpaaluokka_nimi_en
  ,d4.julkaisutyyppi_koodi as 'Koodit Julkaisutyyppi'
  ,d4.julkaisutyyppi_nimi_fi as 'Julkaisutyyppi'
  ,d4.julkaisutyyppi_nimi_sv
  ,d4.julkaisutyyppi_nimi_en
  ,d6.julkaisun_kansainvalisyys_koodi as 'Koodit Julkaisun kansainvälisyys'
  ,d6.julkaisun_kansainvalisyys_fi as 'Julkaisun kansainvälisyys'
  ,d6.julkaisun_kansainvalisyys_sv
  ,d6.julkaisun_kansainvalisyys_en
  ,d7.kansainvalinen_yhteisjulkaisu_koodi as 'Koodit Kansainvälinen yhteisjulkaisu'
  ,d7.kansainvalinen_yhteisjulkaisu_fi as 'Kansainvälinen yhteisjulkaisu'
  ,d7.kansainvalinen_yhteisjulkaisu_sv
  ,d7.kansainvalinen_yhteisjulkaisu_en
  ,d1.paatieteenala_koodi as 'Koodit Päätieteenala'
  ,d1.paatieteenala_nimi_fi as 'Päätieteenala'
  ,d1.paatieteenala_nimi_sv
  ,d1.paatieteenala_nimi_en
  ,d1.tieteenala_koodi as 'Koodit Tieteenala'
  ,d1.tieteenala_nimi_fi as 'Tieteenala'
  ,d1.tieteenala_nimi_sv
  ,d1.tieteenala_nimi_en
  ,d8.ohjauksenala_koodi as 'Koodit OKM ohjauksen ala'
  ,d8.ohjauksenala_nimi_fi as 'OKM ohjauksen ala'
  ,d8.ohjauksenala_nimi_sv
  ,d8.ohjauksenala_nimi_en
  ,d9.koodi as 'Koodit Koulutusala 95'
  ,d9.selite_fi as 'Koulutusala 95'
  ,d9.selite_sv as 'Utbildningsområde 95'
  ,d9.selite_en as 'Field of education 95'
  ,d10.koodi as 'Koodit Koulutusala 02'
  ,d10.selite_fi as 'Koulutusala 02'
  ,d10.selite_sv as 'Utbildningsområde 02'
  ,d10.selite_en as 'Field of education 02'
  ,d12.kytkin_fi as 'Yhteisjulk. yliop. sairaanhoitopiiri'
  ,d13.kytkin_fi as 'Yhteisjulk. valtion sektoritutkimuslaitos'
  ,d14.kytkin_fi as 'Yhteisjulk. muu kotim. tutkimusorganisaatio'
  ,f.julkaisujen_maara
FROM f_yo_julkaisut_f_i f
LEFT JOIN d_tieteenala d1 ON d1.id=f.d_tieteenala_id
LEFT JOIN d_virtajtpsektori d2 ON d2.id=(select id from dw.d_virtajtpsektori where virtajtpsektori_fi='Yliopisto')
LEFT JOIN dw.d_yo d3 ON d3.id=f.d_yliopisto_id
LEFT JOIN d_julkaisutyyppi d4 ON d4.id=f.d_julkaisutyyppi_id
LEFT JOIN d_julkaisufoorumitaso d5 ON d5.id=-1
LEFT JOIN d_julkaisun_kansainvalisyys d6 ON d6.id=f.d_julkaisun_kansainvalisyys_id
LEFT JOIN d_kansainvalinen_yhteisjulkaisu d7 ON d7.id=-1
LEFT JOIN dw.d_ohjauksenala d8 on d8.id=f.d_ohjauksenala_id
LEFT JOIN dw.d_koulutusala_1995 d9 on d9.id=f.d_koulutusala_id
LEFT JOIN dw.d_koulutusala_2002 d10 on d10.id=-1
LEFT JOIN dw.d_kytkin d12 on d12.id = -1
LEFT JOIN dw.d_kytkin d13 on d13.id = -1
LEFT JOIN dw.d_kytkin d14 on d14.id = -1
where d4.julkaisunpaaluokka_koodi<>'H'

UNION ALL

SELECT f.vuosi AS "Tilastovuosi"
  ,d2.virtajtpsektori_koodi as 'Koodit Sektori'
  ,d2.virtajtpsektori_fi as 'Sektori'
  ,d2.virtajtpsektori_sv
  ,d2.virtajtpsektori_en
  ,d3.amk_tunnus as 'Koodit Organisaatio'
  ,d3.amk_nimi_fi as 'Organisaatio'
  ,d3.amk_nimi_sv
  ,d3.amk_nimi_en
  ,d5.julkaisufoorumitaso_koodi as 'Koodit Julkaisufoorumitaso'
  ,d5.julkaisufoorumitaso_fi as 'Julkaisufoorumitaso'
  ,d5.julkaisufoorumitaso_sv
  ,d5.julkaisufoorumitaso_en
  ,d4.julkaisunpaaluokka_koodi as 'Koodit Julkaisun pääluokka'
  ,d4.julkaisunpaaluokka_nimi_fi as 'Julkaisun pääluokka'
  ,d4.julkaisunpaaluokka_nimi_sv
  ,d4.julkaisunpaaluokka_nimi_en
  ,d4.julkaisutyyppi_koodi as 'Koodit Julkaisutyyppi'
  ,d4.julkaisutyyppi_nimi_fi as 'Julkaisutyyppi'
  ,d4.julkaisutyyppi_nimi_sv
  ,d4.julkaisutyyppi_nimi_en
  ,d6.julkaisun_kansainvalisyys_koodi as 'Koodit Julkaisun kansainvälisyys'
  ,d6.julkaisun_kansainvalisyys_fi as 'Julkaisun kansainvälisyys'
  ,d6.julkaisun_kansainvalisyys_sv
  ,d6.julkaisun_kansainvalisyys_en
  ,d7.kansainvalinen_yhteisjulkaisu_koodi as 'Koodit Kansainvälinen yhteisjulkaisu'
  ,d7.kansainvalinen_yhteisjulkaisu_fi as 'Kansainvälinen yhteisjulkaisu'
  ,d7.kansainvalinen_yhteisjulkaisu_sv
  ,d7.kansainvalinen_yhteisjulkaisu_en
  ,d1.paatieteenala_koodi as 'Koodit Päätieteenala'
  ,d1.paatieteenala_nimi_fi as 'Päätieteenala'
  ,d1.paatieteenala_nimi_sv
  ,d1.paatieteenala_nimi_en
  ,d1.tieteenala_koodi as 'Koodit Tieteenala'
  ,d1.tieteenala_nimi_fi as 'Tieteenala'
  ,d1.tieteenala_nimi_sv
  ,d1.tieteenala_nimi_en
  ,d8.ohjauksenala_koodi as 'Koodit OKM ohjauksen ala'
  ,d8.ohjauksenala_nimi_fi as 'OKM ohjauksen ala'
  ,d8.ohjauksenala_nimi_sv
  ,d8.ohjauksenala_nimi_en
  ,d9.koodi as 'Koodit Koulutusala 95'
  ,d9.selite_fi as 'Koulutusala 95'
  ,d9.selite_sv as 'Utbildningsområde 95'
  ,d9.selite_en as 'Field of education 95'
  ,d10.koodi as 'Koodit Koulutusala 02'
  ,d10.selite_fi as 'Koulutusala 02'
  ,d10.selite_sv as 'Utbildningsområde 02'
  ,d10.selite_en as 'Field of education 02'
  ,d12.kytkin_fi as 'Yhteisjulk. yliop. sairaanhoitopiiri'
  ,d13.kytkin_fi as 'Yhteisjulk. valtion sektoritutkimuslaitos'
  ,d14.kytkin_fi as 'Yhteisjulk. muu kotim. tutkimusorganisaatio'
  ,f.julkaisujen_maara
FROM f_amk_julkaisut_f_i f
LEFT JOIN d_tieteenala d1 ON d1.id=f.d_tieteenala_id
LEFT JOIN d_virtajtpsektori d2 ON d2.id=(select id from dw.d_virtajtpsektori where virtajtpsektori_fi='Ammattikorkeakoulu')
LEFT JOIN dw.d_amk d3 ON d3.id=f.d_amk_id
LEFT JOIN d_julkaisutyyppi d4 ON d4.id=f.d_julkaisutyyppi_id
LEFT JOIN d_julkaisufoorumitaso d5 ON d5.id=-1
LEFT JOIN d_julkaisun_kansainvalisyys d6 ON d6.id=f.d_julkaisun_kansainvalisyys_id
LEFT JOIN d_kansainvalinen_yhteisjulkaisu d7 ON d7.id=-1
LEFT JOIN dw.d_ohjauksenala d8 on d8.id=f.d_ohjauksenala_id
LEFT JOIN dw.d_koulutusala_1995 d9 on d9.id=-1
LEFT JOIN dw.d_koulutusala_2002 d10 on d10.id=f.d_koulutusala_id
LEFT JOIN dw.d_kytkin d12 on d12.id = -1
LEFT JOIN dw.d_kytkin d13 on d13.id = -1
LEFT JOIN dw.d_kytkin d14 on d14.id = -1
where d4.julkaisunpaaluokka_koodi<>'H'

UNION ALL

SELECT f.vuosi AS "Tilastovuosi"
  ,d2.virtajtpsektori_koodi as 'Koodit Sektori'
  ,d2.virtajtpsektori_fi as 'Sektori'
  ,d2.virtajtpsektori_sv
  ,d2.virtajtpsektori_en
  ,d3.yo_tunnus as 'Koodit Organisaatio'
  ,d3.yo_nimi_fi as 'Organisaatio'
  ,d3.yo_nimi_sv
  ,d3.yo_nimi_en
  ,d5.julkaisufoorumitaso_koodi as 'Koodit Julkaisufoorumitaso'
  ,d5.julkaisufoorumitaso_fi as 'Julkaisufoorumitaso'
  ,d5.julkaisufoorumitaso_sv
  ,d5.julkaisufoorumitaso_en
  ,'H' as 'Koodit Julkaisun pääluokka'
  ,'H Patentit ja keksintöilmoitukset' as 'Julkaisun pääluokka'
  ,'H Patentit ja keksintöilmoituksetSV'
  ,'H Patentit ja keksintöilmoituksetEN'
  ,'H21' as 'Koodit Julkaisutyyppi'
  ,'H21 Keksintöilmoitusten määrä' as 'Julkaisutyyppi'
  ,'H21 Keksintöilmoitusten määräSV'
  ,'H21 Keksintöilmoitusten määräEN'
  ,d6.julkaisun_kansainvalisyys_koodi as 'Koodit Julkaisun kansainvälisyys'
  ,d6.julkaisun_kansainvalisyys_fi as 'Julkaisun kansainvälisyys'
  ,d6.julkaisun_kansainvalisyys_sv
  ,d6.julkaisun_kansainvalisyys_en
  ,d7.kansainvalinen_yhteisjulkaisu_koodi as 'Koodit Kansainvälinen yhteisjulkaisu'
  ,d7.kansainvalinen_yhteisjulkaisu_fi as 'Kansainvälinen yhteisjulkaisu'
  ,d7.kansainvalinen_yhteisjulkaisu_sv
  ,d7.kansainvalinen_yhteisjulkaisu_en
  ,d1.paatieteenala_koodi as 'Koodit Päätieteenala'
  ,d1.paatieteenala_nimi_fi as 'Päätieteenala'
  ,d1.paatieteenala_nimi_sv
  ,d1.paatieteenala_nimi_en
  ,d1.tieteenala_koodi as 'Koodit Tieteenala'
  ,d1.tieteenala_nimi_fi as 'Tieteenala'
  ,d1.tieteenala_nimi_sv
  ,d1.tieteenala_nimi_en
  ,d8.ohjauksenala_koodi as 'Koodit OKM ohjauksen ala'
  ,d8.ohjauksenala_nimi_fi as 'OKM ohjauksen ala'
  ,d8.ohjauksenala_nimi_sv
  ,d8.ohjauksenala_nimi_en
  ,d9.koodi as 'Koodit Koulutusala 95'
  ,d9.selite_fi as 'Koulutusala 95'
  ,d9.selite_sv as 'Utbildningsområde 95'
  ,d9.selite_en as 'Field of education 95'
  ,d10.koodi as 'Koodit Koulutusala 02'
  ,d10.selite_fi as 'Koulutusala 02'
  ,d10.selite_sv as 'Utbildningsområde 02'
  ,d10.selite_en as 'Field of education 02'
  ,d12.kytkin_fi as 'Yhteisjulk. yliop. sairaanhoitopiiri'
  ,d13.kytkin_fi as 'Yhteisjulk. valtion sektoritutkimuslaitos'
  ,d14.kytkin_fi as 'Yhteisjulk. muu kotim. tutkimusorganisaatio'
  ,f.h21
FROM dw.f_yo_keksintoilmoitukset f
LEFT JOIN d_tieteenala d1 ON d1.id=f.d_tieteenala_id
LEFT JOIN d_virtajtpsektori d2 ON d2.id=(select id from dw.d_virtajtpsektori where virtajtpsektori_fi='Yliopisto')
LEFT JOIN dw.d_yo d3 ON d3.id=f.d_yliopisto_id
LEFT JOIN d_julkaisutyyppi d4 ON d4.id=-1
LEFT JOIN d_julkaisufoorumitaso d5 ON d5.id=-1
LEFT JOIN d_julkaisun_kansainvalisyys d6 ON d6.id=f.d_julkaisun_kansainvalisyys_id
LEFT JOIN d_kansainvalinen_yhteisjulkaisu d7 ON d7.id=-1
LEFT JOIN dw.d_ohjauksenala d8 on d8.id=f.d_ohjauksenala_id
LEFT JOIN dw.d_koulutusala_1995 d9 on d9.id=f.d_koulutusala_id
LEFT JOIN dw.d_koulutusala_2002 d10 on d10.id=-1
LEFT JOIN dw.d_kytkin d12 on d12.id = -1
LEFT JOIN dw.d_kytkin d13 on d13.id = -1
LEFT JOIN dw.d_kytkin d14 on d14.id = -1


UNION ALL

SELECT f.vuosi AS "Tilastovuosi"
  ,d2.virtajtpsektori_koodi as 'Koodit Sektori'
  ,d2.virtajtpsektori_fi as 'Sektori'
  ,d2.virtajtpsektori_sv
  ,d2.virtajtpsektori_en
  ,d3.amk_tunnus as 'Koodit Organisaatio'
  ,d3.amk_nimi_fi as 'Organisaatio'
  ,d3.amk_nimi_sv
  ,d3.amk_nimi_en
  ,d5.julkaisufoorumitaso_koodi as 'Koodit Julkaisufoorumitaso'
  ,d5.julkaisufoorumitaso_fi as 'Julkaisufoorumitaso'
  ,d5.julkaisufoorumitaso_sv
  ,d5.julkaisufoorumitaso_en
  ,'H' as 'Koodit Julkaisun pääluokka'
  ,'H Patentit ja keksintöilmoitukset' as 'Julkaisun pääluokka'
  ,'H Patentit ja keksintöilmoituksetSV'
  ,'H Patentit ja keksintöilmoituksetEN'
  ,'H21' as 'Koodit Julkaisutyyppi'
  ,'H21 Keksintöilmoitusten määrä' as 'Julkaisutyyppi'
  ,'H21 Keksintöilmoitusten määräSV'
  ,'H21 Keksintöilmoitusten määräEN'
  ,d6.julkaisun_kansainvalisyys_koodi as 'Koodit Julkaisun kansainvälisyys'
  ,d6.julkaisun_kansainvalisyys_fi as 'Julkaisun kansainvälisyys'
  ,d6.julkaisun_kansainvalisyys_sv
  ,d6.julkaisun_kansainvalisyys_en
  ,d7.kansainvalinen_yhteisjulkaisu_koodi as 'Koodit Kansainvälinen yhteisjulkaisu'
  ,d7.kansainvalinen_yhteisjulkaisu_fi as 'Kansainvälinen yhteisjulkaisu'
  ,d7.kansainvalinen_yhteisjulkaisu_sv
  ,d7.kansainvalinen_yhteisjulkaisu_en
  ,d1.paatieteenala_koodi as 'Koodit Päätieteenala'
  ,d1.paatieteenala_nimi_fi as 'Päätieteenala'
  ,d1.paatieteenala_nimi_sv
  ,d1.paatieteenala_nimi_en
  ,d1.tieteenala_koodi as 'Koodit Tieteenala'
  ,d1.tieteenala_nimi_fi as 'Tieteenala'
  ,d1.tieteenala_nimi_sv
  ,d1.tieteenala_nimi_en
  ,d8.ohjauksenala_koodi as 'Koodit OKM ohjauksen ala'
  ,d8.ohjauksenala_nimi_fi as 'OKM ohjauksen ala'
  ,d8.ohjauksenala_nimi_sv
  ,d8.ohjauksenala_nimi_en
  ,d9.koodi as 'Koodit Koulutusala 95'
  ,d9.selite_fi as 'Koulutusala 95'
  ,d9.selite_sv as 'Utbildningsområde 95'
  ,d9.selite_en as 'Field of education 95'
  ,d10.koodi as 'Koodit Koulutusala 02'
  ,d10.selite_fi as 'Koulutusala 02'
  ,d10.selite_sv as 'Utbildningsområde 02'
  ,d10.selite_en as 'Field of education 02'
  ,d12.kytkin_fi as 'Yhteisjulk. yliop. sairaanhoitopiiri'
  ,d13.kytkin_fi as 'Yhteisjulk. valtion sektoritutkimuslaitos'
  ,d14.kytkin_fi as 'Yhteisjulk. muu kotim. tutkimusorganisaatio'
  ,f.h21
FROM dw.f_amk_keksintoilmoitukset f
LEFT JOIN d_tieteenala d1 ON d1.id=f.d_tieteenala_id
LEFT JOIN d_virtajtpsektori d2 ON d2.id=(select id from dw.d_virtajtpsektori where virtajtpsektori_fi='Ammattikorkeakoulu')
LEFT JOIN dw.d_amk d3 ON d3.id=f.d_amk_id
LEFT JOIN d_julkaisutyyppi d4 ON d4.id=-1
LEFT JOIN d_julkaisufoorumitaso d5 ON d5.id=-1
LEFT JOIN d_julkaisun_kansainvalisyys d6 ON d6.id=f.d_julkaisun_kansainvalisyys_id
LEFT JOIN d_kansainvalinen_yhteisjulkaisu d7 ON d7.id=-1
LEFT JOIN dw.d_ohjauksenala d8 on d8.id=f.d_ohjauksenala_id
LEFT JOIN dw.d_koulutusala_1995 d9 on d9.id=-1
LEFT JOIN dw.d_koulutusala_2002 d10 on d10.id=f.d_koulutusala_id
LEFT JOIN dw.d_kytkin d12 on d12.id = -1
LEFT JOIN dw.d_kytkin d13 on d13.id = -1
LEFT JOIN dw.d_kytkin d14 on d14.id = -1


) a
