SELECT articles.[Subject], tags.Name FROM [dbo].[Articles] as articles
LEFT JOIN [dbo].[ArticleTags] AS articleTags ON articleTags.ArticleGuid = articles.Guid
LEFT JOIN [dbo].[Tags] AS [tags] ON tags.Id = articleTags.TagId