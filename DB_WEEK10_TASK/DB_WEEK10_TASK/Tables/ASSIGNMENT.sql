﻿CREATE TABLE [dbo].[ASSIGNMENT]
(
	LOCCODE			NVARCHAR(10),
	STAFFID			NVARCHAR(10),
	DATEASSIGNED	DATE,

	PRIMARY KEY (DATEASSIGNED),
	FOREIGN KEY (LOCCODE) REFERENCES OFFICE,
	FOREIGN KEY (STAFFID) REFERENCES [dbo].[EMPLOYEE]
)
