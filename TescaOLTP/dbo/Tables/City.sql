CREATE TABLE [dbo].[City] (
    [CityID]   INT           NOT NULL,
    [CityName] NVARCHAR (50) NULL,
    [StateID]  INT           NULL,
    CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED ([CityID] ASC),
    CONSTRAINT [FK_City_State] FOREIGN KEY ([StateID]) REFERENCES [dbo].[State] ([StateID])
);

