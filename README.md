### cryptopunk_sales_analysis
SQL Capstone Project to analyze Cryptocurrency sales for CryptoPunk

### Problem Statement

Over the past 18 months, an emerging technology has caught the attention of the world; the NFT. What is an NFT? They are digital assets stored on the blockchain. And over $22 billion was spent last year on purchasing NFTs. Why? People enjoyed the art, the speculated on what they might be worth in the future, and people didn’t want to miss out. 
 
The future of NFT’s is unclear as much of the NFT’s turned out to be scams of sorts since the field is wildly unregulated. They’re also contested heavily for their impact on the environment.
 
Regardless of these controversies, it is clear that there is money to be made in NFT’s. And one cool part about NFT’s is that all of the data is recorded on the blockchain, meaning anytime something happens to an NFT, it is logged in this database. 

### Dataset Information
 
In this project, you’ll be tasked to analyze real-world NFT data. (https://kh3-ls-storage.s3.us-east-1.amazonaws.com/Data%20Analysis%20using%20SQL/Project/Cryptopunk.zip) 
That data set is a sales data set of one of the most famous NFT projects, Cryptopunks. Meaning each row of the data set represents a sale of an NFT. The data includes sales from January 1st, 2018 to December 31st, 2021. The table has several columns including the buyer address, the ETH price, the price in U.S. dollars, the seller’s address, the date, the time, the NFT ID, the transaction hash, and the NFT name.
You might not understand all the jargon around the NFT space, but you should be able to infer enough to answer the following prompts.

### Questions
 
1) How many sales occurred during this time period? 
2) Return the top 5 most expensive transactions (by USD price) for this data set. Return the name, ETH price, and USD price, as well as the date.
3) Return a table with a row for each transaction with an event column, a USD price column, and a moving average of USD price that averages the last 50 transactions.
4) Return all the NFT names and their average sale price in USD. Sort descending. Name the average column as average_price.
5) Return each day of the week and the number of sales that occurred on that day of the week, as well as the average price in ETH. Order by the count of transactions in ascending order.
6) Construct a column that describes each sale and is called summary. The sentence should include who sold the NFT name, who bought the NFT, who sold the NFT, the date, and what price it was sold for in USD rounded to the nearest thousandth.
 Here’s an example summary:
 “CryptoPunk #1139 was sold for $194000 to 0x91338ccfb8c0adb7756034a82008531d7713009d from 0x1593110441ab4c5f2c133f21b0743b2b43e297cb on 2022-01-14”
7) Create a view called “1919_purchases” and contains any sales where “0x1919db36ca2fa2e15f9000fd9cdc2edcf863e685” was the buyer.
8) Create a histogram of ETH price ranges. Round to the nearest hundred value. 
9) Return a unioned query that contains the highest price each NFT was bought for and a new column called status saying “highest” with a query that has the lowest price each NFT was bought for and the status column saying “lowest”. The table should have a name column, a price column called price, and a status column. Order the result set by the name of the NFT, and the status, in ascending order. 
10) What NFT sold the most each month / year combination? Also, what was the name and the price in USD? Order in chronological format. 
11) Return the total volume (sum of all sales), round to the nearest hundred on a monthly basis (month/year).
12) Count how many transactions the wallet "0x1919db36ca2fa2e15f9000fd9cdc2edcf863e685"had over this time period.
13) Create an “estimated average value calculator” that has a representative price of the collection every day based off of these criteria:
 - Exclude all daily outlier sales where the purchase price is below 10% of the daily average price
 - Take the daily average of remaining transactions
 a) First create a query that will be used as a subquery. Select the event date, the USD price, and the average USD price for each day using a window function. Save it as a temporary table.
 b) Use the table you created in Part A to filter out rows where the USD prices is below 10% of the daily average and return a new estimated value which is just the daily average of the filtered data.

### Purpose of Solving the problem

Solving a SQL project to analyze cryptocurrency sales data can be beneficial for several reasons, depending on the project goals and target audience. Here are some key purposes:

A) Market Trend Analysis: Analyzing the sales data for patterns or trends in cryptocurrency prices and volumes can help to identify market movements, assess volatility, and track popular trading periods. This information is valuable for both traders and investors to make informed decisions.

B) Performance Benchmarking: By examining sales data over time, one can evaluate the performance of specific cryptocurrencies. This can involve assessing price fluctuations, trading volumes, and overall growth or decline, allowing comparisons across different cryptocurrencies.

C) User Behavior Insights: Analysis of user transaction data can reveal insights into buyer and seller behaviors, including average transaction size, trading frequency, and peak trading times. Understanding these patterns can help exchanges and analysts optimize user experience and create tailored services.

D) Risk Assessment: Analyzing trends in sales data, such as frequent sharp declines or high volatility periods, helps to identify high-risk assets. This can assist investors and risk management teams in setting strategies to manage or mitigate exposure to particularly volatile assets.

E) Fraud Detection: Unusual sales patterns may indicate potential fraudulent activities, such as wash trading or pump-and-dump schemes. SQL queries can be used to flag transactions that deviate significantly from normal patterns, allowing for proactive measures to maintain a safe trading environment.

F) Revenue and Cost Analysis: For cryptocurrency exchanges, analyzing sales data helps estimate revenue generated through trading fees, and understanding transaction volumes aids in cost and infrastructure planning. This is essential for budgeting and scaling operations efficiently.

G) Investment and Portfolio Optimization: Investors can use SQL-based analysis to identify profitable trading pairs, optimize asset allocation, and adjust portfolios based on historical performance. This involves running queries on historical data to gauge returns and make predictions.

H) Regulatory Compliance and Reporting: With increasing regulatory scrutiny, accurate reporting of sales and transaction data is crucial. SQL analysis ensures precise data extraction for compliance and tax reporting, helping entities adhere to government requirements.

A SQL project on cryptocurrency sales data also helps develop practical skills for managing, querying, and analyzing large-scale datasets, which is essential for many data roles in finance, tech, and business analytics.

### Instructions on how to run this project code on your system

Step 1 : Download this project repository as a zip file. 
Step 2 : Unzip the folder to your desired location 
Step 3 : If you don't have MySQL & MySQL Workbench Installed, go to https://dev.mysql.com/downloads/ and download the MySQL installer along with the MySQL Workbench for your operating system (Windows, macOS, or Linux) & launch it. 
Step 4 : Establish a connection with the MySQL Server on your local instance.
Step 5 : Navigate to this project folder. 
Step 6 : When inside navigate to Cryptopunk 
Step 7 : Open the Capstone Project Query File.sql using MySQL Workbench 
Step 9 : Run the query file by clicking on the thunderbolt icon.
Step 10 : Wait for the file to complete executing the queries and check the results of each query in their respective windows.

### Future Course

Future projects based on cryptocurrency sales data analysis can build on foundational SQL skills to incorporate more complex techniques and advanced tools, expanding the depth and breadth of insights. Here are some potential directions:

#### A) Advanced Analytics and Machine Learning:

1) Predictive Modeling: Use historical cryptocurrency data to predict future price movements or trading volumes. Machine learning models like time series forecasting (ARIMA, LSTM) or regression can help forecast trends and make data-driven predictions.
2) Anomaly Detection: Implement machine learning algorithms to detect abnormal trading patterns indicative of fraud or unusual market behavior. This could include identifying sudden price spikes, volume anomalies, or suspicious account activities.

#### B) Real-Time Data Processing:

1) Stream Processing with Big Data Tools: As cryptocurrency trading is fast-paced, transitioning from SQL to real-time data processing tools like Apache Kafka, Apache Flink, or Spark Streaming can enable live analysis. Real-time alerts and analytics could assist traders in reacting instantly to market changes.
2) API Integrations for Continuous Updates: Incorporate live API feeds from cryptocurrency exchanges to continuously update datasets and monitor current market conditions, enabling timely insights and decisions.

#### C) Data Visualization and Interactive Dashboards:

1) Business Intelligence Dashboards: Use tools like Power BI, Tableau, or custom web apps with D3.js to create interactive dashboards, giving users a clear view of market trends, trading volumes, price fluctuations, and portfolio performance.
2) Customizable KPIs: Enable users to select or configure specific KPIs they want to monitor, such as moving averages, volatility indicators, or daily trading volumes for specific cryptocurrencies.

#### 4) Blockchain Data Analysis:

1) On-Chain Data Analysis: Go beyond sales data from exchanges by analyzing on-chain data directly from blockchain nodes. Analyzing blockchain transactions provides insights into wallet activities, mining patterns, and token circulation trends.
2) Tokenomics and Ecosystem Health: Study the distribution of tokens, staking behaviors, and wallet balances to assess the health and decentralization of different cryptocurrency ecosystems.

#### 5) Portfolio Optimization and Financial Engineering:

1) Risk Management Models: Develop models to calculate metrics like Sharpe Ratio, Sortino Ratio, and VaR (Value at Risk) to evaluate and minimize the risk associated with different cryptocurrency assets.
2) Portfolio Balancing Algorithms: Implement algorithms that optimize portfolio allocations based on user preferences for risk, return, and diversification, adjusting in real-time as market conditions change.

#### 6) Sentiment and Social Media Analysis:

1) Sentiment Tracking: Integrate sentiment analysis by pulling data from social media (Twitter, Reddit) or news sources to gauge public opinion on different cryptocurrencies and correlate it with price and volume changes.
2) Trend Detection: Identify trending assets or potential shifts in the market based on social media and news sentiment, allowing investors to anticipate market movements.

#### 7) Regulatory and Compliance Tools:

1) AML and KYC Reporting: Expand SQL projects to include compliance-related features, such as monitoring for AML (Anti-Money Laundering) and KYC (Know Your Customer) standards. This can involve building systems that flag high-risk transactions and provide insights for regulatory audits.
2) Taxation Reporting Tools: Create tools to simplify tax reporting by calculating capital gains, losses, and taxable events on cryptocurrency transactions, addressing an increasingly important area as regulations evolve.

#### 8) Multi-Currency and Cross-Platform Analytics:

1) Cross-Exchange Analytics: Build models to track prices and volumes across multiple exchanges, identifying arbitrage opportunities or trends that are exchange-specific.
2) Multi-Currency Comparisons: Develop methods to compare cryptocurrency assets against traditional asset classes (stocks, commodities, etc.) to understand their relative performance and correlation, helping investors diversify their portfolios.

By expanding into these areas, future cryptocurrency analysis projects can provide more robust, real-time, and actionable insights, leveraging big data, machine learning, and specialized financial analysis techniques.













### Future Course
