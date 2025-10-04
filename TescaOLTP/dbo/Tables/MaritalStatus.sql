CREATE TABLE [dbo].[MaritalStatus] (
    [MaritalStatusID] INT           IDENTITY (1, 1) NOT NULL,
    [MaritalStatus]   NVARCHAR (50) NULL,
    CONSTRAINT [PK_MaritalStatus] PRIMARY KEY CLUSTERED ([MaritalStatusID] ASC)
);

