CREATE TABLE [control].[metrics] (
    [MetricID]       BIGINT   IDENTITY (1, 1) NOT NULL,
    [PackageID]      INT      NULL,
    [StgSourceCount] INT      NULL,
    [StgDesCount]    INT      NULL,
    [PreCount]       INT      NULL,
    [CurrentCount]   INT      NULL,
    [Type1Count]     INT      NULL,
    [Type2Count]     INT      NULL,
    [PostCount]      INT      NULL,
    [RunDate]        DATETIME NULL,
    CONSTRAINT [control_metrics_metricID_pk] PRIMARY KEY CLUSTERED ([MetricID] ASC),
    CONSTRAINT [control_metrics_Package_fk] FOREIGN KEY ([PackageID]) REFERENCES [control].[package] ([PackageID])
);

