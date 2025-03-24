SELECT *
FROM Public."Sales Canada";

SELECT *
FROM Public."Sales China";

SELECT *
FROM Public."Sales India";

SELECT *
FROM Public."Sales Nigeria";

SELECT *
FROM Public."Sales UK";

SELECT *
FROM Public."Sales US";

-- Merging the 6 datasets --
CREATE TABLE public."Sales Data" as
select * from public."Sales Canada"
UNION ALL
SELECT * FROM public."Sales China"
Union all
SELECT * FROM public."Sales India"
Union all
SELECT * FROM public."Sales Nigeria"
Union all
SELECT * FROM public."Sales UK"
Union all
SELECT * FROM public."Sales US"

SELECT * 
FROM public."Sales Data";

-- Checking for Null Values
SELECT *
FROM Public."Sales Data"
WHERE "Transaction ID" is Null;

SELECT * 
FROM public."Sales Data"
WHERE
    "Country" is null
	or "Price Per Unit" is null
	or "Quantity Purchased" is null
	or "Cost Price" is null
	or "Discount Applied" is null;

-- Updating “Quantity Purchased”
update public."Sales Data"
set "Quantity Purchased" = 3
where "Transaction ID" = '00a30472-89a0-4688-9d33-67ea8ccf7aea'

-- Updating “Price Per Unit”
UPDATE public."Sales Data"
SET "Price Per Unit" = (
    SELECT AVG("Price Per Unit")
	FROM public."Sales Data"
	WHERE "Price Per Unit" is not null
)
WHERE "Transaction ID" = '001898f7-b696-4356-91dc-8f2b73d09c63';

-- Checking for duplicate values
SELECT "Transaction ID", Count(*)
FROM public."Sales Data"
GROUP BY "Transaction ID"
HAVING COUNT(*)>1;

-- Adding “Total Amount” column
Alter table public."Sales Data" add
column"Total Amount" Numeric(10,2);

UPDATE public."Sales Data"
SET "Total Amount"=("Price Per Unit" * "Quantity Purchased") - "Discount Applied";

-- Adding “Profit” column
ALTER TABLE public."Sales Data" add
column "Profit" Numeric(10,2);

UPDATE public."Sales Data"
SET "Profit"="Total Amount" - ("Cost Price" + "Quantity Purchased");

-- Analysis Questions

-- Sales Revenue & Profit by Country (Combined Query)
SELECT 
    "Country", 
    SUM("Total Amount") AS "Total Revenue",
    SUM("Profit") AS "Total Profit"
FROM public."Sales Data"
WHERE "Date" BETWEEN '2025-02-10' AND '2025-02-14'
GROUP BY "Country"
ORDER BY "Total Revenue" DESC;

--Top 5 Best-Selling Products (During the Period)
SELECT 
    "Product Name", 
    SUM("Quantity Purchased") AS "Total Units Sold"
FROM public."Sales Data"
WHERE "Date" BETWEEN '2025-02-10' AND '2025-02-14'
GROUP BY "Product Name"
ORDER BY "Total Units Sold" DESC
LIMIT 5;

-- Best Sales Representatives (During the Period)
SELECT 
    "Sales Representative", 
    SUM("Total Amount") AS "Total Sales"
FROM public."Sales Data"
WHERE "Date" BETWEEN '2025-02-10' AND '2025-02-14'
GROUP BY "Sales Representative"
ORDER BY "Total Sales" DESC
LIMIT 5;

-- Which store locations generated the highest sales?
SELECT 
    "Store Location", 
    SUM("Total Amount") AS "Total Sales",
    SUM("Profit") AS "Total Profit"
FROM public."Sales Data"
WHERE "Date" BETWEEN '2025-02-10' AND '2025-02-14'
GROUP BY "Store Location"
ORDER BY "Total Sales" DESC
limit 5;

-- What are the key sales and profit insights for the selected period?
SELECT 
    MIN("Total Amount") AS "Min Sales Value",
    MAX("Total Amount") AS "Max Sales Value",
    AVG("Total Amount") AS "Avg Sales Value",
    SUM("Total Amount") AS "Total Sales Value",
    MIN("Profit") AS "Min Profit",
    MAX("Profit") AS "Max Profit",
    AVG("Profit") AS "Avg Profit",
    SUM("Profit") AS "Total Profit"
FROM public."Sales Data"
WHERE "Date" BETWEEN '2025-02-10' AND '2025-02-14';









