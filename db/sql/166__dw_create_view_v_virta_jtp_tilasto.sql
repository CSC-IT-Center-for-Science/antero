IF NOT EXISTS (select * from INFORMATION_SCHEMA.VIEWS where TABLE_SCHEMA='dw' and TABLE_NAME='v_virta_jtp_tilasto')
BEGIN
  EXEC dbo.sp_executesql @statement = N'CREATE VIEW dw.v_virta_jtp_tilasto AS SELECT 1 as a'
END
