CREATE TABLE [dbo].[DraftOrder] (
    [Id]         INT        NOT NULL IDENTITY,
    [DraftOrder] INT        NULL,
    [TeamName]   NCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

