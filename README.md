# Sales-Analysis

## Table of Contents
- [Project Overview](#project-overview)
- [Tools Used](#tools-used)
- [Data Cleaning and Preparation](#data-cleaning-and-preparation)
- [Data Analysis](#data-analysis)
- [Key Insights and Findings](#key-insights-and-findings)
- [Recommendations](#recommendations)
- [Visualizations](#visualizations)
- [Conclusion](#conclusion)

---

## Project Overview
This project analyzes sales data from six countries: **China, US, UK, Nigeria, Canada, and India**. The aim is to improve reporting consistency, track performance, and support timely decision-making for a multinational retail company.
The dataset was cleaned using **SQL**, and insights were visualized in **Power BI**.

### Business Problem Statement
A multinational retail company faces challenges in **tracking sales performance across different regions** due to inconsistent reporting. This analysis provides a **comprehensive dashboard** with actionable insights to improve profitability and operational efficiency.

---
## Tools Used
- **SQL (PostgreSQL)** – Data Cleaning & Processing
- **Power BI** – Data Visualization & Dashboard
- **Excel** – Initial Data Inspection

---
## Data Cleaning and Preparation
### Steps Taken in SQL
- **Merged datasets** from multiple countries into one.
- **Handled missing values** and replaced nulls.
- **Removed duplicates** for data accuracy.
- **Created calculated columns**, including `Total Amount`
- **Standardized date formats and categorical fields**.

---
## Data Analysis
This analysis answers key business questions in SQL:

1. **Sales revenue and profit by country**
2. **Top 5 best-selling products**
3. **Top 5 best sales representatives**
4. **Store locations with the highest sales**
5. **Key sales and profit insights for the selected period**

---
## Key Insights and Findings

### 1.  **Sales Performance Overview**
- **Total Sales Revenue:** `$65,368.90`
- **Total Profit:** `$55,023.07`
- **Minimum Sales Transaction:** `$25.18`
- **Maximum Sales Transaction:** `$4,283.52`
- **Average Sales Per Order:** `$1,233.38`
- **Minimum Profit Per Sale:** `-$17.42`
- **Maximum Profit Per Sale:** `$3,872.15`
- **Average Profit Per Order:** `$1,038.17`

### 2. **Country-wise Performance**
- **Top 3 Highest Revenue-Generating Countries**:  
  1. **US**  
  2. **Nigeria**  
  3. **UK**
  
- **China & Canada** reported the lowest sales performance.

### 3. **Product Performance**
- **Best-Selling Products:** "Herself," "Director," "Dinner"  
- These products contributed significantly to total revenue.

### 4. **Sales Representatives’ Impact**
- **Top Performers:** "Jeff Gonzalez" and "Jennifer Miller"  
- Their efforts contributed the most to overall revenue.

### 5. **Store Performance**
- **Best Performing Locations:**  
  - **New York** *(Highest Sales Revenue)*
  - **Manchester** *(UK’s Best Performing Store)*
  - **Abuja** *(Nigeria’s Best Store)*
    
---
## Recommendations
1. **Optimize Pricing Strategy:**  
   - Since higher discounts **do not guarantee higher sales**, adjust pricing **based on location**.

2. **Increase Investment in High-Performing Stores:**  
   - Expand inventory and marketing in **New York, Manchester, and Abuja**.

3. **Sales Training for Underperforming Regions:**  
   - Focus on **China and Canada** to improve sales.

4. **Monitor and Reward Sales Representatives:**  
   - Retain and incentivize top performers like **Jeff Gonzalez and Jennifer Miller**.
     
---
## Visualizations

### **Key Power BI Dashboard Metrics**
- **Total Sales**
- **Total Profit**
- **Total Discount Given**
- **Total Orders**
- **Average Order Value**
  
### **Power BI Report Highlights**
1. **Sales Trends Over Time(Monthly and Daily Trend)** 
2. **Sales by Store Location**
3. **Discount vs. Profit Analysis**
4. **Sales By Payment Method**
5. **Sales By Category**

![Sales Analysis By Countries Dashboard](https://github.com/user-attachments/assets/8958777b-35e1-40b1-b408-397189c35759)


---
## Conclusion
This analysis **helps businesses make data-driven decisions** by identifying:
- **Top-performing regions, stores, and products**
- **Sales trends and profitability insights**
- **Key areas for improvement** in sales strategy

By leveraging **SQL for data processing and Power BI for visualization**, businesses can effectively monitor performance and optimize revenue.
