# sql practice
This repositories will have all the practice sql queries from leetcode

# Day1:
All the dopemine hits and i feel really motivated to work on this.

# Day2:
Understood the nuances of GROUP BY and aggregate functions like COUNT reinforces the importance of clear data organization.
These  are not just about solving problems—they’re about uncovering patterns and telling stories hidden in data. I felt it was tough for me but learnt out of it and took a lot of time to solve it.

# Day3:
This was easy and i understood how to get insights using having clause. I have used cte intentionally so that its modular in structure
- Organized SQL logic clearly.
- Applied grouping and filtering techniques effectively.
- Used joins to connect filtered subsets with broader datasets.

# Day4:

I was bit inconsistent and didnt work for continous 3 days. But i am back and started solving which i am greatful.

Today i solved learnt Percentage of Users Attended a Contest
- break the problem in smaller steps to solve
- TotalUsers acts as a foundation like knowing the total number of people in a room
- ContestRegistrations focuses on specific groups because it helps in counting how many people are in each team
- Used round function and order by to get the result

# Day5:

- Used DATE_SUB (or similar functions) to compute dynamic date ranges instead of hardcoding start and end dates.
- The BETWEEN clause helps cleanly filter rows within a range.

# Day6:

- Its pretty easy today where it involves filtering conditions and the ordering (which is descending in this case)
- Figuring out the odd numbered ID gives the movies which were not "boring"

# Day7:

- Its bit tricky to solve today
- I have used multiple cte to break down the complexity
- Learnt more about COALESCE function today
- Extract relevant columns and group transactions by `month` and `country`.
- Metrics Calculation:
   - Total transactions and their amounts.
   - Approved transactions and their amounts (filtered where `state = 'approved'`).
- Combining Results: Used a LEFT JOIN to merge total and approved metrics.
- Handle Missing Data: Used `COALESCE` to replace `NULL` values with `0` for clarity.

# Day 8 :

- CTEs: Simplified complex queries by breaking them into digestible parts.
- Aggregations: I have Used COUNT() effectively to analyze data relationships and group characteristics.
- Filtering Groups: Mastered HAVING to refine grouped data based on conditions.
- Data Presentation: I have Ordered and structured query results meaningfully.

# Day 9 :

- Again i have used CTE intentionally to solve problems because in real world there would be so many data and tables involved.
- I have used union all , having and other functions
- It takes more time to execute .
- Looked into other ways of solving in the solution section.
- I feel i am getting rid of the fear of solving queries
- I feel i can solve complex queries but not the simple ones. sometimes over engineering doesnt work

# Day10 :

- CTE	->Simplifies complex queries into readable steps.
- SUM/AVG() OVER	helps rolling calculations for cumulative and moving averages.
- ROWS BETWEEN 	defines the range of rows in the sliding window.
- ORDER BY in Window	Determines the sequence of rows for window operations.
- LIMIT and OFFSET	Paginates the results, skipping rows and limiting output.
- I have used all the above functions in this query, i found a lot complex than any of the queries that i have solved

# Day11 :

- Today i learnt about CONCAT(UPPER(SUBSTRING())) and same for the lower function
- Looked into different approaches that people have used and read through the discussion to learn more

# Day 12 :

- Today i learnt about wildcards and how to use prefix and suffixes using '%'
- This was pretty straight forward and kept me going

# Day 13 :

- Unique Count: Counts distinct products sold per date using `COUNT(DISTINCT product)`.
- List Products: Creates a comma-separated list of unique products with `GROUP_CONCAT`.
- Group By Date: Groups data by `sell_date` to analyze sales per day.
- Readable Output: Uses column aliases (`num_sold`, `products`) for clarity.


# Day 14 :

- It was a bit tricky to understand where to use the join and conditional statement
- It deletes all rows except the one with the smallest id for each email
