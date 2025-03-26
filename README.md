# Análisis Exploratorio de Datos con SQL

![Roadmap del Proyecto](Files/Project%20Roadmap.png)

Este proyecto demuestra un enfoque estructurado para realizar un análisis exploratorio de datos utilizando SQL en un contexto de data warehouse. El análisis sigue un proceso por etapas que va desde la exploración básica de la base de datos hasta análisis más complejos como rankings y segmentación.

## Objetivo del Proyecto

El objetivo principal es mostrar cómo realizar un análisis exploratorio de datos completo utilizando SQL, siguiendo un enfoque metodológico y estructurado. Este proyecto sirve como demostración de habilidades en:

- Exploración y manipulación de datos con SQL
- Análisis de dimensiones y métricas en un data warehouse
- Generación de insights a partir de datos de ventas
- Implementación de técnicas de análisis progresivamente más complejas

## Estructura del Proyecto

* **Scripts/** - Scripts SQL organizados por etapas de análisis
  * `00_init_database.sql` - Inicialización de la base de datos y carga de datos
  * `01_Database exploration.sql` - Exploración básica de la estructura de la BD
  * `02_Dimensions exploration.sql` - Análisis de dimensiones
  * `03_Date exploration.sql` - Análisis temporal
  * `04_Measures exploration.sql` - Análisis de métricas principales
  * `05_Magnitude exploration.sql` - Análisis de magnitudes
  * `06_Ranking Analysis.sql` - Análisis de rankings

* **Datasets/** - Datasets utilizados y generados durante el análisis
  * `gold.fact_sales.csv` - Datos de ventas
  * `gold.report_customers.csv` - Reporte de clientes
  * `gold.report_products.csv` - Reporte de productos

* **Files/** - Archivos adicionales del proyecto
  * `Project Roadmap.png` - Diagrama del flujo de análisis

* **Documentación**
  * `README.md` - Descripción general del proyecto
  * `ANALYSIS_PROCESS.md` - Detalle del proceso de análisis
  * `FOR_RECRUITERS.md` - Guía para reclutadores sobre habilidades demostradas

## Metodología de Análisis

El proyecto sigue un enfoque de análisis por etapas:

1. **Inicialización y Preparación de Datos**: Creación de la base de datos, esquemas y tablas, carga de datos iniciales.

2. **Exploración Básica**: Análisis de la estructura de la base de datos, tablas y columnas disponibles.

3. **Exploración de Dimensiones**: Análisis de las dimensiones principales (clientes, productos).

4. **Análisis Temporal**: Exploración de patrones temporales en los datos de ventas.

5. **Análisis de Métricas**: Cálculo y análisis de métricas clave del negocio (ventas totales, cantidad de productos, precios promedio).

6. **Análisis de Magnitudes**: Estudio de la distribución y magnitud de las métricas principales.

7. **Análisis de Rankings**: Identificación de los mejores y peores productos, clientes y categorías según diferentes criterios.

## Principales Insights

El análisis permite descubrir:

- Productos y categorías que generan mayor ingreso
- Patrones de compra de los clientes
- Distribución de ventas a lo largo del tiempo
- Métricas clave del negocio y su evolución

## Tecnologías Utilizadas

- Microsoft SQL Server
- T-SQL
- Data Warehouse (Esquema Estrella)

## Cómo Ejecutar el Proyecto

1. Asegúrate de tener instalado Microsoft SQL Server
2. Ejecuta los scripts en orden numérico, comenzando por `00_init_database.sql`
3. Cada script contiene comentarios que explican su propósito y los insights que se pueden obtener

## Resultados y Análisis

Los resultados de este proyecto no son visualizaciones, sino un conjunto de insights valiosos obtenidos a través de la exploración estructurada de datos con SQL. Entre los principales logros se encuentran:

- **Identificación de la estructura de la base de datos**: Comprensión detallada del modelo de datos, relaciones entre tablas y campos disponibles para análisis.

- **Exploración progresiva de datos**: Análisis que va desde lo básico hasta técnicas avanzadas, permitiendo una comprensión profunda de los patrones en los datos.

- **Generación de insights de negocio**: Identificación de productos más rentables, patrones de compra de clientes, y métricas clave que pueden informar decisiones estratégicas.

Los scripts SQL en este proyecto no solo extraen datos, sino que transforman esos datos en conocimiento accionable a través de un proceso analítico metodológico y bien estructurado.

---

Este proyecto fue desarrollado como demostración de habilidades en análisis de datos con SQL, siguiendo mejores prácticas de la industria para el análisis exploratorio de datos.
