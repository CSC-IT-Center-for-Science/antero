ALTER PROCEDURE dw.p_lataa_f_amk_talous_4_tilikauden_tutkimusmenot_ja_rahoitus AS

TRUNCATE TABLE dw.f_amk_talous_4_tilikauden_tutkimusmenot_ja_rahoitus

INSERT INTO dw.f_amk_talous_4_tilikauden_tutkimusmenot_ja_rahoitus
           (d_amk_id
           ,d_ohjauksenala_id
           ,tilikausi
           ,tutmenot
           ,perusr
           ,ulkoptr
           ,akatemia
           ,muuokm
           ,tekes
           ,muutem
           ,ulkomin
           ,oikmin
           ,sis�min
           ,puolmin
           ,valtvmin
           ,mmm
           ,lvm
           ,stm
           ,ympmin
           ,kunnat
           ,muujulkr
           ,kotiraha
           ,kotiyrit
           ,ulkoyrit
           ,eupuiter
           ,eakr
           ,esr
           ,muueur
           ,ulkoraha
           ,kvjarj
           ,ulkomuur
           ,amkomarah
           ,source)
SELECT d1.id AS d_amk_id
    ,d2.id AS d_ohjauksenala_id
    ,TILIK
      ,TUTMENOT
      ,PERUSR
      ,ULKOPTR
      ,AKATEMIA
      ,MUUOKM
      ,TEKES
      ,MUUTEM
      ,ULKOMIN
      ,OIKMIN
      ,SIS�MIN
      ,PUOLMIN
      ,VALTVMIN
      ,MMM
      ,LVM
      ,STM
      ,YMPMIN
      ,KUNNAT
      ,MUUJULKR
      ,KOTIRAHA
      ,KOTIYRIT
      ,ULKOYRIT
      ,EUPUITER
      ,EAKR
      ,ESR
      ,MUUEUR
      ,ULKORAHA
      ,KVJARJ
      ,ULKOMUUR
      ,AMKOMARAH
      ,'ETL: p_lataa_f_amk_talous_4_tilikauden_tutkimusmenot_ja_rahoitus' AS source
  FROM sa.sa_SUORAT_AMK_TALOUS_4_tutkimusmenot f
  INNER JOIN dw.d_amk d1 ON f.AMK_koodi = d1.amk_tunnus
  INNER JOIN dw.d_ohjauksenala d2 ON f.OPM95OPA_koodi = d2.ohjauksenala_koodi