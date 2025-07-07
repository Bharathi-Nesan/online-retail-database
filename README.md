<<<<<<< HEAD
#  Online Retail Sales Database

This project implements a normalized SQL schema for an e-commerce platform with essential features like product listings, customer orders, payments, and shipping.

##  Schema Overview

- **Customers** – Personal details of users
- **Categories** – Groups like Electronics, Clothing
- **Products** – Items available for purchase
- **Orders & OrderDetails** – Purchases and their items
- **Payments** – Transaction records
- **Shipping** – Shipment tracking and status

##  ER Diagram

See: `erd/online_retail_erd.dbdiagram.sql`

##  SQL Scripts

- `schema/01_create_tables.sql` – Full schema
- `schema/02_insert_sample_data.sql` –  entries
- `schema/03_create_views.sql` – Sales & analytics views


##  Tools Used

- MySQL Workbench  
- dbdiagram.io  
=======
#  Student Result Processing System

##  Description
A SQL-based academic backend to manage student grades, compute GPA/CGPA, and generate rank lists using views and window functions.

##  Schema Overview
- **Students**: Basic student info (reg no, name, dept)
- **Courses**: Subject info with credits
- **Semesters**: Academic period
- **Grades**: Stores letter and point grades

##  Tools Used
- MySQL
- MySQL Workbench
- dbdiagram.io

##  Reports
- `SemesterGPA`: GPA per semester
- `StudentCGPA`: Overall CGPA
- `CGPARankList`: Ranked CGPA list
- Additional SQL reports in `/reports` folder

##  ERD
Stored in `/erd/student_result_erd.dbdiagram.sql`

##  How to Run
1. Execute scripts in `/schema` folder in order:
   - `01_create_tables.sql`
   - `02_insert_sample_data.sql`
   - `03_create_views.sql`
2. Run report queries from `/reports`
>>>>>>> 3000d8b (First commit)
