CREATE TABLE [dbo].[Employee_15] (
    [Id]     INT          NOT NULL,
    [Name]   VARCHAR (50) NULL,
    [FileId] INT          NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([FileId]) REFERENCES [dbo].[FileConfiguration_15] ([FileId])
);

