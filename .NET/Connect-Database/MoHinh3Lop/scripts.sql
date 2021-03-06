USE [quanlysinhvien]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopSH](
	[ID_Lop] [nchar](10) NOT NULL,
	[NameLop] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LopSH] PRIMARY KEY CLUSTERED 
(
	[ID_Lop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SV](
	[MSSV] [nchar](10) NOT NULL,
	[NameSV] [nvarchar](50) NOT NULL,
	[ID_Lop] [nchar](10) NOT NULL,
	[Gender] [bit] NULL,
	[NS] [date] NULL,
	[DTB] [float] NOT NULL,
	[Anh] [bit] NULL,
	[HB] [bit] NULL,
	[CMND] [bit] NULL,
 CONSTRAINT [PK_SV] PRIMARY KEY CLUSTERED 
(
	[MSSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LopSH] ([ID_Lop], [NameLop]) VALUES (N'101       ', N'20T1')
INSERT [dbo].[LopSH] ([ID_Lop], [NameLop]) VALUES (N'102       ', N'20T2')
GO
INSERT [dbo].[SV] ([MSSV], [NameSV], [ID_Lop], [Gender], [NS], [DTB], [Anh], [HB], [CMND]) VALUES (N'000       ', N'Phuc', N'101       ', 1, CAST(N'2002-10-23' AS Date), 8.8, 1, 1, 1)
INSERT [dbo].[SV] ([MSSV], [NameSV], [ID_Lop], [Gender], [NS], [DTB], [Anh], [HB], [CMND]) VALUES (N'111       ', N'Toan', N'101       ', 1, CAST(N'2002-10-10' AS Date), 10, 1, 1, 1)
INSERT [dbo].[SV] ([MSSV], [NameSV], [ID_Lop], [Gender], [NS], [DTB], [Anh], [HB], [CMND]) VALUES (N'333       ', N'Cam', N'102       ', 0, CAST(N'2002-06-23' AS Date), 9.9, 1, 0, 1)
INSERT [dbo].[SV] ([MSSV], [NameSV], [ID_Lop], [Gender], [NS], [DTB], [Anh], [HB], [CMND]) VALUES (N'666       ', N'Binh', N'101       ', 0, CAST(N'2002-12-10' AS Date), 8.9, 1, 1, 1)
GO
ALTER TABLE [dbo].[SV]  WITH CHECK ADD  CONSTRAINT [FK_SV_LopSH] FOREIGN KEY([ID_Lop])
REFERENCES [dbo].[LopSH] ([ID_Lop])
GO
ALTER TABLE [dbo].[SV] CHECK CONSTRAINT [FK_SV_LopSH]
GO
