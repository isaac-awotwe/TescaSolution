CREATE TABLE [staging].[Vendor] (
    [VendorID]       INT            NOT NULL,
    [VendorNo]       NVARCHAR (50)  NULL,
    [Vendor]         NVARCHAR (255) NULL,
    [RegistrationNo] NVARCHAR (50)  NULL,
    [VendorAddress]  NVARCHAR (50)  NULL,
    [CityName]       NVARCHAR (50)  NULL,
    [State]          NVARCHAR (50)  NULL,
    [LoadDate]       DATETIME       DEFAULT (getdate()) NULL,
    CONSTRAINT [staging_vendor_pk] PRIMARY KEY CLUSTERED ([VendorID] ASC)
);

