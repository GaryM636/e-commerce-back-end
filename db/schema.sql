-- Drop the database if it exists
DROP DATABASE IF EXISTS ecommerce_db;

-- Create the database
CREATE DATABASE ecommerce_db;

-- Select the created database
USE ecommerce_db;

-- Create the Category table
CREATE TABLE Category (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  category_name VARCHAR(255) NOT NULL
);

-- Create the Product table
CREATE TABLE Product (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  product_name VARCHAR(255) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  stock INTEGER NOT NULL DEFAULT 10,
  category_id INTEGER,
  FOREIGN KEY (category_id) REFERENCES Category(id)
);

-- Create the Tag table
CREATE TABLE Tag (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  tag_name VARCHAR(255) NOT NULL
);

-- Create the ProductTag table
CREATE TABLE ProductTag (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  product_id INTEGER,
  tag_id INTEGER,
  FOREIGN KEY (product_id) REFERENCES Product(id),
  FOREIGN KEY (tag_id) REFERENCES Tag(id)
);
