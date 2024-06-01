-- Script to create the 'customer' table
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for each customer
  `name` varchar(100) NOT NULL,                  -- Customer's name
  `email` varchar(100) NOT NULL,                 -- Customer's email address
  `mobile_number` varchar(20) NOT NULL,          -- Customer's mobile number
  `created_at` date NOT NULL,                    -- Date when the customer record was created
  `created_by` varchar(20) NOT NULL,             -- User who created the customer record
  `updated_at` date DEFAULT NULL,                -- Date when the customer record was last updated
  `updated_by` varchar(20) DEFAULT NULL          -- User who last updated the customer record
);

-- Script to create the 'accounts' table
CREATE TABLE IF NOT EXISTS `accounts` (
  `customer_id` int NOT NULL,                    -- Foreign key referencing 'customer_id' in the 'customer' table
  `account_number` int AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each account
  `account_type` varchar(100) NOT NULL,          -- Type of account (e.g., savings, checking)
  `branch_address` varchar(200) NOT NULL,        -- Address of the bank branch
  `communication_sw` BOOLEAN,                    -- Flag indicating if communication preferences are set
  `created_at` date NOT NULL,                    -- Date when the account was created
  `created_by` varchar(20) NOT NULL,             -- User who created the account
  `updated_at` date DEFAULT NULL,                -- Date when the account was last updated
  `updated_by` varchar(20) DEFAULT NULL          -- User who last updated the account
);
/*

+--------------+          +----------------+
| customer     |          | accounts       |
+--------------+          +----------------+
| customer_id  |<---------| customer_id    |
| name         |          | account_number |
| email        |          | account_type   |
| mobile_number|          | branch_address |
| created_at   |          |communication_sw|
| created_by   |          | created_at     |
| updated_at   |          | created_by     |
| updated_by   |          | updated_at     |
+--------------+          | updated_by     |
                          +----------------+
customer Table:
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| customer_id  | int          | NO   | PRI | NULL    | auto_increment |
| name         | varchar(100) | NO   |     | NULL    |                |
| email        | varchar(100) | NO   |     | NULL    |                |
| mobile_number| varchar(20)  | NO   |     | NULL    |                |
| created_at   | date         | NO   |     | NULL    |                |
| created_by   | varchar(20)  | NO   |     | NULL    |                |
| updated_at   | date         | YES  |     | NULL    |                |
| updated_by   | varchar(20)  | YES  |     | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+

  accounts Table
+-----------------+--------------+------+-----+---------+----------------+
| Field           | Type         | Null | Key | Default | Extra          |
+-----------------+--------------+------+-----+---------+----------------+
| customer_id     | int          | NO   |     | NULL    |                |
| account_number  | int          | NO   | PRI | NULL    | auto_increment |
| account_type    | varchar(100) | NO   |     | NULL    |                |
| branch_address  | varchar(200) | NO   |     | NULL    |                |
| communication_sw| BOOLEAN      | YES  |     | NULL    |                |
| created_at      | date         | NO   |     | NULL    |                |
| created_by      | varchar(20)  | NO   |     | NULL    |                |
| updated_at      | date         | YES  |     | NULL    |                |
| updated_by      | varchar(20)  | YES  |     | NULL    |                |
+-----------------+--------------+------+-----+---------+----------------+


  */
