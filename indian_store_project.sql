-- Create the table
CREATE TABLE IF NOT EXISTS indian_store (
  `Product Name` VARCHAR(150),
  `Product Category` VARCHAR(100),
  `Product Price (USD)` FLOAT,
  `Product Price (INR)` FLOAT,
  `Quantity` VARCHAR(20)
);

-- Insert sample data
INSERT INTO indian_store (`Product Name`, `Product Category`, `Product Price (USD)`, `Product Price (INR)`, `Quantity`)
VALUES
('Organic Tattva Cinnamon Stick', 'Organic Products', 2.84, 154.07, '50g'),
('24 Mantra Organic Moong Dal', 'Organic Products', 9.45, 512.66, '1kg'),
('24 Mantra Organic Himalaya Pink Salt', 'Organic Products', 6.28, 340.69, '1kg'),
('Organic Tattva Mustard Seed Black', 'Organic Products', 2.55, 138.34, '200g'),
('24 Mantra Organic Rice Flour Fine', 'Organic Products', 4.46, 241.96, '1kg'),
('Catch Turmeric Powder', 'Spices', 1.20, 99.00, '100g'),
('Everest Red Chili Powder', 'Spices', 1.50, 125.00, '100g'),
('Aashirvaad Whole Wheat Atta', 'Flours', 3.00, 260.00, '5kg'),
('Britannia Good Day Biscuits', 'Snacks', 0.50, 40.00, '200g'),
('Amul Butter', 'Dairy', 1.90, 170.00, '500g');

-- Query 1: Top 5 Most Expensive Products
SELECT `Product Name`, `Product Category`, `Product Price (INR)`
FROM indian_store
ORDER BY `Product Price (INR)` DESC
LIMIT 5;

-- Query 2: Category-wise Total Sales Value
SELECT `Product Category`, 
       ROUND(SUM(`Product Price (INR)`), 2) AS `Total Sales (INR)`
FROM indian_store
GROUP BY `Product Category`
ORDER BY `Total Sales (INR)` DESC;

-- Query 3: Unit Distribution Breakdown
SELECT `Quantity`, COUNT(*) AS `Product Count`
FROM indian_store
GROUP BY `Quantity`
ORDER BY `Product Count` DESC;



