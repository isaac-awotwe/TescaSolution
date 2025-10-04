CREATE TABLE [control].[environment] (
    [EnvironmentID] INT            NOT NULL,
    [Environment]   NVARCHAR (255) NULL,
    [CreatedDate]   DATETIME       NULL,
    CONSTRAINT [control_environment_pk] PRIMARY KEY CLUSTERED ([EnvironmentID] ASC)
);

