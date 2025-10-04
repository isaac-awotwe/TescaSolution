CREATE TABLE [staging].[Decision] (
    [decision_id] INT           NULL,
    [decision]    NVARCHAR (50) NULL,
    [LoadDate]    DATETIME      DEFAULT (getdate()) NULL
);

