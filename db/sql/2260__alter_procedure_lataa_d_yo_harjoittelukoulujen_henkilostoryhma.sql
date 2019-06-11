USE [ANTERO]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dw].[p_lataa_d_yo_harjoittelukoulujen_henkilostoryhma]
AS
IF (
		SELECT count(1)
		FROM dw.d_yo_harjoittelukoulujen_henkilostoryhma
		WHERE id = '-1'
		) = 0
BEGIN
	TRUNCATE TABLE dw.d_yo_harjoittelukoulujen_henkilostoryhma
	set identity_insert dw.d_yo_harjoittelukoulujen_henkilostoryhma on
	INSERT dw.d_yo_harjoittelukoulujen_henkilostoryhma (
		id
		,koodi
		,selite_fi
		,selite_sv
		,selite_en
		,source
		)

		SELECT
			-1,
			koodi,
			nimi,
			nimi_sv,
			nimi_en,
			'ETL: p_lataa_d_yo_harjoittelukoulujen_henkilostoryhma'
		FROM sa.sa_koodistot
		WHERE koodisto='vipunenmeta'
		  AND koodi='-1';

		SET IDENTITY_INSERT dw.d_yo_harjoittelukoulujen_henkilostoryhma OFF;
END
ELSE
	BEGIN
		UPDATE d
		SET
			koodi = s.koodi,
			selite_fi=s.nimi,
			selite_sv=s.nimi_sv,
			selite_en=s.nimi_en,
			loadtime = GETDATE(),
			username = SUSER_NAME(),
			source = 'ETL: p_lataa_d_yo_harjoittelukoulujen_henkilostoryhma'
		FROM dw.d_yo_harjoittelukoulujen_henkilostoryhma d
		JOIN sa.sa_koodistot s ON s.koodi=d.koodi
		WHERE s.koodisto='vipunenmeta' AND s.koodi='-1';
	END

MERGE dw.d_yo_harjoittelukoulujen_henkilostoryhma AS target
USING (
	SELECT top 100 PERCENT koodi
		,COALESCE(nimi, nimi_sv, nimi_en) AS selite_fi
		,COALESCE(nimi_sv, nimi, nimi_en) AS selite_sv
		,COALESCE(nimi_en, nimi, nimi_sv) AS selite_en
		,'etl: p_lataa_d_yo_harjoittelukoulujen_henkilostoryhma' AS source
		FROM sa.sa_koodistot
		WHERE koodisto = 'harjoittelukoulujenhenkilostoryhmayliopisto'
		order by koodi
	) AS src
	ON target.koodi = src.koodi
WHEN MATCHED
	THEN
		UPDATE
		SET selite_fi = src.selite_fi
			,selite_sv = src.selite_sv
			,selite_en = src.selite_en
			,target.source = src.source
WHEN NOT MATCHED
	THEN
		INSERT (
			koodi
			,selite_fi
			,selite_sv
			,selite_en
			,source
			)
		VALUES (
			src.koodi
			,src.selite_fi
			,src.selite_sv
			,src.selite_en
			,src.source
			);

IF NOT EXISTS (
	SELECT * FROM INFORMATION_SCHEMA.COLUMNS
	WHERE TABLE_SCHEMA='dw' AND TABLE_NAME='d_yo_harjoittelukoulujen_henkilostoryhma' AND COLUMN_NAME='jarjestys_koodi')

BEGIN
	ALTER TABLE dw.d_yo_harjoittelukoulujen_henkilostoryhma ADD jarjestys_koodi AS case when koodi = -1 then '99999' else cast(koodi as varchar(10))
	END
END
