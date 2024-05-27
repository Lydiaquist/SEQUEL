-- Create a database
CREATE DATABASE testDB;
-- Drop a database
DROP DATABASE testDB;
 
 CREATE DATABASE testDB;
 USE testDB;
 -- Create a Persons table
 CREATE TABLE Persons (
	PersonID INT PRIMARY KEY,
    LastName TEXT,
    FirstName TEXT,
    Address TEXT,
    City TEXT
    );

-- Alter Table to Add a Column
ALTER TABLE Persons
ADD COLUMN Birthday DATE;

-- Delete a Column
ALTER TABLE Persons
DROP COLUMN Birthday;

-- Populate Table
INSERT INTO Persons 
VALUES(1, "Asiedu", "Akua", "NTHC Estates", "Spintex"), 
(2, "Livingstream", "Gloria", "JBC Estates", "Adenta");

SELECT *
FROM Persons;

-- Truncate table
TRUNCATE TABLE Persons;

-- Delete a Table
DROP TABLE Persons;