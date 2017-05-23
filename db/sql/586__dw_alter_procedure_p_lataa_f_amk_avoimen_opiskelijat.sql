ALTER PROCEDURE [dw].[p_lataa_f_amk_avoimen_opiskelijat]
AS
TRUNCATE TABLE dw.f_amk_avoimen_opiskelijat;

INSERT INTO dw.f_amk_avoimen_opiskelijat (
 d_amk_id
,d_ohjauksenala_id
,d_koulutusala_2002_id
,d_sukupuoli_id
,d_tilannepvm_id
,vuosi
,osallistuneet
,source
)

SELECT
 coalesce(d1.id,-1) as d_amk_id
,coalesce(d2.id,-1) as d_ohjauksenala_id
,-1 as d_koulutusala_2002_id
,coalesce(d3.id,-1) as d_sukupuoli_id
,coalesce(d4.id,-1) as d_tilannepvm_id
,s.vuosi
,s.naisia as osallistuneet
,s.source
FROM sa.sa_virta_otp_amk7suorattk as s
LEFT JOIN dw.d_amk as d1 ON d1.amk_tunnus=s.organisaatiokoodi
LEFT JOIN dw.d_ohjauksenala as d2 ON d2.ohjauksenala_koodi=s.koulutusala
LEFT JOIN dw.d_sukupuoli as d3 ON d3.sukupuoli_koodi='2'
LEFT JOIN dw.d_kalenteri as d4 ON d4.kalenteri_avain=cast(s.loadtime as date)

UNION

SELECT 
 coalesce(d1.id,-1) as d_amk_id
,coalesce(d2.id,-1) as d_ohjauksenala_id
,-1 as d_koulutusala_2002_id
,coalesce(d3.id,-1) as d_sukupuoli_id
,coalesce(d4.id,-1) as d_tilannepvm_id
,s.vuosi
,s.miehia as osallistuneet
,s.source
FROM sa.sa_virta_otp_amk7suorattk as s
LEFT JOIN dw.d_amk as d1 ON d1.amk_tunnus=s.organisaatiokoodi
LEFT JOIN dw.d_ohjauksenala as d2 ON d2.ohjauksenala_koodi=s.koulutusala
LEFT JOIN dw.d_sukupuoli as d3 ON d3.sukupuoli_koodi='1'
LEFT JOIN dw.d_kalenteri as d4 ON d4.kalenteri_avain=cast(s.loadtime as date)

UNION

SELECT
 coalesce(d1.id,-1) as d_amk_id
,-1 as d_ohjaukseala_id
,coalesce(d2.id,-1) as d_koulutusala_2002_id
,coalesce(d3.id,-1) as d_sukupuoli_id
,coalesce(d4.id,-1) as d_tilannepvm_id
,s.VUOSI
,ULKOPUOLISET_OPISKELIJAT_LKM as osallistuneet
,'etl: sa_suorat_hist_amk6_avoin_opiskelijat' as source
FROM sa.sa_suorat_hist_amk6_avoin_opiskelijat as s
LEFT JOIN dw.d_amk as d1 ON d1.amk_tunnus=s.AMK_TUNNUS
LEFT JOIN dw.d_koulutusala_2002 as d2 ON d2.koodi=s.KOULUTUSALA_KOODI
LEFT JOIN dw.d_sukupuoli as d3 ON d3.sukupuoli_koodi=s.SUKUPUOLIKOODI
LEFT JOIN dw.d_kalenteri as d4 ON d4.kalenteri_avain=cast(s.LATAUSAIKA as date)
