# ejemplo Patron MVC  Understanding JavaServer Pages Model 2

Para iniciar el programa se ha de ejecutar sobre servidor, y luego poner la dirección siguiente:

http://localhost:8080/ShoppingServlet/EShop.jsp 



Creacion base de datos
===============
create database SampleDB;
 
use SampleDB;
 
CREATE TABLE `users` (
    `user_id` int(11) NOT NULL AUTO_INCREMENT,
    `username` varchar(45) NOT NULL,
    `password` varchar(45) NOT NULL,
    `fullname` varchar(45) NOT NULL,
    `email` varchar(45) NOT NULL,
    PRIMARY KEY (`user_id`)
);



Bases de datos
===============

SELECT Name FROM Products;

SELECT Name, Price FROM Products;

SELECT Name FROM Products WHERE Price <= 200;

SELECT * FROM Products WHERE Price >= 60 AND Price <= 120;

SELECT Name, Price * 100 as gromenawers FROM Products;

SELECT AVG(Price) FROM Products;

SELECT AVG(Price) FROM Products WHERE Manufacturer=2;

SELECT COUNT(*) FROM Products WHERE Price >= 180;

SELECT Name, Price FROM Products WHERE Price >= 180 ORDER BY Price DESC, Name;

SELECT * FROM Products INNER JOIN Manufacturers ON Products.Manufacturer = Manufacturers.Code;

SELECT Products.Name, Price, Manufacturers.Name FROM Products INNER JOIN Manufacturers ON Products.Manufacturer = Manufacturers.Code;

SELECT AVG(Price), Manufacturer FROM Products GROUP BY Manufacturer;

SELECT AVG(Price), Manufacturers.Name FROM Products INNER JOIN Manufacturers ON Products.Manufacturer = Manufacturers.Code GROUP BY Manufacturers.Name;

SELECT AVG(Price), Manufacturers.Name FROM Products INNER JOIN Manufacturers ON Products.Manufacturer = Manufacturers.Code GROUP BY Manufacturers.Name HAVING AVG(Price) >= 150;

SELECT Name, Price FROM Products WHERE Price = (SELECT MIN(Price) FROM Products);

SELECT products.Name, Price, manufacturers.Name
   FROM Products INNER JOIN Manufacturers
   ON products.Manufacturer = manufacturers.Code
     AND products.Price =
     (
       SELECT MAX(products.Price)
         FROM Products
         WHERE products.Manufacturer = manufacturers.Code
     );

INSERT INTO Products( Name , Price , Manufacturer) VALUES ( 'Loudspeakers' , 70 , 2 );

UPDATE Products SET Name = 'Laser Printer' WHERE Code = 8;

UPDATE Products SET Price = Price * 0.9;

UPDATE Products SET Price = Price * 0.9 WHERE Price >= 120;


Fuente
============
http://www.codejava.net/java-se/jdbc/jdbc-tutorial-sql-insert-select-update-and-delete-examples