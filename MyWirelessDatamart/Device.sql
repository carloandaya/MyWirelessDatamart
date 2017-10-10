CREATE TABLE [dbo].[Device]
(
	[PK_Device] NVARCHAR(15) NOT NULL PRIMARY KEY, 
    [DeviceName] NVARCHAR(100) NOT NULL, 
    [Category] NCHAR(3) NOT NULL, 
    [Manufacturer] NCHAR(3) NOT NULL, 
    [Model] NVARCHAR(50) NOT NULL, 
    [Capacity] NVARCHAR(10) NOT NULL, 
    [Color] NVARCHAR(10) NOT NULL, 
    CONSTRAINT [FK_Device_Manufacturers] FOREIGN KEY ([Manufacturer]) REFERENCES [Manufacturers]([Id]), 
    CONSTRAINT [FK_Device_Categories] FOREIGN KEY ([Category]) REFERENCES [Categories]([Id])
)
