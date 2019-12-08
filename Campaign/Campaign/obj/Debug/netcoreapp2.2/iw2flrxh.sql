ALTER TABLE [Category] ADD [RelatedId] int NULL;

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20190519225902_update-table-category', N'2.2.3-servicing-35854');

GO

ALTER TABLE [Compaign] DROP CONSTRAINT [FK_Compaign_Category_CategoryId];

GO

DECLARE @var0 sysname;
SELECT @var0 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Compaign]') AND [c].[name] = N'CategoryId');
IF @var0 IS NOT NULL EXEC(N'ALTER TABLE [Compaign] DROP CONSTRAINT [' + @var0 + '];');
ALTER TABLE [Compaign] ALTER COLUMN [CategoryId] int NULL;

GO

ALTER TABLE [Compaign] ADD CONSTRAINT [FK_Compaign_Category_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [Category] ([Id]) ON DELETE NO ACTION;

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20190519230337_update-table-category-v2', N'2.2.3-servicing-35854');

GO

