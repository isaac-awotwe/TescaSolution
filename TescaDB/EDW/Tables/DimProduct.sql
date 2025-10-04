CREATE TABLE [EDW].[DimProduct] (
    [productSK]          INT           IDENTITY (1, 1) NOT NULL,
    [ProductID]          INT           NULL,
    [Product]            NVARCHAR (50) NULL,
    [ProductNumber]      NVARCHAR (50) NULL,
    [Department]         NVARCHAR (50) NULL,
    [UnitPrice]          FLOAT (53)    NULL,
    [EffectiveStartDate] DATETIME      NULL,
    [EffectiveEndDate]   DATETIME      NULL,
    CONSTRAINT [edw_dimproduct_sk] PRIMARY KEY CLUSTERED ([productSK] ASC)
);

