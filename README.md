# SQL-_-college
# College Database SQL Script

## Description  
This SQL script demonstrates basic database and table creation, along with insert operations, constraints, and validations. It focuses on creating tables with various constraints like `PRIMARY KEY`, `UNIQUE`, `DEFAULT`, and `CHECK`.

---

## Script Breakdown  

### 1. Database Creation  
```sql
CREATE DATABASE college;  
USE college;
```  
Creates a new database called `college` and sets it as the active database.  

### 2. `students` Table  
```sql
CREATE TABLE students(  
  Rollno INT PRIMARY KEY,  
  Name VARCHAR(50)  
);
```  
Table with columns `Rollno` (Primary Key) and `Name` (up to 50 characters).  

#### Inserting Data into `students`  
```sql
INSERT INTO students (Rollno, Name) VALUES (1, "AMAR"), (2, "NATH");  
INSERT INTO students VALUES (3, "RAMA");
```  

### 3. `temp1` Table  
```sql
CREATE TABLE temp1(  
  id INT UNIQUE  
);
```  
Table with a unique constraint on the `id` column.  

#### Inserting Data into `temp1`  
```sql
INSERT INTO temp1 VALUES (101);  
INSERT INTO temp1 VALUES (101); -- This will throw an error due to the UNIQUE constraint  
```  

### 4. `newlyone` Table  
```sql
CREATE TABLE newlyone (  
  id INT,  
  salary INT DEFAULT 25000,  
  age INT CHECK(age >= 18)  
);
```  
- `id`: Simple integer column  
- `salary`: Default value of 25000 if no value is specified  
- `age`: Must be 18 or older  

#### Inserting Data into `newlyone`  
```sql
INSERT INTO newlyone (id) VALUES (1);
```  
Inserts `id = 1`, with `salary` defaulting to 25000 and no value for `age`.  

### 5. `rand` Table  
```sql
CREATE TABLE rand(  
  age INT CHECK(age >= 18)  
);
```  
Table where `age` must be 18 or older.  

#### Inserting Data into `rand`  
```sql
INSERT INTO rand (age) VALUES (12); -- Will throw an error due to the CHECK constraint  
INSERT INTO rand (age) VALUES (22);  
```  

---

## Conclusion  
This script covers fundamental SQL concepts such as table creation, constraints, default values, and data insertion. Errors are intentionally included to demonstrate how constraints like `UNIQUE` and `CHECK` work.  

## Note  
Ensure that the database `college` does not already exist before running the script.  
