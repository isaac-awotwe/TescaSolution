CREATE TABLE [staging].[PurchaseAnalysis] (
    [TransactionID]    INT           NOT NULL,
    [TransactionNo]    NVARCHAR (50) NULL,
    [TransDate]        DATE          NULL,
    [OrderDate]        DATE          NULL,
    [DeliveryDate]     DATE          NULL,
    [ShipDate]         DATE          NULL,
    [VendorID]         INT           NULL,
    [EmployeeID]       INT           NULL,
    [ProductID]        INT           NULL,
    [StoreID]          INT           NULL,
    [Quantity]         FLOAT (53)    NULL,
    [TaxAmount]        FLOAT (53)    NULL,
    [LineAmount]       FLOAT (53)    NULL,
    [DifferentialDays] FLOAT (53)    NULL,
    [LoadDate]         DATETIME      NULL,
    CONSTRAINT [staging_purchase_pk] PRIMARY KEY CLUSTERED ([TransactionID] ASC)
);

