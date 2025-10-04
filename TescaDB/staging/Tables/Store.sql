CREATE TABLE [staging].[Store] (
    [StoreID]  INT           NOT NULL,
    [Store]    NVARCHAR (50) NULL,
    [Address]  NVARCHAR (50) NULL,
    [City]     NVARCHAR (50) NULL,
    [State]    NVARCHAR (50) NULL,
    [LoadDate] DATETIME      DEFAULT (getdate()) NULL,
    CONSTRAINT [staging_store_pk] PRIMARY KEY CLUSTERED ([StoreID] ASC)
);

