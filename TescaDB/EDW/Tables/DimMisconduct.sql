CREATE TABLE [EDW].[DimMisconduct] (
    [misconductSK]   INT            IDENTITY (1, 1) NOT NULL,
    [misconductid]   INT            NULL,
    [misconductdesc] NVARCHAR (255) NULL,
    [EffectiveDate]  DATETIME       NULL,
    CONSTRAINT [edw_dimmisconduct_sk] PRIMARY KEY CLUSTERED ([misconductSK] ASC)
);

