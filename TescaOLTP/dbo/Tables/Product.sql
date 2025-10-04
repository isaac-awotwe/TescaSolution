CREATE TABLE [dbo].[Product] (
    [ProductID]     INT           IDENTITY (1, 1) NOT NULL,
    [DepartmentID]  INT           NULL,
    [Product]       NVARCHAR (50) NULL,
    [ProductNumber] NVARCHAR (50) NULL,
    [UnitPrice]     FLOAT (53)    NULL,
    CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([ProductID] ASC),
    CONSTRAINT [FK_Product_Department] FOREIGN KEY ([DepartmentID]) REFERENCES [dbo].[Department] ([DepartmentID])
);

