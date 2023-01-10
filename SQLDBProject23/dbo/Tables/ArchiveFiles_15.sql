CREATE TABLE [dbo].[ArchiveFiles_15] (
    [ArchiveId]   INT           IDENTITY (1, 1) NOT NULL,
    [FileId]      INT           NULL,
    [ArchivePath] VARCHAR (MAX) NULL,
    [ArchivedBy]  VARCHAR (400) NULL,
    [ArchiveDate] DATETIME      NULL,
    FOREIGN KEY ([FileId]) REFERENCES [dbo].[FileConfiguration_15] ([FileId])
);

