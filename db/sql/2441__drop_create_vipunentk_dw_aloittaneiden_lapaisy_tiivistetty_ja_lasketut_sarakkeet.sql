USE [VipunenTK_DW]
GO

/****** Object:  Table [dbo].[_aloittaneiden_lapaisy_tiivistetty_ja_lasketut_sarakkeet]    Script Date: 22.9.2019 17:59:19 ******/
DROP TABLE [dbo].[_aloittaneiden_lapaisy_tiivistetty_ja_lasketut_sarakkeet]
GO

/****** Object:  Table [dbo].[_aloittaneiden_lapaisy_tiivistetty_ja_lasketut_sarakkeet]    Script Date: 22.9.2019 17:59:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[_aloittaneiden_lapaisy_tiivistetty_ja_lasketut_sarakkeet](
	[rivinumero] [int] NOT NULL,
	[tilv] [varchar](255) NULL,
	[tilv_date] [date] NULL,
	[lahde] [varchar](255) NULL,
	[opp] [nvarchar](5) NULL,
	[sp] [varchar](255) NULL,
	[syntv] [varchar](255) NULL,
	[aikielir1] [varchar](255) NULL,
	[alvv] [varchar](255) NULL,
	[allk] [varchar](255) NULL,
	[klaji] [varchar](255) NULL,
	[ophal] [varchar](255) NULL,
	[jarj] [varchar](255) NULL,
	[kkun] [varchar](255) NULL,
	[maak] [varchar](2) NOT NULL,
	[koulk] [varchar](255) NULL,
	[opmala] [varchar](2) NULL,
	[opmopa] [varchar](3) NULL,
	[opmast] [varchar](2) NULL,
	[opm95opa] [varchar](2) NULL,
	[koulutussektori] [varchar](26) NULL,
	[pohjkoulk] [varchar](255) NULL,
	[alvv_kk] [varchar](255) NULL,
	[allk_kk] [varchar](255) NULL,
	[ololk] [varchar](255) NULL,
	[rahlahde] [varchar](255) NULL,
	[koulutuslaji2] [varchar](255) NULL,
	[saavutettu_suorv] [varchar](255) NULL,
	[saavutettu_suorlk] [varchar](255) NULL,
	[saavutettu_tutkmaak] [varchar](255) NULL,
	[saavutettu_tutkjarj] [varchar](255) NULL,
	[saavutettu_tutkopp] [varchar](255) NULL,
	[saavutettu_tutkkoulk] [varchar](255) NULL,
	[saavutettu_tutkopmala] [varchar](255) NULL,
	[saavutettu_tutkopmopa] [varchar](255) NULL,
	[saavutettu_tutkopmast] [varchar](255) NULL,
	[saavutettu_tutkopm95opa] [varchar](255) NULL,
	[saavutettu_tutkkoulutussektori] [varchar](255) NULL,
	[tarkasteluperiodi] [nvarchar](20) NOT NULL,
	[tarkasteluperiodi_char] [nvarchar](20) NOT NULL,
	[tietolahde] [varchar](255) NULL,
	[aineistorivinumero] [numeric](18, 0) NULL,
	[lkm_int] [int] NULL,
	[1a Aloittaneiden opintojen kulku koulutuslajin mukaan prioriteettina mikä tahansa tutkinto] [nvarchar](255) NOT NULL,
	[1a_jarjestys] [nvarchar](255) NOT NULL,
	[1b Aloittaneiden opintojen kulku koulutuslajin mukaan prioriteettina tutkinto ja opiskelu alkuperäisessä tutkintolajissa] [nvarchar](255) NOT NULL,
	[1b_jarjestys] [nvarchar](255) NOT NULL,
	[1c Aloittaneista tutkinnon suorittaneet koulutuslajin mukaan] [nvarchar](255) NOT NULL,
	[1c_jarjestys] [nvarchar](255) NOT NULL,
	[1d Aloittaneista ilman tutkintoa opiskelua jatkavat koulutuslajin mukaan] [nvarchar](255) NOT NULL,
	[1d_jarjestys] [nvarchar](255) NOT NULL,
	[1e Aloittaneista alkuperäisen koulutuslajin tutkinnon suorittaneet koulutuslajin mukaan] [nvarchar](255) NOT NULL,
	[1e_jarjestys] [nvarchar](255) NOT NULL,
	[1f Aloittaneista muun kuin alkuperäisen tutkintolajin tutkinnon suorittaneet koulutuslajin mukaan] [nvarchar](255) NOT NULL,
	[1f_jarjestys] [nvarchar](255) NOT NULL,
	[1g Aloittaneista alkuperäisen tutkintolajin opiskelua jatkavat koulutuslajin mukaan] [nvarchar](255) NOT NULL,
	[1g_jarjestys] [nvarchar](255) NOT NULL,
	[1h Aloittaneista muun tutkintolajin opiskelua jatkavat koulutuslajin mukaan] [nvarchar](255) NOT NULL,
	[1h_jarjestys] [nvarchar](255) NOT NULL,
	[2a Aloittaneiden opintojen kulku koulutusalan (2002) mukaan prioriteettina mikä tahansa tutkinto] [nvarchar](255) NOT NULL,
	[2a_jarjestys] [nvarchar](255) NOT NULL,
	[2b Aloittaneiden opintojen kulku koulutusalan (2002) mukaan prioriteettina tutkinto ja opiskelu alkuperäisellä] [nvarchar](255) NOT NULL,
	[2b_jarjestys] [nvarchar](255) NOT NULL,
	[2e Aloittaneista alkuperäisen koulutusalan (2002) tutkinnon suorittaneet koulutusalan mukaan] [nvarchar](255) NOT NULL,
	[2e_jarjestys] [nvarchar](255) NOT NULL,
	[2f Aloittaneista muun kuin alkuperäisen tutkintolajin tutkinnon suorittaneet koulutuslajin mukaan] [nvarchar](255) NOT NULL,
	[2f_jarjestys] [nvarchar](255) NOT NULL,
	[2g Aloittaneista alkuperäisellä koulutusalalla opiskelua jatkavat koulutusalan mukaan] [nvarchar](255) NOT NULL,
	[2g_jarjestys] [nvarchar](255) NOT NULL,
	[2h Aloittaneista muulla koulutusalalla opiskelua jatkavat koulutusalan mukaan] [nvarchar](255) NOT NULL,
	[2h_jarjestys] [nvarchar](255) NOT NULL,
	[3a Aloittaneiden opintojen kulku opintoalan (2002) mukaan prioriteettina mikä tahansa tutkinto] [nvarchar](255) NOT NULL,
	[3a_jarjestys] [nvarchar](255) NOT NULL,
	[3b Aloittaneiden opintojen kulku opintoalan (2002) mukaan prioriteettina tutkinto ja opiskelu alkuperäisellä] [nvarchar](255) NOT NULL,
	[3b_jarjestys] [nvarchar](255) NOT NULL,
	[3e Aloittaneista alkuperäisen opintoalan (2002) tutkinnon suorittaneet opintoalan mukaan] [nvarchar](255) NOT NULL,
	[3e_jarjestys] [nvarchar](255) NOT NULL,
	[3f Aloittaneista muun opintoalan (2002) tutkinnon suorittaneet opintoalan mukaan] [nvarchar](255) NOT NULL,
	[3f_jarjestys] [nvarchar](255) NOT NULL,
	[3g Aloittaneista alkuperäisellä opintoalalla (2002) opiskelua jatkavat opintoalan mukaan] [nvarchar](255) NOT NULL,
	[3g_jarjestys] [nvarchar](255) NOT NULL,
	[3h Aloittaneista muulla opintoalalla (2002) opiskelua jatkavat opintoalan mukaan] [nvarchar](255) NOT NULL,
	[3h_jarjestys] [nvarchar](255) NOT NULL,
	[4a Aloittaneiden opintojen kulku koulutuksen järjestäjän mukaan, toinen aste prioriteettina tutkinto missä tahansa] [nvarchar](255) NOT NULL,
	[4a_jarjestys] [nvarchar](255) NOT NULL,
	[4b Aloittaneiden opintojen kulku koulutuksen järjestäjän mukaan, toinen aste prioriteettina tutkinto ja opiskelu alkuperäisellä] [nvarchar](255) NOT NULL,
	[4b_jarjestys] [nvarchar](255) NOT NULL,
	[4e Aloittaneista alkuperäisen koulutuksen järjestäjän tutkinnon suorittaneet järjestäjän mukaan] [nvarchar](255) NOT NULL,
	[4e_jarjestys] [nvarchar](255) NOT NULL,
	[4f Aloittaneista muun koulutuksen järjestäjän tutkinnon suorittaneet järjestäjän mukaan] [nvarchar](255) NOT NULL,
	[4f_jarjestys] [nvarchar](255) NOT NULL,
	[4g Aloittaneista alkuperäisellä järjestäjällä opiskelua jatkavat järjestäjän mukaan] [nvarchar](255) NOT NULL,
	[4g_jarjestys] [nvarchar](255) NOT NULL,
	[4h Aloittaneista muulla järjestäjällä opiskelua jatkavat järjestäjän mukaan] [nvarchar](255) NOT NULL,
	[4h_jarjestys] [nvarchar](255) NOT NULL,
	[5a Aloittaneiden opintojen kulku oppilaitoksen mukaan prioriteettina tutkinto missä tahansa] [nvarchar](255) NOT NULL,
	[5a_jarjestys] [nvarchar](255) NOT NULL,
	[5b Aloittaneiden opintojen kulku oppilaitoksen mukaan prioriteettina tutkinto ja opiskelu alkuperäisessä] [nvarchar](255) NOT NULL,
	[5b_jarjestys] [nvarchar](255) NOT NULL,
	[5e Aloittaneista alkuperäisessä oppilaitoksessa tutkinnon suorittaneet oppilaitoksen mukaan] [nvarchar](255) NOT NULL,
	[5e_jarjestys] [nvarchar](255) NOT NULL,
	[5f Aloittaneista muussa oppilaitoksessa tutkinnon suorittaneet oppilaitoksen mukaan] [nvarchar](255) NOT NULL,
	[5f_jarjestys] [nvarchar](255) NOT NULL,
	[5g Aloittaneista alkuperäisessä oppilaitoksessa opiskelua jatkavat oppilaitoksen mukaan] [nvarchar](255) NOT NULL,
	[5g_jarjestys] [nvarchar](255) NOT NULL,
	[5h Aloittaneista muussa oppilaitoksessa opiskelua jatkavat oppilaitoksen mukaan] [nvarchar](255) NOT NULL,
	[5h_jarjestys] [nvarchar](255) NOT NULL,
	[6a Aloittaneiden opintojen kulku maakunnan mukaan prioriteettina tutkinto missä tahansa] [nvarchar](255) NOT NULL,
	[6a_jarjestys] [nvarchar](255) NOT NULL,
	[6b Aloittaneiden opintojen kulku maakunnan mukaan prioriteettina tutkinto ja opiskelu alkuperäisessä] [nvarchar](255) NOT NULL,
	[6b_jarjestys] [nvarchar](255) NOT NULL,
	[6e Aloittaneista alkuperäisessä maakunnassa tutkinnon suorittaneet maakunnan mukaan] [nvarchar](255) NOT NULL,
	[6e_jarjestys] [nvarchar](255) NOT NULL,
	[6f Aloittaneista muussa maakunnassa tutkinnon suorittaneet maakunnan mukaan] [nvarchar](255) NOT NULL,
	[6f_jarjestys] [nvarchar](255) NOT NULL,
	[6g Aloittaneista alkuperäisessä maakunnassa opiskelua jatkavat maakunnan mukaan] [nvarchar](255) NOT NULL,
	[6g_jarjestys] [nvarchar](255) NOT NULL,
	[6h Aloittaneista muussa maakunnassa opiskelua jatkavat maakunnan mukaan] [nvarchar](255) NOT NULL,
	[6h_jarjestys] [nvarchar](255) NOT NULL,
	[7a Aloittaneiden opintojen kulku koulutussektorin mukaan prioriteettina tutkinto missä tahansa] [nvarchar](255) NOT NULL,
	[7a_jarjestys] [nvarchar](255) NOT NULL,
	[7b Aloittaneiden opintojen kulku koulutussektorin mukaan prioriteettina tutkinto ja opiskelu alkuperäisellä] [nvarchar](255) NOT NULL,
	[7b_jarjestys] [nvarchar](255) NOT NULL,
	[7e Aloittaneista alkuperäisen koulutussektorin tutkinnon suorittaneet koulutussektorin mukaan] [nvarchar](255) NOT NULL,
	[7e_jarjestys] [nvarchar](255) NOT NULL,
	[7f Aloittaneista muun koulutussektorin tutkinnon suorittaneet koulutussektorin mukaan] [nvarchar](255) NOT NULL,
	[7f_jarjestys] [nvarchar](255) NOT NULL,
	[7g Aloittaneista alkuperäisellä koulutussektorilla opiskelua jatkavat koulutussektorin mukaan] [nvarchar](255) NOT NULL,
	[7g_jarjestys] [nvarchar](255) NOT NULL,
	[7h Aloittaneista muulla koulutussektorilla opiskelua jatkavat koulutussektorin mukaan] [nvarchar](255) NOT NULL,
	[7h_jarjestys] [nvarchar](255) NOT NULL,
	[8a Aloittaneiden opintojen kulku opintoalan (1995) mukaan prioriteettina mikä tahansa tutkinto] [nvarchar](255) NOT NULL,
	[8a_jarjestys] [nvarchar](255) NOT NULL,
	[8b Aloittaneiden opintojen kulku opintoalan (1995) mukaan prioriteettina tutkinto ja opiskelu alkuperäisellä] [nvarchar](255) NOT NULL,
	[8b_jarjestys] [nvarchar](255) NOT NULL,
	[8e Aloittaneista alkuperäisen opintoalan (1995) tutkinnon suorittaneet opintoalan mukaan] [nvarchar](255) NOT NULL,
	[8e_jarjestys] [nvarchar](255) NOT NULL,
	[8f Aloittaneista muun opintoalan (1995) tutkinnon suorittaneet opintoalan mukaan] [nvarchar](255) NOT NULL,
	[8f_jarjestys] [nvarchar](255) NOT NULL,
	[8g Aloittaneista alkuperäisellä opintoalalla (1995) opiskelua jatkavat opintoalan mukaan] [nvarchar](255) NOT NULL,
	[8g_jarjestys] [nvarchar](255) NOT NULL,
	[8h Aloittaneista muulla opintoalalla (1995) opiskelua jatkavat opintoalan mukaan] [nvarchar](255) NOT NULL,
	[8h_jarjestys] [nvarchar](255) NOT NULL
) ON [PRIMARY]

GO


USE [ANTERO]