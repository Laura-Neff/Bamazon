DROP DATABASE IF EXISTS bamazon_DB;

CREATE DATABASE bamazon_DB;

USE bamazon_DB;

CREATE TABLE products (
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(45) NOT NULL,
  department_name VARCHAR(45) NULL,
  price DECIMAL(10,2) NOT NULL,
  stock_quantity INT NOT NULL,
  PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Soylent", "Food",.50, 99999);


INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Elitist Caprese Panini", "Food", 20.99, 3);


INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Mini Eiffel Tower", "Home Decor", 11.99, 300);


INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Richard Wagner's Best Hits -- Vinyl", "Electronics", 8.00, 10);


INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("I Can't Believe it's Not Siri", "Electronics", 99999, 40);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Virtual Reality Headset", "Electronics", 1000, 35);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("German in 9999999 Easy Steps", "Books", 100000, 256);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Monet Waterlily", "Art", 5000, 40);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("The Lamp that Never Got Delivered", "Electronics", 99999, 0);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Mario Kart", "Electronics", 35.60, 500);


SELECT * FROM products;





