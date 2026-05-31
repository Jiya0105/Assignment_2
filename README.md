# ShopEase SQL Database Analysis Project

## 📌 Project Overview

This project was completed as part of a SQL Database Analysis assignment. The objective is to analyze customer, product, and order data for **ShopEase**, a mid-sized e-commerce company operating across India.

The project demonstrates fundamental and advanced SQL concepts including:

* Database Creation
* Table Design with Constraints
* Data Insertion
* Data Retrieval using SELECT
* Filtering using WHERE
* Query Optimization using Indexes
* Aggregation Functions
* GROUP BY and HAVING Clauses
* Joins and Relationships
* CASE Statements
* Transactions
* ACID Properties

The analysis helps management understand customer behavior, sales performance, product trends, and database integrity.

---

# 🏢 Business Scenario

ShopEase is an e-commerce company that sells:

* Electronics
* Clothing
* Home Products

Management wants to analyze:

* Customer purchasing patterns
* Product performance
* Revenue generation
* Order trends
* Database relationships and constraints

SQL queries were written to extract meaningful business insights from the relational database.

---

# 🗄️ Database Schema

The database consists of four tables:

### 1. Customers

Stores customer information.

**Important Columns**

* customer_id (Primary Key)
* first_name
* last_name
* email
* city
* state
* join_date
* is_premium

---

### 2. Products

Stores product details.

**Important Columns**

* product_id (Primary Key)
* product_name
* category
* brand
* unit_price
* stock_qty

---

### 3. Orders

Stores customer orders.

**Important Columns**

* order_id (Primary Key)
* customer_id (Foreign Key)
* order_date
* status
* total_amount

---

### 4. Order_Items

Stores individual products within an order.

**Important Columns**

* item_id (Primary Key)
* order_id (Foreign Key)
* product_id (Foreign Key)
* quantity
* unit_price
* discount_pct

---

# 🔗 Entity Relationships

customers (1:N) orders

orders (1:N) order_items

products (1:N) order_items

### Foreign Keys

* orders.customer_id → customers.customer_id
* order_items.order_id → orders.order_id
* order_items.product_id → products.product_id

---

# 🛠️ Technologies Used

* MySQL Server
* MySQL Workbench
* SQL
* GitHub

---

# 📂 Project Structure

```text
ShopEase-SQL-Assignment/
│
├── SQL/
│   └── answers.sql
│
├── Screenshots/
│   ├── Database_Creation.png
│   ├── Table_Creation.png
│   ├── Data_Insertion.png
│   ├── Q1_Output.png
│   ├── Q7_Output.png
│   ├── Q14_Output.png
│   ├── Q19_Output.png
│   ├── Q24_Output.png
│   └── Q27_Transaction.png
│
└── README.md
```

---

# 📊 Tasks Performed

## Section A – SQL Basics

* Retrieved customer information
* Selected specific columns
* Identified unique categories
* Studied Primary Keys
* Tested UNIQUE and NOT NULL constraints
* Validated CHECK constraints

---

## Section B – Filtering & Optimization

* Filtered delivered orders
* Retrieved expensive electronics products
* Identified customers from Maharashtra
* Queried orders within date ranges
* Studied database indexes
* Learned SARGable query design

---

## Section C – Aggregation

Performed:

* COUNT()
* SUM()
* AVG()
* MIN()
* MAX()
* GROUP BY
* HAVING

Business metrics calculated:

* Total orders
* Revenue by status
* Average category prices
* Most expensive products
* Category-wise analysis

---

## Section D – Joins & Relationships

Implemented:

### INNER JOIN

Combined customer and order information.

### LEFT JOIN

Displayed all customers including those without orders.

### Multi-table JOIN

Connected:

orders → order_items → products

to retrieve complete order details.

---

## Section E – Advanced SQL

Implemented:

### CASE Statements

Classified products into:

* Budget
* Mid-Range
* Premium

### Transactions

Executed:

* Order insertion
* Order item insertion
* Stock updates
* COMMIT and ROLLBACK operations

### ACID Properties

Studied:

* Atomicity
* Consistency
* Isolation
* Durability

---

# 📈 Key Learnings

Through this project, the following SQL concepts were practiced:

* Database Design
* Primary Keys
* Foreign Keys
* Constraints
* Indexes
* Filtering
* Aggregation
* Sorting
* Joins
* CASE Statements
* Transactions
* Query Optimization

---

# 🎯 Business Insights

The SQL analysis provided valuable insights such as:

* Revenue generated from delivered orders
* Category-wise product pricing trends
* Customer ordering behavior
* Product demand patterns
* Impact of order status on revenue
* Importance of referential integrity
* Role of transactions in maintaining data consistency

---

# 🚀 Conclusion

This project demonstrates the practical use of SQL for database management and business analysis. By working with a realistic e-commerce database, various SQL operations were performed to retrieve, filter, aggregate, and analyze data efficiently.

The project helped strengthen understanding of relational databases, query writing, optimization techniques, joins, transactions, and data integrity concepts commonly used in real-world applications.
