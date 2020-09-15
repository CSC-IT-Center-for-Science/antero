USE [ANTERO]
GO

/****** Object:  Table [dw].[f_amos_tutkinnot_ja_tutkinnonosat_painotetut]    Script Date: 15.9.2020 11:22:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dw].[f_amos_tutkinnot_ja_tutkinnonosat_painotetut_uusi](
	[tilastovuosi] [int] NULL,
	[d_kalenteri_id] [int] NULL,
	[d_kalenteri_alkamispaiva_id] [int] NULL,
	[d_sukupuoli_id] [int] NULL,
	[d_kieli_aidinkieli_id] [int] NULL,
	[d_ika_id] [int] NULL,
	[d_erityisopetus_id] [int] NULL,
	[d_koulutusluokitus_id] [int] NULL,
	[d_organisaatioluokitus_jarjestaja_id] [int] NULL,
	[d_organisaatioluokitus_jarjestaja_pihvi_id] [int] NULL,
	[d_organisaatioluokitus_jarjestaja_hist_id] [int] NULL,
	[d_organisaatioluokitus_jarjestaja_pihvi_hist_id] [int] NULL,
	[d_amos_spl_jarjestaja_linkki_id] [int] NULL,
	[d_organisaatioluokitus_oppilaitos_id] [int] NULL,
	[d_organisaatioluokitus_toimipiste_id] [int] NULL,
	[d_kustannusryhma_id] [int] NULL,
	[d_suorituksen_tyyppi_id] [int] NULL,
	[d_opintojenrahoitus_id] [int] NULL,
	[d_oppisopimuskoulutus_id] [int] NULL,
	[d_kytkin_vankilaopetus_id] [int] NULL,
	[d_amos_luvaton_koulutus_id] [int] NULL,
	[d_amos_luvaton_korotustekija_id] [int] NULL,
	[d_kytkin_hankintakoulutus_id] [int] NULL,
	[painottamaton_tutkinnot] [int] NULL,
	[painottamaton_osatutkinnot] [int] NULL,
	[painottamaton_osaamispisteet] [float] NULL,
	[painottamaton_osaamispisteet_summa] [float] NULL,
	[painotettu_tutkinnot_pt_kr_pk] [float] NULL,
	[painotettu_tutkinnot_at_eat_kr_pk] [float] NULL,
	[painotettu_tutkinnot_erityistuki] [float] NULL,
	[painotettu_tutkinnot_erityistuki_hyv] [float] NULL,
	[painotettu_tutkinnon_osien_osaamispisteet_pt_kr] [float] NULL,
	[painotettu_tutkinnon_osien_osaamispisteet_at_eat_kr] [float] NULL,
	[painotettu_tutkinnon_osien_osaamispisteet_erityistuki] [float] NULL,
	[painotettu_tutkinnon_osien_osaamispisteet_erityistuki_hyv] [float] NULL,
	[painotettu_tutkinnot_yht] [float] NULL,
	[painotettu_tutkinnon_osien_osaamispisteet_yht] [float] NULL
) ON [PRIMARY]

GO


