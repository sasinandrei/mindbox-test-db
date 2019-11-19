CREATE TABLE [dbo].[Articles]
(
	[Guid]              UNIQUEIDENTIFIER NOT NULL,
	[Subject]				NVARCHAR (150)   NOT NULL,
	CONSTRAINT [PK_Articles] PRIMARY KEY NONCLUSTERED ([Guid])
)
GO

CREATE TABLE [dbo].[Tags]
(
	[Id]				INT NOT NULL IDENTITY,
	[Name]				NVARCHAR (50)   NOT NULL,
	CONSTRAINT [PK_Tags] PRIMARY KEY NONCLUSTERED ([Id])
)
GO

CREATE TABLE [dbo].[ArticleTags]
(
	[ArticleGuid]       UNIQUEIDENTIFIER NOT NULL,
	[TagId]				INT NOT NULL,
	CONSTRAINT [PK_ArticleTags] PRIMARY KEY NONCLUSTERED ([ArticleGuid], [TagId]),
	CONSTRAINT [FK_ArticleTags_Tags] FOREIGN KEY ([ArticleGuid]) REFERENCES [dbo].[Articles] ([Guid]),
	CONSTRAINT [FK_Tags] FOREIGN KEY ([TagId]) REFERENCES [dbo].[Tags] ([Id])
)
GO