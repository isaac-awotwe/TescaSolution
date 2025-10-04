CREATE TABLE [EDW].[DimCustomer] (
    [customerSK]    INT            IDENTITY (1, 1) NOT NULL,
    [CustomerID]    INT            NULL,
    [Name]          NVARCHAR (250) NULL,
    [Address]       NVARCHAR (50)  NULL,
    [City]          NVARCHAR (250) NULL,
    [State]         NVARCHAR (50)  NULL,
    [CreatedDate]   DATE           NULL,
    [EffectiveDate] DATETIME       NULL,
    CONSTRAINT [edw_dimcustomer_sk] PRIMARY KEY CLUSTERED ([customerSK] ASC)
);

