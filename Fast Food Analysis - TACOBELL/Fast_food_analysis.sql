SHOW DATABASES;
USE project_food;

SHOW TABLES;
DESCRIBE food;

SELECT COUNT(*) AS total_row
FROM food;

SELECT restaurant, COUNT(*) AS item_count
FROM food
GROUP BY restaurant
ORDER BY item_count DESC;

SELECT COUNT(*) AS total_rows,
       COUNT(DISTINCT restaurant) AS total_restaurants,
       COUNT(DISTINCT item) AS total_items
FROM food;

SELECT
    SUM(restaurant IS NULL) AS restaurant_null,
    SUM(item IS NULL) AS item_null,
    SUM(calories IS NULL) AS calories_null,
    SUM(cal_fat IS NULL) AS cal_fat_null,
    SUM(total_fat IS NULL) AS total_fat_null,
    SUM(sat_fat IS NULL) AS sat_fat_null,
    SUM(trans_fat IS NULL) AS trans_fat_null,
    SUM(cholesterol IS NULL) AS cholesterol_null,
    SUM(sodium IS NULL) AS sodium_null,
    SUM(total_carb IS NULL) AS total_carb_null,
    SUM(fiber IS NULL) AS fiber_null,
    SUM(sugar IS NULL) AS sugar_null,
    SUM(protein IS NULL) AS protein_null,
    SUM(vit_a IS NULL) AS vit_a_null,
    SUM(vit_c IS NULL) AS vit_c_null,
    SUM(calcium IS NULL) AS calcium_null,
    SUM(salad IS NULL) AS salad_null
FROM food;

SELECT restaurant, item, COUNT(*) AS duplicate_count
FROM food
GROUP BY restaurant, item
HAVING COUNT(*) > 1;

SELECT *
FROM food
WHERE restaurant = 'Taco Bell'
AND item IN (
    'Chili Cheese Burrito',
    'Express Taco Salad w/ Chips'
);

SELECT DISTINCT *
FROM food;


SELECT
    restaurant,
    COUNT(*) AS total_items
FROM food
GROUP BY restaurant
ORDER BY total_items DESC;

SELECT
    restaurant,
    COUNT(*) AS total_items,
    ROUND(AVG(calories), 2) AS avg_calories,
    ROUND(AVG(cal_fat), 2) AS avg_calories_from_fat,
    ROUND(AVG(total_fat), 2) AS avg_total_fat,
    ROUND(AVG(sat_fat), 2) AS avg_saturated_fat,
    ROUND(AVG(trans_fat), 2) AS avg_trans_fat,
    ROUND(AVG(cholesterol), 2) AS avg_cholesterol,
    ROUND(AVG(sodium), 2) AS avg_sodium,
    ROUND(AVG(total_carb), 2) AS avg_carbs,
    ROUND(AVG(fiber), 2) AS avg_fiber,
    ROUND(AVG(sugar), 2) AS avg_sugar,
    ROUND(AVG(protein), 2) AS avg_protein
FROM food
GROUP BY restaurant
ORDER BY avg_calories DESC;

#highest and lowest calaries items
SELECT
    restaurant,
    item,
    calories,
    total_fat,
    sodium,
    sugar,
    protein
FROM food
ORDER BY calories DESC
LIMIT 5;

SELECT
    restaurant,
    item,
    calories,
    total_fat,
    sodium,
    sugar,
    protein
FROM food
ORDER BY calories ASC
LIMIT 5;

#Highest-fat items
SELECT
    restaurant,
    item,
    total_fat,
    calories,
    sat_fat,
    trans_fat,
    sodium
FROM food
ORDER BY total_fat DESC
LIMIT 5;

#Highest-sodium items
SELECT
    restaurant,
    item,
    sodium,
    calories,
    total_fat,
    protein
FROM food
ORDER BY sodium DESC
LIMIT 5;

#Highest-sugar items
SELECT
    restaurant,
    item,
    sugar,
    calories,
    total_carb
FROM food
ORDER BY sugar DESC
LIMIT 5;

#Highest-protein items
SELECT
    restaurant,
    item,
    protein,
    calories,
    total_fat
FROM food
ORDER BY protein DESC
LIMIT 5;

#Restaurant-wise nutritional ranking
SELECT
    restaurant,
    ROUND(AVG(calories),2) AS avg_calories,
    ROUND(AVG(total_fat),2) AS avg_fat,
    ROUND(AVG(sodium),2) AS avg_sodium,
    ROUND(AVG(sugar),2) AS avg_sugar,
    ROUND(AVG(protein),2) AS avg_protein
FROM food
GROUP BY restaurant
ORDER BY avg_calories DESC;

#top 10 highest-calorie items
SELECT
    restaurant,
    item,
    calories,
    total_fat,
    sodium,
    sugar,
    protein
FROM food
ORDER BY calories DESC
LIMIT 10;

#Restaurant Menu Size
SELECT
    restaurant,
    COUNT(*) AS menu_items,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM food),
        2
    ) AS percentage_of_dataset
FROM food
GROUP BY restaurant
ORDER BY menu_items DESC;






SELECT * FROM food;