CREATE TABLE [staging].[Misconduct] (
    [misconductid]   INT            NULL,
    [misconductdesc] NVARCHAR (255) NULL,
    [LoadDate]       DATETIME       DEFAULT (getdate()) NULL
);

