-- SQL Script to Import Data from CSV into MySQL

-- Make sure the CSV file is placed in a path accessible to MySQL server (e.g., /var/lib/mysql-files/)
-- Also ensure 'secure_file_priv' allows loading from this path

LOAD DATA INFILE '/var/lib/mysql-files/Sample - Superstore.csv'
INTO TABLE Orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@RowID, @OrderID, @OrderDate, @ShipDate, @ShipMode, @CustomerID, @CustomerName,
 @Segment, @Country, @City, @State, @PostalCode, @Region, @ProductID,
 @Category, @SubCategory, @ProductName, @Sales, @Quantity, @Discount, @Profit)
SET
 RowID = @RowID,
 OrderID = @OrderID,
 OrderDate = STR_TO_DATE(@OrderDate, '%m-%d-%Y'),
 ShipDate = STR_TO_DATE(@ShipDate, '%m-%d-%Y'),
 ShipMode = @ShipMode,
 CustomerID = @CustomerID,
 CustomerName = @CustomerName,
 Segment = @Segment,
 Country = @Country,
 City = @City,
 State = @State,
 PostalCode = @PostalCode,
 Region = @Region,
 ProductID = @ProductID,
 Category = @Category,
 SubCategory = @SubCategory,
 ProductName = @ProductName,
 Sales = @Sales,
 Quantity = @Quantity,
 Discount = @Discount,
 Profit = @Profit;
