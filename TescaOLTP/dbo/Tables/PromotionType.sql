CREATE TABLE [dbo].[PromotionType] (
    [PromotionTypeID] INT           IDENTITY (1, 1) NOT NULL,
    [Promotion]       NVARCHAR (50) NULL,
    CONSTRAINT [PK_PromotionType] PRIMARY KEY CLUSTERED ([PromotionTypeID] ASC)
);

