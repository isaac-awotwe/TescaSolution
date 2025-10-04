CREATE TABLE [control].[package] (
    [PackageID]     INT            NOT NULL,
    [PackageName]   NVARCHAR (255) NULL,
    [PackageTypeID] INT            NULL,
    [sequenceNo]    INT            NULL,
    [EnvironmentID] INT            NULL,
    [FrequencyID]   INT            NULL,
    [RunStartDate]  DATE           NULL,
    [RunEndDate]    DATE           NULL,
    [Active]        BIT            NULL,
    [LastRunDate]   DATETIME       NULL,
    CONSTRAINT [control_package_packageID_pk] PRIMARY KEY CLUSTERED ([PackageID] ASC),
    CONSTRAINT [control_package_Environment_fk] FOREIGN KEY ([EnvironmentID]) REFERENCES [control].[environment] ([EnvironmentID]),
    CONSTRAINT [control_package_Frequence_fk] FOREIGN KEY ([FrequencyID]) REFERENCES [control].[Frequency] ([FrequenceID]),
    CONSTRAINT [control_package_packageType_fk] FOREIGN KEY ([PackageTypeID]) REFERENCES [control].[PackageType] ([PackageTypeID])
);

