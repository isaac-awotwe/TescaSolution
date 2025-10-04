CREATE TABLE [staging].[Absence] (
    [categoryid] INT           NULL,
    [category]   NVARCHAR (50) NULL,
    [LoadDate]   DATETIME      DEFAULT (getdate()) NULL
);

