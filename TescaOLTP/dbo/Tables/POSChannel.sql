CREATE TABLE [dbo].[POSChannel] (
    [ChannelID]        INT           IDENTITY (1, 1) NOT NULL,
    [ChannelNo]        NVARCHAR (50) NULL,
    [DeviceModel]      NVARCHAR (50) NULL,
    [SerialNo]         NVARCHAR (50) NULL,
    [InstallationDate] DATE          NULL,
    CONSTRAINT [PK_POSChannel] PRIMARY KEY CLUSTERED ([ChannelID] ASC)
);

