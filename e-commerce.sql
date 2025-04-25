-- ========================================
-- E-Commerce Database Schema
-- ========================================

-- 1. Brand
CREATE TABLE brand (
    brand_id INT AUTO_INCREMENT PRIMARY KEY,
    brand_name VARCHAR(255) NOT NULL
);

-- 2. Product Category
CREATE TABLE product_category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

-- 3. Product
CREATE TABLE product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    brand_id INT NOT NULL,
    base_price DECIMAL(10,2) NOT NULL,
    category_id INT NOT NULL,
    FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
    FOREIGN KEY (category_id) REFERENCES product_category(category_id)
);

-- 4. Product Image
CREATE TABLE product_image (
    product_image_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    image_url VARCHAR(500) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

-- 5. Color
CREATE TABLE color (
    color_id INT AUTO_INCREMENT PRIMARY KEY,
    color_name VARCHAR(100) NOT NULL
);

-- 6. Size Category
CREATE TABLE size_category (
    size_category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

-- 7. Size Option
CREATE TABLE size_option (
    size_option_id INT AUTO_INCREMENT PRIMARY KEY,
    size_category_id INT NOT NULL,
    size_name VARCHAR(100) NOT NULL,
    FOREIGN KEY (size_category_id) REFERENCES size_category(size_category_id)
);

-- 8. Product Variation
CREATE TABLE product_variation (
    product_variation_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    size_category_id INT NOT NULL,
    color_id INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (size_category_id) REFERENCES size_category(size_category_id),
    FOREIGN KEY (color_id) REFERENCES color(color_id)
);

-- 9. Product Item
CREATE TABLE product_item (
    product_item_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity_in_stock INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

-- 10. Attribute Category
CREATE TABLE attribute_category (
    attribute_category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

-- 11. Attribute Type
CREATE TABLE attribute_type (
    attribute_type_id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(100) NOT NULL
);

-- 12. Product Attribute
CREATE TABLE product_attribute (
    product_attribute_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    attribute_category_id INT NOT NULL,
    attribute_type_id INT NOT NULL,
    attribute_value VARCHAR(255) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (attribute_category_id) REFERENCES attribute_category(attribute_category_id),
    FOREIGN KEY (attribute_type_id) REFERENCES attribute_type(attribute_type_id)
);

-- ========================================
-- Indexes for Better Query Performance
-- ========================================

CREATE INDEX idx_product_brand_id ON product(brand_id);
CREATE INDEX idx_product_category_id ON product(category_id);
CREATE INDEX idx_product_image_product_id ON product_image(product_id);
CREATE INDEX idx_product_variation_product_id ON product_variation(product_id);
CREATE INDEX idx_product_variation_color_id ON product_variation(color_id);
CREATE INDEX idx_product_item_product_id ON product_item(product_id);
CREATE INDEX idx_product_attribute_product_id ON product_attribute(product_id);
