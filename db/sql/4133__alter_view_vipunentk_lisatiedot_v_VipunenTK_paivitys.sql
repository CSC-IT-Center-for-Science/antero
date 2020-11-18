USE [VipunenTK_lisatiedot]
GO

/****** Object:  View [dbo].[v_VipunenTK_paivitys]    Script Date: 17.11.2020 20:09:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





/****** Script for SelectTopNRows command from SSMS  ******/
ALTER VIEW [dbo].[v_VipunenTK_paivitys]
as

SELECT distinct 
tk.Taulu as aineisto
,afp.aineisto_avain
,proseduuri
,k.kuutio_nimi

FROM [TK_H9098_CSC].[dbo].[TKsiirto_muutokset] tk
left join [VipunenTK_lisatiedot].[dbo].[Vipunen_aineisto_fakta_proseduuri] afp on	
	REPLACE(REPLACE(afp.aineisto_avain, 'TK_K', 'TK_'), 'TK_R', 'TK_')
	=
	REPLACE(REPLACE(CASE 
						WHEN Taulu LIKE '%_vos_%' THEN LEFT(Taulu, CHARINDEX('_sopv', Taulu) - 5) --tpo 7.1X sopv19
						WHEN LEN(LEFT(Taulu, CHARINDEX('_sopv', Taulu) - 1)) > 9 THEN LEFT(Taulu, LEN(LEFT(Taulu, CHARINDEX('_sopv', Taulu) - 6))) --sopv sis. monta tilv
						ELSE LEFT(Taulu, CHARINDEX('_sopv', Taulu) - 1) 
					END
					, 'TK_K'
					, 'TK_'
					)
			, 'TK_R'
			, 'TK_'
			)
left join VipunenTK_lisatiedot.dbo.Vipunen_aineisto_kuutio ak on ak.aineisto_avain=afp.aineisto_avain
left join VipunenTK_lisatiedot.dbo.Vipunen_kuutio k on k.kuutio_avain=ak.kuutio_avain

where /*siirtoaika=(select max(siirtoaika) from [TK_H9098_CSC].[dbo].[TKsiirto_muutokset]) and*/ 
proseduuri is not null
 


GO


USE [ANTERO]