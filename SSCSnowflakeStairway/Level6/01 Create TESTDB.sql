CREATE DATABASE IF NOT EXISTS TESTDB;

USE DATABASE TESTDB;

CREATE TABLE IF NOT EXISTS Customer
(
 CustomerId INT PRIMARY KEY,
 CustomerName VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS CustomerOrder
(
 OrderId INT PRIMARY KEY,
 CustomerId INT
);

ALTER TABLE CustomerOrder
    ADD CONSTRAINT fk_Customer_CustomerOrder
        FOREIGN KEY (CustomerId)
        REFERENCES Customer (CustomerId);

INSERT INTO Customer (CustomerId, CustomerName)
    VALUES 
        (1, 'Bob'),
        (2, 'Jack');

INSERT INTO CustomerOrder (OrderId, CustomerId)
    VALUES
        (1, 1),
        (2, 1),
        (3, 2),
        (4, 2),
        (5, 2);