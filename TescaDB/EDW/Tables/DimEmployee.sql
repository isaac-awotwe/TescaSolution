CREATE TABLE [EDW].[DimEmployee] (
    [employeeSK]         INT            IDENTITY (1, 1) NOT NULL,
    [EmployeeID]         INT            NULL,
    [EmployeeNumber]     NVARCHAR (50)  NULL,
    [EmployeeName]       NVARCHAR (255) NULL,
    [DateofBirth]        DATE           NULL,
    [MaritalStatus]      NVARCHAR (50)  NULL,
    [EffectiveStartDate] DATETIME       NULL,
    [EffectiveEndDate]   DATETIME       NULL,
    CONSTRAINT [edw_dimemployee_sk] PRIMARY KEY CLUSTERED ([employeeSK] ASC)
);

