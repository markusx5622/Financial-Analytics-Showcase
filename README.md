# 📊 Financial Analytics Showcase
### End-to-End Quantitative & Data Solutions for Corporate Finance, Risk & Asset Management

[![Python 3.10+](https://img.shields.io/badge/Python-3.10%2B-blue.svg?style=flat&logo=python)](https://www.python.org/)
[![Pandas](https://img.shields.io/badge/Data%20Analysis-Pandas%20%7C%20NumPy-150458?style=flat&logo=pandas)](https://pandas.pydata.org/)
[![Scikit-Learn](https://img.shields.io/badge/Machine%20Learning-Scikit--Learn-F7931E?style=flat&logo=scikit-learn)](https://scikit-learn.org/)
[![OpenPyXL](https://img.shields.io/badge/Reporting-OpenPyXL-217346?style=flat&logo=microsoft-excel)](https://openpyxl.readthedocs.io/)
[![Matplotlib](https://img.shields.io/badge/Visualization-Matplotlib-11557C?style=flat)](https://matplotlib.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

---

## 📌 Executive Summary

En el entorno financiero actual, el volumen de datos no estructurados y transaccionales exige que la toma de decisiones estratégicas esté respaldada por modelos reproducibles, escalables y orientados a resultados. 

Este repositorio reúne tres proyectos modulares de **Financial Data Analytics & Quantitative Modeling**, estructurados bajo los estándares de entrega y rigor metodológico de consultoría estratégica (*Big Four*). Cada solución aborda un reto de negocio real, combinando **visión financiera aplicada** (Corporate Finance, Risk Advisory y Asset Management) con **ingeniería de datos y machine learning**.

> **Objetivo:** Demostrar cómo transformar datos brutos en *actionable insights*, gobernanza de riesgos y automatización de procesos de alto impacto para la alta dirección.

---

## 📑 Table of Contents

- [📌 Executive Summary](#-executive-summary)
- [🏗 Repository Structure](#-repository-structure)
- [💼 Showcase Projects](#-showcase-projects)
  - [1. M&A Target Screener (Corporate Finance)](#1-ma-target-screener--corporate-finance)
  - [2. Credit Risk Scoring & Underwriting Engine (Risk Advisory)](#2-credit-risk-scoring--underwriting-engine-risk-advisory)
  - [3. Quantitative Trading Backtester & Risk Engine (Asset Management)](#3-quantitative-trading-backtester--risk-engine-asset-management)
- [🛠 Tech Stack & Core Competencies](#-tech-stack--core-competencies)
- [🚀 Quickstart & Installation](#-quickstart--installation)
- [📫 Contact & Professional Profile](#-contact--professional-profile)

---

## 🏗 Repository Structure

```text
Financial-Analytics-Showcase/
│
├── 1_MandA_Target_Screener/
│   ├── MA_Screener_Engine.ipynb        # Notebook end-to-end (Extracción, Múltiplos EV/EBITDA y Filtro)
│   └── Target_Companies_Shortlist.xlsx # Entregable final maquetado en Excel para C-Suite
│
├── 2_Credit_Risk_Model/
│   └── Credit_Scoring_ML.ipynb         # Pipeline Scikit-Learn (Dataset, Matriz de Confusión y Simulador)
│
├── 3_Algo_Trading_Backtester/
│   └── Quant_Trading_Engine.ipynb      # Motor Cuantitativo (Simulación Estocástica, Golden Cross y Sharpe)
│
├── requirements.txt                    # Dependencias del entorno global
├── .gitignore                          # Archivos ignorados por Git
└── README.md                           # Documento maestro del repositorio
```

---

## 💼 Showcase Projects

### 1. M&A Target Screener | Corporate Finance

```
Dominio: Corporate Finance & M&A Advisory
Tecnologías: Python, Pandas, OpenPyXL
Deliverable: Screener automatizado + Reporte ejecutivo en Excel (.xlsx) con formato corporativo
```

#### 🎯 Business Problem
Los procesos de *Origination* y *Target Screening* en banca de inversión y M&A suelen consumir cientos de horas de análisis manual en hojas de cálculo, con un alto riesgo de error humano al calcular múltiplos de valoración y comparar estructuras de deuda en universos de empresas amplios.

#### ⚙️ Technical & Financial Solution
- **Pipeline de Datos:** Simulación y extracción de estados financieros (P&L y Balance) para 50 compañías del sector tecnológico.
- **Métricas de Valoración:** Cálculo automático de Capitalización Bursátil, Deuda Neta, **Enterprise Value (EV)** y múltiplos de valoración clave (**EV/EBITDA**, **Debt/EBITDA**).
- **Motor de Filtrado (Screener):** Algoritmo paramétrico que aísla objetivos de adquisición infravalorados (EV/EBITDA inferior a la media del sector) con apalancamiento financiero bajo control (Net Debt / EBITDA < 3.0x).
- **Automatización de Reporting (`openpyxl`):** Exportación y formateo automático de una hoja de cálculo ejecutiva con estándares corporativos: tipografías jerárquicas, encabezados estructurados, códigos de color semafóricos para KPIs y tablas dinámicas de resumen.

---

### 2. Credit Risk Scoring & Underwriting Engine | Risk Advisory

```
Dominio: Credit Risk, Banking Analytics & IFRS 9 / Basilea
Tecnologías: Python, Scikit-Learn, Pandas, NumPy
Deliverable: Modelo de scoring crediticio enfocado en Recall + Simulador de originación
```

#### 🎯 Business Problem
En la concesión de crédito bancario, el coste asimétrico de los errores es crítico: un **Falso Negativo** (otorgar un préstamo a un cliente que incurre en *default*) representa una pérdida de capital significativamente mayor que el coste de oportunidad de un **Falso Positivo**.

#### ⚙️ Technical & Financial Solution
- **Modelado de Datos:** Generación de un dataset estructurado y balanceado de **5.000 clientes sintéticos** con variables financieras determinantes (Score FICO, Ingresos, Deuda Actual, DTI, Historial de Morosidad).
- **Entrenamiento & Optimización:** Clasificador mediante **Regresión Logística** calibrado para maximizar el **Recall (~80%+)** en la clase de riesgo de impago, controlando la tasa de pérdidas esperadas.
- **Evaluación de Riesgo:** Análisis de curvas ROC-AUC, matriz de confusión y calibración de probabilidades.
- **Simulador Interactivo de Suscripción:** Función de scoring en tiempo real que evalúa solicitudes de crédito individuales, incorporando políticas de admisión basadas en umbrales de **Debt-to-Income (DTI)** y ratio de probabilidad de impago.

---

### 3. Quantitative Trading Backtester & Risk Engine | Asset Management

```
Dominio: Quantitative Finance, Asset Allocation & Portfolio Management
Tecnologías: Python, NumPy, Pandas, Matplotlib
Deliverable: Backtester sin Look-Ahead Bias + Análisis de Retorno Ajustado al Riesgo (Sharpe, Drawdown)
```

#### 🎯 Business Problem
La validación de estrategias de inversión requiere comprobar la robustez estadística bajo diferentes regímenes de mercado, garantizando que los modelos no sufran de sobreajuste (*overfitting*) ni de sesgos temporales (*look-ahead bias*) que invaliden su ejecución en el mercado real.

#### ⚙️ Technical & Financial Solution
- **Generación Estocástica de Mercado:** Simulación de 5 años de precios diarios utilizando un proceso de **Random Walk con Deriva Geométrica (Geometric Brownian Motion)** para modelar la volatilidad y retornos logarítmicos realistas.
- **Estrategia Algorítmica (Golden Cross):** Implementación de cruces de medias móviles adaptativas (**SMA 50 vs SMA 200**).
- **Ejecución Rigurosa:** Cálculo de señales y posicionamiento en $t$ con ejecución en $t+1$, erradicando completamente el *look-ahead bias*.
- **Métricas de Performance & Riesgo:**
  - **Sharpe Ratio:** Medición del exceso de retorno por unidad de volatilidad frente a la tasa libre de riesgo.
  - **Maximum Drawdown (MDD):** Análisis de la pérdida máxima pico a valle durante el ciclo de inversión.
- **Visualización Analítica:** Generación de gráficos comparativos de la **Curva de Capital (Equity Curve)** frente al benchmark pasivo (*Buy & Hold*).

---

## 🛠 Tech Stack & Core Competencies

| Área | Tecnologías & Librerías | Aplicación en el Negocio |
| :--- | :--- | :--- |
| **Data Manipulation & ETL** | `pandas`, `numpy` | Limpieza, agregación, cálculo de ratios contables y series temporales. |
| **Statistical Modeling & ML** | `scikit-learn`, `scipy` | Clasificación de riesgo, optimización de hiperparámetros y métricas de negocio. |
| **Executive Reporting** | `openpyxl` | Generación desatendida de libros Excel estructurados para C-Level. |
| **Data Visualization** | `matplotlib`, `seaborn` | Gráficos de performance financiera, matrices de riesgo y curvas de capital. |
| **Financial Engineering** | Valuation, Risk Ratios, GBM | EV/EBITDA, Net Debt, Sharpe Ratio, Max Drawdown, Stochastic Pricing. |

---

## 🚀 Quickstart & Installation

Sigue estos pasos para clonar el repositorio, configurar el entorno virtual e instalar las dependencias necesarias:

### 1. Clonar el repositorio
```bash
git clone https://github.com/markusx5622/Financial-Analytics-Showcase.git
cd Financial-Analytics-Showcase
```

### 2. Crear y activar entorno virtual
En Windows (PowerShell):
```powershell
python -m venv venv
.\venv\Scripts\Activate.ps1
```

En macOS / Linux:
```bash
python3 -m venv venv
source venv/bin/activate
```

### 3. Instalar dependencias
```bash
pip install --upgrade pip
pip install -r requirements.txt
```

### 4. Explorar y ejecutar los Notebooks

Puedes abrir los notebooks directamente en tu IDE (VS Code, Cursor) o iniciar un servidor de Jupyter:

```bash
# Iniciar entorno interactivo de Jupyter
jupyter lab
```

**Notebooks disponibles:**
- 📊 **M&A Screener:** `1_MandA_Target_Screener/MA_Screener_Engine.ipynb`
- 💳 **Credit Risk Model:** `2_Credit_Risk_Model/Credit_Scoring_ML.ipynb`
- 📈 **Algo Trading Backtester:** `3_Algo_Trading_Backtester/Quant_Trading_Engine.ipynb`

---

## 📋 Requirements Overview (`requirements.txt`)

```text
pandas>=2.0.0
numpy>=1.24.0
scikit-learn>=1.3.0
openpyxl>=3.1.0
matplotlib>=3.7.0
```

---

## 📫 Contact & Professional Profile

Profesional enfocado en la intersección entre **analítica avanzada de datos, finanzas corporativas y consultoría estratégica**. Apasionado por resolver problemas complejos de negocio mediante código limpio, modelos rigurosos y herramientas automatizadas que impactan en la cuenta de resultados.

- 💼 **LinkedIn:** [Marc Cubero Cantavella](https://www.linkedin.com/in/marc-cubero-cantavella-bb04542a7)
- 🐙 **GitHub:** [markusx5622](https://github.com/markusx5622)
- ✉️ **Email:** [marc.cubero@gmail.com](mailto:marc.cubero@gmail.com)

---
*Developed with a focus on code maintainability, financial rigor, and business value creation.*
