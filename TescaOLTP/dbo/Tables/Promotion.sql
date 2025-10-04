CREATE TABLE [dbo].[Promotion] (
    [PromotionID]     INT        IDENTITY (1, 1) NOT NULL,
    [PromotionTypeID] INT        NULL,
    [StartDate]       DATE       NULL,
    [EndDate]         DATE       NOT NULL,
    [DiscountPercent] FLOAT (53) NULL,
    CONSTRAINT [PK_Promotion] PRIMARY KEY CLUSTERED ([PromotionID] ASC),
    CONSTRAINT [FK_Promotion_PromotionType] FOREIGN KEY ([PromotionTypeID]) REFERENCES [dbo].[PromotionType] ([PromotionTypeID])
);

