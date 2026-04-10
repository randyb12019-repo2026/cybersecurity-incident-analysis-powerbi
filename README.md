# Análisis de Incidentes de Ciberseguridad

## Impacto Financiero y en el Mercado de Valores

Dashboard interactivo en **Power BI** que analiza **850 incidentes de ciberseguridad** reales, cuantificando pérdidas financieras, impacto operacional y comportamiento del mercado bursátil post-incidente.

---

## Dataset

Los datos provienen del dataset público de Kaggle: **Cybersecurity Incidents with Financial and Market Impact**.

- **850 incidentes** registrados a nivel global
- **778 con datos financieros** (pérdidas directas, rescates, multas regulatorias, seguros)
- **358 con datos de mercado** (precio accionario, retornos anormales, días de recuperación)
- **47 columnas** consolidadas en el modelo analítico

> Fuente: [Kaggle - Cybersecurity Incidents](https://www.kaggle.com/datasets/cybersecurity-incidents-financial-market-impact)

---

## Autor

**Randy Bonucci** — Ingeniero Informático

[![GitHub](https://img.shields.io/badge/GitHub-Perfil-181717?style=flat&logo=github)](https://github.com/randybonucci)

---

## Licencia

Distribuido bajo **MIT License**. Consulta el archivo `LICENSE` para más información.

---

## Dashboard en Power BI

```
powerBI/powerbi.pbix
```

### KPIs incluidos (36 medidas DAX)

| Categoría | Medidas |
|-----------|---------|
| KPIs Generales | Total Incidentes, Públicos, Privados, con Mercado |
| KPIs Financieros | Costo Total/Prom/Mín/Máx, Pérdida Directa, Multas, Rescates, Recuperación, Seguros, Costo por Incidente/Empleado/Registro |
| Impacto Datos | Registros Comprometidos, Promedio, Incidentes con Datos |
| Impacto Operacional | Horas Downtime Total/Prom, Incidentes con Downtime, Downtime Alto (>72h) |
| Impacto Mercado | Prom Días Recuperación, Recup Rápida/Lenta, % Recup Rápida, Retornos Anormales 1d/30d |
| Análisis por Segmento | Distribución por Tamaño, Costo Prom por Tamaño, Incidentes por País |
| Calidad Datos | Prom Calidad, Incidentes Gold+, % Alta Calidad |

### Jerarquías (4)

- **Calendario**: Año → Trimestre → Mes → Fecha
- **Geografía**: País
- **Segmentación Empresa**: Tamaño por Ingresos → Tamaño por Empleados
- **Vector de Ataque**: Principal → Secundario

---

## Estructura del Proyecto

```
Proyecto_ModuloI/
├── data/                          # Datasets CSV
│   ├── incidents_master.csv       # 850 incidentes
│   ├── financial_impact (1).csv   # 778 registros financieros
│   ├── market_impact.csv          # 358 registros de mercado
│   ├── df_final_powerbi.csv       # Dataset consolidado (47 columnas)
│   └── df_final_powerbi_clean.csv # Dataset sin bytes nulos
├── notebooks/
│   └── proyecto_moduloI_completado.ipynb  # ETL completo en Python
├── powerBI/
│   └── powerbi.pbix               # Dashboard principal
├── reports/
│   └── conclusions.md             # Conclusiones del análisis
├── Dockerfile                     # Entorno Python reproducible
├── docker-compose.yml             # Orquestación Docker
├── requirements.txt               # Dependencias Python
├── LICENSE                        # MIT License
└── README.md                      # Este archivo
```

---

## Instalación

### Con Docker (entorno Python)

```bash
docker compose build
docker compose run --rm etl
```

### Sin Docker (local)

```bash
python -m venv .venv
.venv\Scripts\Activate     # Windows
source .venv/bin/activate   # Linux/Mac

pip install -r requirements.txt
```

---

## Uso del Dashboard

1. Abre `powerBI/powerbi.pbix` en **Power BI Desktop**
2. Si los datos necesitan refrescarse: **Inicio → Actualizar** (o `Ctrl+R`)
3. Navega entre las páginas del reporte usando los botones de navegación
4. Usa el botón **Resetear Filtros** en cada página para limpiar segmentaciones
---



## ETL Pipeline

El notebook `notebooks/proyecto_moduloI_completado.ipynb` realiza:

1. **Carga** de los 3 datasets CSV
2. **Limpieza**: manejo de nulos, eliminación de columnas de bajo valor
3. **Transformación**: tipado, normalización, variables derivadas
4. **Cálculo de métricas**: costos totales, categorías de impacto
5. **Integración**: merge por `incident_id` → tabla maestra de 47 columnas
6. **Exportación** a `df_final_powerbi.csv`

Para re-ejecutar el notebook dentro del contenedor:

```bash
docker compose run --rm etl python -c "
import nbformat
from nbconvert.preprocessors import ExecutePreprocessor
with open('notebooks/proyecto_moduloI_completado.ipynb') as f:
    nb = nbformat.read(f, as_version=4)
ep = ExecutePreprocessor(timeout=600, kernel_name='python3')
ep.preprocess(nb)
with open('notebooks/proyecto_moduloI_completado.ipynb', 'w') as f:
    nbformat.write(nb, f)
"
```

---

## Tecnologías

| Herramienta | Versión | Uso |
|-------------|---------|-----|
| Python | 3.13+ | ETL y análisis de datos |
| Pandas | ≥1.5.0 | Manipulación de datos |
| NumPy | ≥1.24.0 | Cómputo numérico |
| Power BI | Desktop | Visualización y dashboard |
| Docker | 24+ | Entorno reproducible |

---

## Conclusiones

Las conclusiones detalladas del análisis están disponibles en:

📄 [`reports/conclusions.md`](reports/conclusions.md)

Incluye hallazgos sobre impacto económico ($55,235 M en pérdidas), vectores de ataque (ransomware lidera con 26.8%), recuperación bursátil (promedio 110 días), rescates, multas y recomendaciones estratégicas.
