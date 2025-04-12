# Book_store
A relational database that stores information about a bookstore's operations, including books, authors, customers, orders, shipping, and more. 



# Database Tables Overview

This document describes the purpose, primary keys, foreign keys, and relationships for the customer-related tables in the database schema.

---

## Tables

### `Customer`
- **Purpose:**  
  Stores core customer information.
- **Primary Key:**  
  `customer_id`
- **Relationships:**  
  - One-to-many relationship with `Customer_Address` (a customer can have multiple addresses).

---

### `Customer_Address`
- **Purpose:**  
  Associates customers with their addresses.
- **Primary Key:**  
  `customer_address_id`
- **Foreign Keys:**  
  - `customer_id` → references `Customer`
  - `address_id` → references `Address`
  - `address_status_id` → references `Address_Status`
- **Relationships:**  
  - Many-to-one relationship with `Customer`  
  - Many-to-one relationship with `Address`  
  - Many-to-one relationship with `Address_Status`

---

### `Address_Status`
- **Table Name:** `address_status`
- **Purpose:**  
  Contains possible status values for an address.
- **Primary Key:**  
  `address_status_id`

---

### `Address`
- **Purpose:**  
  Stores detailed address information.
- **Primary Key:**  
  `address_id`
- **Foreign Keys:**  
  - `country_id` → references `Country`
- **Relationships:**  
  - Many-to-one relationship with `Country`  
  - One-to-many relationship with `Customer_Address`

---

### `Country`
- **Purpose:**  
  Lists all countries.
- **Primary Key:**  
  `country_id`