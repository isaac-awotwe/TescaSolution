CREATE TABLE [staging].[MisconductAnalysis] (
    [misconductSK]    INT      IDENTITY (1, 1) NOT NULL,
    [empid]           INT      NULL,
    [storeid]         INT      NULL,
    [misconduct_date] DATE     NULL,
    [misconduct_id]   INT      NULL,
    [decision_id]     INT      NULL,
    [LoadDate]        DATETIME NULL,
    CONSTRAINT [staging_misconduct_pk] PRIMARY KEY CLUSTERED ([misconductSK] ASC)
);

