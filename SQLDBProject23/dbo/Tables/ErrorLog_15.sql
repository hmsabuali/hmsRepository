CREATE TABLE [dbo].[ErrorLog_15] (
    [ErroId]       INT           IDENTITY (1, 1) NOT NULL,
    [ErrorMessage] VARCHAR (MAX) NULL,
    [FileId]       INT           NULL,
    FOREIGN KEY ([FileId]) REFERENCES [dbo].[FileConfiguration_15] ([FileId])
);

