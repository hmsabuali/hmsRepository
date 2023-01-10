CREATE TABLE [dbo].[FileConfiguration_15] (
    [FileId]   INT          IDENTITY (1, 1) NOT NULL,
    [FileName] VARCHAR (40) NULL,
    [StatusId] INT          NULL,
    PRIMARY KEY CLUSTERED ([FileId] ASC),
    FOREIGN KEY ([StatusId]) REFERENCES [dbo].[AuditStatus_15] ([StatusId])
);

