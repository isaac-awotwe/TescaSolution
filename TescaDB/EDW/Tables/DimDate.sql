CREATE TABLE [EDW].[DimDate] (
    [dateSK]           INT           NOT NULL,
    [BusinessDate]     DATE          NULL,
    [BusinessYear]     INT           NULL,
    [BusinessMonth]    INT           NULL,
    [BusinessQuarter]  NVARCHAR (2)  NULL,
    [EnglishMonth]     NVARCHAR (50) NULL,
    [SpanishMonth]     NVARCHAR (50) NULL,
    [FrenchMonth]      NVARCHAR (50) NULL,
    [EnglishDayofWeek] NVARCHAR (50) NULL,
    [SpanishDayofWeek] NVARCHAR (50) NULL,
    [FrenchDayofWeek]  NVARCHAR (50) NULL,
    [LoadDate]         DATETIME      DEFAULT (getdate()) NULL,
    CONSTRAINT [edw_dimdate_sk] PRIMARY KEY CLUSTERED ([dateSK] ASC)
);

