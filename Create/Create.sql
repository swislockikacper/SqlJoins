--Drop
DROP TABLE IF EXISTS [dbo].[Product]
GO

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

CREATE TABLE [dbo].[Product] 
(
    [Id] INT PRIMARY KEY NOT NULL,
    [Name] VARCHAR(100) NOT NULL,
    [ClientId] INT NULL 
)
GO

--Foreign keys
ALTER TABLE [dbo].[Client] ADD CONSTRAINT [FK_CompanyClient] FOREIGN KEY REFERENCES [dbo].[Company]([Id])
GO

ALTER TABLE [dbo].[Product] ADD CONSTRAINT [FK_ClientProduct] FOREIGN KEY REFERENCES [dbo].[Client]([Id])
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

--Products
INSERT INTO [dbo].[Product] ([Id], [Name], [ClientId]) VALUES (1, 'Product1', 1)
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [ClientId]) VALUES (2, 'Product2', 2)
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [ClientId]) VALUES (3, 'Product3', 2)
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [ClientId]) VALUES (4, 'Product4', 3) 
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [ClientId]) VALUES (5, 'Product5', 3)
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [ClientId]) VALUES (6, 'Product6', 4)
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [ClientId]) VALUES (7, 'Product7', 5)
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [ClientId]) VALUES (8, 'Product8', 6)
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [ClientId]) VALUES (9, 'Product9', 7)
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [ClientId]) VALUES (10, 'Product10', 7)
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [ClientId]) VALUES (11, 'Product11', 8)
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [ClientId]) VALUES (12, 'Product12', 8)
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [ClientId]) VALUES (13, 'Product13', null)
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [ClientId]) VALUES (14, 'Product14', null)
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [ClientId]) VALUES (15, 'Product15', null)
GO

INSERT INTO [dbo].[Product] ([Id], [Name], [ClientId]) VALUES (16, 'Product16', null)
GO