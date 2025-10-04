CREATE TABLE [staging].[OvertimeAnalysis] (
    [OvertimeID]    INT           NULL,
    [EmployeeNo]    NVARCHAR (50) NULL,
    [FirstName]     NVARCHAR (50) NULL,
    [LastName]      NVARCHAR (50) NULL,
    [StartOvertime] DATETIME      NULL,
    [EndOvertime]   DATETIME      NULL,
    [LoadDate]      DATETIME      DEFAULT (getdate()) NULL
);

