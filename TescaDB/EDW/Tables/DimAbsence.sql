CREATE TABLE [EDW].[DimAbsence] (
    [categorySK]    INT           IDENTITY (1, 1) NOT NULL,
    [categoryid]    INT           NULL,
    [category]      NVARCHAR (50) NULL,
    [EffectiveDate] DATETIME      NULL,
    CONSTRAINT [edw_dimabsence_sk] PRIMARY KEY CLUSTERED ([categorySK] ASC)
);

