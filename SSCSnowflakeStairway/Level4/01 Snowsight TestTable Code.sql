CREATE DATABASE TESTDB;

USE DATABASE TESTDB;

CREATE TABLE TESTTABLE
(
 ID             INT,
 STRINGVALUE    VARCHAR(20)
);

INSERT INTO TESTTABLE (ID, STRINGVALUE)
VALUES
(1, 'One'),
(2, 'Two'),
(3, 'Three');