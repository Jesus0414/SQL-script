USE [db_simpsons]
GO
/****** Object:  User [simpsons]    Script Date: 15/10/2019 04:02:57 p. m. ******/
CREATE USER [simpsons] FOR LOGIN [simpsons] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [simpsons]
GO
/****** Object:  Table [dbo].[tbl_character]    Script Date: 15/10/2019 04:02:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_character](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](20) NULL,
	[secondName] [varchar](20) NULL,
	[lastName] [varchar](20) NULL,
	[age] [int] NULL,
	[descp] [varchar](150) NULL,
 CONSTRAINT [PK_tbl_character] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_character] ON 

INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descp]) VALUES (2, N'Homero', N'Jay', N'Simpsons', 34, N'Papa de Bart, Lisa y Maggie Simpsons y esposo de Marge')
INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descp]) VALUES (3, N'Bartolomeo', N'Jay', N'Simpsons', 10, N'Hermano de Lisa y de Maggie Simpsons')
INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descp]) VALUES (4, N'Lisa', N'', N'Simpsons', 8, N'Hermana de Bart y de Maggie Simpsons')
INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descp]) VALUES (5, N'Margory', N'', N'Simpsons', 34, N'Mama de Bart, Lisa y Maggie Simpsons y esposa de Homero')
SET IDENTITY_INSERT [dbo].[tbl_character] OFF
