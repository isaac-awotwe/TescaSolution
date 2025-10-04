CREATE TABLE [dbo].[Customer] (
    [CustomerID]      INT           IDENTITY (1, 1) NOT NULL,
    [FirstName]       NVARCHAR (50) NULL,
    [LastName]        NVARCHAR (50) NULL,
    [CustomerAddress] NVARCHAR (50) NULL,
    [CityID]          INT           NULL,
    [CreatedDate]     DATE          NULL,
    [ModifiedDate]    DATE          NULL,
    CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED ([CustomerID] ASC),
    CONSTRAINT [FK_Customer_City] FOREIGN KEY ([CityID]) REFERENCES [dbo].[City] ([CityID])
);

