## Análisis Exploratorio del Dataset de Ventas de Concesionaria
### 📄 Descripción general del dataset

| Columna          | Descripción                                           |
|------------------|-------------------------------------------------------|
| ID               | Identificador único de la venta                       |
| Tipo Vehículo    | Clasificación del vehículo: SUV, Sedán, Camioneta     |
| Modelo           | Marca y modelo del vehículo vendido                   |
| Fecha Venta      | Fecha de realización de la venta                      |
| Precio Venta     | Monto en USD (requiere conversión a tipo numérico)   |
| Agente Ventas    | Nombre del vendedor responsable                       |
| Región           | Ubicación geográfica general                          |
| Sucursal         | Sucursal específica dentro de una región              |
| Estado Entrega   | Si la entrega fue "A Tiempo" o "Retrasado"            |
| Ventas 2023      | Importe asociado si la venta ocurrió en 2023          |
| Ventas 2024      | Importe asociado si la venta ocurrió en 2024          |

## 🧪 Análisis Exploratorio de Datos (EDA)

### 🔢 Tipos de Datos

- **Categóricos:** Tipo Vehículo, Modelo, Agente, Región, Estado Entrega, etc.
- **Numéricos:** Precio (luego de limpieza), Ventas por año
- **Temporales:** Fecha de Venta (convertido a datetime)

### 📊 Distribución de Variables (ejemplos)

- **Tipo de Vehículo:** 3 categorías principales (SUV, Sedán, Camioneta)
- **Modelos:** Diversos modelos de marcas reconocidas
- **Precio de Venta:** Entre 45.000 y 90.000 USD
- **Estado Entrega:** 60–70% a tiempo, resto retrasado

### 📈 Relaciones de Interés

- Ventas por tipo de vehículo
- Desempeño por agente de ventas
- Cumplimiento de entregas por sucursal
- Evolución mensual de ventas por región
- Comparativa entre años

---

## 🧹 Limpieza de Datos

1. Conversión de columnas monetarias a formato numérico (ej. "73.268,00 USD" → 73268.00)
2. Conversión de fechas al formato `datetime`
3. Creación de columnas derivadas: año, mes, trimestre
4. Validación y estandarización de nombres de modelos y sucursales

---

## 📌 Preguntas Clave del Negocio

- ¿Qué tipo de vehículo genera más ingresos?
- ¿Qué agente de ventas tiene mejor desempeño?
- ¿Hay regiones con mayor ticket promedio?
- ¿Se están cumpliendo los tiempos de entrega?
- ¿Qué modelos presentan más retrasos?

---

## 📊 Visualizaciones sugeridas (Power BI)

- Tarjetas: Total ventas 2023, 2024, total vehículos, ticket promedio
- Gráfico de columnas: Ventas por tipo de vehículo
- Pie chart: Entregas a tiempo vs retrasadas
- Mapa: Ventas por región
- Tabla dinámica: Agente vs Ventas vs Estado Entrega
- Línea temporal: Ventas mensuales

---

## 🧠 Conclusiones y Posibilidades de Extensión

Este análisis proporciona una base sólida para construir un dashboard interactivo en Power BI. También puede ser extendido con modelos predictivos (e.g. retrasos de entrega, pronóstico de ventas) utilizando Python o herramientas de machine learning.

---

## 🛠 Herramientas Utilizadas

- Python (pandas, matplotlib, seaborn)
- Power BI
- Excel
- Git / GitHub para versionado y documentación

---
