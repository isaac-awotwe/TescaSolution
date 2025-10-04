CREATE TABLE [dbo].[Vendor] (
    [VendorID]       INT           IDENTITY (1, 1) NOT NULL,
    [VendorNo]       NVARCHAR (50) NULL,
    [LastName]       NVARCHAR (50) NULL,
    [FirstName]      NVARCHAR (50) NULL,
    [RegistrationNo] NVARCHAR (50) NULL,
    [VendorAddress]  NVARCHAR (50) NULL,
    [CityID]         INT           NULL,
    [CreatedDate]    DATE          NULL,
    [ModifiedDate]   DATE          NULL,
    CONSTRAINT [PK_Vendor] PRIMARY KEY CLUSTERED ([VendorID] ASC),
    CONSTRAINT [FK_Vendor_City] FOREIGN KEY ([CityID]) REFERENCES [dbo].[City] ([CityID])
);

