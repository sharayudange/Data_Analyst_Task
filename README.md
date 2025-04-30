- Queries Overview:
  - 1: Count of Orders by Status
    - Objective: The goal of this query is to count the total number of orders for each order status. This helps us understand how many orders fall under different statuses (e.g., delivered, shipped, pending) and gives insight into order fulfillment rates.
    - Explanation:

order_status: This column contains the status of the order (e.g., 'delivered', 'shipped', 'pending').
COUNT(*): This function counts the total number of orders for each order status.
GROUP BY order_status: This groups the orders by their status, allowing us to calculate the number of orders for each status.
- Order Status:
   The count of orders by status reveals how efficiently orders are processed, and helps identify if there are any delays or backlogs in the fulfillment process.
- 2: Yearly Sales Trend for Shipped Orders
      - Objective: This query calculates the total sales for shipped orders, broken down by year. This allows us to analyze the revenue generated from orders that have been shipped over the years and identify trends in sales over time.
      - Explanation:
LEFT(order_date, 4): This extracts the first 4 characters from the order_date field, which represents the year (e.g., 2021, 2022).
SUM(order_amount): This sums up the total order amount for each year, giving the total sales for shipped orders.
WHERE order_status = 'shipped': This filters the data to include only orders that have been shipped, excluding other statuses such as 'pending' or 'delivered'.
GROUP BY LEFT(order_date, 4): This groups the results by the year, enabling analysis of total sales per year.
ORDER BY LEFT(order_date, 4): This sorts the results in ascending order by year to visualize sales trends over time.
- Revenue Trends (Shipped Orders):
   - Analyzing sales from shipped orders by year helps in tracking revenue trends and identifying key periods of growth or decline.
 
- Customer Analysis
   - 1:Total Number of Orders per Customer
   -  Purpose:
       - Identifies how many orders each customer has placed, helping reveal the most active or loyal customers.

  -  Insight:
     - Customers with a higher order count may be more engaged and can be targeted for loyalty programs or premium services.
  -  2: Repeat Customers with First and Last Order Dates
    - Purpose:
       - Identifies repeat customers and shows their order activity span over time.

    - Insight:
       - Helps track customer retention and lifecycle — from their first order to the most recent.
    - 3: Customer Segmentation by Total Spend
       - Purpose:
          - Segments customers into groups (High, Mid, Low Value) based on their total spending.
       - Insight:
          - High Value customers drive the majority of revenue and may deserve VIP programs.
          - Mid/Low Value segments can be targeted with offers to boost retention and spend.

      - 3. Payment Status Analysis
           - 1: Payment Status Distribution
              - Purpose: Shows how many payments fall under each status (completed, failed, pending), helping identify issues with transaction processing.
          - 2:Payment Method vs. Success Rate
             - Purpose:Compares the success and failure rates across different payment methods like PayPal and credit card.

            - Insight: Helps identify which payment methods are more reliable or problematic.

          - 3: Failed Payments Trend Over Time
              -  Purpose: Tracks how failed payments are trending month over month.
              - Insight: Spikes in failures may indicate technical issues or user experience problems during specific periods.

       - 4. Order Details Report
             -  Join Customers with Payments
             - Purpose: This query combines order and payment data to create a comprehensive report of all transactions.
             - Insight: Provides a complete view of each order’s fulfillment and payment details.
                        - Identifies orders with missing or failed payments using the LEFT JOIN.
                         - Useful for audits, financial reporting, and reconciliation.
      - 5. Customer Retention Analysis
          - Cohort-Based Retention Tracking
          - Purpose: This query tracks customer retention by grouping users into monthly cohorts based on their first purchase and observing whether they made purchases in subsequent months.
              - Cohort Assignment (cohorts): Identifies the first purchase month for each customer.
              - Monthly Orders (orders_by_month): Tracks every customer's order activity by month.
              -  Joins both datasets to count how many customers from each cohort were active in each following month.



 
