USE [VipunenTK_lisatiedot]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Haku_valinta_kandi_maisteri]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[haku_valinta_kandi_maisteri](
	[I_sykli_kandi] [nvarchar](6) NULL,
	[I_sykli_maisteri] [nchar](6) NULL
) ON [PRIMARY]

END
GO
USE [ANTERO]