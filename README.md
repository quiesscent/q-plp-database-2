# 🛒 E-Commerce Database Project Documentation

## 📌 Overview
This project involves the design and implementation of a robust e-commerce database system. It includes an Entity-Relationship Diagram (ERD), the database schema, and seed data to simulate a working e-commerce environment.

## 🎯 Objectives
- Design a normalized relational database for an e-commerce platform
- Define clear entity relationships
- Implement and populate the database with sample data
- Enable future scalability and easy integration with backend systems

---

## 🗃️ Database Tables

### 1. **brand**
Stores brand names associated with products.
```sql
brand_id INT PRIMARY KEY
brand_name VARCHAR(255)
```

### 2. **product_category**
Defines categories like Electronics, Clothing, etc.
```sql
category_id INT PRIMARY KEY
category_name VARCHAR(255)
```

### 3. **product**
Contains core product information.
```sql
product_id INT PRIMARY KEY
name VARCHAR(255)
brand_id INT (FK)
base_price DECIMAL
category_id INT (FK)
```

### 4. **product_image**
Stores URLs of product images.
```sql
product_image_id INT PRIMARY KEY
product_id INT (FK)
image_url VARCHAR(500)
```

### 5. **color**
Holds available product colors.
```sql
color_id INT PRIMARY KEY
color_name VARCHAR(100)
```

### 6. **size_category**
Groups types of sizes (e.g., clothing, shoe).
```sql
size_category_id INT PRIMARY KEY
category_name VARCHAR(255)
```

### 7. **size_option**
Holds size values.
```sql
size_option_id INT PRIMARY KEY
size_category_id INT (FK)
size_name VARCHAR(100)
```

### 8. **product_variation**
Links products to size and color.
```sql
product_variation_id INT PRIMARY KEY
product_id INT (FK)
size_category_id INT (FK)
color_id INT (FK)
```

### 9. **product_item**
Represents specific purchasable units.
```sql
product_item_id INT PRIMARY KEY
product_id INT (FK)
price DECIMAL
quantity_in_stock INT
```

### 10. **attribute_category**
Groups attributes (e.g., physical, technical).
```sql
attribute_category_id INT PRIMARY KEY
category_name VARCHAR(255)
```

### 11. **attribute_type**
Specifies type of attribute (text, boolean, number).
```sql
attribute_type_id INT PRIMARY KEY
type_name VARCHAR(100)
```

### 12. **product_attribute**
Custom product attributes (e.g., material).
```sql
product_attribute_id INT PRIMARY KEY
product_id INT (FK)
attribute_category_id INT (FK)
attribute_type_id INT (FK)
attribute_value VARCHAR(255)
```

---

## 🔄 Data Flow
- Products are categorized and associated with brands.
- Each product can have multiple images and variations (by color/size).
- Variations are grouped under product items that hold pricing and stock info.
- Attributes provide detailed specifications.

---

## 🚀 Sample Data
Seed data includes example brands, categories, products, variations, and attributes to simulate real e-commerce operations.

---

## 📦 Project Files
- `e-commerce.sql` → Creates tables and indexes
- `data.sql` → Inserts sample data

---

## 🔧 Tools Used
- MySQL 
- ERD Tool: draw.io / dbdiagram.io
- GitHub for collaboration and version control

---

## 🤝 Contributors
This project was collaboratively built by our peer group as part of a database design challenge.

---

## 📬 License
MIT License - Feel free to reuse with attribution!

