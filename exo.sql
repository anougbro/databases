/*Insert into Product table*/


INSERT INTO Product (Product_id, Product_Name, Category, Price)
VALUES ('P01', 'Samsung Galaxy S20', 'Smartphone', 3299);

INSERT INTO Product (Product_id, Product_Name, Category, Price)
VALUES ('P02', 'ASUS Notebook', 'PC', 4599);




/*Insert into Customer table*/
INSERT INTO Customer (Customer_id, Customer_Name, Customer_Tel)
VALUES ('C01', 'ALI', '71321009');

INSERT INTO Customer (Customer_id, Customer_Name, Customer_Tel)
VALUES ('C02', 'ASMA', '77345823');


/*Insert into Orders table*/
INSERT INTO Orders (Customer_id, Product_id, OrderDate, Quantity, Total_amount)
VALUES ('C01', 'P02', NULL, 2, 9198);

INSERT INTO Orders (Customer_id, Product_id, OrderDate, Quantity, Total_amount)
VALUES ('C02', 'P01', '2020-05-28', 1, 3299);


/* you have to notice that in the exercice the date format is DD/MM/YYYY
so as Date format should follow SQL standard format YYYY-MM-DD. we have 
converted to standard SQL format YYYY-MM-DD.*/