# Shark-Tank-India-SQL-Analysis
Comprehensive Data Analysis of Shark Tank India (Season 1) using SQL Server. This project explores startup trends, funding success rates, entrepreneur demographics, and shark-specific investment patterns through complex queries, joins, and window functions."

# 🦈 Shark Tank India Analysis
**Comprehensive Data Analysis using SQL Server**

---

### 📝 **Executive Summary**
This project analyzes **startup trends**, **funding success rates**, and **investor behavior** from Season 1 of Shark Tank India. By transforming raw pitch data into a structured **SQL database**, I uncovered key insights into the Indian startup ecosystem.

---

### 🚀 **The STAR Breakdown**

#### 📍 **Situation**
* **Context:** Analyzed data from **30 episodes** and **98 unique brand pitches**.
* **Goal:** Identify high-performing sectors and investor patterns.

#### 🎯 **Task (The Problem)**
* **The Challenge:** Raw data was fragmented and categorical.
* **Pain Point:** Manual analysis in Excel was slow and prone to errors when calculating **multi-shark involvement** or **sector-specific rankings**.

#### ⚙️ **Action (The Solution)**
I engineered a series of SQL scripts to automate insight generation:
* **Core Aggregates:** Used `SUM` and `CASE` statements to track **funding conversion** and **gender diversity**.
* **Complex Joins:** Built a **"Shark Leaderboard"** by joining multiple subqueries to track investment totals for each Shark.
* **Advanced Analytics:** Implemented **Window Functions** (`RANK() OVER PARTITION`) to isolate the top-funded startups within every industry.

#### 🏆 **Result (The Outcome)**
* **Success Rate:** Identified a **58% conversion rate** for all pitches.
* **Diversity:** Validated that **29 startups** with female founders secured funding.
* **Scalability:** Built a **reusable SQL framework** that processes new data in seconds.

---

### 🔗 **Connect with Me**
* **GitHub:** [PatlaveetiJabeer786](https://github.com/PatlaveetiJabeer786)
* **Portfolio:** [jabeer.lovable.app](https://jabeer.lovable.app/)
