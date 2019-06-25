--Drop
DROP TABLE IF EXISTS [dbo].[Client]
GO

DROP TABLE IF EXISTS [dbo].[Company]
GO

--Create
CREATE TABLE [dbo].[Company]
(
    [Id] INT PRIMARY KEY NOT NULL,
    [Name] VARCHAR(100) NOT NULL
)
GO

CREATE TABLE [dbo].[Client] 
(
    [Id] INT PRIMARY KEY NOT NULL,
    [FullName] VARCHAR(100) NOT NULL,
    [CompanyId] INT NULL 
)
GO

--Foreign keys
ALTER TABLE [dbo].[Client] ADD CONSTRAINT [FK_CompanyClient] FOREIGN KEY REFERENCES [dbo].[Company]([Id])
GO

--Companies
INSERT INTO [dbo].[Company] ([Id], [Name]) VALUES (1, 'Company1')
GO

INSERT INTO [dbo].[Company] ([Id], [Name]) VALUES (2, 'Company2')
GO

INSERT INTO [dbo].[Company] ([Id], [Name]) VALUES (3, 'Company3')
GO

INSERT INTO [dbo].[Company] ([Id], [Name]) VALUES (4, 'Company4')
GO


--Clients
INSERT INTO [dbo].[Client] ([Id], [FullName], [CompanyId]) VALUES (1, 'Client1', 1)
GO

INSERT INTO [dbo].[Client] ([Id], [FullName], [CompanyId]) VALUES (2, 'Client2', 1)
GO

INSERT INTO [dbo].[Client] ([Id], [FullName], [CompanyId]) VALUES (3, 'Client3', 2)
GO

INSERT INTO [dbo].[Client] ([Id], [FullName], [CompanyId]) VALUES (4, 'Client4', 3)
GO

INSERT INTO [dbo].[Client] ([Id], [FullName], [CompanyId]) VALUES (5, 'Client5', null)
GO

INSERT INTO [dbo].[Client] ([Id], [FullName], [CompanyId]) VALUES (6, 'Client6', null)
GO

INSERT INTO [dbo].[Client] ([Id], [FullName], [CompanyId]) VALUES (7, 'Client7', null)
GO

INSERT INTO [dbo].[Client] ([Id], [FullName], [CompanyId]) VALUES (8, 'Client8', null)
GO