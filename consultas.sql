-- ¿Cuántos registros hay?
SELECT COUNT(*) FROM adidas_sales;

-- ¿Cuáles son las regiones en el conjunto de datos?
SELECT DISTINCT region FROM adidas_sales;

-- ¿Cuántos estados hay en el conjunto de datos?
SELECT COUNT(DISTINCT state) FROM adidas_sales;

-- ¿Cuántas ciudades hay en el conjunto de datos?
SELECT COUNT(DISTINCT city) FROM adidas_sales;

-- ¿Cuáles son los minoristas en el conjunto de datos?
SELECT DISTINCT retailer FROM adidas_sales;



-- ¿Cuál es la fecha más antigua y más reciente en el conjunto de datos?
SELECT MIN([Invoice Date]) FROM adidas_sales;

SELECT MAX([Invoice Date]) FROM adidas_sales;

-- ¿Cuáles son las ventas totales, unidades vendidas, Ganancias y Margen Operativo por Mes y Año?
SELECT 	YEAR([Invoice Date]) AS Año,
		MONTH([Invoice Date]) AS Mes,
		SUM([total sales]) AS venta_total,
		SUM([Units Sold]) AS Unidades_vendida,
		SUM([Operating Profit]) AS Ganancias,
		SUM([Operating Margin]) AS Margen_operativo		
FROM adidas_sales
GROUP BY YEAR([Invoice Date]), MONTH([Invoice Date])
ORDER BY YEAR([Invoice Date]), MONTH([Invoice Date]);



-- ¿Cuáles son los productos más vendido?
SELECT product, SUM([units sold]) AS unidades_vendidas FROM adidas_sales
GROUP BY product
ORDER BY unidades_vendidas DESC;

-- ¿Cuál es la ganancia total generada por todas las ventas?
SELECT SUM([operating profit]) FROM adidas_sales;

-- ¿Cuál es el número total de unidades vendidas?
SELECT SUM([units sold]) FROM adidas_sales;

-- ¿Cuál es el precio promedio de venta?
SELECT AVG([price per unit]) FROM adidas_sales;

-- ¿Cuál es el porcentage promedio de margen de beneficio operativo de todas las ventas?
SELECT AVG([operating margin]) FROM adidas_sales;

-- ¿Cantidad de ventas por método?
SELECT[sales method], COUNT(*) AS Cantidad FROM adidas_sales
GROUP BY [sales method] ORDER BY Cantidad DESC;



-- ¿Cuáles son las ventas totales, unidades vendidas, Ganancias y Margen Operativo por región?
SELECT region,
		SUM([total sales]) AS venta_total,
		SUM([Units Sold]) AS Unidades_vendida,
		SUM([Operating Profit]) AS Ganancias,
		SUM([Operating Margin]) AS Margen_operativo		
FROM adidas_sales
GROUP BY region
ORDER BY region;

-- ¿Cuáles son las ventas totales, unidades vendidas, Ganancias y Margen Operativo por estado?
SELECT state,
		SUM([total sales]) AS venta_total,
		SUM([Units Sold]) AS Unidades_vendida,
		SUM([Operating Profit]) AS Ganancias,
		SUM([Operating Margin]) AS Margen_operativo		
FROM adidas_sales
GROUP BY state
ORDER BY state;

-- ¿Cuáles son las ventas totales, unidades vendidas, Ganancias y Margen Operativo por ciudad?
SELECT city,
		SUM([total sales]) AS venta_total,
		SUM([Units Sold]) AS Unidades_vendida,
		SUM([Operating Profit]) AS Ganancias,
		SUM([Operating Margin]) AS Margen_operativo		
FROM adidas_sales
GROUP BY city
ORDER BY city;

-- ¿Cuáles son las ventas totales, unidades vendidas, Ganancias y Margen Operativo por retailer?
SELECT retailer,
		SUM([total sales]) AS venta_total,
		SUM([Units Sold]) AS Unidades_vendida,
		SUM([Operating Profit]) AS Ganancias,
		SUM([Operating Margin]) AS Margen_operativo		
FROM adidas_sales
GROUP BY retailer
ORDER BY retailer;



-- ¿Cuál es el precio promedio de venta de los productos en cada region?
SELECT region, product, AVG([price per unit]) AS precio_promedio FROM adidas_sales
GROUP BY region, product
ORDER BY region, precio_promedio DESC;

-- ¿Cuál es el precio promedio de venta de los productos en cada estado?
SELECT state, product, AVG([price per unit]) AS precio_promedio FROM adidas_sales
GROUP BY state, product
ORDER BY state, precio_promedio DESC;

-- ¿Cuál es el precio promedio de venta de los productos en cada ciudad?
SELECT city, product, AVG([price per unit]) AS precio_promedio FROM adidas_sales
GROUP BY city, product
ORDER BY city, precio_promedio DESC;



-- ¿Cuál es el método de venta más común en cada región?
SELECT region, [sales method], COUNT(*) AS Cantidad FROM adidas_sales
GROUP BY region, [sales method]
ORDER BY region, [sales method], Cantidad DESC;

-- ¿Cuál es el método de venta más común en cada estado?
SELECT state, [sales method], COUNT(*) AS Cantidad FROM adidas_sales
GROUP BY state, [sales method]
ORDER BY state, [sales method], Cantidad DESC;

-- ¿Cuál es el método de venta más común en cada ciudad?
SELECT city, [sales method], COUNT(*) AS Cantidad FROM adidas_sales
GROUP BY city, [sales method]
ORDER BY city, [sales method], Cantidad DESC;
