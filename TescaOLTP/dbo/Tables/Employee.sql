CREATE TABLE [dbo].[Employee] (
    [EmployeeID]    INT           IDENTITY (1, 1) NOT NULL,
    [EmployeeNo]    NVARCHAR (50) NULL,
    [FirstName]     NVARCHAR (50) NULL,
    [LastName]      NVARCHAR (50) NULL,
    [DoB]           DATE          NULL,
    [MaritalStatus] INT           NULL,
    CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED ([EmployeeID] ASC),
    CONSTRAINT [FK_Employee_MaritalStatus] FOREIGN KEY ([MaritalStatus]) REFERENCES [dbo].[MaritalStatus] ([MaritalStatusID])
);

