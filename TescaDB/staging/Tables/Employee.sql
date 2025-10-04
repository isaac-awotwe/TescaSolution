CREATE TABLE [staging].[Employee] (
    [EmployeeID]     INT            NOT NULL,
    [EmployeeNumber] NVARCHAR (50)  NULL,
    [EmployeeName]   NVARCHAR (255) NULL,
    [DateofBirth]    DATE           NULL,
    [MaritalStatus]  NVARCHAR (50)  NULL,
    [LoadDate]       DATETIME       DEFAULT (getdate()) NULL,
    CONSTRAINT [staging_employee_pk] PRIMARY KEY CLUSTERED ([EmployeeID] ASC)
);

