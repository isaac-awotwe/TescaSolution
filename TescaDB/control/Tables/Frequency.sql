CREATE TABLE [control].[Frequency] (
    [FrequenceID] INT            NOT NULL,
    [Frequency]   NVARCHAR (255) NULL,
    [CreatedDate] DATETIME       NULL,
    CONSTRAINT [control_Frequency_pk] PRIMARY KEY CLUSTERED ([FrequenceID] ASC)
);

