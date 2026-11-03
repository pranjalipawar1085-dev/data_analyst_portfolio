USE project_food;

SELECT COUNT(*) AS total_items
FROM food
WHERE restaurant = 'Taco Bell';

SELECT
    COUNT(*) AS total_items,
    ROUND(AVG(calories),2) AS avg_calories,
    ROUND(AVG(cal_fat),2) AS avg_cal_fat,
    ROUND(AVG(total_fat),2) AS avg_total_fat,
    ROUND(AVG(sat_fat),2) AS avg_sat_fat,
    ROUND(AVG(trans_fat),2) AS avg_trans_fat,
    ROUND(AVG(cholesterol),2) AS avg_cholesterol,
    ROUND(AVG(sodium),2) AS avg_sodium,
    ROUND(AVG(total_carb),2) AS avg_carbohydrates,
    ROUND(AVG(fiber),2) AS avg_fiber,
    ROUND(AVG(sugar),2) AS avg_sugar,
    ROUND(AVG(protein),2) AS avg_protein
FROM food
WHERE restaurant = 'Taco Bell';

#Highest-calorie Taco Bell items
SELECT
    item,
    calories
FROM food
WHERE restaurant = 'Taco Bell'
ORDER BY calories DESC
LIMIT 10;

#Lowest-calorie Taco Bell items
SELECT
    item,
    calories
FROM food
WHERE restaurant = 'Taco Bell'
ORDER BY calories ASC
LIMIT 10;

#Highest-protein items
SELECT
    item,
    protein
FROM food
WHERE restaurant = 'Taco Bell'
ORDER BY protein DESC
LIMIT 10;

#Highest-sodium items
SELECT
    item,
    sodium
FROM food
WHERE restaurant = 'Taco Bell'
ORDER BY sodium DESC
LIMIT 10;

#Highest-sugar items
SELECT
    item,
    sugar
FROM food
WHERE restaurant = 'Taco Bell'
ORDER BY sugar DESC
LIMIT 10;

#Taco Bell nutritional category comparison
SELECT
    restaurant,
    ROUND(AVG(calories),2) AS avg_calories,
    ROUND(AVG(total_fat),2) AS avg_fat,
    ROUND(AVG(total_carb),2) AS avg_carbs,
    ROUND(AVG(protein),2) AS avg_protein,
    ROUND(AVG(sugar),2) AS avg_sugar,
    ROUND(AVG(sodium),2) AS avg_sodium
FROM food
WHERE restaurant = 'Taco Bell'
GROUP BY restaurant;

SELECT * FROM food;


