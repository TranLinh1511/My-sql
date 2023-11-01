CREATE DATABASE productManagement;
USE productManagement;
CREATE TABLE customer
(
    cId   INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    cName VARCHAR(20),
    cAge  INT

);
CREATE TABLE orderr
(
    oId         INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    oName       VARCHAR(20),
    oDate       DATE,
    oTotalPrice INT
);

CREATE TABLE order_detail
(
    oId INT,
    pId INT,
    PRIMARY KEY (oId, pId),
    CONSTRAINT pk_o FOREIGN KEY (oId) REFERENCES orderr (oId),
    CONSTRAINT pk_p FOREIGN KEY (pId) REFERENCES product (pId)
);
CREATE TABLE product
(
    pId    INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    pName  VARCHAR(20),
    pPrice INT
);