# Book_store
A relational database that stores information about a bookstore's operations, including books, authors, customers, orders, shipping, and more. 



# Database Tables Overview

This document describes the purpose, primary keys, foreign keys, and relationships for the customer-related tables in the database schema.

---

## Tables
### language Table
**Purpose:**
Stores a list of all languages that books in the system can be written in.

**Primary Key:**
language_id - it uniquely identifies each language.

**Relationships:**
Referenced by the book table using the language_id foreign key.

### publisher Table
**Purpose:**
Keeps track of companies responsible for publishing books.

**Primary Key:**
publisher_id – uniquely identifies each publisher.

**Relationships:**
Referenced by the book table using the publisher_id foreign key.

### author Table
**Purpose:**
Stores personal information about authors who have written the books.

**Primary Key:**
author_id – uniquely identifies each author.

**Relationships:**
Connected to book_author table which links authors to books.

### book Table
**Purpose:**
Holds all the data and inventory data about books in the store.

**Primary Key:**
book_id – uniquely identifies each book.

**Relationships:**
publisher_id – foreign key referencing  to the publisher table.

language_id – foreign key referencing  to the language table.

Connected to book_author table for many-to-many author relationships.

### book_author Table
**Purpose:**
Handles the many-to-many relationship between books and authors (a book can have multiple authors, and an author can write multiple books).

**Primary Key:**

book_author_id – uniquely identifies each link between a book and an author.

**Relationships:**

book_id – foreign key referencing a book.

author_id – foreign key referencing to an author.

ON DELETE CASCADE ensures that if a book or author is deleted, related records in this table are also deleted.


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