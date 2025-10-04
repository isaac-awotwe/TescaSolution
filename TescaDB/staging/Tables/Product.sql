CREATE TABLE [staging].[Product] (
    [ProductID]     INT           NOT NULL,
    [Product]       NVARCHAR (50) NULL,
    [ProductNumber] NVARCHAR (50) NULL,
    [Department]    NVARCHAR (50) NULL,
    [UnitPrice]     FLOAT (53)    NULL,
    [LoadDate]      DATETIME      DEFAULT (getdate()) NULL,
    CONSTRAINT [staging_product_pk] PRIMARY KEY CLUSTERED ([ProductID] ASC)
);

