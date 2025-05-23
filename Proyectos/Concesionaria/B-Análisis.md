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

---

### 🎯 Objetivo del Análisis

En un entorno automotriz cada vez más competitivo, contar con información clara y accionable sobre el rendimiento comercial es clave para la toma de decisiones. Este análisis fue desarrollado con el objetivo de ofrecer una **visión integral del negocio de ventas de vehículos** a lo largo de 2023 y 2024, enfocándose en:

- La rentabilidad por tipo y modelo de vehículo
- El desempeño de los agentes de ventas
- La eficiencia operativa medida por el cumplimiento de entregas
- La variación geográfica de las ventas por región y sucursal

---

### 🛣 Contexto del Negocio

Una concesionaria nacional opera múltiples sucursales distribuidas en distintas regiones. A través de su equipo de ventas, ofrece una amplia variedad de vehículos: SUV, sedanes y camionetas. El éxito del negocio depende tanto del volumen de ventas como del cumplimiento de los tiempos de entrega y la satisfacción del cliente.

Se recolectaron y analizaron más de 400 registros de ventas con variables clave como:

- Tipo de vehículo, modelo y precio
- Región y sucursal
- Agente responsable de la venta
- Fecha de venta
- Estado de entrega (a tiempo o retrasado)

---

### 🔍 Hallazgos Destacados

- **SUV lideran las ventas**, representando más del 40% del total. Modelos como *Ford Escape* y *Chevrolet Tahoe* se posicionaron como los más vendidos.
- Las **ventas aumentaron un 12% en 2024** respecto al año anterior, destacando un crecimiento en Córdoba y Mendoza.
- **Mateo Luque** fue el agente con mayor volumen de ventas, aunque también acumuló más entregas retrasadas.
- Algunas sucursales del sur del país, si bien tienen menor volumen, alcanzaron un **90% de entregas a tiempo**, lo que las posiciona como referentes en eficiencia operativa.

---

### 📈 Impacto del Análisis

Este análisis permite a los tomadores de decisiones:

- **Rediseñar campañas de marketing** según tipo de vehículo y región
- **Optimizar la logística** enfocándose en modelos o zonas con altos retrasos
- **Evaluar y capacitar agentes** según su rendimiento individual
- **Ajustar inventario** de acuerdo con la demanda histórica y proyectada

---

### 💡 Recomendaciones Estratégicas

1. **Aumentar el stock de SUV** en las regiones con mayor volumen (Buenos Aires, Córdoba).
2. **Investigar causas de entregas retrasadas** y estandarizar buenas prácticas logísticas.
3. **Implementar incentivos para agentes** con alto desempeño y entregas puntuales.
4. **Replicar el modelo de gestión** de las sucursales con mejor eficiencia en otras zonas.

---

### 🧩 Siguientes pasos

- Incorporar análisis predictivo para estimar ventas futuras
- Implementar modelos de machine learning para predecir retrasos
- Expandir el dataset a 2025 con datos reales o simulados
- Integrar encuestas de satisfacción del cliente

---

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
