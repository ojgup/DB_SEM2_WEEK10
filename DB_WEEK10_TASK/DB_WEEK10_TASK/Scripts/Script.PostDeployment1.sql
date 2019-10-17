/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/


DELETE FROM ASSIGNMENT;
DELETE FROM EMPLOYEE;
DELETE FROM OFFICE; 

INSERT INTO EMPLOYEE(STAFFID, GIVENNAME, SURNAME) VALUES
(1, 'JULIA', 'GILLARD'),
(2, 'HAROLD', 'HOLT'),
(3, 'ELVIS', 'PRESLEY');

INSERT INTO OFFICE(LOCCODE, ADDRESS, DESCRIPTION) VALUES
('101', '123 SESAME STREET, NEW YORK', 'WORLD HQ OFFICE'),
('102', '10 DOWNING STRET, LONDON', 'BORRIS PAD'),
('103', '7 KANSAS WAY, KANSAS CITY', 'THERES NO PLACE LIKE HOME');

INSERT INTO ASSIGNMENT (LOCCODE, STAFFID, DATEASSIGNED) VALUES
(101, 3, '19600630'),
(102, 2, '20190731'),
(103, 3, '20161011');