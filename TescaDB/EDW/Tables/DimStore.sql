CREATE TABLE [EDW].[DimStore] (
    [storeSK]       INT           IDENTITY (1, 1) NOT NULL,
    [StoreID]       INT           NULL,
    [Store]         NVARCHAR (50) NULL,
    [Address]       NVARCHAR (50) NULL,
    [City]          NVARCHAR (50) NULL,
    [State]         NVARCHAR (50) NULL,
    [EffectiveDate] DATETIME      NULL,
    CONSTRAINT [edw_dimstore_sk] PRIMARY KEY CLUSTERED ([storeSK] ASC)
);

