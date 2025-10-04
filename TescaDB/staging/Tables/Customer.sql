CREATE TABLE [staging].[Customer] (
    [CustomerID]  INT            NOT NULL,
    [Name]        NVARCHAR (250) NULL,
    [Address]     NVARCHAR (50)  NULL,
    [City]        NVARCHAR (50)  NULL,
    [State]       NVARCHAR (50)  NULL,
    [CreatedDate] DATE           NULL,
    [LoadDate]    DATETIME       DEFAULT (getdate()) NULL,
    CONSTRAINT [staging_customer_pk] PRIMARY KEY CLUSTERED ([CustomerID] ASC)
);

