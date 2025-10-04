CREATE TABLE [EDW].[fact_OvertimeAnalysis] (
    [overtimeSK]          BIGINT     IDENTITY (1, 1) NOT NULL,
    [OvertimeID]          INT        NULL,
    [EmployeeSK]          INT        NULL,
    [OvertimeStartDateSK] INT        NULL,
    [OvertimeStartHourSK] INT        NULL,
    [OvertimeEndDateSK]   INT        NULL,
    [OvertimeEndHourSK]   INT        NULL,
    [OvertimeHours]       FLOAT (53) NULL,
    [LoadDate]            DATETIME   NULL,
    CONSTRAINT [edw_overtime_sk] PRIMARY KEY CLUSTERED ([overtimeSK] ASC),
    CONSTRAINT [edw_overtime_employee_fk] FOREIGN KEY ([EmployeeSK]) REFERENCES [EDW].[DimEmployee] ([employeeSK]),
    CONSTRAINT [edw_overtime_enddate_fk] FOREIGN KEY ([OvertimeEndDateSK]) REFERENCES [EDW].[DimDate] ([dateSK]),
    CONSTRAINT [edw_overtime_endhour_fk] FOREIGN KEY ([OvertimeEndHourSK]) REFERENCES [EDW].[DimTime] ([TimeSk]),
    CONSTRAINT [edw_overtime_startdate_fk] FOREIGN KEY ([OvertimeStartDateSK]) REFERENCES [EDW].[DimDate] ([dateSK]),
    CONSTRAINT [edw_overtime_starthour_fk] FOREIGN KEY ([OvertimeStartHourSK]) REFERENCES [EDW].[DimTime] ([TimeSk])
);

