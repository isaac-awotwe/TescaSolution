CREATE TABLE [staging].[AbsenceAnalysis] (
    [absenceSK]       INT      IDENTITY (1, 1) NOT NULL,
    [empid]           INT      NULL,
    [store]           INT      NULL,
    [absent_date]     DATE     NULL,
    [absent_hour]     INT      NULL,
    [absent_category] INT      NULL,
    [LoadDate]        DATETIME NULL,
    CONSTRAINT [staging_absence_pk] PRIMARY KEY CLUSTERED ([absenceSK] ASC)
);

