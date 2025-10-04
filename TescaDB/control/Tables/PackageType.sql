CREATE TABLE [control].[PackageType] (
    [PackageTypeID] INT            NOT NULL,
    [PackageType]   NVARCHAR (255) NULL,
    [CreatedDate]   DATETIME       NULL,
    CONSTRAINT [control_packageType_pk] PRIMARY KEY CLUSTERED ([PackageTypeID] ASC)
);

