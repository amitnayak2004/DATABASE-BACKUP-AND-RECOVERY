CREATE DATABASE  BackupRecoveryDB;

-- Use the database
USE BackupRecoveryDB;

-- Create a sample table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100),
    Position VARCHAR(50)
);

-- Insert sample data
INSERT INTO Employees VALUES
(1, 'Alice', 'Manager'),
(2, 'Bob', 'Engineer'),
(3, 'Charlie', 'Analyst');

-- Create a backup of the Employees table
CREATE TABLE Employees_Backup AS
SELECT * FROM Employees;

-- Simulate data loss by deleting all records
DELETE FROM Employees;

-- Recover data by copying from the backup table
INSERT INTO Employees
SELECT * FROM Employees_Backup;
-- Check that the data is restored
SELECT * FROM Employees;
