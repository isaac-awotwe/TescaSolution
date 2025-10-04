CREATE TABLE [EDW].[fact_MisconductAnalysis] (
    [misconductSK]     BIGINT   IDENTITY (1, 1) NOT NULL,
    [EmployeeSK]       INT      NULL,
    [StoreSk]          INT      NULL,
    [MisconductDateSK] INT      NULL,
    [MisconductIdSk]   INT      NULL,
    [DecisionIdSk]     INT      NULL,
    [LoadDate]         DATETIME NULL,
    CONSTRAINT [edw_misconduct_sk] PRIMARY KEY CLUSTERED ([misconductSK] ASC),
    CONSTRAINT [edw_misconduct_date_fk] FOREIGN KEY ([MisconductDateSK]) REFERENCES [EDW].[DimDate] ([dateSK]),
    CONSTRAINT [edw_misconduct_decision_fk] FOREIGN KEY ([DecisionIdSk]) REFERENCES [EDW].[DimDecision] ([decisionSK]),
    CONSTRAINT [edw_misconduct_employee_fk] FOREIGN KEY ([EmployeeSK]) REFERENCES [EDW].[DimEmployee] ([employeeSK]),
    CONSTRAINT [edw_misconduct_misconducttype_fk] FOREIGN KEY ([MisconductIdSk]) REFERENCES [EDW].[DimMisconduct] ([misconductSK]),
    CONSTRAINT [edw_misconduct_store_fk] FOREIGN KEY ([StoreSk]) REFERENCES [EDW].[DimStore] ([storeSK])
);

