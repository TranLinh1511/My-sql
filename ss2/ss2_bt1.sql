CREATE DATABASE supplies;
use supplies;
CREATE TABLE supplies
(
    supplies_id   INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    supplies_name TEXT
);

CREATE TABLE coupon
(
    coupon_id       INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    coupon_add_date DATE NOT NULL
);

CREATE TABLE bill
(
    bill_id          INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    bill_export_date DATE NOT NULL
);

CREATE TABLE oder
(
    oder_id     INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    oder_date   DATE NOT NULL,
    provider_id INT,
    CONSTRAINT pk_provider FOREIGN KEY (provider_id) REFERENCES provider (provider_id)
);


CREATE TABLE provider
(
    provider_id      INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    provider_name    VARCHAR(20),
    provider_address VARCHAR(20),
    provider_phone   VARCHAR(11)
);

CREATE TABLE bill_supplies
(
    bill_supplies_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    supplies_id      INT,
    bill_id          INT,
    CONSTRAINT pk_supplies FOREIGN KEY (supplies_id) REFERENCES supplies (supplies_id),
    CONSTRAINT pk_bill FOREIGN KEY (bill_id) REFERENCES bill (bill_id)
);
CREATE TABLE coupon_supplies
(
    coupon_supplies_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    supplies_id        INT,
    coupon_id          INT,
    CONSTRAINT pk_supplies_coupon FOREIGN KEY (supplies_id) REFERENCES supplies (supplies_id),
    CONSTRAINT pk_coupon FOREIGN KEY (coupon_id) REFERENCES coupon (coupon_id)
);
CREATE TABLE oder_supplies
(
    oder_supplies_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    supplies_id      INT,
    oder_id          INT,
    CONSTRAINT pk_supplies_oder FOREIGN KEY (supplies_id) REFERENCES supplies (supplies_id),
    CONSTRAINT pk_oder FOREIGN KEY (oder_id) REFERENCES oder (oder_id)
)