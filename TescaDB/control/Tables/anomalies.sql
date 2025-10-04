CREATE TABLE [control].[anomalies] (
    [anomaliesk]  BIGINT         IDENTITY (1, 1) NOT NULL,
    [PackageID]   INT            NULL,
    [Tablename]   NVARCHAR (255) NULL,
    [Columnname]  NVARCHAR (255) NULL,
    [RecordID]    INT            NULL,
    [CreatedDate] DATETIME       DEFAULT (getdate()) NULL,
    CONSTRAINT [control_anomalies_sk] PRIMARY KEY CLUSTERED ([anomaliesk] ASC),
    CONSTRAINT [anomalies_package_fk] FOREIGN KEY ([PackageID]) REFERENCES [control].[package] ([PackageID])
);

