CREATE TABLE [dbo].[PurchaseTransaction] (
    [TransactionID] INT           IDENTITY (1, 1) NOT NULL,
    [TransactionNO] NVARCHAR (50) NULL,
    [TransDate]     DATETIME      NULL,
    [OrderDate]     DATETIME      NULL,
    [DeliveryDate]  DATETIME      NULL,
    [ShipDate]      DATETIME      NULL,
    [VendorID]      INT           NULL,
    [EmployeeID]    INT           NULL,
    [ProductID]     INT           NULL,
    [StoreID]       INT           NULL,
    [Quantity]      FLOAT (53)    NOT NULL,
    [TaxAmount]     FLOAT (53)    NULL,
    [LineAmount]    FLOAT (53)    NULL,
    CONSTRAINT [PK_PurchaseTransaction] PRIMARY KEY CLUSTERED ([TransactionID] ASC),
    CONSTRAINT [FK_PurchaseTransaction_Employee] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employee] ([EmployeeID]),
    CONSTRAINT [FK_PurchaseTransaction_Product] FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Product] ([ProductID]),
    CONSTRAINT [FK_PurchaseTransaction_Store] FOREIGN KEY ([StoreID]) REFERENCES [dbo].[Store] ([StoreID]),
    CONSTRAINT [FK_PurchaseTransaction_Vendor] FOREIGN KEY ([VendorID]) REFERENCES [dbo].[Vendor] ([VendorID])
);

