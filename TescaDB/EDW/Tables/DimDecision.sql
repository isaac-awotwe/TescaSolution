CREATE TABLE [EDW].[DimDecision] (
    [decisionSK]    INT           IDENTITY (1, 1) NOT NULL,
    [decision_id]   INT           NULL,
    [decision]      NVARCHAR (50) NULL,
    [EffectiveDate] DATETIME      NULL,
    CONSTRAINT [edw_dimdecision_sk] PRIMARY KEY CLUSTERED ([decisionSK] ASC)
);

