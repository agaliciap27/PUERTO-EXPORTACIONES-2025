-- ============================================================
-- PROYECTO: Análisis de Movimiento Portuario - 2025
-- AUTOR: Andrea Galicia 
-- FUENTE: Datos de operaciones portuarias, México 2025
-- DESCRIPCIÓN: Análisis exploratorio de datos de exportaciones
--                      del puerto - 2025
-- HERRAMIENTAS: PostgreSQL 18 / pgAdmin 4
-- NOTA: Datos anonimizados para uso académico/portafolio
-- ============================================================

-- ============================================================
-- RECONOCIMIENTO DE DATOS
-- ============================================================

SELECT * FROM exportaciones;	

-- ============================================================
-- Preparación de datos
-- ============================================================

-- Eliminar columna vacía
ALTER TABLE exportaciones DROP COLUMN producto;

-- Agregar columna terminal
ALTER TABLE exportaciones ADD COLUMN terminal VARCHAR(50);

-- Llenar columna terminal
UPDATE exportaciones SET terminal = SPLIT_PART(mes, ' ', 2);

-- Limpiar columna mes
UPDATE exportaciones SET mes = SPLIT_PART(mes, ' ', 1);

-- ============================================================
-- ANÁLISIS 1: Movimiento por toneladas de cada terminal en 2025
-- ===========================================================

SELECT SUM (tonelaje) as tonelaje_total, terminal 
FROM exportaciones 
GROUP BY terminal 
ORDER BY tonelaje_total desc;

--Las terminales que más movimiento portuario tuvieron en 2025 fueron
--SSA Y CONTECON con una diferencia entre ellas de 44,434.13 TON representando un 
--3.242%; lo cual nos dice que CONTECON tiene buen movimiento, si sigue así en el 2026 puede 
--aumentar el movimiento por tonelaje. 
--TIMSA Y OCUPA: aún se encuentran muy por debajo de SSA Y CONTECON, sin embargo
--TIMSA superó a OCUPA en un 44.94%
-- ============================================================
-- ANÁLISIS 2: Meses con mayor movimiento de carga
-- ============================================================

SELECT SUM (tonelaje) as total_tonelaje, mes
FROM exportaciones
GROUP BY mes
ORDER BY  total_tonelaje desc;
	
	--Los meses que reportaron mayor movimiento de toneladas fueron
	--JUNIO con  335781.060
	--DICIEMBRE 293574.680
	--Y MARZO 291942.460;
	--El mes con menor movimiento de carga fue MAYO con 233761.200, el cual
	-- tiene una diferencia de 102,019.86 TON respecto al mes con mayor movimiento. 
	--Diciembre es un mes muy activo para todos los países, pues está lleno de festividades
	--Respecto a Junio y Marzo se requiere un análisis adicional para determinar por qué
	--lideran en movimiento de carga. 
	
-- ============================================================
-- ANÁLISIS 3: Estados con mayor movimiento de carga de exportación
-- ============================================================

SELECT SUM (tonelaje) as tonelaje_total, entidad_origen
FROM exportaciones
GROUP BY entidad_origen
ORDER BY tonelaje_total desc
LIMIT 10;

--Colima lideró el movimiento portuario en 2025, pues tiene 
--el puerto más importante de México (Manzanillo) con un movimiento de 1,720,156.130 TON,
--seguido de Ciudad de México con un movimiento del 581,397.780 TON
--Y, podemos ver que la diferencia es grande 1,138,758.35 TON 
--Y por último Querétaro que al igual que CDMX es un Estado con puntos logísticos muy estratégicos y en donde se 
--Concentran muchas empresas exportadoras de mercancías. 

-- ============================================================
-- ANÁLISIS 4: Principales países destinos
-- ============================================================

SELECT SUM (tonelaje) as total_toneladas, pais_destino
FROM exportaciones
GROUP BY pais_destino
ORDER BY total_toneladas desc
LIMIT 10;

-- China lidera el movimiento portuario con 1,037,383.820 TON con un 70% por encima de Colombia, 
--seguido de Colombia con 308,630.600 TON y último, 
--COREA DEL SUR con 292,680.890. Se observa que la exportación se centra en los países asiáticos. 
--Estados Unidos aparece en el #9 , lo cual podría estar relacionado con el contexto arancelario del 2025,
--pero se requiere análisis comparativo con años anteriores para confirmarlo. 


-- ============================================================
-- LIMPIEZA DE DATOS: Estandarización de tipo_carga
-- ============================================================
UPDATE exportaciones
SET tipo_carga = 'REFRIGERADORES'
WHERE tipo_carga = 'REFRIGERATORS';

UPDATE exportaciones
SET tipo_carga = 'MINERALES NO CONGELADOS'
WHERE tipo_carga = 'MINERALS, NON-FROZEN';

UPDATE exportaciones
SET tipo_carga = 'BEBIDAS NO ALCOHÓLICAS'
WHERE tipo_carga = 'electrolit';

UPDATE exportaciones
SET tipo_carga = 'CONCENTRADO DE PLATA'
WHERE tipo_carga = 'SILVER CONCENTRATE';

UPDATE exportaciones
SET tipo_carga = 'FRUTOS'
WHERE tipo_carga = 'BANANA,PLANTAIN FRE/DRY,';

UPDATE exportaciones
SET tipo_carga = 'NO ESPECIFICADO'
WHERE tipo_carga = 'SIN DATOS';


-- ============================================================
-- ANÁLISIS 5: Principales mercancías exportadas
-- ============================================================

SELECT SUM(tonelaje) as total_toneladas, tipo_carga
FROM exportaciones
GROUP BY tipo_carga
ORDER BY total_toneladas desc
LIMIT 10;

--Los Productos Minerales son la mercancía que más se exporta;
--Concentrado de Cobre 271358.930 TON, seguido de MINERALES NO CONGELADOS: 131323.770 TON,
--Concentrado de Plomo 88431.420, Concentrado de Plata: 85930.040 y, concentrado de Zinc:36961.230
-- El lugar #2 corresponde a carga NO ESPECIFICADA con 206,990.580 TON, 
--lo que representa una limitación en la calidad de los datos y,
--sugiere que una parte significativa del movimiento portuario no fue correctamente declarada por los operadores.
--El tequila se encuentra en el lugar número #7, muestra la importancia que tiene para el País. 



-- ============================================================
-- FIN DEL ANÁLISIS 
-- ============================================================