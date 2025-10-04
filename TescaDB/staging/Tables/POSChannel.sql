CREATE TABLE [staging].[POSChannel] (
    [ChannelID]        INT           NOT NULL,
    [ChannelNumber]    NVARCHAR (50) NULL,
    [DeviceModel]      NVARCHAR (50) NULL,
    [SerialNumber]     NVARCHAR (50) NULL,
    [InstallationDate] DATE          NULL,
    [LoadDate]         DATETIME      DEFAULT (getdate()) NULL,
    CONSTRAINT [staging_poschannel_pk] PRIMARY KEY CLUSTERED ([ChannelID] ASC)
);

