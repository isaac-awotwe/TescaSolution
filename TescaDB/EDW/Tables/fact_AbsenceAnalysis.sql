CREATE TABLE [EDW].[fact_AbsenceAnalysis] (
    [absenceSK]         BIGINT   IDENTITY (1, 1) NOT NULL,
    [EmployeeSK]        INT      NULL,
    [StoreSK]           INT      NULL,
    [AbsenceDateSK]     INT      NULL,
    [AbsenceCategorySK] INT      NULL,
    [AbsenceHours]      INT      NULL,
    [LoadDate]          DATETIME NULL,
    CONSTRAINT [edw_absence_sk] PRIMARY KEY CLUSTERED ([absenceSK] ASC),
    CONSTRAINT [edw_absence_category] FOREIGN KEY ([AbsenceCategorySK]) REFERENCES [EDW].[DimAbsence] ([categorySK]),
    CONSTRAINT [edw_absence_date_fk] FOREIGN KEY ([AbsenceDateSK]) REFERENCES [EDW].[DimDate] ([dateSK]),
    CONSTRAINT [edw_absence_employee_fk] FOREIGN KEY ([EmployeeSK]) REFERENCES [EDW].[DimEmployee] ([employeeSK]),
    CONSTRAINT [edw_absence_store_fk] FOREIGN KEY ([StoreSK]) REFERENCES [EDW].[DimStore] ([storeSK])
);

