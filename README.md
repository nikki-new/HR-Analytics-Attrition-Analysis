# HR-Analytics-Attrition-Analysis
End-to-End HR Analytics project analyzing employee attrition across 1,000 workforce records using SQL (CTEs, Window Functions), Python (Pandas EDA), and Power BI (Interactive Dashboard with 16.5% baseline attrition insights).

##  Key Business Metrics & Insights
- **Total Workforce:** 1,000 Active & Former Employees
- **Overall Attrition Rate:** 16.50%
- **Average Monthly Income:** $92.85K
- **Average Tenure:** 17.81 Years
- **Average Job Satisfaction Score:** 2.52 / 5.00
- **Demographics:** Male Employees (54.8%) vs. Female Employees (45.2%)
- **Primary Attrition Triggers:** Low job satisfaction scores, specific high-pressure job roles (e.g., Sales Executives & Finance Analysts), and high overtime workloads.


### 1. SQL (Data Processing & Advanced Queries)
* **Aggregations & Filtering:** Used `SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END)` to count employees who left the company[cite: 4].
* **Window Functions:** Applied `RANK()` to rank departments by attrition rates and `ROW_NUMBER()` to identify the highest-paid employees per department[cite: 4].
* **CTEs (Common Table Expressions):** Used `WITH DepartmentStats AS (...)` to structure queries cleanly and simplify aggregated outputs[cite: 4].

### 2. Python (Exploratory Data Analysis - EDA)
* **Data Cleaning:** Cleaned dataset by handling missing values, standardizing data types, and creating necessary metrics.
* **Pandas Aggregations:** Used `groupby()` to analyze employee churn patterns across departments and tenure levels.
* **Interactive Code:** Complete execution available via [Google Colab Notebook](https://colab.research.google.com/drive/1QMXYVci7ZFdlYyw-HUKHFVt9mE9r4pUE?usp=sharing)[cite: 5].

### 3. Power BI (Visual Dashboard)
* **Key KPI Cards:** Total Employees (1,000), Attrition Rate (16.50%), Avg Monthly Income ($92.85K), Avg Tenure (17.81 Yrs), Avg Satisfaction (2.52/5).
* **Visual Breakdown:**
  * **Bar Charts:** Attrition by Department & Job Role[cite: 3].
  * **Stacked Bar Charts:** Attrition by Age Group & Overtime Impact[cite: 3].
  * **Donut Chart:** Gender Distribution (54.8% Male / 45.2% Female)[cite: 3].
