CREATE TABLE [EDW].[DimTime] (
    [TimeSk]       INT           IDENTITY (1, 1) NOT NULL,
    [TimeHour]     INT           NULL,
    [TimeInterval] NVARCHAR (20) NOT NULL,
    [BusinessHour] NVARCHAR (20) NOT NULL,
    [PeriodofDay]  NVARCHAR (20) NOT NULL,
    [LoadDate]     DATETIME      DEFAULT (getdate()) NULL,
    CONSTRAINT [edw_time_sk] PRIMARY KEY CLUSTERED ([TimeSk] ASC)
);

