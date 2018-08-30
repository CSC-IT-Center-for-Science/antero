USE [ANTERO]
GO

/****** Object:  Table [sa].[sa_varda_koodistot]    Script Date: 30.7.2018 13:42:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[sa].[sa_varda_koodistot]') AND type in (N'U'))

BEGIN

CREATE TABLE [sa].[sa_varda_koodistot](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[koodisto] [nvarchar](100) NOT NULL,
	[koodi] [nvarchar](100) NOT NULL,
	[nimi_fi] [nvarchar](200) NULL,
	[nimi_sv] [nvarchar](200) NULL,
	[nimi_en] [nvarchar](200) NULL,
	[kuvaus_fi] [nvarchar](200) NULL,
	[kuvaus_sv] [nvarchar](200) NULL,
	[kuvaus_en] [nvarchar](200) NULL,
	[alkupvm] [date] NULL,
	[loppupvm] [date] NULL,
	[loadtime] [datetime2](4) NOT NULL,
	[source] [nvarchar](255) NULL,
	[username] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK__sa_varda_koodistot] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [sa].[sa_varda_koodistot] ADD  CONSTRAINT [DF__sa_varda_koodistot__loadtime]  DEFAULT (getdate()) FOR [loadtime]
GO

ALTER TABLE [sa].[sa_varda_koodistot] ADD  CONSTRAINT [DF__sa_varda_koodistot__username]  DEFAULT (suser_name()) FOR [username]
GO


