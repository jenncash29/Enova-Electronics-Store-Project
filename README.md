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

Explore an interactive, Tableau sales dashboard [here](https://public.tableau.com/app/profile/jenncash29/viz/ElistElectronicsSalesDashboard/Dashboard1).

### About the Data 

The raw dataset comprises over 108,000 rows, each representing a unique purchase order. For a comprehensive view of my process, you may access a PDF of the [change log](https://github.com/jenncash29/Elist-Electronics-Store-Project/blob/main/Change%20Log.pdf) and my [structured approach](https://github.com/jenncash29/Elist-Electronics-Store-Project/blob/main/Structured%20Cleaning%20Framework.pdf) to cleaning and formatting the raw Excel workbook. This documentation provides insights into the steps taken to ensure data accuracy and consistency, including handling missing values, standardizing formats, and augmenting the data.

<p align ="center">
  Elist Electronics Entity Relationship Diagram (ERD)
  <img src="https://github.com/jenncash29/Elist-Electronics-Store-Project/blob/main/Images/Elist%20Electronics%20ERD.png" alt="Elist Electronics ERD">
</p>


# Insights Deep-Dive

### Sales Trends & Growth Rate Analysis

- **Overall Sales Trends**
  - Elist Electronics averaged around 27k sales per year from 2019 to 2022, generating approximately $7 million in revenue annually, with an average order value (AOV) of ~$254 USD. The year 2020 saw a dramatic increase in sales, with a 163% rise in total sales compared to 2019. This spike was followed by a gradual return to pre-pandemic sales levels seen in 2019, indicating a normalization of sales post-pandemic. However, Q4 of 2022 experienced a 45% decline in sales compared to Q4 of 2019, highlighting the ongoing impact on the market.

- **Growth Rates**
  - In terms of growth rates, 2020 was exceptional, with sales and revenue more than doubling compared to 2019. March 2020 marked a significant surge with a 50% increase in total sales and a 46% rise in order count, likely due to increased purchasing during the pandemic.

<p align ="center">
  <img src="https://github.com/jenncash29/Elist-Electronics-Store-Project/blob/main/Images/YoY%20Sales%20and%20Growth.png" alt="YoY Sales & Growth">
</p>

- **Seasonality**
  - Peak sales periods were consistently observed in November and December, coinciding with holiday seasons and Black Friday promotions. The highest sales and order count were recorded in December 2020. Additionally, September experienced a significant sales spike, likely driven by new Apple product releases and back-to-school shopping. In contrast, February and October were identified as the months with the lowest sales and order counts.

<p align ="center">
  <img src="https://github.com/jenncash29/Elist-Electronics-Store-Project/blob/main/Images/Monthly%20Sales%20YoY.png" alt="Monthly Sales by Year">
</p>

- **Product Performance**
  - The bulk of sales revenue comes from the top three products: the 27in 4K Gaming Monitor, Apple AirPods Headphones (the most popular product across all regions), and the MacBook Air Laptop. Together, these products account for 84.96% of total sales.
  - The ThinkPad Laptop and MacBook Air Laptop have the highest refund rates at 12% and 11%.  Despite the high refund rates, high-value items like the MacBook Air Laptop and ThinkPad Laptop significantly contribute to total sales due to their high average order values.
  - Products like the Samsung Charging Cable Pack and Samsung Webcam have low AOV but still contribute to total sales through high order volumes, although at a smaller percentage of total sales.
  - The Bose Soundsport Headphones overall contribution to sales is minimal.

 <p align ="center">
  <img src="https://github.com/jenncash29/Elist-Electronics-Store-Project/blob/main/Images/Product%20Mix.png" alt="Product Performance">
</p>

- **Global Performance**
  - Out of 192 total countries, 13 countries contribute significantly to sales, accounting for approximately 82% of the total. These countries generate nearly $23 million out of the company's total sales of $28 million. A significant number of countries contribute minimally to the total sales, each accounting for less than 0.01% to 0.03% of total sales.
    - **Dominant Region:** North America, particularly the United States, is the dominant market, contributing nearly half of the total sales.
    - **Strong EMEA Presence:** The EMEA region also plays a significant role, with notable contributions from the UK, Germany, France, and Spain.
    - **APAC Growth Potential:** APAC shows potential with strong sales in Japan and Australia, alongside emerging markets like India and South Korea.
    - **Latin America's Key Market:** Brazil leads in LATAM, with Mexico and other countries contributing to the regional sales.

<p align ="center">
  <img src="https://github.com/jenncash29/Elist-Electronics-Store-Project/blob/main/Images/Global%20Sales%20Rankings.png" alt="Refunds">
</p>


### Loyalty Program Evaluation
- From 2019 to 2020, non-loyalty members outperformed loyalty members in terms of revenue, AOV, and order count. However, in 2021, loyalty members surpassed non-loyalty members in both sales and order count, marking a significant positive shift for the loyalty program. By 2022, loyalty members had outperformed non-loyalty members across all key metrics, demonstrating the growing success and impact of the loyalty program.
- Notably, in 2021, loyalty members made purchases significantly faster than non-loyalty members (48 days vs. 85 days). In 2022, loyalty members made purchases almost three times faster than non-loyalty members (38 days vs. 103 days).
- The data indicates a positive trend and growing effectiveness of the loyalty program, particularly evident in 2022.

<p align ="center">
  <img src="https://github.com/jenncash29/Elist-Electronics-Store-Project/blob/main/Images/Loyalty%20Program%20Evaluation.png" alt="Loyalty Program">
</p>


- **Shipping Performance**
  - Days-to-Ship (1-3 days): Orders are evenly distributed across the first three days, with each day seeing around 36,000 orders. This indicates consistent and efficient shipping practices without significant delays or spikes. Both loyalty members and non-members have similar prompt shipping times.
  - Days-to-Deliver (2-9 days): The majority of orders are delivered within 4 to 7 days, with the peak delivery day being the 5th day (18,152 orders). Both loyalty members and non-members experience similar delivery patterns, with deliveries peaking between the 4th and 7th days.

<p align ="center">
  <img src="https://github.com/jenncash29/Elist-Electronics-Store-Project/blob/main/Images/Loyalty%20vs%20Non-Loyalty%20Days%20to%20Deliver.png" alt="Ship to Delivery Days">
</p>

  
### Refund Rate Analysis

- **Peak Refund Rates**
  - Refund rates peaked in 2020 at 9.22% across all products, marking a 61% increase over 2019. The ThinkPad Laptop had the highest refund rate at 11.76%, followed closely by the MacBook Air Laptop at 11.43%, with the MacBook having a slightly higher return count (453 vs. 343).
  
- **Most Returned Products**
  - The Apple AirPods Headphones were the most returned product with 2,636 units, followed by the 27in 4K Gaming Monitor with 1,445 units.
 
- **Average Days to Refund**
  - The analysis of our return policy indicates an average return time of 740 days, which is significantly higher than industry standards and customer expectations. It is unclear at this time if this is a result of an error in the ETL (Extract, Transform, Load) process or if this a prolonged return policy.
  
- **Seasonality of Refunds**
  - Refunds rates were highest from February through April.  

<p align ="center">
  <img src="https://github.com/jenncash29/Elist-Electronics-Store-Project/blob/main/Images/Refunds%20by%20Month.png" alt="Refunds">
</p>


# Recommendations

Elist Electronics can address the decline in sales post-pandemic and position itself for sustainable growth in the future. 

**Sales:  Leverage Seasonal Promotions and Marketing Campaigns**
- **Holiday Season Strategy (_November-December_)**:
  - Increase marketing spend and promotional activities in the weeks leading up to November and December.
- **Back-to-School and Apple Release Promotions (_August-September_)**:
  - Back-to-School Campaigns: Promote products relevant to students and educators, such as laptops, tablets, and headphones, with back-to-school discounts and bundles. 
  - Product Launches and Promotions: Capitalize on new product launches, especially Apple products, by coordinating with Apple’s release schedule. Offer trade-in deals, special financing options, and discounts on accessories.
- **Boost Low Sales Months (_February and October_)**:
  - Targeted Sales Events: Introduce sales events specifically in February and October to drive customer interest. Consider themes like "Mid-Winter Clearance" or "Fall into Savings."
  - Customer Engagement: Increase engagement with loyalty program members during these months by offering exclusive member-only deals and early access to new products.
  - Email and Social Media Campaigns: Use targeted email campaigns and social media ads to remind customers of ongoing deals and new arrivals.
- **Convert Non-Loyalty Members to Loyalty Members:**
  - Implement targeted marketing campaigns to convert non-loyalty members into loyalty members, thereby enhancing their lifetime value. By offering personalized incentives and highlighting the benefits of the loyalty program, such campaigns can encourage non-loyalty members to join and remain engaged, ultimately driving increased revenue and customer retention.
- **Data-Driven Adjustments:**
  - Customer Feedback: Collect and analyze customer feedback to understand their preferences and pain points during different seasons, enabling more personalized and effective marketing efforts.

**Product: Focus on High Performers & Explore Bundling Strategies**
- Continue to prioritize marketing and inventory for top-selling items like the 27in 4K Gaming Monitor and Apple AirPods Headphones.
- Consider bundling or promotions for products like the Samsung Charging Cable Pack or Samsung Webcam to boost their sales contribution without significantly impacting the overall refund rate.
  
**Global: Focus on Major Markets**
- Continue to strengthen presence and marketing in top-performing markets like the US, UK, and Japan.
- Expand Emerging Markets: Leverage the growth potential in APAC and LATAM by investing in marketing and distribution channels in emerging markets like India and Brazil.

**Loyalty Program: Keep and Consider Enhancing with Incentives**
- Given the promising results from the most recent year, with loyalty members outperforming non-loyalty members in sales and demonstrating faster purchase times, it is recommended to keep and enhance the loyalty program with additional benefits. Strengthening the loyalty program could encourage more frequent purchases and potentially increase their order share.
- Consider offering incentives such as special expedited shipping options, early access to new products and sales, and personalized offers for loyalty program members.

**Shipping: Optimize Days-to-Deliver Times**
- Work with logistics partners to ensure timely and efficient deliveries.
- Offer multiple shipping options, including expedited shipping, to cater to different customer needs.
  
**Refunds: Investigate the High Refund Rates and Prolonged Return Period**
- Investigate the high refund rates for the ThinkPad and MacBook Air laptops to understand and mitigate the underlying causes.
- Research reasons for higher seasonal refund rates during February through April.
- Address potential issues with errors in the ETL process to ensure accuracy of reporting refund data.  If no issues are found, implement a standard return window of 30 to 90 days from date of purchase.


# Assumptions and Caveats
There are areas in the dataset where data quality may need further investigation. While these issues did not significantly impact the quality of this analysis, they have been retained for completeness. It is recommended to consult with the data engineering team to determine if there were any ETL errors and address these values accordingly.

**Days to Refund:** There are 5,377 orders with an average return time of 740 days. This is likely an error in the ETL process. The orders were retained as it represents a very small portion of the dataset at appromately 5%, and did not affect this specific analysis. However, this issue warrants further investigation and correction.  

**Zero USD Price Orders:** There are 158 orders with a listed price of USD 0. The reasons for these zero-priced orders are unclear—they could be due to special promotions, giveaways, or customer service issues. The orders were retained as it represents less than 1% of the data.

**Missing or Nonsensical Country Codes:** There are 206 orders with missing or nonsensical country codes. These entries may indicate data entry errors or issues during the data transformation process. The orders were retained as it represents less than 1% of the data.


