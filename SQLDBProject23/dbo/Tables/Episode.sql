CREATE TABLE [dbo].[Episode] (
    [Episode]     INT           IDENTITY (1, 1) NOT NULL,
    [EpisodeName] VARCHAR (100) NULL,
    [Seriesid]    INT           NULL,
    PRIMARY KEY CLUSTERED ([Episode] ASC)
);

