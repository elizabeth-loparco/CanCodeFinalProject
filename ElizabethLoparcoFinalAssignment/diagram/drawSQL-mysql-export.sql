CREATE TABLE `Inventory`(
    `id` INT NOT NULL,
    `Product_ID` INT NOT NULL,
    `Location` TEXT NOT NULL,
    `Quantity` INT NOT NULL,
    `Reorder` BINARY(16) NOT NULL,
    `Color` TEXT NULL,
    `Size` TEXT NULL,
    PRIMARY KEY(`id`)
);
CREATE TABLE `Employees`(
    `Employee_ID` INT NOT NULL,
    `NameFirst` TEXT NOT NULL,
    `NameLast` TEXT NOT NULL,
    `Salary` DECIMAL(8, 2) NOT NULL,
    `Phone` TEXT NOT NULL,
    `Email` TEXT NOT NULL,
    PRIMARY KEY(`Employee_ID`)
);
CREATE TABLE `Orders`(
    `Order_ID` INT NOT NULL,
    `OrderTimeStamp` TIMESTAMP NOT NULL,
    `Product_ID` INT NOT NULL,
    `Quantity` INT NOT NULL,
    `Customer_ID` INT NOT NULL,
    PRIMARY KEY(
        `Order_ID`,
        `OrderTimeStamp`,
        `Product_ID`
    )
);
CREATE TABLE `Customers`(
    `ID` INT NOT NULL,
    `NameFirst` TEXT NOT NULL,
    `NameLast` TEXT NOT NULL,
    `Phone` TEXT NOT NULL,
    `Email` TEXT NOT NULL,
    `City` TEXT NOT NULL,
    `State` TEXT NOT NULL,
    `Zip` TEXT NOT NULL,
    PRIMARY KEY(`ID`)
);
CREATE TABLE `Products`(
    `Product_ID` INT NOT NULL,
    `ProductName` TEXT NOT NULL,
    `Description` TEXT NOT NULL,
    `SKU` TEXT NULL,
    `ManufactureCost` DECIMAL(8, 2) NULL,
    `SalesPrice` DECIMAL(8, 2) NOT NULL,
    PRIMARY KEY(`Product_ID`)
);
ALTER TABLE
    `Customers` ADD CONSTRAINT `customers_phone_foreign` FOREIGN KEY(`Phone`) REFERENCES `Orders`(`OrderTimeStamp`);
ALTER TABLE
    `Inventory` ADD CONSTRAINT `inventory_product_id_foreign` FOREIGN KEY(`Product_ID`) REFERENCES `Products`(`Product_ID`);
ALTER TABLE
    `Inventory` ADD CONSTRAINT `inventory_location_foreign` FOREIGN KEY(`Location`) REFERENCES `Customers`(`Phone`);
ALTER TABLE
    `Orders` ADD CONSTRAINT `orders_order_id_foreign` FOREIGN KEY(`Order_ID`) REFERENCES `Employees`(`Employee_ID`);