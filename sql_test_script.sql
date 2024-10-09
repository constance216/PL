-- Create Owner Table
--CREATE TABLE Owner (
--    OwnerID int PRIMARY KEY,
--    FirstName varchar(50),
--    LastName varchar(50),
--    ContactInfo varchar(100)
--);
-- Create Land Table
--CREATE TABLE Land (
--    LandID int PRIMARY KEY,
--    Location varchar(100),
--    Area int,
--    OwnerID int,
--    CONSTRAINT fk_owner FOREIGN KEY (OwnerID) REFERENCES Owner(OwnerID)
--);

-- Create Parcel Table
--CREATE TABLE Parcel (
--    ParcelID int PRIMARY KEY,
--    LandID int,
--    Area int,
--    GovernmentAuthorityID int,
--    CONSTRAINT fk_land FOREIGN KEY (LandID) REFERENCES Land(LandID)
--);
-- Create Transaction Table
--CREATE TABLE Transaction (
--    TransactionID int PRIMARY KEY,
--    ParcelID int,
--    OwnerID int,
--    TransactionDate DATE,
--    TransactionType varchar(50),
--    Amount int,
--    CONSTRAINT fk_parcel FOREIGN KEY (ParcelID) REFERENCES Parcel(ParcelID),
--    CONSTRAINT fk_owner_transaction FOREIGN KEY (OwnerID) REFERENCES Owner(OwnerID)
--);
-- Create Government Authority Table
--CREATE TABLE GovernmentAuthority (
--    AuthorityID int PRIMARY KEY,
--    Name varchar(100),
--    Region varchar(100)
--);
-- Insert data into Owner table
--INSERT INTO Owner (OwnerID, FirstName, LastName, ContactInfo)
--VALUES (1, 'constance', 'uwizeyimana', 'uconsta21@gmail.com');
--
--INSERT INTO Owner (OwnerID, FirstName, LastName, ContactInfo)
--VALUES (2, 'annick', 'ujeneza', 'annick27@gmail.com');
-- Insert data into Land table
--INSERT INTO Land (LandID, Location, Area, OwnerID)
--VALUES (1, 'Gahanga', 500, 1);
--
--INSERT INTO Land (LandID, Location, Area, OwnerID)
--VALUES (2, 'Kabuga', 300, 2);
-- Insert data into Parcel table
--INSERT INTO Parcel (ParcelID, LandID, Area, GovernmentAuthorityID)
--VALUES (1, 1, 100, 1);
--INSERT INTO Parcel (ParcelID, LandID, Area, GovernmentAuthorityID)
--VALUES (2, 2, 200, 2);
-- Insert data into Transaction table
--INSERT INTO Transaction (TransactionID, ParcelID, OwnerID, TransactionDate, TransactionType, Amount)
--VALUES (1, 1, 1, TO_DATE('2024-01-01', 'YYYY-MM-DD'), 'Purchase', 50000);
--INSERT INTO Transaction (TransactionID, ParcelID, OwnerID, TransactionDate, TransactionType, Amount)
--VALUES (2, 2, 2, TO_DATE('2024-01-01', 'YYYY-MM-DD'), 'Purchase', 50000);
-- Insert data into Government Authority table
--INSERT INTO GovernmentAuthority (AuthorityID, Name, Region)
--VALUES (1, 'Land Regulatory Agency', 'Rwanda');
--INSERT INTO GovernmentAuthority (AuthorityID, Name, Region)
--VALUES (2, 'Land Regulatory Agency', 'Rwanda');
-- Update owner contact info
--UPDATE Owner
--SET ContactInfo = 'uwizeyimana21@gmail.com'
--WHERE OwnerID = 1
-- Delete a transaction
--DELETE FROM Transaction
--WHERE TransactionID = 1;
-- Inner join to get owner and their land details
--SELECT o.FirstName, o.LastName, l.Location, l.Area
--FROM Owner o
--JOIN Land l ON o.OwnerID = l.OwnerID;
-- Join to get transaction details along with the parcel and owner info
--SELECT t.TransactionID, p.ParcelID, o.FirstName, o.LastName, t.Amount, t.TransactionDate
--FROM Transaction t
--JOIN Parcel p ON t.ParcelID = p.ParcelID
--JOIN Owner o ON t.OwnerID = o.OwnerID;
-- Get parcels with area greater than the average parcel size
--SELECT ParcelID, Area
--FROM Parcel
--WHERE Area > (SELECT AVG(Area) FROM Parcel);

--DDL, DML, DCL, and TCL Operations:
--ALTER TABLE Parcel ADD ParcelType varchar(50);
--INSERT INTO Owner (OwnerID, FirstName, LastName, ContactInfo) VALUES (3, 'Alice', 'Kibagabaga', 'alice@gmail.com');
--GRANT SELECT ON Owner TO Public;
COMMIT;













