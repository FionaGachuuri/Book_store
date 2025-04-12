CREATE TABLE Customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(255) UNIQUE,
    phone_number VARCHAR(20)
);


CREATE TABLE customer_address (
    customer_address_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    address_id INT,
    address_status_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (address_id) REFERENCES Address(address_id),
    FOREIGN KEY (address_status_id) REFERENCES Address_Status(address_status_id)
);


CREATE TABLE Address_Status (
    address_status_id INT PRIMARY KEY AUTO_INCREMENT,
    status_name VARCHAR(50) UNIQUE
);

CREATE TABLE Address (
    address_id INT PRIMARY KEY AUTO_INCREMENT,
    street VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code VARCHAR(20),
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES Country(country_id)
);


CREATE TABLE Country (
    country_id INT PRIMARY KEY AUTO_INCREMENT,
    country_name VARCHAR(100) UNIQUE
);
