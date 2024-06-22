# Project Background
Founded in 2018, Elist Electronics is an e-commerce company that sells popular electronic products and has since expanded to a global customer base.  Elist Electronics sells products through their online site and mobile app.  They have a variety of marketing channels including Email campaigns, SEO, and affiliate links.  

This project analysis aims to provide comprehensive insights into the sales performance and customer behavior of Elist Electronics.  By leveraging data analytics tools, this project seeks to uncover trends, evaluate the effectiveness of marketing strategies, and identify areas for improvement.

- **Sales Trends Analysis:**  Examine the overall sales trends over time to identify peak periods and understand the factors driving sales performance.
- **Growth Rate Calculation:** Determine both monthly and yearly growth rates to measure the business's growth trajectory and identify significant fluctuations.
- **Loyalty Program Evaluation:** Assess the impact of the loyalty program on customer retention and sales, comparing the purchasing behavior of loyalty members versus non-members.
- **Refund Rate Analysis:** Analyze the rate of refunds to understand the extent of product returns and potential issues with customer satisfaction.

# Executive Summary

### Overview of Findings

Elist Electronics processed over 108,000 orders from 2019 to 2022, totaling approximately $28 million in sales with an average order value of $260. A significant portion of this growth is likely due to the surge in consumer spending during the COVID-19 pandemic. However, in 2022, sales performance declined by 46% compared to 2021. By analyzing the data in depth, we aim to uncover trends and identify strategies to mitigate losses and explore new opportunities for growth.   

### About the Data

The raw dataset contains just over 108,000 rows, with each row repreenting a unique order. The cleaned and analyzed Excel workbook is available for download [here](https://docs.google.com/spreadsheets/d/1fiIHl5W0AY8xY8L7hqFdp-gmXHB82_2H/edit?usp=sharing&ouid=110328506075169530580&rtpof=true&sd=true), including a detailed change log that documents my structured approach to cleaning and formatting the raw data.

<p align ="center">
  Elist Electronics Entity Relationship Diagram (ERD)
  <img src="https://github.com/jenncash29/Elist-Electronics-Store-Project/blob/main/Images/Elist%20Electronics%20ERD.png" alt="Elist Electronics ERD">
</p>


# Insights Deep-Dive

### Sales Trends & Growth Rate Analysis

- **Overall Sales Trends**
  - Elist Electronics averaged around 27k sales per year from 2019 to 2022, generating approximately $7 million in revenue annually, with an average order value (AOV) of ~$254 USD. The year 2020 saw a dramatic increase in sales, with a 163% rise in total sales compared to 2019. This spike was followed by a gradual return to pre-pandemic sales levels seen in 2019, indicating a normalization of sales post-pandemic. 

- **Growth Rates**
  - In terms of growth rates, 2020 was exceptional, with sales and revenue more than doubling compared to 2019. March 2020 marked a significant surge with a 50% increase in total sales and a 46% rise in order count, likely due to increased purchasing during the pandemic.

<p align ="center">
  <img src="https://github.com/jenncash29/Elist-Electronics-Store-Project/blob/main/Images/Sales%20and%20Growth%20Rates.png" alt="Yearly Growth">
</p>

- **Seasonality**
  - Peak sales periods were consistently observed in November and December, coinciding with holiday seasons and Black Friday promotions. The highest sales and order count were recorded in December 2020. Additionally, September experienced a significant sales spike, likely driven by new iPhone releases and back-to-school shopping. In contrast, February and October were identified as the months with the lowest sales and order counts.

<p align ="center">
  <img src="https://github.com/jenncash29/Elist-Electronics-Store-Project/blob/main/Images/Monthly%20Seasonality.png" alt="Seasonality">
</p>

### Loyalty Program Evaluation
- The loyalty program showed mixed results. From 2019 to 2021, non-members outperformed loyalty members in terms of revenue, AOV, and order count. However, in 2022, loyalty members surpassed non-members across all key metrics, indicating a successful turn in the program's impact.

<p align ="center">
  <img src="https://github.com/jenncash29/Elist-Electronics-Store-Project/blob/main/Images/Loyalty%20Values.png" alt="Loyalty Program">
</p>

### Refund Rate Analysis

- **Peak Refund Rates**
  - Refund rates peaked in 2020 at 9.22% across all products, marking a 61% increase over 2019. The ThinkPad Laptop had the highest refund rate at 11.76%, followed closely by the MacBook Air Laptop at 11.43%, with the MacBook having a slightly higher return count (453 vs. 343).

- **Most Returned Products**
  - The Apple AirPods Headphones were the most returned product with 2,636 units, followed by the 27in 4K Gaming Monitor with 1,445 units.

- **Seasonality of Refunds**
  - Refunds rates were highest from February through April.  

<p align ="center">
  <img src="https://github.com/jenncash29/Elist-Electronics-Store-Project/blob/main/Images/Refund%20Rates.png" alt="Refunds">
</p>

### Additional Observations
- **Product Performance**
  - The bulk of sales revenue comes from the top three products: the 27in 4K Gaming Monitor, Apple AirPods Headphones, and the MacBook Air Laptop, which together account for 84.96% of total sales.
  - The ThinkPad Laptop and MacBook Air Laptop have the highest refund rates at 12% and 11%.  Despite the high refund rates, high-value items like the MacBook Air Laptop and ThinkPad Laptop significantly contribute to total sales due to their high average order values.
  - Products like the Samsung Charging Cable Pack and Samsung Webcam have low AOV but still contribute to total sales through high order volumes, albeit at a smaller percentage of total sales.
  - The Bose Soundsport Headphones overall contribution to sales is minimal.

 <p align ="center">
  <img src="https://github.com/jenncash29/Elist-Electronics-Store-Project/blob/main/Images/Product%20Performance.png" alt="Product Performance">
</p>


- **Global Performance**
  - Out of 192 total countries, 13 countries contribute significantly to sales, accounting for approximately 82% of the total. These countries generate nearly $23 million out of the company's total sales of $28 million. A significant number of countries contribute minimally to the total sales, each accounting for less than 0.01% to 0.03% of total sales.
    - **Dominant Region:** North America, particularly the United States, is the dominant market, contributing nearly half of the total sales.
    - **Strong EMEA Presence:** The EMEA region also plays a significant role, with notable contributions from the UK, Germany, France, and Spain.
    - **APAC Growth Potential:** APAC shows potential with strong sales in Japan and Australia, alongside emerging markets like India and South Korea.
    - **Latin America's Key Market:** Brazil leads in LATAM, with Mexico and other countries contributing to the regional sales.

<p align ="center">
  <img src="https://github.com/jenncash29/Elist-Electronics-Store-Project/blob/main/Images/Global%20Performance.png" alt="Refunds">
</p>

- **Shipping Performance**
  - Purchase to Ship (1-3 days): Orders are evenly distributed across the first three days, with each day seeing around 36,000 orders. This indicates consistent and efficient shipping practices without significant delays or spikes. Both loyalty members and non-members have similar prompt shipping times.
  - 
  - Ship to Delivery (2-9 days): The majority of orders are delivered within 4 to 7 days, with the peak delivery day being the 5th day (18,152 orders). Both loyalty members and non-members experience similar delivery patterns, with deliveries peaking between the 4th and 7th days.

<p align ="center">
  <img src="https://github.com/jenncash29/Elist-Electronics-Store-Project/blob/main/Images/Ship%20to%20Delivery.png" alt="Ship to Delivery Days">
</p>

  
# Recommendations

# Assumptions and Caveats

