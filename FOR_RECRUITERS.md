# Guía para Reclutadores: Habilidades Demostradas en este Proyecto

Este documento está diseñado para ayudar a los reclutadores a entender las habilidades técnicas y analíticas demostradas en este proyecto de análisis de datos con SQL.

## 🔑 Habilidades Técnicas Demostradas

### 1. Dominio de SQL

- **Consultas básicas y avanzadas**: Desde simples SELECT hasta consultas complejas con múltiples JOIN y subconsultas.
- **Funciones de agregación**: Uso de SUM, COUNT, AVG para calcular métricas clave.
- **Funciones de ventana**: Implementación de ROW_NUMBER, RANK para análisis de rankings.
- **Manipulación de datos**: Creación de tablas, inserción de datos y gestión de esquemas.

### 2. Diseño de Data Warehouse

- **Modelo estrella**: Implementación de un esquema con tablas de hechos y dimensiones.
- **Normalización/Desnormalización**: Decisiones de diseño para optimizar el análisis.
- **Gestión de esquemas**: Organización lógica de objetos de base de datos.

### 3. Análisis de Datos

- **Análisis exploratorio**: Enfoque metodológico para descubrir patrones en los datos.
- **Análisis dimensional**: Exploración de datos desde múltiples perspectivas.
- **Análisis temporal**: Identificación de patrones a lo largo del tiempo.
- **Segmentación**: Categorización de clientes y productos para análisis específicos.

### 4. Pensamiento Analítico

- **Enfoque estructurado**: Progresión lógica desde análisis básicos hasta complejos.
- **Formulación de preguntas de negocio**: Traducción de preguntas de negocio a consultas SQL.
- **Interpretación de resultados**: Capacidad para extraer insights accionables.

## 📊 Ejemplos Específicos de Habilidades

### Ejemplo 1: Análisis de Métricas de Negocio (Script 04)

-- Generate a Report that shows all key metrics of the business
SELECT  'Total Sales' AS measure_name, SUM(sales_amount) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT  'Total Quantity' AS measure_name, SUM(quantity) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Average Price' AS measure_name, AVG(price) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Nr. Orders' AS measure_name, COUNT(DISTINCT order_number) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Nr. Products' AS measure_name, COUNT(DISTINCT product_key) AS measure_value FROM gold.dim_products
UNION ALL
SELECT 'Total Nr. Customers' AS measure_name, COUNT(customer_key) AS measure_value FROM gold.dim_customers;


**Habilidades demostradas**:
- Uso de UNION ALL para consolidar múltiples métricas en un solo reporte
- Aplicación de funciones de agregación para calcular KPIs
- Pensamiento analítico para identificar métricas relevantes para el negocio

### Ejemplo 2: Análisis de Rankings (Script 06)

SELECT *
FROM (
    SELECT
    p.product_name,
    SUM(f.sales_amount) AS total_revenue,
    ROW_NUMBER() OVER (ORDER BY SUM(f.sales_amount) DESC) AS rank_products
    FROM gold.fact_sales f
    LEFT JOIN gold.dim_products p
    ON p.product_key = f.product_key
    GROUP BY p.product_name)t
WHERE rank_products <= 5


**Habilidades demostradas**:
- Uso de funciones de ventana (ROW_NUMBER) para crear rankings
- Implementación de subconsultas para filtrar resultados
- JOIN entre tablas de hechos y dimensiones
- Análisis de rendimiento de productos

## 🚀 Aplicabilidad a Roles de Análisis de Datos

Las habilidades demostradas en este proyecto son directamente aplicables a roles como:

- **Analista de Datos**: Capacidad para extraer insights de datos estructurados
- **Analista de Business Intelligence**: Habilidad para traducir datos en métricas de negocio
- **Ingeniero de Datos Junior**: Conocimientos de diseño y manipulación de bases de datos
- **Analista SQL**: Dominio de consultas SQL para análisis de datos

## 📈 Potencial de Crecimiento

Este proyecto demuestra una base sólida que puede expandirse hacia:

- **Visualización de datos**: Los resultados de estas consultas pueden alimentar dashboards
- **Modelado predictivo**: El análisis exploratorio es el primer paso hacia modelos predictivos
- **Automatización de reportes**: Las consultas pueden integrarse en procesos ETL
- **Análisis avanzados**: El enfoque metodológico puede aplicarse a análisis más complejos

---

Este proyecto no solo demuestra habilidades técnicas en SQL, sino también la capacidad de aplicar un enfoque estructurado y metodológico al análisis de datos, una cualidad esencial para cualquier rol de análisis de datos.
