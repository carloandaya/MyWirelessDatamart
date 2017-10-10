CREATE TABLE [dbo].[DeviceSalesFact]
(
	[IMEI] NVARCHAR(20) NOT NULL , 
    [SalesQty] INT NOT NULL, 
    [SalesCost] MONEY NOT NULL, 
	[SalesPrice] MONEY NOT NULL,
    [FK_Salesperson] NVARCHAR(50) NULL, 
    [FK_Location] NVARCHAR(50) NULL, 
    [FK_Time] DATETIME2 NOT NULL, 
    [FK_Device] NVARCHAR(15) NULL, 
    CONSTRAINT [FK_DeviceSalesFact_Device] FOREIGN KEY ([FK_Device]) REFERENCES [Device]([PK_Device]), 
    PRIMARY KEY ([IMEI], [FK_Time])       
)
