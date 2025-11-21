# 📊 Cryptocurrency Data Analysis Project

## 📌 Summary
This project analyzes a large cryptocurrency dataset containing 300,000+ rows of historical trading data.  
It focuses on understanding price behavior, volatility, trading activity, and market trends across multiple crypto assets.  
The project uses **Python (Pandas, Matplotlib, Seaborn)** for analysis and **MySQL** for database operations.

---

## 🎯 Objective
- Clean and preprocess large-scale cryptocurrency data  
- Study price movement and volatility  
- Compare different crypto assets using tickers  
- Generate insights using SQL queries  
- Visualize patterns such as volume trends, daily returns, and rolling volatility  
- Build a structured workflow for financial/time-series data analysis  

---

## 🔄 Project Workflow

### **1. Data Import & Cleaning**
- Loaded dataset (3Lakh+ rows)  
- Converted date to datetime format  
- Removed duplicates  
- Handled missing values  
- Fixed data types (price → float, volume → int)  
- Sorted by ticker and date  

### **2. Exploratory Data Analysis (EDA)**
- Price movement comparison  
- Daily return calculation  
- Volatility measurement  
- Volume trends  
- Correlation between assets  

### **3. Visualization**
- Used **Matplotlib** and **Seaborn** to create plots:
  - Close price trends  
  - Daily return distribution  
  - Volatility heatmaps  
  - Rolling 30-day volatility  
  - Volume traded over time  

### **4. SQL Analysis**
- Top traded tickers  
- Most volatile crypto  
- 24-hour top gainer  
- Rolling volatility using SQL window functions  
- Volume and return-based rankings

### **5. Dashboard Development**
After completing the SQL-based analysis, the next step was building a fully interactive dashboard to visualize crypto market behavior.  
The dashboard translates SQL insights into clear, dynamic visualizations to help identify trends, Tickers, and high-performing assets, as well as Market Cap.

---

## 🔍 Key Insights
- Identified the top 5 most active cryptocurrencies  
- Found the most volatile crypto based on STD of daily returns  
- Calculated the top gainer in the last 24 hours  
- Observed strong correlations among major coins (BTC–ETH, etc.)  
- Noticed major volume spikes around specific dates, indicating market events  
- Rolling volatility helped detect high-risk periods for each asset  

---

## 📘 Learnings
- Handling and optimizing large datasets (3L+ rows)  
- Implementing rolling window calculations in Python & SQL  
- Performing financial time-series analysis  
- Using SQL window functions (LAG, STD, ROWS PRECEDING)  
- Creating clear financial visualizations with Matplotlib and Seaborn  
- Understanding cryptocurrency market structure and behavior
- Translating raw query results into dashboard visuals  

---

## 🖼️ Dashboard Preview
> *(Add your screenshot here after uploading the dashboard image)*
> *(Add your screenshot here after uploading the dashboard image)*
> *(Add your screenshot here after uploading the dashboard image)*
> *(Add your screenshot here after uploading the dashboard image)*

## 🛠️ Tools Used
- **MySQL** – Data cleaning, transformations, and all analytical queries  
- **Python (Pandas, Matplotlib, Seaborn)** – Optional EDA & validation  
- **Power BI / Tableau / Excel** – Dashboard creation and visualization  
- **GitHub** – Version control and documentation  
- **VS Code / Jupyter Notebook** – Writing and testing scripts  

## 🚀 How to Use the Project
- **1.** Clone the repository
- **2.** Install requirements
- **3.** Run notebooks
- **4.** Load data into MySQL
- **5.**  Explore Power-BI dashboard

## 🏷️ Tags
#CryptoAnalysis #Python #MySQL #DataAnalysis #TimeSeries
#VolatilityAnalysis #Finance #Seaborn #Matplotlib #Cryptocurrency
