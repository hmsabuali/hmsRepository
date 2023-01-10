CREATE TABLE [dbo].[Series] (
    [SeriesId]          INT           IDENTITY (1, 1) NOT NULL,
    [SeriesName]        VARCHAR (100) NULL,
    [SeriesDescription] VARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([SeriesId] ASC)
);

