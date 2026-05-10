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
##  🔎 Hallazgos Principales
🏭 Terminales portuarias
1. SSA y CONTECON lideraron el movimiento en 2025 con una diferencia entre ellas de apenas
   44,434 TON (3.2%), lo que indica competencia estrecha en el primer lugar.
   TIMSA superó a OCUPA en un 44.9%, aunque ambas se encuentran muy por debajo de las líderes.
  📅 Estacionalidad de la carga
2. Los meses que reportaron mayor movimiento de toneladas fueron
   JUNIO con  335781.060
   DICIEMBRE 293574.680
   Y MARZO 291942.460;
-Junio lidera con una diferencia de 102,019 TON respecto al mes de menor movimiento.
-Diciembre refleja la actividad de temporada festiva global.
🌍 Países destino
3. China lidera con **1,037,383 TON**, un 70% por encima de Colombia (308,630 TON),
   seguida de Corea del Sur (292,680 TON).
 El patrón muestra una concentración marcada hacia mercados asiáticos.
 📦 Principales mercancías exportadas
4. Los Productos Minerales son la mercancía que más se exporta;
   Concentrado de Cobre 271358.930 TON, seguido de MINERALES NO CONGELADOS: 131323.770 TON,
   Concentrado de Plomo 88431.420, Concentrado de Plata: 85930.040 y, concentrado de Zinc:36961.230
   ⚠️ La carga **"No especificada"** ocupa el 2° lugar con 206,990 TON, lo que representa
       una limitación en la calidad de los datos y sugiere que una parte significativa del
       movimiento portuario no fue correctamente declarada por los operadores.
---

## 🔧 Técnicas SQL aplicadas
- SELECT, FROM, WHERE, GROUP BY, ORDER BY
- Funciones de agregación: SUM(), COUNT()
- SPLIT_PART() para separación de columnas
- ALTER TABLE: ADD COLUMN, DROP COLUMN
- UPDATE para limpieza y estandarización de datos

---

## 📌 Nota
Datos anonimizados para uso académico y de portafolio.

**Autora:** Andrea Galicia
