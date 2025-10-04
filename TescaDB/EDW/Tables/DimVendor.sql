CREATE TABLE [EDW].[DimVendor] (
    [vendorSK]           INT            IDENTITY (1, 1) NOT NULL,
    [VendorID]           INT            NULL,
    [VendorNo]           NVARCHAR (50)  NULL,
    [Vendor]             NVARCHAR (255) NULL,
    [RegistrationNo]     NVARCHAR (50)  NULL,
    [VendorAddress]      NVARCHAR (50)  NULL,
    [CityName]           NVARCHAR (50)  NULL,
    [State]              NVARCHAR (50)  NULL,
    [EffectiveStartDate] DATETIME       NULL,
    [EffectiveEndDate]   DATETIME       NULL,
    CONSTRAINT [edw_dimvendor_sk] PRIMARY KEY CLUSTERED ([vendorSK] ASC)
);

