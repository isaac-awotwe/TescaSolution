CREATE TABLE [staging].[SalesAnalysis] (
    [TransactionID]      INT           NOT NULL,
    [TransactionNo]      NVARCHAR (50) NULL,
    [TransDate]          DATE          NULL,
    [TransHour]          INT           NULL,
    [OrderDate]          DATE          NULL,
    [OrderHour]          INT           NULL,
    [DeliveryDate]       DATE          NULL,
    [ChannelID]          INT           NULL,
    [CustomerID]         INT           NULL,
    [EmployeeID]         INT           NULL,
    [ProductID]          INT           NULL,
    [StoreID]            INT           NULL,
    [PromotionID]        INT           NULL,
    [Quantity]           FLOAT (53)    NULL,
    [TaxAmount]          FLOAT (53)    NULL,
    [LineAmount]         FLOAT (53)    NULL,
    [LineDiscountAmount] FLOAT (53)    NULL,
    [LoadDate]           DATETIME      DEFAULT (getdate()) NULL,
    CONSTRAINT [staging_salesanalysis_pk] PRIMARY KEY CLUSTERED ([TransactionID] ASC)
);

