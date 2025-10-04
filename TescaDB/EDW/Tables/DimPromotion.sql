CREATE TABLE [EDW].[DimPromotion] (
    [promotionSK]     INT           IDENTITY (1, 1) NOT NULL,
    [PromotionID]     INT           NULL,
    [Promotion]       NVARCHAR (50) NULL,
    [StartDate]       DATE          NULL,
    [EndDate]         DATE          NULL,
    [DiscountPercent] FLOAT (53)    NULL,
    [EffectiveDate]   DATETIME      NULL,
    CONSTRAINT [edw_promotion_sk] PRIMARY KEY CLUSTERED ([promotionSK] ASC)
);

