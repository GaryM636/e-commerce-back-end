-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

-- Create Category table
CREATE TABLE Category (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  category_name STRING NOT NULL
);

-- Create Product table
CREATE TABLE Product (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  product_name STRING NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  stock INTEGER NOT NULL DEFAULT 10,
  category_id INTEGER,
  FOREIGN KEY (category_id) REFERENCES Category(id)
);

-- Create Tag table
CREATE TABLE Tag (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  tag_name STRING NOT NULL
);

-- Create ProductTag table
CREATE TABLE ProductTag (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  product_id INTEGER,
  tag_id INTEGER,
  FOREIGN KEY (product_id) REFERENCES Product(id),
  FOREIGN KEY (tag_id) REFERENCES Tag(id)
);
