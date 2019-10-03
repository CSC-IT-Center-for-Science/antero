ALTER PROCEDURE dw.p_lataa_f_avop_live AS

TRUNCATE TABLE dw.f_avop_live

INSERT INTO dw.f_avop_live (
  d_organisaatio_id,
  d_koulutusluokitus_id,
  d_kieli_id,
  d_alueluokitus_id,
  d_kalenteri_id,

  tunnus,
  koulutusmuoto,
  kysymysryhma_fi, kysymysryhma_sv, kysymysryhma_en,
  kysely_fi, kysely_sv, kysely_en,
  kysymys_fi, kysymys_sv, kysymys_en,
  kyselykerta,
  vastaustyyppi,
  vaihtoehto,
  monivalintavaihtoehto,
  numerovalinta,
  taustakysymys_ika,
  taustakysymys_sukupuoli,
  taustakysymys_pohjakoulutus,
  valtakunnallinen,

  lukumaara,
  source
)

SELECT
  coalesce(d1.id,-1) AS d_organisaatio_id,
  coalesce(d2.id,-1) AS d_koulutusluokitus_id,
  coalesce(d3.id,-1) AS d_kieli_id,
  coalesce(d4.id,-1) AS d_alueluokitus_id,
  coalesce(d5.id,-1) AS d_kalenteri_id,

  f.tunnus,
  f.koulutusmuoto,
  f.kysymysryhma_fi, f.kysymysryhma_sv, f.kysymysryhma_en,
  f.kysely_fi, f.kysely_sv, f.kysely_en,
  f.kysymys_fi, f.kysymys_sv, f.kysymys_en,
  f.kyselykerta,
  f.vastaustyyppi,
  f.vaihtoehto,
  f.monivalintavaihtoehto,
  f.numerovalinta,
  (select b.monivalintavaihtoehto  from sa.sa_arvo_kaikki b
   where b.kyselyid=f.kyselyid and b.kyselykertaid=f.kyselykertaid and b.vastaajaid=f.vastaajaid
   and b.taustakysymykset=1 and b.kysymys_fi='Ikä'
  ) as taustakysymys_ika,
  (select b.monivalintavaihtoehto  from sa.sa_arvo_kaikki b
   where b.kyselyid=f.kyselyid and b.kyselykertaid=f.kyselykertaid and b.vastaajaid=f.vastaajaid
   and b.taustakysymykset=1 and b.kysymys_fi='Sukupuoli'
  ) as taustakysymys_sukupuoli,
  (select b.monivalintavaihtoehto  from sa.sa_arvo_kaikki b
   where b.kyselyid=f.kyselyid and b.kyselykertaid=f.kyselykertaid and b.vastaajaid=f.vastaajaid
   and b.taustakysymykset=1 and b.kysymys_fi='Pohjakoulutus'
  ) as taustakysymys_pohjakoulutus,
  f.valtakunnallinen,

  cast(1 as int) AS lukumaara,
  'ETL: p_lataa_f_avop_live' AS source
FROM sa.sa_arvo_kaikki as f
LEFT JOIN dw.d_organisaatio d1 ON d1.organisaatio_avain like 'oppilaitosnumero_%' and d1.organisaatio_koodi = f.valmistavan_koulutuksen_oppilaitos
LEFT JOIN dw.d_koulutusluokitus d2 ON d2.koulutusluokitus_avain like 'koulutus_%' and d2.koulutusluokitus_koodi = f.tutkintotunnus
LEFT JOIN dw.d_kieli d3 ON d3.kieli_koodi=f.suorituskieli
LEFT JOIN dw.d_alueluokitus d4 ON d4.alueluokitus_avain like 'kunta_%' and d4.kunta_koodi = f.kunta
LEFT JOIN dw.d_kalenteri d5 ON d5.kalenteri_avain = f.vastausaika
WHERE coalesce(f.taustakysymykset,0)=0
