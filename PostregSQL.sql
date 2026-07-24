SELECT nombre, precio
FROM table_name;

SELECT *
FROM table_name;

SELECT
    nombre       AS primer_nombre,
    nombre_2     AS segundo_nombre,
    apellido     AS primer_apellido,
    apellido_2   AS segundo_apellido
FROM table_name;

SELECT COUNT(nombre) FROM table_name;
SELECT COUNT(DISTINCT nombre) FROM table_name;
SELECT COUNT(*) FROM table_name;
SELECT SUM(precio) FROM table_name;
SELECT AVG(precio) FROM table_name;
SELECT MAX(precio) FROM table_name;
SELECT MIN(precio) FROM table_name;

SELECT
    nombre,
    precio
FROM table_name
LIMIT 10;

SELECT precio
FROM table_name
WHERE precio > 100
LIMIT 10;

SELECT nombre
FROM table_name
WHERE nombre = 'Doustin'
LIMIT 10;

SELECT nombre
FROM table_name
WHERE nombre = 'Doustin' OR nombre = 'Alan'; nombre = 'Doustin' AND nombre = 'Alan';

SELECT
    price,
    nombre
FROM table_name
WHERE price BETWEEN 50 AND 100 AND nombre = 'Doustin';

SELECT
    nombre,
    price
FROM table_name
WHERE (nombre = 'Doustin' OR nombre = 'Alan') AND (precio > 100 OR precio < 50);

SELECT nombre
FROM table_name
WHERE nombre LIKE 'Dou%';

SELECT nombre
FROM table_name
WHERE nombre LIKE 'Dou_';

SELECT nombre
FROM table_name
WHERE nombre LIKE '__u%';

SELECT nombre
FROM table_name
WHERE nombre NOT LIKE '%D';

SELECT pelicula
FROM table_name
WHERE lanzamiento IN (2008, 2019, 2026);

SELECT name
FROM table_name
WHERE price IS NULL;

SELECT COUNT(name) AS total_nombres
FROM table_name
WHERE price IS NOT NULL;

SELECT ROUND(AVG(price), 2) AS precio_promedio
FROM table_name;

SELECT gross - budget AS profit
FROM table_name;

SELECT gross + budget AS profit
FROM table_name;

SELECT gross / budget AS profit
FROM table_name;

SELECT gross * budget AS profit
FROM table_name;

SELECT 
    name,
    price
FROM table_name
ORDER BY price;

SELECT
    name, 
    price
FROM table_name
ORDER BY price DESC;

SELECT 
    name,
    price
FROM table_name
ORDER BY price ASC;

SELECT 
    name,
    price
FROM table_name 
WHERE price IS NOT NULL
ORDER BY price DESC, name ASC;

SELECT 
    name,
    AVG(price) AS avg_price
FROM table_name
GROUP BY name;

SELECT 
    name,
    last_name,
    SUM(price) AS total_price
FROM table_name
GROUP BY name, last_name;

SELECT 
    name,
    last_name,
    SUM(price) AS total_price
FROM table_name
GROUP BY name, last_name
ORDER BY total_price DESC;

SELECT 
    name,
    SUM(price) AS total_price
FROM table_name
GROUP BY name, last_name
HAVING SUM(price) > 1000; 

-------
SELECT
    release_year,
    AVG(budget) AS avg_budget,
    AVG(gross) AS avg_gross
FROM films
GROUP BY release_year
HAVING AVG(budget) > 6000000
ORDER BY AVG(gross) DESC
LIMIT 1;
-------