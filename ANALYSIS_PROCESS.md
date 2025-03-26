# Proceso de Análisis Exploratorio con SQL

Este documento detalla el proceso de análisis exploratorio por etapas implementado en este proyecto, explicando el propósito y los insights obtenidos en cada fase.

## Etapa 0: Inicialización de la Base de Datos

**Script**: `00_init_database.sql`

**Propósito**:
- Crear la base de datos `DataWarehouseAnalytics`
- Establecer el esquema `gold`
- Crear las tablas dimensionales (`dim_customers`, `dim_products`) y de hechos (`fact_sales`)
- Cargar los datos iniciales desde archivos CSV

**Importancia para el Análisis**:
Esta etapa establece la estructura de datos en un modelo de data warehouse tipo estrella, con tablas de dimensiones y hechos claramente definidas, facilitando el análisis multidimensional.

## Etapa 1: Exploración de la Base de Datos

**Script**: `01_Database exploration.sql`

**Propósito**:
- Explorar la estructura general de la base de datos
- Identificar todas las tablas disponibles
- Examinar las columnas y sus tipos de datos

**Técnicas SQL utilizadas**:
- Consultas a vistas del sistema (`INFORMATION_SCHEMA`)
- Exploración de metadatos

**Insights**:
- Comprensión de la estructura general de los datos
- Identificación de las relaciones entre tablas
- Familiarización con los campos disponibles para análisis

## Etapa 2: Exploración de Dimensiones

**Script**: `02_Dimensions exploration.sql`

**Propósito**:
- Analizar las tablas de dimensiones (clientes y productos)
- Entender la distribución de atributos clave

**Técnicas SQL utilizadas**:
- Consultas de agregación
- Funciones de conteo y agrupación

**Insights**:
- Distribución de clientes por país, estado civil y género
- Categorización de productos y líneas de producto
- Identificación de dimensiones clave para análisis posteriores

## Etapa 3: Exploración Temporal

**Script**: `03_Date exploration.sql`

**Propósito**:
- Analizar la distribución temporal de las ventas
- Identificar patrones estacionales o tendencias

**Técnicas SQL utilizadas**:
- Funciones de fecha
- Agrupación por períodos de tiempo
- Análisis de series temporales básico

**Insights**:
- Patrones de ventas por mes/año
- Identificación de temporadas altas y bajas
- Análisis de la evolución de ventas a lo largo del tiempo

## Etapa 4: Exploración de Métricas

**Script**: `04_Measures exploration.sql`

**Propósito**:
- Calcular métricas clave del negocio
- Establecer KPIs fundamentales

**Técnicas SQL utilizadas**:
- Funciones de agregación (SUM, AVG, COUNT)
- Consultas UNION para reportes consolidados

**Insights**:
- Ventas totales
- Cantidad total de productos vendidos
- Precio promedio de venta
- Número total de órdenes
- Número de clientes activos vs. total de clientes

## Etapa 5: Análisis de Magnitudes

**Script**: `05_Magnitude exploration.sql`

**Propósito**:
- Analizar la distribución y magnitud de las métricas principales
- Identificar segmentos y patrones

**Técnicas SQL utilizadas**:
- Funciones de ventana
- Segmentación de datos

**Insights**:
- Distribución de ventas por categoría de producto
- Segmentación de clientes por volumen de compra
- Identificación de outliers en precios o cantidades

## Etapa 6: Análisis de Rankings

**Script**: `06_Ranking Analysis.sql`

**Propósito**:
- Identificar los mejores y peores desempeños
- Crear rankings para análisis comparativo

**Técnicas SQL utilizadas**:
- Funciones de ventana (ROW_NUMBER, RANK)
- Subconsultas y CTEs
- Ordenamiento y filtrado avanzado

**Insights**:
- Top 5 productos con mayor ingreso
- Top 5 subcategorías más rentables
- 5 productos con peor desempeño en ventas
- Top 10 clientes por número de órdenes
- Clientes con menor actividad de compra

## Conclusiones del Análisis

Este enfoque por etapas permite construir un análisis exploratorio completo que va desde lo más básico hasta técnicas más avanzadas, demostrando cómo SQL puede ser utilizado para extraer insights valiosos de un conjunto de datos de ventas.

El proceso sigue una metodología estructurada que puede aplicarse a cualquier conjunto de datos empresariales, adaptando las consultas específicas según las necesidades del negocio pero manteniendo el enfoque progresivo que facilita la comprensión y la obtención de insights accionables.
