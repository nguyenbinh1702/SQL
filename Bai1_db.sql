USE ecommercedb;

CREATE TABLE Users (
	ID INT PRIMARY KEY AUTO_INCREMENT,
    UserName VARCHAR(50) UNIQUE NOT NULL,
    PasswordHash VARCHAR(255) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL);
    
CREATE TABLE product (
	ID int PRIMARY KEY AUTO_INCREMENT,
    productName  VARCHAR(100) UNIQUE NOT NULL,
    Decription   Text,
    price  DECIMAL(10, 2) NOT NULL,
    stock int not null);

CREATE TABLE Cart (
	ID INT PRIMARY KEY AUTO_INCREMENT,
    CartId int,
    FOREIGN KEY(CartId) REFERENCES Users(ID),
    total int NOT NULL);
    
CREATE TABLE CartItems(
ID INT PRIMARY KEY AUTO_INCREMENT,
    CartItemsiD int,
    FOREIGN KEY(CartItemsiD) REFERENCES product(ID),
    productID int,
        FOREIGN KEY(productID) REFERENCES product(ID),
	quantity INT NOT NULL);


