CREATE TABLE [EDW].[DimPOSChannel] (
    [poschannelSK]       INT           IDENTITY (1, 1) NOT NULL,
    [ChannelID]          INT           NULL,
    [ChannelNumber]      NVARCHAR (50) NULL,
    [DeviceModel]        NVARCHAR (50) NULL,
    [SerialNumber]       NVARCHAR (50) NULL,
    [InstallationDate]   DATE          NULL,
    [EffectiveStartDate] DATETIME      NULL,
    [EffectiveEndDate]   DATETIME      NULL,
    CONSTRAINT [edw_dimposchannel_sk] PRIMARY KEY CLUSTERED ([poschannelSK] ASC)
);

