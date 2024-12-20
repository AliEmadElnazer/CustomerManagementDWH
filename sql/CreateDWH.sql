USE CustomerManagementDWH
GO


-- Customers Dimension
CREATE TABLE Customers_Dim (
    CustomerID INT PRIMARY KEY,
    FullName NVARCHAR(255),
    Email NVARCHAR(255),
    PhoneNumber NVARCHAR(20),
    DateOfBirth DATE,
    LoyaltyPoints INT,
    PreferredCategories NVARCHAR(255),
    PreferredBrands NVARCHAR(255),
    PreferredPaymentMethods NVARCHAR(255)
);

-- Products Dimension
CREATE TABLE Products_Dim (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(255),
    Category NVARCHAR(255),
    Brand NVARCHAR(255),
    Price DECIMAL(10, 2),
    Rating DECIMAL(3, 2)
);

-- Date Dimension
CREATE TABLE Date_Dim (
    DateID INT PRIMARY KEY,
    Date DATE,
    Day INT,
    Month INT,
    Year INT,
    Quarter INT,
    Weekday NVARCHAR(50)
);

-- Address Dimension
CREATE TABLE Address_Dim (
    AddressID INT PRIMARY KEY,
    FullAddress NVARCHAR(255),
    City NVARCHAR(100),
    State NVARCHAR(100),
    Country NVARCHAR(100),
    PostalCode NVARCHAR(20)
);

-- Payments Dimension
CREATE TABLE Payments_Dim (
    PaymentID INT PRIMARY KEY,
    PaymentMethod NVARCHAR(50),
    PaymentDate DATE,
    Amount DECIMAL(10, 2)
);



-- Orders Fact Table
CREATE TABLE Orders_Fact (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    OrderDateID INT,
    ShippingAddressID INT,
    BillingAddressID INT,
    PaymentID INT,
    OrderTotal DECIMAL(10, 2),
    OrderStatus NVARCHAR(50),
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    Discount DECIMAL(5, 2),
    TotalPrice DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers_Dim(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products_Dim(ProductID),
    FOREIGN KEY (OrderDateID) REFERENCES Date_Dim(DateID),
    FOREIGN KEY (ShippingAddressID) REFERENCES Address_Dim(AddressID),
    FOREIGN KEY (BillingAddressID) REFERENCES Address_Dim(AddressID),
    FOREIGN KEY (PaymentID) REFERENCES Payments_Dim(PaymentID)
);
