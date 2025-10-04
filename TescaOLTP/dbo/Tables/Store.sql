CREATE TABLE [dbo].[Store] (
    [StoreID]       INT           IDENTITY (1, 1) NOT NULL,
    [StateID]       INT           NULL,
    [StoreName]     NVARCHAR (50) NULL,
    [StreetAddress] NVARCHAR (50) NULL,
    [CityID]        INT           NULL,
    CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED ([StoreID] ASC),
    CONSTRAINT [FK_Store_City] FOREIGN KEY ([CityID]) REFERENCES [dbo].[City] ([CityID])
);

