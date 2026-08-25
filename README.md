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

In today's financial landscape, the volume and complexity of transactional, accounting, and market data require strategic decision-making to be underpinned by reproducible, scalable, and outcome-driven quantitative frameworks.

This repository consolidates three modular **Financial Data Analytics & Quantitative Modeling** solutions, designed following the delivery standards and methodological rigor of top-tier financial advisory and consulting (*Big Four*). Each project resolves a specific, high-impact business challenge by combining **deep financial domain expertise** (Corporate Finance / M&A, Risk Advisory, and Asset Management) with **modern data engineering, statistical modeling, and machine learning**.

> **Core Objective:** Demonstrate how to transform raw, disparate financial datasets into actionable business intelligence, proactive risk mitigation frameworks, and automated C-Suite deliverables.

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
│   ├── MA_Screener_Engine.ipynb        # End-to-End Notebook (Financial Modeling, EV/EBITDA & Screening)
│   └── Target_Companies_Shortlist.xlsx # Executive C-Suite formatted Excel deliverable
│
├── 2_Credit_Risk_Model/
│   └── Credit_Scoring_ML.ipynb         # Scikit-Learn Pipeline (Synthetic Dataset, Confusion Matrix & Simulator)
│
├── 3_Algo_Trading_Backtester/
│   └── Quant_Trading_Engine.ipynb      # Quantitative Engine (Stochastic Simulation, Golden Cross & Sharpe)
│
├── requirements.txt                    # Global environment dependencies
├── .gitignore                          # Git ignore rules
└── README.md                           # Master repository documentation
```

---

## 💼 Showcase Projects

### 1. M&A Target Screener | Corporate Finance

```yaml
Domain: Corporate Finance & M&A Advisory
Tech Stack: Python, Pandas, OpenPyXL
Deliverable: Automated Valuation Screener + C-Suite Formatted Excel Report (.xlsx)
```

#### 🎯 Business Problem
In Investment Banking and Transaction Advisory Services (TAS), target identification and origination workflows often require hundreds of hours of manual data collation across financial statements. Manual aggregation introduces severe operational risk and human error when computing valuation multiples and analyzing capital structures across large corporate universes.

#### ⚙️ Technical & Financial Solution
- **Data Ingestion Pipeline:** Automated extraction and synthesis of financial statement data (P&L and Balance Sheet) for 50 technology companies.
- **Valuation Metrics Computation:** Automated calculation of Market Capitalization, Net Debt, **Enterprise Value (EV)**, and key industry multiples (**EV/EBITDA**, **Net Debt/EBITDA**).
- **Parametric Screening Engine:** Dynamic multi-factor screening algorithm isolating undervalued targets (EV/EBITDA below industry average) maintaining conservative leverage profiles (Net Debt / EBITDA < 3.0x).
- **Automated Executive Reporting (`openpyxl`):** Programmatic generation of a polished, C-level presentation spreadsheet featuring structured corporate palettes, conditional formatting indicators (traffic light KPIs), and executive summary tables.

---

### 2. Credit Risk Scoring & Underwriting Engine | Risk Advisory

```yaml
Domain: Credit Risk, Banking Analytics & Basel / IFRS 9 Compliance
Tech Stack: Python, Scikit-Learn, Pandas, NumPy
Deliverable: Recall-Optimized Scoring Classifier + Interactive Loan Underwriting Simulator
```

#### 🎯 Business Problem
In retail and commercial lending, the financial cost of classification errors is heavily asymmetric: a **False Negative** (approving credit for a borrower who subsequently defaults) creates substantial capital loss, whereas a **False Positive** represents merely a minor opportunity cost. Standard accuracy metrics fail to address this balance-sheet exposure.

#### ⚙️ Technical & Financial Solution
- **Data Engineering:** Generation of a realistic, statistically balanced dataset of **5,000 synthetic loan applicants** containing key risk drivers (FICO credit score, annual income, existing debt obligations, DTI, delinquency history).
- **Supervised Classification:** Training and calibrating a **Logistic Regression** pipeline explicitly tuned to prioritize **Recall (~80%+)** on the default class, directly mitigating Expected Loss (EL).
- **Risk Diagnostic Framework:** Evaluation using ROC-AUC curves, precision-recall trade-offs, confusion matrices, and probability calibration.
- **Interactive Underwriting Simulator:** Real-time scoring function evaluating individual credit applications against predefined risk tolerance policies, incorporating dynamic **Debt-to-Income (DTI)** caps and default probability thresholds.

---

### 3. Quantitative Trading Backtester & Risk Engine | Asset Management

```yaml
Domain: Quantitative Finance, Asset Allocation & Portfolio Management
Tech Stack: Python, NumPy, Pandas, Matplotlib
Deliverable: Look-Ahead Bias-Free Backtester + Risk-Adjusted Return Analytics (Sharpe, MDD)
```

#### 🎯 Business Problem
Developing systematic quantitative strategies requires empirical validation against different market regimes. Backtests frequently fail in live production due to critical flaws: **overfitting**, data snooping, and **look-ahead bias** (using information at time $t$ that would only be available at $t+1$).

#### ⚙️ Technical & Financial Solution
- **Stochastic Market Generation:** Multi-year daily price simulation using a **Geometric Brownian Motion (GBM) / Random Walk with Drift** process, capturing realistic equity drift, volatility clustering, and log-returns.
- **Algorithmic Strategy (Golden Cross):** Implementation of dual moving average crossover signals (**50-day SMA vs 200-day SMA**).
- **Execution Architecture:** Strict lag-adjusted signal processing ($t$ signal $\rightarrow$ $t+1$ trade execution), fully eliminating look-ahead bias and unrealistic slippage assumptions.
- **Risk-Adjusted Performance Metrics:**
  - **Sharpe Ratio:** Measurement of excess portfolio return per unit of annualized standard deviation over the risk-free rate ($R_f$).
  - **Maximum Drawdown (MDD):** Peak-to-trough equity loss quantification to evaluate downside tail-risk.
- **Visual Analytics:** Publication-grade visualization comparing the **Cumulative Equity Curve** against a passive benchmark (*Buy & Hold*).

---

## 🛠 Tech Stack & Core Competencies

| Functional Area | Technologies & Libraries | Practical Business Application |
| :--- | :--- | :--- |
| **Data Manipulation & ETL** | `pandas`, `numpy` | Financial statement transformation, ratio calculation, and time-series aggregation. |
| **Statistical Modeling & ML** | `scikit-learn`, `scipy` | Risk scoring classification, threshold optimization, and probabilistic modeling. |
| **Automated Reporting** | `openpyxl` | Headless, programmatic creation of audit-ready Excel models for executive stakeholders. |
| **Quantitative Analytics** | `matplotlib`, `seaborn` | Visual diagnostics: equity curves, ROC curves, drawdowns, and distribution charts. |
| **Financial Engineering** | Valuation & Risk Frameworks | Enterprise Value, EV/EBITDA, Net Debt, Sharpe Ratio, Max Drawdown, Geometric Brownian Motion. |

---

## 🚀 Quickstart & Installation

Follow these steps to clone the repository, initialize your virtual environment, and install required dependencies:

### 1. Clone the Repository
```bash
git clone https://github.com/markusx5622/Financial-Analytics-Showcase.git
cd Financial-Analytics-Showcase
```

### 2. Set Up a Virtual Environment
On Windows (PowerShell):
```powershell
python -m venv venv
.\venv\Scripts\Activate.ps1
```

On macOS / Linux:
```bash
python3 -m venv venv
source venv/bin/activate
```

### 3. Install Dependencies
```bash
pip install --upgrade pip
pip install -r requirements.txt
```

### 4. Explore & Run the Notebooks

Launch Jupyter Lab or open the `.ipynb` files directly inside your IDE (VS Code, Cursor, PyCharm):

```bash
# Launch interactive Jupyter environment
jupyter lab
```

**Project Notebooks:**
- 📊 **M&A Target Screener:** `1_MandA_Target_Screener/MA_Screener_Engine.ipynb`
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
scipy>=1.10.0
jupyterlab>=4.0.0
ipykernel>=6.25.0
```

---

## 📫 Contact & Professional Profile

Quantitative Data Analyst / Consultant with expertise at the intersection of **financial engineering, advanced analytics, and strategic consulting**. Dedicated to transforming complex data environments into robust, production-ready quantitative solutions that generate tangible bottom-line value.

- 💼 **LinkedIn:** [Marc Cubero Cantavella](https://www.linkedin.com/in/marc-cubero-cantavella-bb04542a7)
- 🐙 **GitHub:** [markusx5622](https://github.com/markusx5622)
- ✉️ **Email:** [marc.cubero@gmail.com](mailto:marc.cubero@gmail.com)

---
*Developed with a focus on code maintainability, financial rigor, and business value creation.*
