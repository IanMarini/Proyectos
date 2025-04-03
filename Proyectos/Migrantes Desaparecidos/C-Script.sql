SELECT `Año Incidente`, SUM(`Número Fallecidos`) AS Total_Fallecidos
FROM GDDM
GROUP BY `Año Incidente`
ORDER BY `Año Incidente`;


SELECT `País Origen`, SUM(`Número Fallecidos`) AS Total_Fallecidos
FROM GDDM
GROUP BY `País Origen`
ORDER BY Total_Fallecidos DESC
LIMIT 10;


SELECT `ID`, `Año Incidente`, `País Origen`, `Número Total de Fallecidos y Desaparecidos`
FROM GDDM
ORDER BY `Número Total de Fallecidos y Desaparecidos` DESC 
LIMIT 10;


SELECT `Causa Muerte`, SUM(`Número Fallecidos`) AS Total_Fallecidos
FROM GDDM
GROUP BY `Causa Muerte`
ORDER BY Total_Fallecidos DESC;


SELECT `Ruta Migratoria`, SUM(`Número Fallecidos`) AS Total_Fallecidos
FROM GDDM
GROUP BY `Ruta Migratoria`
ORDER BY Total_Fallecidos DESC
LIMIT 5;


SELECT `Ruta Migratoria`, 
       SUM(`Número Fallecidos`) AS Total_Fallecidos,
       SUM(`Número Mínimo Estimado de Desaparecidos`) AS Total_Desaparecidos,
       SUM(`Número Sobrevivientes`) AS Total_Sobrevivientes,
       (SUM(`Número Fallecidos`) / NULLIF(SUM(`Número Fallecidos`) + SUM(`Número Sobrevivientes`) + SUM(`Número Mínimo Estimado de Desaparecidos`), 0)) * 100 AS Peligrosidad
FROM GDDM
GROUP BY `Ruta Migratoria`
ORDER BY Peligrosidad DESC
LIMIT 5;


SELECT `Año Incidente`, 
       SUM(`Número Fallecidos`) AS Total_Fallecidos,
       SUM(`Número Sobrevivientes`) AS Total_Sobrevivientes,
       (SUM(`Número Fallecidos`) / NULLIF(SUM(`Número Fallecidos`) + SUM(`Número Sobrevivientes`), 0)) * 100 AS Tasa_Mortalidad
FROM GDDM
GROUP BY `Año Incidente`
ORDER BY Tasa_Mortalidad DESC;


SELECT `Región Incidente`, 
       SUM(`Número Fallecidos`) AS Total_Fallecidos,
       SUM(`Número Sobrevivientes`) AS Total_Sobrevivientes,
       SUM(`Número Fallecidos`) + SUM(`Número Sobrevivientes`) AS Total_Afectados,
       (SUM(`Número Fallecidos`) / NULLIF(SUM(`Número Fallecidos`) + SUM(`Número Sobrevivientes`), 0)) * 100 AS Tasa_Fallecimiento
FROM GDDM
GROUP BY `Región Incidente`
ORDER BY Tasa_Fallecimiento DESC;


SELECT `Mes Reportado`, 
       SUM(`Número Fallecidos`) AS Total_Fallecidos
FROM GDDM
GROUP BY `Mes Reportado`
ORDER BY Total_Fallecidos DESC;


SELECT `País Origen`, 
       SUM(COALESCE(`Número Fallecidos`, 0)) AS Total_Fallecidos,
       SUM(COALESCE(`Número Mínimo Estimado de Desaparecidos`, 0)) AS Total_Desaparecidos,
       (SUM(COALESCE(`Número Mínimo Estimado de Desaparecidos`, 0)) / 
        NULLIF(SUM(COALESCE(`Número Fallecidos`, 0)) + SUM(COALESCE(`Número Mínimo Estimado de Desaparecidos`, 0)), 0)) * 100 AS Porcentaje_Desaparecidos
FROM GDDM
GROUP BY `País Origen`
HAVING Total_Fallecidos > 5  -- Filtrar países con al menos 5 fallecidos
   AND Total_Desaparecidos > 0  -- Evitar filas sin desaparecidos
ORDER BY Porcentaje_Desaparecidos DESC
LIMIT 10;


SELECT `ID`, `Año Incidente`, `País Origen`, `Número Fallecidos`, `Ubicación Muerte`
FROM GDDM
ORDER BY `Número Fallecidos` DESC
LIMIT 10;


SELECT
    `Región Origen`,
    `Causa Muerte`,
    COUNT(*) AS Contador_Muertes,
    SUM(`Número Mujeres`) AS Total_Mujeres,
    SUM(`Número Hombres`) AS Total_Hombres,
    SUM(`Número Niños`) AS Total_Niños,
    ROUND(AVG(`Número Fallecidos`), 2) AS Promedio_Incidente
FROM GDDM
WHERE `Causa Muerte` IS NOT NULL
GROUP BY `Región Origen`, `Causa Muerte`
ORDER BY Contador_Muertes DESC;


SELECT
    `Ruta Migratoria`,
    SUM(`Número Fallecidos`) AS Contador_Muertes,
    SUM(`Número Total de Fallecidos y Desaparecidos`) AS Desaparecidos,
    SUM(`Número Mujeres`) AS Mujeres,
    SUM(`Número Hombres`) AS Hombres,
    SUM(`Número Niños`) AS Menores
FROM GDDM
WHERE `Ruta Migratoria` IS NOT NULL
GROUP BY `Ruta Migratoria`
ORDER BY Contador_Muertes DESC;


SELECT
    `Ubicación Muerte`,
    COUNT(*) AS Total_Incidents,
    SUM(`Número Fallecidos`) AS Contador_Muertes,
    SUM(`Número Total de Fallecidos y Desaparecidos`) AS Muertos_Desaparecidos,
    ROUND(AVG(`Número Total de Fallecidos y Desaparecidos`), 2) AS Promedio
FROM GDDM
WHERE `Ubicación Muerte` IS NOT NULL
GROUP BY `Ubicación Muerte`
HAVING Muertos_Desaparecidos > 0
ORDER BY Muertos_Desaparecidos DESC;


SELECT
    `Año Incidente` AS Año,
    CASE `Mes Reportado`
        WHEN 'Enero' THEN 1
        WHEN 'Febrero' THEN 2
        WHEN 'Marzo' THEN 3
        WHEN 'Abril' THEN 4
        WHEN 'Mayo' THEN 5
        WHEN 'Junio' THEN 6
        WHEN 'Julio' THEN 7
        WHEN 'Agosto' THEN 8
        WHEN 'Septiembre' THEN 9
        WHEN 'Octubre' THEN 10
        WHEN 'Noviembre' THEN 11
        WHEN 'Diciembre' THEN 12
        ELSE NULL
    END AS Mes,
    SUM(`Número Fallecidos`) AS Contador,
    SUM(`Número Mínimo Estimado de Desaparecidos`) AS Estimado_Desaparecidos
FROM GDDM
GROUP BY `Año Incidente`, Mes
ORDER BY `Año Incidente`, Mes;


SELECT
    `País Origen`,
    SUM(`Número Mujeres`) AS Mujeres,
    SUM(`Número Hombres`) AS Hombres,
    SUM(`Número Niños`) AS Niños,
    SUM(`Número Total de Fallecidos y Desaparecidos`) AS Muertos_Desaparecidos
FROM GDDM
GROUP BY `País Origen`
ORDER BY Muertos_Desaparecidos DESC;

