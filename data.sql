INSERT INTO [dbo].[Articles] VALUES (NEWID(), 'Test Article 1')
INSERT INTO [dbo].[Articles] VALUES (NEWID(), 'Test Article 2')
INSERT INTO [dbo].[Articles] VALUES (NEWID(), 'Test Article 3')
INSERT INTO [dbo].[Articles] VALUES (NEWID(), 'Test Article 4')
INSERT INTO [dbo].[Articles] VALUES (NEWID(), 'Test Article 5')
INSERT INTO [dbo].[Articles] VALUES (NEWID(), 'Test Article 6')

INSERT INTO [dbo].[Tags]([Name]) VALUES ('Tag1')
INSERT INTO [dbo].[Tags]([Name]) VALUES ('Tag2')
INSERT INTO [dbo].[Tags]([Name]) VALUES ('Tag3')
INSERT INTO [dbo].[Tags]([Name]) VALUES ('Tag4')
INSERT INTO [dbo].[Tags]([Name]) VALUES ('Tag5')

INSERT INTO [dbo].[ArticleTags] VALUES (
	(SELECT [Guid] FROM [dbo].[Articles] WHERE [Subject] = 'Test Article 1'),
	(SELECT [Id] FROM [dbo].[Tags] WHERE [Name] = 'Tag1')
)
INSERT INTO [dbo].[ArticleTags] VALUES (
	(SELECT [Guid] FROM [dbo].[Articles] WHERE [Subject] = 'Test Article 1'),
	(SELECT [Id] FROM [dbo].[Tags] WHERE [Name] = 'Tag3')
)
INSERT INTO [dbo].[ArticleTags] VALUES (
	(SELECT [Guid] FROM [dbo].[Articles] WHERE [Subject] = 'Test Article 2'),
	(SELECT [Id] FROM [dbo].[Tags] WHERE [Name] = 'Tag5')
)
INSERT INTO [dbo].[ArticleTags] VALUES (
	(SELECT [Guid] FROM [dbo].[Articles] WHERE [Subject] = 'Test Article 2'),
	(SELECT [Id] FROM [dbo].[Tags] WHERE [Name] = 'Tag4')
)
INSERT INTO [dbo].[ArticleTags] VALUES (
	(SELECT [Guid] FROM [dbo].[Articles] WHERE [Subject] = 'Test Article 2'),
	(SELECT [Id] FROM [dbo].[Tags] WHERE [Name] = 'Tag3')
)
INSERT INTO [dbo].[ArticleTags] VALUES (
	(SELECT [Guid] FROM [dbo].[Articles] WHERE [Subject] = 'Test Article 3'),
	(SELECT [Id] FROM [dbo].[Tags] WHERE [Name] = 'Tag1')
)
INSERT INTO [dbo].[ArticleTags] VALUES (
	(SELECT [Guid] FROM [dbo].[Articles] WHERE [Subject] = 'Test Article 4'),
	(SELECT [Id] FROM [dbo].[Tags] WHERE [Name] = 'Tag1')
)