## Advertising Data Analysis Using Multiple Regression
The goal of this project is to identify which channels generate the strongest returns and how companies can allocate their marketing budgets more effectively. By combining exploratory visualizations, a multiple regression model, and diagnostic checks, the analysis demonstrates how business analytics can turn raw data into actionable insights.

This project explores how advertising spending across TV, radio, and newspaper influences product sales using a dataset of 200 observations. The analysis includes exploratory visualizations, a multiple regression model, and diagnostic checks to evaluate which channels generate the strongest returns.


## 🛠️ Tools Used
- R (ISLR2 package)
- Base R plotting
- Multiple linear regression

## 📁 Project Structure
├── README.md
├── report/
│   └── Advertising_Data_Analysis.pdf
├── code/
│   └── analysis.R
├── figures/
│   ├── sales_tv_plot.png
│   ├── sales_radio_plot.png
│   └── residuals_plot.png
└── data/
    └── Advertising.csv   (optional)

    
## 🔍 Project Overview
The dataset contains advertising spending across three channels:
TV, Radio, Newspaper, and the corresponding product sales.

The goal is to determine which channels most strongly predict sales and how a company should adjust its marketing budget to maximize returns.

## 📈 Exploratory Visualizations
Sales vs. TV
A strong, linear, and consistent positive relationship.
“This scatter plot shows a strong positive relationship… the points cluster closely around the line.”

Sales vs. Radio
Still positive, but weaker and more variable.
“Radio shows a positive but weaker relationship… with noticeably wider scatter.”

Residuals vs. Fitted
Residuals are centered around zero with mild heteroscedasticity.
“The residuals‑versus‑fitted plot shows that residuals are generally centered around zero… slight increase in variability at higher fitted values.”

## 📊 Multiple Regression Results
The regression model:
sales = 𝛽0 +𝛽1(TV) + 𝛽2(radio) + 𝛽3(newspaper)

Key Findings:
TV and radio are statistically significant predictors of sales.
Newspaper is not significant (p = 0.86).
“Newspaper is not significant… indicating that it does not meaningfully contribute once the other variables are included.”

TV coefficient ≈ 0.046

Radio coefficient ≈ 0.188

Newspaper coefficient ≈ –0.001

R² = 0.897, meaning the model explains nearly 90% of sales variation.


## 🧠 Business Insights
- Shift budget **away from newspaper** and toward **TV and radio**.
- TV provides the most consistent ROI.
- Radio contributes meaningfully but with more variability.
- Use the model for **scenario planning** and **budget forecasting**.
- Consider A/B testing at higher spending levels to validate diminishing returns.
