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
## 📊 Análisis realizados
1. Las terminales que más movimiento portuario tuvieron en 2025 fueron:
   SSA Y CONTECON con una diferencia entre ellas de 44,434.13 TON representando un
   3.242%; lo cual nos dice que CONTECON tiene buen movimiento, si sigue así en el 2026 puede
   aumentar el movimiento por tonelaje.
2. Los meses que reportaron mayor movimiento de toneladas fueron
   JUNIO con  335781.060
   DICIEMBRE 293574.680
   Y MARZO 291942.460;
3. China lidera el movimiento portuario con 1,037,383.820 TON con un 70% por encima de Colombia, 
   seguido de Colombia con 308,630.600 TON y último, 
   COREA DEL SUR con 292,680.890. Se observa que la exportación se centra en los países asiáticos.
4. Los Productos Minerales son la mercancía que más se exporta;
   Concentrado de Cobre 271358.930 TON, seguido de MINERALES NO CONGELADOS: 131323.770 TON,
   Concentrado de Plomo 88431.420, Concentrado de Plata: 85930.040 y, concentrado de Zinc:36961.230
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
