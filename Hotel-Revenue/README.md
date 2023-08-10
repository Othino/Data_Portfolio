# Hotel-Revenue-Analysis
## Introduction
A sample hotel company wishes to understand its revenue patterns to make informed decisions and strategize across countries to increase its profit. Therefore, this project provides an analysis of the revenue of the hotel to help make strategic decisions.

## Business Questions
* Is the hotel growing by year? Segment the revenue by hotel type to identify the revenue trend over the years.
* Should the company increase its parking lot size?
* Any trends in data?

## Process
The project involved querying from a database created in MSSQL. 
The Excel sheet was imported to SQL Server Management Studio where 5 different tables were merged to produce a single table for analysis.
* dbo.['2018$']
* dbo.['2019$']
* dbo.['2020$'])
* dbo.meal_cost$
* dbo.market_segment$

Some of the columns in the Excel file include:
* Hotel - these were the hotel types
* Arrival_date_year - year customers were at the hotel
* Stay_in_weekends_nights
* Stay_in_week_nights
* Country
* Market segment
* Deposit
* Adr
* Required_car_parking_spaces
* Reservation_status_date

### The SQL Query is as follows:
``` SQL
With hotels such as (
SELECT *
FROM dbo.['2018$']
union
SELECT *
FROM dbo.['2019$']
union
SELECT *
FROM dbo.['2020$'])

SELECT * FROM hotels
JOIN dbo.market_segment$
ON hotels.market_segment = market_segment$.market_segment
LEFT JOIN dbo.meal_cost$ ON meal_cost$.meal = hotels.meal
```
## Insights
* There has been an increase in revenue for the hotel in the year 2020. However, the trend has been up and down which can be attributed to the negative impact of Covid-19 on the hotel and restaurant industry.
* However, there is a sharp increase in revenue collected in both city and resort hotels at the beginning of Q3 in 2020 which is recorded at $16,855.
* The lowest revenue collected by the hotel was in January Q1 2018 at $108
* There is no significant increase in the size of the parking space as the percentage occupied is not beyond 3% when compared to the total number of guests received at the hotel.
* The city hotels contribute the highest revenue at $3.15M(54.42%)
* The resort hotels contribute the least revenue at $2.86M (47.58%)

## Recommendations
* The hotel does not need to increase its parking size since a majority of customers do not come with personal cars. This could be a good business idea where the organisation could offer transfer and tour  services to customers to increase its sales revenue
* The hotel should conduct a customer feedback survey in resort hotels to identify areas to improve to attract more customers and boost its sales revenue
* There is a need for a business continuity strategy to cushion the company from adverse risks such as Covid-19 which had affected its sales revenue.



