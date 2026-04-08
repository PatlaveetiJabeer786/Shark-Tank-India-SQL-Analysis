# Shark-Tank-India-SQL-Analysis
Comprehensive Data Analysis of Shark Tank India (Season 1) using SQL Server. This project explores startup trends, funding success rates, entrepreneur demographics, and shark-specific investment patterns through complex queries, joins, and window functions."

📊 Project Overview: STAR Method
📍 Situation
Goal: Analyze the startup landscape of Shark Tank India (Season 1).

Data: Information from 30 episodes, including 98 unique brand pitches.

🎯 Task (The Problem)
Raw pitch data is messy and hard to compare.

Problem: We didn't know which sectors were actually profitable, how diverse the founders were, or which "Sharks" were the most active investors without manual, error-prone calculations.

🛠️ Action (The Solution)
I built a structured SQL database to automate the analysis using the following techniques:

Data Cleaning: Imported Excel data into SQL Server and handled null values.

Demographics: Calculated Gender Ratios and Age Group distributions using SUM, CASE, and GROUP BY.

The "Shark Matrix": Used complex Joins and Subqueries to build a leaderboard for sharks like Ashneer, Namita, and Aman.

Advanced Logic: Applied Window Functions (RANK() OVER PARTITION) to identify the "top deal" in every industry (Food, Tech, etc.).

🏆 Result (The Outcome)
Funding Success: Discovered a 58% conversion rate across all pitches.

Diversity: Identified that 29 startups with female founders successfully secured deals.

Efficiency: Created a reusable script that can analyze any new Shark Tank season in seconds rather than hours.

Public Access: Hosted the full code on my GitHub and showcased it on my Portfolio.
