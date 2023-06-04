# end-to-end-DB
An end-to-end Database tutorial/template. Can be downloaded each time when to set up a DB related project from scratch.


## 0. Undersand the need and purpose

Before building a database, it is important to understand the need and purpose of the database. This involves analyzing the business requirements, user needs, and data sources to determine what data needs to be stored, how it will be used, and who will use it.


| | Online Analytical processing (OLAP)|Online Transaction Processing (OLTP)|
|--|--|--|
|optimized for|handling complex queries, not in real time|handling large volumes of transactions that occur in real-time|
|use case| business intelligence and data mining, ad hoc analysis|e-commerce, web traffic, streaming|


**Also need to consider the data access frequency, update frequency, latentcy, fault tolerant and so on to pick the right database product.**


## **1. design the database stucture**

After understanding the purpose and access/update frequency, we need to design the database schema before actually touch the data.

For **Relational database**, we need to design the schema. 

But for **Key-value** and **object storage** databases (DynamoDB, MangoDB, S3) we do not need a rigid, pre-defined schema for storing data. Instead, it allow for flexible and dynamic storage of data without the need for upfront schema design.

**Relational database schema design** is the process of defining the structure of a relational database in terms of **tables, columns, and relationships.**
1)  identify the entities and relationships that need to be represented in the database. 
2) create an entity-relationship (ER) diagrams that capture the key entities and relationships, along with their attributes and cardinality.
3) translate ER diagrams into a logical data model, which includes tables, columns, keys, and constraints.

 A well-designed schema can help ensure data consistency, accuracy, and ease of use, and can improve the performance of database queries.

> applied scripts and software:
> - `master_gen.ipynb` for understanding the original data
> - create schema and specify key-constraints (DBVisualizer)


## **2. Build the database from input data**

## 2A. implement the logical data model into physical database

**1. convert inpunt**

Input into database
- csv 
- txt
- sql
- parquet
- BLOB

convert different type of data into the database, obeying the rules and constrains 
Assuming the data we received are aleady cleaned data. The steps of data prep and QC in another script.

> applied scripts and software:
> - `csv2sql_value.ipynb` for generate insert value into sql script
> - `createDB.sql` for create the database, tables, specify key constraints and insert value

**2. load .sql into phpMyadmin**

log into phpMyadmin, in the terminal, run the .sql script to create database, tables and insert values.


## 2B. connect to built database in step 2A

After the database wass built in step 2a, we can access the database through python connection to apply analytics and graphic visualization

connect local/remote database with Python >> `db_python.ipynb`

## 3. Analytics using SQL

achieve on phpmyAdmin

## 4. Analytics and visualization using python

analytics using python - connect sqlit/mysql and run queries  >>`db_python.ipynb`

analytics using python - connect pyspark and run queries >>`db_pyspark.ipynb`



