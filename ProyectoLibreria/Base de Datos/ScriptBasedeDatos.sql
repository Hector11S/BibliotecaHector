create database [DBBiblioteca]
Go

USE [DBBiblioteca]
GO
/****** Object:  User [123]    Script Date: 5/2/2025 21:23:43 ******/
CREATE USER [123] FOR LOGIN [123] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Hector]    Script Date: 5/2/2025 21:23:43 ******/
CREATE USER [Hector] FOR LOGIN [Hector] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [123]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [123]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [123]
GO
ALTER ROLE [db_owner] ADD MEMBER [Hector]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [Hector]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [Hector]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Hector]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [Hector]
GO
/****** Object:  Schema [Acceso]    Script Date: 5/2/2025 21:23:43 ******/
CREATE SCHEMA [Acceso]
GO
/****** Object:  Schema [General]    Script Date: 5/2/2025 21:23:43 ******/
CREATE SCHEMA [General]
GO
/****** Object:  Table [Acceso].[tbUsuarios]    Script Date: 5/2/2025 21:23:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Acceso].[tbUsuarios](
	[Usua_Id] [int] IDENTITY(1,1) NOT NULL,
	[Usua_Nombre] [varchar](100) NOT NULL,
	[Usua_Contrasena] [varchar](255) NOT NULL,
	[Usua_UsuarioCreacion] [int] NULL,
	[Usua_FechaCreacion] [datetime] NULL,
	[Usua_UsuarioModificacion] [int] NULL,
	[Usua_FechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Usua_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [General].[tbAutores]    Script Date: 5/2/2025 21:23:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[tbAutores](
	[auto_Id] [int] IDENTITY(1,1) NOT NULL,
	[auto_Nombre] [varchar](100) NOT NULL,
	[auto_Apellido] [varchar](100) NOT NULL,
	[Pais_Id] [int] NULL,
	[auto_fecha_nacimiento] [date] NULL,
	[auto_UsuarioCreacion] [int] NULL,
	[auto_FechaCreacion] [datetime] NULL,
	[auto_UsuarioModificacion] [int] NULL,
	[auto_FechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[auto_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [General].[tbGeneros]    Script Date: 5/2/2025 21:23:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[tbGeneros](
	[Gene_Id] [int] IDENTITY(1,1) NOT NULL,
	[Gene_Descripcion] [varchar](100) NOT NULL,
	[Gene_UsuarioCreacion] [int] NULL,
	[Gene_FechaCreacion] [datetime] NULL,
	[Gene_UsuarioModificacion] [int] NULL,
	[Gene_FechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Gene_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [General].[tbLibros]    Script Date: 5/2/2025 21:23:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[tbLibros](
	[Libr_id] [int] IDENTITY(1,1) NOT NULL,
	[Libr_titulo] [varchar](200) NOT NULL,
	[Libr_ano_publicacion] [int] NULL,
	[Gene_Id] [int] NULL,
	[auto_Id] [int] NOT NULL,
	[Libr_UsuarioCreacion] [int] NULL,
	[Libr_FechaCreacion] [datetime] NULL,
	[Libr_UsuarioModificacion] [int] NULL,
	[Libr_FechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Libr_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [General].[tbPaises]    Script Date: 5/2/2025 21:23:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[tbPaises](
	[Pais_Id] [int] IDENTITY(1,1) NOT NULL,
	[Pais_Descripcion] [varchar](100) NOT NULL,
	[Pais_UsuarioCreacion] [int] NULL,
	[Pais_FechaCreacion] [datetime] NULL,
	[Pais_UsuarioModificacion] [int] NULL,
	[Pais_FechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Pais_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Acceso].[tbUsuarios] ON 

INSERT [Acceso].[tbUsuarios] ([Usua_Id], [Usua_Nombre], [Usua_Contrasena], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion]) VALUES (1, N'Hector', N'123', 1, NULL, 1, NULL)
INSERT [Acceso].[tbUsuarios] ([Usua_Id], [Usua_Nombre], [Usua_Contrasena], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion]) VALUES (2, N'Juan Perez', N'contraseña123', NULL, CAST(N'2025-02-04T19:34:46.580' AS DateTime), NULL, NULL)
INSERT [Acceso].[tbUsuarios] ([Usua_Id], [Usua_Nombre], [Usua_Contrasena], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion]) VALUES (3, N'Maria Lopez', N'contraseña456', NULL, CAST(N'2025-02-04T19:34:46.580' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [Acceso].[tbUsuarios] OFF
GO
SET IDENTITY_INSERT [General].[tbAutores] ON 

INSERT [General].[tbAutores] ([auto_Id], [auto_Nombre], [auto_Apellido], [Pais_Id], [auto_fecha_nacimiento], [auto_UsuarioCreacion], [auto_FechaCreacion], [auto_UsuarioModificacion], [auto_FechaModificacion]) VALUES (1, N'Gabriel', N'García Márquez', 1, CAST(N'1927-03-06' AS Date), NULL, CAST(N'2025-02-04T19:34:46.737' AS DateTime), NULL, NULL)
INSERT [General].[tbAutores] ([auto_Id], [auto_Nombre], [auto_Apellido], [Pais_Id], [auto_fecha_nacimiento], [auto_UsuarioCreacion], [auto_FechaCreacion], [auto_UsuarioModificacion], [auto_FechaModificacion]) VALUES (2, N'Isabel', N'Allende', 2, CAST(N'1942-08-02' AS Date), NULL, CAST(N'2025-02-04T19:34:46.737' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [General].[tbAutores] OFF
GO
SET IDENTITY_INSERT [General].[tbGeneros] ON 

INSERT [General].[tbGeneros] ([Gene_Id], [Gene_Descripcion], [Gene_UsuarioCreacion], [Gene_FechaCreacion], [Gene_UsuarioModificacion], [Gene_FechaModificacion]) VALUES (1, N'Ficción', NULL, CAST(N'2025-02-04T19:34:46.763' AS DateTime), NULL, NULL)
INSERT [General].[tbGeneros] ([Gene_Id], [Gene_Descripcion], [Gene_UsuarioCreacion], [Gene_FechaCreacion], [Gene_UsuarioModificacion], [Gene_FechaModificacion]) VALUES (2, N'Realismo Mágico', NULL, CAST(N'2025-02-04T19:34:46.763' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [General].[tbGeneros] OFF
GO
SET IDENTITY_INSERT [General].[tbLibros] ON 

INSERT [General].[tbLibros] ([Libr_id], [Libr_titulo], [Libr_ano_publicacion], [Gene_Id], [auto_Id], [Libr_UsuarioCreacion], [Libr_FechaCreacion], [Libr_UsuarioModificacion], [Libr_FechaModificacion]) VALUES (13, N'fff', 2028, 1, 2, 1, CAST(N'2025-02-05T18:34:30.073' AS DateTime), 1, CAST(N'2025-02-05T20:01:45.277' AS DateTime))
INSERT [General].[tbLibros] ([Libr_id], [Libr_titulo], [Libr_ano_publicacion], [Gene_Id], [auto_Id], [Libr_UsuarioCreacion], [Libr_FechaCreacion], [Libr_UsuarioModificacion], [Libr_FechaModificacion]) VALUES (14, N's', 2022, 2, 2, 1, CAST(N'2025-02-05T18:36:51.573' AS DateTime), 1, CAST(N'2025-02-05T19:45:55.683' AS DateTime))
INSERT [General].[tbLibros] ([Libr_id], [Libr_titulo], [Libr_ano_publicacion], [Gene_Id], [auto_Id], [Libr_UsuarioCreacion], [Libr_FechaCreacion], [Libr_UsuarioModificacion], [Libr_FechaModificacion]) VALUES (17, N'rfgf', 2020, 2, 1, 1, CAST(N'2025-02-05T19:43:29.207' AS DateTime), 1, CAST(N'2025-02-05T19:46:15.220' AS DateTime))
INSERT [General].[tbLibros] ([Libr_id], [Libr_titulo], [Libr_ano_publicacion], [Gene_Id], [auto_Id], [Libr_UsuarioCreacion], [Libr_FechaCreacion], [Libr_UsuarioModificacion], [Libr_FechaModificacion]) VALUES (18, N'ssssssssssssssssssssssssssssss', 2022, 2, 1, 1, CAST(N'2025-02-05T19:51:22.570' AS DateTime), 1, CAST(N'2025-02-05T20:01:49.370' AS DateTime))
INSERT [General].[tbLibros] ([Libr_id], [Libr_titulo], [Libr_ano_publicacion], [Gene_Id], [auto_Id], [Libr_UsuarioCreacion], [Libr_FechaCreacion], [Libr_UsuarioModificacion], [Libr_FechaModificacion]) VALUES (19, N'dddqwdqwddddddd', 1714, 2, 1, 1, CAST(N'2025-02-05T19:56:24.967' AS DateTime), 1, CAST(N'2025-02-05T20:59:34.503' AS DateTime))
SET IDENTITY_INSERT [General].[tbLibros] OFF
GO
SET IDENTITY_INSERT [General].[tbPaises] ON 

INSERT [General].[tbPaises] ([Pais_Id], [Pais_Descripcion], [Pais_UsuarioCreacion], [Pais_FechaCreacion], [Pais_UsuarioModificacion], [Pais_FechaModificacion]) VALUES (1, N'Honduras', NULL, CAST(N'2025-02-04T19:34:46.627' AS DateTime), NULL, NULL)
INSERT [General].[tbPaises] ([Pais_Id], [Pais_Descripcion], [Pais_UsuarioCreacion], [Pais_FechaCreacion], [Pais_UsuarioModificacion], [Pais_FechaModificacion]) VALUES (2, N'México', NULL, CAST(N'2025-02-04T19:34:46.627' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [General].[tbPaises] OFF
GO
ALTER TABLE [Acceso].[tbUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usua_UsuarioCreacion] FOREIGN KEY([Usua_UsuarioCreacion])
REFERENCES [Acceso].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Acceso].[tbUsuarios] CHECK CONSTRAINT [FK_Usua_UsuarioCreacion]
GO
ALTER TABLE [Acceso].[tbUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usua_UsuarioModificacion] FOREIGN KEY([Usua_UsuarioModificacion])
REFERENCES [Acceso].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Acceso].[tbUsuarios] CHECK CONSTRAINT [FK_Usua_UsuarioModificacion]
GO
ALTER TABLE [General].[tbAutores]  WITH CHECK ADD FOREIGN KEY([Pais_Id])
REFERENCES [General].[tbPaises] ([Pais_Id])
ON DELETE SET NULL
GO
ALTER TABLE [General].[tbAutores]  WITH CHECK ADD  CONSTRAINT [FK_auto_UsuarioCreacion] FOREIGN KEY([auto_UsuarioCreacion])
REFERENCES [Acceso].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [General].[tbAutores] CHECK CONSTRAINT [FK_auto_UsuarioCreacion]
GO
ALTER TABLE [General].[tbAutores]  WITH CHECK ADD  CONSTRAINT [FK_auto_UsuarioModificacion] FOREIGN KEY([auto_UsuarioModificacion])
REFERENCES [Acceso].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [General].[tbAutores] CHECK CONSTRAINT [FK_auto_UsuarioModificacion]
GO
ALTER TABLE [General].[tbGeneros]  WITH CHECK ADD  CONSTRAINT [FK_Generos_UsuarioCreacion] FOREIGN KEY([Gene_UsuarioCreacion])
REFERENCES [Acceso].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [General].[tbGeneros] CHECK CONSTRAINT [FK_Generos_UsuarioCreacion]
GO
ALTER TABLE [General].[tbGeneros]  WITH CHECK ADD  CONSTRAINT [FK_Generos_UsuarioModificacion] FOREIGN KEY([Gene_UsuarioModificacion])
REFERENCES [Acceso].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [General].[tbGeneros] CHECK CONSTRAINT [FK_Generos_UsuarioModificacion]
GO
ALTER TABLE [General].[tbLibros]  WITH CHECK ADD FOREIGN KEY([auto_Id])
REFERENCES [General].[tbAutores] ([auto_Id])
ON DELETE CASCADE
GO
ALTER TABLE [General].[tbLibros]  WITH CHECK ADD  CONSTRAINT [FK_Libr_Gene_Id] FOREIGN KEY([Gene_Id])
REFERENCES [General].[tbGeneros] ([Gene_Id])
GO
ALTER TABLE [General].[tbLibros] CHECK CONSTRAINT [FK_Libr_Gene_Id]
GO
ALTER TABLE [General].[tbLibros]  WITH CHECK ADD  CONSTRAINT [FK_Libr_UsuarioCreacion] FOREIGN KEY([Libr_UsuarioCreacion])
REFERENCES [Acceso].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [General].[tbLibros] CHECK CONSTRAINT [FK_Libr_UsuarioCreacion]
GO
ALTER TABLE [General].[tbLibros]  WITH CHECK ADD  CONSTRAINT [FK_Libr_UsuarioModificacion] FOREIGN KEY([Libr_UsuarioModificacion])
REFERENCES [Acceso].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [General].[tbLibros] CHECK CONSTRAINT [FK_Libr_UsuarioModificacion]
GO
ALTER TABLE [General].[tbPaises]  WITH CHECK ADD  CONSTRAINT [FK_Pais_UsuarioCreacion] FOREIGN KEY([Pais_UsuarioCreacion])
REFERENCES [Acceso].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [General].[tbPaises] CHECK CONSTRAINT [FK_Pais_UsuarioCreacion]
GO
ALTER TABLE [General].[tbPaises]  WITH CHECK ADD  CONSTRAINT [FK_Pais_UsuarioModificacion] FOREIGN KEY([Pais_UsuarioModificacion])
REFERENCES [Acceso].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [General].[tbPaises] CHECK CONSTRAINT [FK_Pais_UsuarioModificacion]
GO
/****** Object:  StoredProcedure [General].[sp_Autores_Detalle]    Script Date: 5/2/2025 21:23:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   PROCEDURE [General].[sp_Autores_Detalle]
    @auto_Id INT = NULL
AS
BEGIN
    SELECT 
        a.[auto_Id],
        CONCAT(a.[auto_Nombre], ' ', a.[auto_Apellido]) AS Nombre_Completo
    FROM [General].[tbAutores] a
    LEFT JOIN [Acceso].[tbUsuarios] uc ON a.[auto_UsuarioCreacion] = uc.[Usua_Id]
    LEFT JOIN [Acceso].[tbUsuarios] um ON a.[auto_UsuarioModificacion] = um.[Usua_Id]
    WHERE (@auto_Id IS NULL OR a.[auto_Id] = @auto_Id)
END
GO
/****** Object:  StoredProcedure [General].[sp_Autores_Listar]    Script Date: 5/2/2025 21:23:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [General].[sp_Autores_Listar]
AS
BEGIN
    SELECT 
        a.[auto_Id],
        CONCAT(a.[auto_Nombre], ' ', a.[auto_Apellido]) AS Nombre_Completo
    FROM [General].[tbAutores] a
    LEFT JOIN [Acceso].[tbUsuarios] uc ON a.[auto_UsuarioCreacion] = uc.[Usua_Id]
    LEFT JOIN [Acceso].[tbUsuarios] um ON a.[auto_UsuarioModificacion] = um.[Usua_Id]
END



GO
/****** Object:  StoredProcedure [General].[sp_Generos_Detalle]    Script Date: 5/2/2025 21:23:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   PROCEDURE [General].[sp_Generos_Detalle]
    @Gene_Id INT = NULL
AS
BEGIN
    SELECT 
        g.[Gene_Id],
        g.[Gene_Descripcion]
    FROM [General].[tbGeneros] g
    LEFT JOIN [Acceso].[tbUsuarios] uc ON g.[Gene_UsuarioCreacion] = uc.[Usua_Id]
    LEFT JOIN [Acceso].[tbUsuarios] um ON g.[Gene_UsuarioModificacion] = um.[Usua_Id]
    WHERE (@Gene_Id IS NULL OR g.[Gene_Id] = @Gene_Id)
END
GO
/****** Object:  StoredProcedure [General].[sp_Generos_Listar]    Script Date: 5/2/2025 21:23:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [General].[sp_Generos_Listar]
AS
BEGIN
    SELECT 
        g.[Gene_Id],
        g.[Gene_Descripcion]

    FROM [General].[tbGeneros] g
    LEFT JOIN [Acceso].[tbUsuarios] uc ON g.[Gene_UsuarioCreacion] = uc.[Usua_Id]
    LEFT JOIN [Acceso].[tbUsuarios] um ON g.[Gene_UsuarioModificacion] = um.[Usua_Id]
END
GO
/****** Object:  StoredProcedure [General].[sp_Libros_Actualizar]    Script Date: 5/2/2025 21:23:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [General].[sp_Libros_Actualizar]
    @Libr_id INT,
    @Libr_titulo NVARCHAR(255),
    @Libr_ano_publicacion INT,
    @Gene_Id INT,
    @auto_Id INT,
    @Libr_UsuarioModificacion int,
	@Libr_FechaModificacion DATETIME
AS
BEGIN
    UPDATE [General].[tbLibros]
    SET 
        [Libr_titulo] = @Libr_titulo,
        [Libr_ano_publicacion] = @Libr_ano_publicacion,
        [Gene_Id] = @Gene_Id,
        [auto_Id] = @auto_Id,
        [Libr_UsuarioModificacion] = @Libr_UsuarioModificacion,
	    [Libr_FechaModificacion] = @Libr_FechaModificacion
    WHERE 
        [Libr_id] = @Libr_id
END


GO
/****** Object:  StoredProcedure [General].[sp_Libros_Detalle]    Script Date: 5/2/2025 21:23:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [General].[sp_Libros_Detalle]
    @Libr_Id INT
AS
BEGIN
    SELECT 
        l.[Libr_id],
        l.[Libr_titulo],
        l.[Libr_ano_publicacion],
        l.[Gene_Id],
        l.[auto_Id],
        l.[Libr_UsuarioCreacion],
        uc.[Usua_Nombre] AS Usuario_Creacion,
        l.[Libr_FechaCreacion],
        l.[Libr_UsuarioModificacion],
        um.[Usua_Nombre] AS Usuario_Modificacion,
        l.[Libr_FechaModificacion],
		CONCAT(a.[auto_Nombre], ' ', a.[auto_Apellido]) AS Nombre_Completo,
		       g.[Gene_Descripcion]
    FROM [General].[tbLibros] l
    LEFT JOIN [Acceso].[tbUsuarios] uc ON l.[Libr_UsuarioCreacion] = uc.[Usua_Id]
    LEFT JOIN [Acceso].[tbUsuarios] um ON l.[Libr_UsuarioModificacion] = um.[Usua_Id]
	    LEFT JOIN [General].[tbGeneros] g ON l.[Gene_Id] = g.[Gene_Id] 
    LEFT JOIN [General].[tbAutores] a ON l.[auto_Id] = a.[auto_Id]  
    WHERE l.[Libr_id] = @Libr_Id
END
GO
/****** Object:  StoredProcedure [General].[sp_Libros_Eliminar]    Script Date: 5/2/2025 21:23:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [General].[sp_Libros_Eliminar]
    @Libr_id INT
AS
BEGIN
    DELETE FROM [General].[tbLibros]
    WHERE 
        [Libr_id] = @Libr_id
END
GO
/****** Object:  StoredProcedure [General].[sp_Libros_Insertar]    Script Date: 5/2/2025 21:23:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [General].[sp_Libros_Insertar]
    @Libr_titulo NVARCHAR(255),
    @Libr_ano_publicacion INT,
    @Gene_Id INT,
    @auto_Id INT,
    @Libr_UsuarioCreacion INT,
    @Libr_FechaCreacion DATETIME
AS
BEGIN
    INSERT INTO [General].[tbLibros] (
        [Libr_titulo],
        [Libr_ano_publicacion],
        [Gene_Id],
        [auto_Id],
        [Libr_UsuarioCreacion],
        [Libr_FechaCreacion]
    )
    VALUES (
        @Libr_titulo,
        @Libr_ano_publicacion,
        @Gene_Id,
        @auto_Id,
        @Libr_UsuarioCreacion,
        @Libr_FechaCreacion
    )
END



GO
/****** Object:  StoredProcedure [General].[sp_Libros_Listar]    Script Date: 5/2/2025 21:23:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [General].[sp_Libros_Listar]
AS
BEGIN
    SELECT 
        ROW_NUMBER() OVER (ORDER BY l.[Libr_FechaCreacion] DESC) AS codigo,
        l.[Libr_id],
        l.[Libr_titulo],
        l.[Libr_ano_publicacion],
        l.[Gene_Id],
        g.[Gene_Descripcion] AS Genero, 
        l.[auto_Id],
        CONCAT(a.[auto_Nombre], ' ', a.[auto_Apellido]) AS Nombre_Completo_Autor, 
        l.[Libr_UsuarioCreacion],
        uc.[Usua_Nombre] AS Usuario_Creacion,
        l.[Libr_FechaCreacion],
        l.[Libr_UsuarioModificacion],
        um.[Usua_Nombre] AS Usuario_Modificacion,
        l.[Libr_FechaModificacion]
    FROM [General].[tbLibros] l
    LEFT JOIN [Acceso].[tbUsuarios] uc ON l.[Libr_UsuarioCreacion] = uc.[Usua_Id]
    LEFT JOIN [Acceso].[tbUsuarios] um ON l.[Libr_UsuarioModificacion] = um.[Usua_Id]
    LEFT JOIN [General].[tbGeneros] g ON l.[Gene_Id] = g.[Gene_Id] 
    LEFT JOIN [General].[tbAutores] a ON l.[auto_Id] = a.[auto_Id]  
END
GO
