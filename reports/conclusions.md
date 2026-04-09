# Conclusiones del Proyecto

## Análisis de Incidentes de Ciberseguridad: Impacto Financiero y de Mercado

---

## 1. Impacto Económico General

El análisis de **850 incidentes de ciberseguridad** revela un impacto económico acumulado de **más de $55 mil millones USD** en pérdidas totales, con un costo promedio de **$71 millones por incidente**. La mediana de **$16.6 millones** indica que una minoría de incidentes concentra pérdidas extremadamente altas, sesgando el promedio al alza.

| Métrica | Valor |
|---------|-------|
| Pérdida total acumulada | $55,235 M |
| Promedio por incidente | $71.0 M |
| Mediana por incidente | $16.6 M |
| Pérdida directa total | $28,415 M |
| Costo de recuperación | $20,372 M |

---

## 2. Vectores de Ataque más Frecuentes

El **ransomware** domina el panorama como el vector de ataque más común (**228 incidentes, 26.8%**), seguido por **phishing** (17.3%) y **filtraciones de datos** (14.5%). Esto confirma la tendencia global: el ransomware sigue siendo la amenaza más rentable para los atacantes y la más costosa para las organizaciones.

| Vector | Incidentes | % |
|--------|-----------|---|
| Ransomware | 228 | 26.8% |
| Phishing | 147 | 17.3% |
| Data Breach | 123 | 14.5% |
| APT | 84 | 9.9% |
| Malware | 79 | 9.3% |

---

## 3. Rescates y Multas Regulatorias

Se registraron **86 incidentes con pago de rescate**, sumando **$386.8 millones USD** en total. El promedio de rescate pagado es de **$4.5 millones por incidente**, lo que evidencia que el ransomware es un negocio lucrativo para los ciberdelincuentes.

Las **multas regulatorias** ascienden a **$374.1 millones USD** en total, con un promedio de **$480,884 por incidente multado**. Este dato refleja el creciente costo del cumplimiento normativo y las consecuencias legales de no proteger adecuadamente los datos.

---

## 4. Impacto en Datos y Operaciones

Se comprometieron **más de 1,630 millones de registros** en total, con un promedio de **2.7 millones por incidente**. El costo por registro comprometido asciende a **$33.88 USD**, una métrica clave para evaluar el riesgo en la gestión de datos sensibles.

En el plano operativo, se acumularon **45,028 horas de inactividad (downtime)**. Un **20.1% de los incidentes** (171) presentaron downtime superior a 72 horas, clasificado como crítico. Esto sugiere que 1 de cada 5 incidentes genera una interrupción operativa severa.

---

## 5. Impacto en el Mercado de Valores

De los **412 incidentes en empresas públicas**, **322 cuentan con datos de recuperación bursátil**:

- **Tiempo promedio de recuperación**: **110 días**
- **Recuperación rápida (≤30 días)**: 86 incidentes (26.7%)
- **Recuperación lenta (>30 días)**: 236 incidentes (73.3%)

El **retorno anormal promedio** es negativo tanto a 1 día (**-3.42%**) como a 30 días (**-1.70%**), lo que indica que el mercado castiga significativamente a las empresas tras un incidente de ciberseguridad, con un efecto que se prolonga en el tiempo.

**Conclusión clave**: La mayoría de las empresas tardan más de un mes en recuperar su precio accionario, y el impacto negativo persiste incluso después de 30 días.

---

## 6. Distribución Geográfica

Estados Unidos concentra **298 incidentes (35.1%)**, reflejando tanto su mayor cantidad de empresas públicas como un ecosistema de ciberseguridad más reportado. Le siguen Reino Unido (10.6%), Alemania (5.9%) y Canadá (5.6%). La amplia distribución geográfica (más de 40 países) confirma que la ciberseguridad es un desafío global.

---

## 7. Calidad de los Datos

El puntaje de calidad promedio es de **79.96 sobre 100**, con un **52.6% de los incidentes clasificados como Gold+ (puntaje ≥ 80)**. Esto indica que más de la mitad de los registros cuentan con datos de alta calidad, lo que fortalece la confiabilidad del análisis. Sin embargo, el 47.4% restante presenta limitaciones que deben considerarse al interpretar los resultados.

---

## 8. Distribución por Tipo de Empresa

El análisis está balanceado entre **empresas públicas (48.5%) y privadas (51.5%)**, lo que permite comparar ambos segmentos. Las empresas públicas, al estar obligadas a reportar incidentes ante reguladores (SEC, CNMV, etc.), presentan datos más completos, especialmente en las métricas de impacto bursátil.

---

## 9. Recomendaciones

1. **Priorizar defensa contra ransomware**: Dada su alta frecuencia y severidad, las organizaciones deben invertir en backup offsite, segmentación de red y planes de respuesta a incidentes específicos para ransomware.
2. **Fortalecer la seguridad del correo electrónico**: El phishing como vector principal y secundario exige implementar autenticación multifactor (MFA), filtros avanzados y capacitación continua del personal.
3. **Prepararse para downtime prolongado**: Con 1 de cada 5 incidentes superando 72 horas de inactividad, los planes de continuidad de negocio deben contemplar escenarios de recuperación extendida.
4. **Gestionar la comunicación con el mercado**: El impacto bursátil negativo y prolongado resalta la necesidad de estrategias de comunicación de crisis que mitiguen el efecto en el precio accionario.
5. **Evaluar seguros cibernéticos**: Con $11,593 M recuperados vía seguros frente a $55,235 M en pérdidas totales (~21% de cobertura), las organizaciones deben revisar periódicamente sus pólizas de seguro cibernético.

---

## 10. Limitaciones

- Los datos provienen de incidentes reportados públicamente, lo que subestima la frecuencia real (muchos incidentes no se divulgan).
- Las métricas financieras incluyen estimaciones cuando no están disponibles los valores exactos.
- El impacto reputacional de largo plazo no está completamente capturado en las métricas de retorno anormal.
- La cobertura de seguros varía significativamente por región y tamaño de empresa.

---

*Documento generado a partir del análisis de 850 incidentes de ciberseguridad del dataset Kaggle "Cybersecurity Incidents with Financial and Market Impact".*
