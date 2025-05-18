my sql vs mongo... 

-  sql databases stores data in tabular form which is more human understandable and readable with compare to json format in NoSQL database like mongodb..

  


SQL - structured query language --kind of programming language - itself is not a database .
            there are some  sql databases like ....
                                    MySQL , Postgress , MariaDB 
  in case of sqldatabases all the eg of db uses queries in sql . (Advantage -we can easily switch to other database cause all use sql query)

No-SQl -> whichever database which dont uses the sql is just called as no-sql . 

but in this type of database .. diff diff database are there like ... 
                                document db ---eg mongodb
                                graphdb        ---eg cassendra
                               vector db    ---eg pinecone   ---widely used for ai db
                          many more types....
           and these all use diff diff queries ...
                             like -> mongodb --uses mongoose query.

                                                            (there is not advantage - cant switch with previous db knowledge , for switching we have to learn from scratch)
     
              
sql is a type of database but NoSQL is not type of database there are other databases which dont use sql format that why we say it no sql db . 




sprint3 system design will tell the ans of ?if there is a this much of advantage in sql db .why we learnt or using other db like mongodb.NOSQL.DB__?




in no-Sql type Database we dont have to follow any schema or structure ...but we must have to follow a schema or structure for sql db {NOTE : schema is part of mongoosh not mongodb oky but there is bydefault schema} . 


MySQL Workbench Download Now »#practicals....



-- Create table
CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    email VARCHAR(100)
);

-- Insert data
INSERT INTO customers (name, email) VALUES ("nrupul", "d@gmail.com");
INSERT INTO customers (name, email) VALUES ("Nupur", "dd@gmail.com");

-- Read all data
SELECT * FROM customers;

-- Read specific columns
SELECT name, email FROM customers;

-- Filtering exact match
SELECT name, email FROM customers WHERE name = "nrupul";

-- Filtering using LIKE
SELECT name, email FROM customers WHERE name LIKE "%nr%";
SELECT name, email FROM customers WHERE name LIKE "nr%";

-- Update data
UPDATE customers SET name = "John" WHERE id = 1;

-- Delete data
DELETE FROM customers WHERE id = 1;

-- Sorting
SELECT name, email FROM customers ORDER BY name ASC;
SELECT name, email FROM customers ORDER BY email DESC;
