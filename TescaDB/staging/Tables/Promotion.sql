CREATE TABLE [staging].[Promotion] (
    [PromotionID]     INT           NOT NULL,
    [Promotion]       NVARCHAR (50) NULL,
    [StartDate]       DATE          NULL,
    [EndDate]         DATE          NULL,
    [DiscountPercent] FLOAT (53)    NULL,
    [LoadDate]        DATETIME      DEFAULT (getdate()) NULL,
    CONSTRAINT [staging_promotion_pk] PRIMARY KEY CLUSTERED ([PromotionID] ASC)
);

