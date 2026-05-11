# PUERTO-EXPORTACIONES-2025
Análisis exploratorio de datos de  exportaciones del puerto 2025
# 🚢 Análisis de Exportaciones Portuarias 2025

Análisis exploratorio de datos de exportaciones del Puerto de Manzanillo 
usando SQL, como parte de un proyecto de portafolio en análisis de datos.

---

## 🛠️ Herramientas
- PostgreSQL 18
- pgAdmin 4

---

## 🗄️ Base de datos
- **exportaciones**: 128,196 registros

---

## 📊 Análisis realizados
1. Movimiento por toneladas de cada terminal
2. Meses con mayor movimiento de carga
3. Entidades de origen con mayor volumen exportado
4. Principales países destino
5. Principales mercancías exportadas por tonelaje

---
## 🔎 Hallazgos Principales

### 🏭 Terminales portuarias
SSA y CONTECON lideraron el movimiento en 2025 con una diferencia entre ellas de apenas
44,434 TON (3.2%), lo que indica competencia muy estrecha en el primer lugar.
TIMSA superó a OCUPA en un 44.9%, aunque ambas se encuentran muy por debajo de las líderes.

### 📅 Estacionalidad de la carga

| Mes | Tonelaje total |
|-----|---------------|
| Junio | 335,781 TON Fue el mes que mayor movimiento presentó |
| Diciembre | 293,574 TON |
| Marzo | 291,942 TON |
| Mayo | 233,761 TON Fue el mes con menor movimiento |

Junio lidera con una diferencia de 102,019 TON respecto al mes de menor movimiento.
Diciembre refleja la actividad de temporada festiva global. Junio y Marzo requieren
análisis comparativo con años anteriores para identificar la causa de su alto volumen.

### 🗺️ Estados de origen
Colima domina con **1,720,156 TON**, impulsado por el Puerto de Manzanillo —
el más importante de México. Le sigue CDMX con 581,397 TON, con una diferencia
de más de 1.1 millones de toneladas. Querétaro también destaca por su posición
estratégica como hub logístico y concentración de empresas exportadoras.

### 🌍 Países destino
China lidera con **1,037,383 TON**, un 70% por encima de Colombia (308,630 TON),
seguida de Corea del Sur (292,680 TON). El patrón muestra una concentración
marcada hacia mercados asiáticos. Destaca que **Estados Unidos aparece en la
posición #9**, lo que podría relacionarse con el contexto arancelario de 2025,
aunque se requiere análisis comparativo con años anteriores para confirmarlo.

### 📦 Principales mercancías exportadas

| Mercancía | Tonelaje |
|-----------|---------|
| Concentrado de Cobre | 271,358 TON |
| Carga no especificada | 206,990 TON |
| Minerales no congelados | 131,323 TON |
| Concentrado de Plomo | 88,431 TON |
| Concentrado de Plata | 85,930 TON |

Los **Productos Minerales** dominan las exportaciones. El **Tequila** aparece
en la posición #7, reflejando su relevancia como producto emblema de México.

---

## 🔧 Técnicas SQL aplicadas
- SELECT, FROM, WHERE, GROUP BY, ORDER BY
- Funciones de agregación: SUM(), COUNT()
- SPLIT_PART() para separación de columnas
- ALTER TABLE: ADD COLUMN, DROP COLUMN
- UPDATE para limpieza y estandarización de datos

---

## 📌 Nota
Datos anonimizados para uso académico y de portafolio. NO OFICIALES.

**Autora:** Andrea Galicia
