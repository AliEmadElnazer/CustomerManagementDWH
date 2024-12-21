
# Data Warehouse Project

## Overview
This project presents a comprehensive **Data Warehouse** designed to manage customer data efficiently and provide actionable insights through analytical queries. The system is built using a star schema model, ensuring optimized and seamless querying for business-specific data analysis.

## Key Features

### 1. Data Warehouse Design
- The data warehouse follows a star schema structure.
- Includes a central fact table (`Orders Fact`) linked to multiple dimension tables:
  - `Customers Dim`
  - `Products Dim`
  - `Payments Dim`
  - `Date Dim`
  - `Address Dim`

### 2. Business-Specific Queries
- Answers critical business questions, such as:
  - Which products are the top-sellers?
  - Which product categories drive the most revenue?
  - What are the trends in customer reviews and ratings?
- Facilitates deep insights into:
  - Sales trends
  - Customer behaviors
  - Product performance metrics

### 3. Optimized Data Analysis
- Built for efficient data retrieval and reporting to support informed decision-making.

## Data Model

The star schema includes the following tables:

### Fact Table:
- **Orders Fact**: Captures transaction details such as `OrderTotal`, `OrderStatus`, `Quantity`, and `TotalPrice`.

### Dimension Tables:
- **Customers Dim**: Stores customer data, including `FullName`, `Email`, `PhoneNumber`, and `LoyaltyPoints`.
- **Products Dim**: Contains product details like `ProductName`, `Category`, `Brand`, `Price`, and `Rating`.
- **Payments Dim**: Tracks payment methods, dates, and amounts.
- **Date Dim**: Provides a time dimension with fields like `Day`, `Month`, `Year`, and `Weekday`.
- **Address Dim**: Includes location details such as `City`, `State`, `Country`, and `PostalCode`.

![Data Model Overview](./data_model.png)

## Business Queries
The project features several SQL queries designed to provide business insights:

### 1. Top-Selling Products
- Identifies products with the highest sales based on quantity and revenue.

### 2. Product Categories Driving Revenue
- Highlights categories contributing the most to overall revenue.

### 3. Average Order Value Over Time
- Shows monthly trends in average order value.

### 4. Top Product Brands by Revenue
- Lists brands generating the highest revenue.

### 5. Most Reviewed Products
- Finds products with the highest number of customer reviews.

### 6. Customer Reviews with Comments
- Retrieves detailed customer reviews that include textual feedback.

### 7. Monthly Sales for the Past Year
- Displays monthly revenue trends for the last 12 months.

### 8. Products with the Highest Average Rating
- Lists products with the best average customer ratings.

Each query is tailored to provide actionable insights, enabling businesses to make data-driven decisions.

## Screenshots
Below are visual examples of the analytical queries:

1. **Top-Selling Products**:
   ![Top-Selling Products](./top_selling_products.png)

2. **Product Categories Driving Revenue**:
   ![Categories Driving Revenue](./categories_revenue.png)

3. **Average Order Value Over Time**:
   ![Average Order Value](./average_order_value.png)

4. **Products with the Highest Average Rating**:
   ![Highest Rated Products](./highest_rated_products.png)
