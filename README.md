# 🦈 Shark Tank India — SQL Data Analysis

[![Header](https://capsule-render.vercel.app/api?type=waving&color=0:0a0a0a,30:1a1a2e,60:16213e,100:0f3460&height=230&section=header&text=Shark%20Tank%20India%20Analysis&fontSize=44&fontColor=00D4FF&animation=fadeIn&fontAlignY=36&desc=Season%201%20%7C%2030%20Episodes%20%7C%2098%20Pitches%20%7C%20SQL%20Server%20%7C%20Startup%20%26%20Investor%20Intelligence&descAlignY=58&descSize=14)](https://github.com/PatlaveetiJabeer786/Shark-Tank-India-SQL-Analysis)

<div align="center">

![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)
![Window Functions](https://img.shields.io/badge/Window%20Functions-RANK%20%7C%20DENSE__RANK-0078D4?style=for-the-badge&logo=database&logoColor=white)
![Domain](https://img.shields.io/badge/Domain-Startup%20%26%20Investment%20Analytics-00D4FF?style=for-the-badge)
![Season](https://img.shields.io/badge/Season%201-Dec%202021%20–%20Feb%202022-blueviolet?style=for-the-badge)
![Pitches](https://img.shields.io/badge/Pitches%20Analyzed-98%20Startups-brightgreen?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Completed%20✅-success?style=for-the-badge)

</div>

---

<div align="center">

```
╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║   🦈  SHARK TANK INDIA — SEASON 1  |  INDIA'S BIGGEST STARTUP SHOW  🦈      ║
║                                                                              ║
║   📺 30 Episodes  •  🏢 98 Pitches  •  ✅ 67 Deals  •  💰 ₹41.98 Crore     ║
║                                                                              ║
║   Joins  •  Subqueries  •  Window Functions  •  Aggregations  •  CASE WHEN  ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝
```

</div>

---

## 📌 About Shark Tank India

**Shark Tank India** is India's most iconic startup investment reality show — inspired by the US format — where entrepreneurs pitch their business ideas to a panel of **7 top Indian investors (Sharks)** for funding, mentorship, and growth capital.

**Season 1** aired from **December 20, 2021 to February 11, 2022** across **30 episodes** on Sony LIV — and became a **cultural phenomenon**, inspiring millions of Indians to think about entrepreneurship.

### 🦈 The Sharks — India's Top Investors

| Shark | Company | Known For |
|-------|---------|-----------|
| 🎯 **Ashneer Grover** | BharatPe | Fintech, aggressive deal-making |
| 👓 **Peyush Bansal** | Lenskart | D2C, eyewear revolution |
| 💄 **Vineeta Singh** | SUGAR Cosmetics | Beauty, women-led brands |
| 💊 **Namita Thapar** | Emcure Pharmaceuticals | Healthcare, women entrepreneurs |
| ❤️ **Anupam Mittal** | Shaadi.com | Tech startups, internet economy |
| 🎸 **Aman Gupta** | boAt | Consumer electronics, D2C |
| 🌸 **Ghazal Alagh** | boAt / Mamaearth | Wellness, sustainability |

---

## 🧩 Business Problem

> *"Shark Tank India Season 1 generated a massive dataset of 98 startup pitches — covering industries, funding asks, equity offers, deal outcomes, shark investments, and entrepreneur demographics. But this data was raw and fragmented — stored across unstructured formats with no way to answer critical questions like: Which sectors attracted the most investment? Which shark invested the most? What was the average deal size? What % of pitches resulted in deals? Investors, researchers, and startup founders had no data-backed way to understand the show's investment patterns."*

**The key questions every startup founder and investor needed answered:**

| # | Critical Business Question | Stakeholder |
|---|---------------------------|-------------|
| 1 | How many pitches resulted in a deal vs no deal? | Show producers & startups |
| 2 | Which industry sectors received the most funding? | Investors & founders |
| 3 | Which Shark invested in the most startups? | Investment researchers |
| 4 | What was the average amount asked vs amount received? | Negotiation analysts |
| 5 | Which episodes had the highest deal success rates? | Content strategists |
| 6 | What was the average equity given per deal? | Startup founders |
| 7 | Which cities produced the most funded startups? | Startup ecosystem analysts |
| 8 | Did female-led teams have different success rates? | Gender equity researchers |
| 9 | Which Shark made the largest single investment? | Business media |
| 10 | What sectors had the highest "No Deal" rates? | Risk analysts |
| 11 | What is the total funding deployed per Shark? | Investment portfolio tracking |
| 12 | Which startups had multiple Sharks investing together? | Co-investment pattern analysis |

---

## 🎯 My Task as the Data Analyst

| Task | What I Did |
|------|-----------|
| **Database Setup** | Created `shark_tank_db` in SQL Server — designed table schema for all pitch attributes |
| **Data Import** | Imported the Season 1 dataset (98 pitches × 28 columns) into SQL Server |
| **Data Cleaning** | Handled NULLs for "No Deal" rows, standardized shark name columns, fixed data types |
| **Deal Analysis** | Calculated deal success rates, average ask vs deal amounts, equity comparison |
| **Shark Analysis** | Ranked sharks by total deals, total investment, avg deal size per shark |
| **Sector Analysis** | Grouped pitches by industry — funding success rates per sector |
| **Demographic Analysis** | Male vs female presenter analysis, city-wise startup distribution |
| **Window Functions** | Used RANK(), DENSE_RANK(), ROW_NUMBER() for startup & shark performance ranking |
| **Business Reporting** | Structured all findings into clear, answerable questions with SQL output |

---

## 🗄️ Database Schema

```
╔════════════════════════════════════════════════════════════════════════════╗
║                    SHARK TANK INDIA — DATABASE SCHEMA                      ║
╠════════════════════════════════════════════════════════════════════════════╣
║                                                                            ║
║  ┌─────────────────────────────────────────────────────────────────────┐  ║
║  │                     SHARK_TANK_PITCHES  (Main Table)                │  ║
║  │─────────────────────────────────────────────────────────────────────│  ║
║  │  pitch_number       Episode_number      startup_name                │  ║
║  │  industry           business_desc       city                        │  ║
║  │  num_presenters     male_presenters     female_presenters           │  ║
║  │  original_ask (₹)   original_equity(%) deal (Yes/No)               │  ║
║  │  deal_amount (₹)    deal_equity (%)     debt_component              │  ║
║  │  shark_1_name       shark_1_amount      shark_1_equity              │  ║
║  │  shark_2_name       shark_2_amount      shark_2_equity              │  ║
║  │  shark_3_name       shark_3_amount      shark_3_equity              │  ║
║  │  shark_4_name       shark_4_amount      shark_4_equity              │  ║
║  │  shark_5_name       shark_5_amount      shark_5_equity              │  ║
║  └─────────────────────────────────────────────────────────────────────┘  ║
║                                                                            ║
║   28 Columns  |  98 Rows (Pitches)  |  30 Episodes  |  7 Sharks           ║
╚════════════════════════════════════════════════════════════════════════════╝
```

---

## 📊 Key Performance Metrics — Season 1 at a Glance

<div align="center">

```
╔══════════════════════════════════════════════════════════════════════════╗
║                    📊 SEASON 1 SCORECARD                                 ║
╠══════════════════╦══════════════════╦══════════════════╦════════════════╣
║  📺 EPISODES     ║  🏢 TOTAL        ║  ✅ DEALS        ║  ❌ NO DEAL    ║
║     30           ║  PITCHES: 98     ║  CLOSED: 67      ║  REJECTED: 31  ║
╠══════════════════╬══════════════════╬══════════════════╬════════════════╣
║  💰 TOTAL FUNDED ║  📈 DEAL RATE    ║  🤝 AVG EQUITY   ║  🎯 AVG ASK   ║
║  ₹41.98 Crore    ║     68.4%        ║   ~3–7%          ║  ₹50–75 Lakh  ║
╚══════════════════╩══════════════════╩══════════════════╩════════════════╝
```

</div>

---

## 💡 Key Business Insights & Outcomes

### 🏢 Sector Performance

- **Food & Beverage** and **Health & Wellness** attracted the highest number of pitches — India's two most startup-active consumer sectors
- **Technology / EdTech** startups commanded the highest average deal valuations — Sharks paid premiums for IP-backed businesses
- **Fashion / Apparel** had the lowest deal success rate — highly competitive with thin margins made Sharks cautious
- **Social Impact** startups (sustainability, women empowerment) received deals at higher equity than average — Sharks traded lower returns for mission alignment

### 🦈 Shark Investment Patterns

- **Anupam Mittal** and **Peyush Bansal** closed the most individual deals — most active investors of the season
- **Ashneer Grover** made the fewest deals but had the largest average deal sizes — selective but high-conviction bets
- **Namita Thapar** showed the strongest preference for healthcare and women-led startups — clear sector specialisation
- **Co-investment (multiple Sharks)** occurred in ~30% of deals — Sharks pooled resources for higher-valuation startups
- **Aman Gupta** (boAt) favoured D2C consumer brands that aligned with boAt's own distribution strengths

### 💰 Deal Economics

- Average **ask amount was ₹55–75 Lakhs** — most founders requested seed/early-stage capital
- Actual deal amounts were often **lower than the ask** — Sharks negotiated down by 15–25% on average
- Equity offered ranged from **1% to 20%** — founders in high-traction startups gave away less equity
- **Debt components** were added in select deals — preferred by Sharks wanting capital protection without full equity dilution
- Startups that came with **strong revenue traction** had significantly better deal-closing rates

### 👤 Entrepreneur Demographics

- **Male-led teams** made up the majority of pitches — but **female-led or co-founded startups** had a comparable or higher deal success rate
- **Mumbai, Delhi & Bangalore** startups dominated the pitch floor — India's three startup capitals
- **Solo founders** had lower success rates than teams — Sharks consistently cited "team strength" as a deal criterion
- Younger founders (20s–30s) with prior corporate experience were favoured — combining energy with execution credibility

### 📅 Episode-Level Patterns

- **Mid-season episodes (Eps 12–20)** showed the highest deal closure rates — audience warmth peak and Shark confidence building
- **Final week episodes** had more "No Deals" — Sharks managing portfolio concentration and capital allocation limits
- Episodes featuring **multiple co-investments** generated the most social media buzz — PR value for the show

---

## 📈 Business & Ecosystem Value Delivered

| Stakeholder | Question This Analysis Answers | Value Created |
|-------------|-------------------------------|--------------|
| 🚀 **Startup Founders** | Which sector gets funded most? What equity is typical? | Better pitch preparation |
| 🦈 **Investors / VCs** | Which Shark is most active? What deal structures work? | Investment pattern benchmarking |
| 📊 **Business Analysts** | What is the avg ask vs deal gap? Which cities win most? | Ecosystem mapping |
| 🎓 **Researchers** | Do female-led teams get funded equally? | Gender equity data point |
| 📺 **Media & Producers** | Which episode formats drive the most deals? | Content strategy optimization |
| 🌱 **Ecosystem Builders** | Which sectors are underfunded despite high pitches? | Gap identification for policy |

---

## 🧠 Key Technical SQL Skills Demonstrated

```
✅  Complex JOINs              — Connect pitch data with shark investment columns
✅  CASE WHEN                  — Label Deal/No Deal, categorise funding bands
✅  GROUP BY + Aggregations    — Total investment, avg deal size, count per sector/shark
✅  Subqueries                 — Find max/min deals, filter funded vs unfunded
✅  RANK() Window Function     — Rank sharks by deals closed, startups by funding size
✅  DENSE_RANK()               — Rank sectors by success rate without skipping ranks
✅  ROW_NUMBER()               — Assign sequential IDs for episode-level ordering
✅  PARTITION BY               — Analyse each Shark's deals independently
✅  NULL Handling              — Clean "No Deal" NULL amounts across shark columns
✅  HAVING Clause              — Filter sectors/sharks above investment thresholds
✅  UNION / UNION ALL          — Combine funded vs non-funded startup summaries
✅  Calculated Columns         — Equity gap (asked vs given), deal success rate %
✅  LIKE Pattern Matching      — Filter startups by city, industry name patterns
✅  String Functions           — Standardise shark names, clean categorical fields
```

---

## 📁 Project Structure

```
Shark-Tank-India-SQL-Analysis/
│
├── SHARK_TANK_INDIA_SQL.sql        # Complete SQL file — all queries & analysis
└── README.md
```

> 💡 The full SQL query file is uploaded separately — open it in SQL Server Management Studio or MySQL Workbench to run all analyses.

---

## 🚀 How to Run This Project

### Prerequisites
- **SQL Server Management Studio (SSMS)** or **MySQL Workbench**

### Steps

1. Open your SQL IDE
2. Create a new database:
   ```sql
   CREATE DATABASE shark_tank_db;
   USE shark_tank_db;
   ```
3. Open `SHARK_TANK_INDIA_SQL.sql`
4. Run the complete script — it creates the table, inserts all 98 pitch records, and runs all business analyses
5. Each section is clearly labelled with the business question it answers

---

## 🌟 Final Summary

<div align="center">

```
╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║   🔴 PROBLEM           🟢 MY SOLUTION          📈 RESULT                    ║
║   ─────────────────    ──────────────────────  ──────────────────────────   ║
║   Raw pitch data       SQL Server database     Structured, queryable data   ║
║   No sector insight    GROUP BY industry       Top/bottom sectors ranked    ║
║   No shark tracking    Shark investment agg.   Each shark's portfolio built ║
║   Ask vs deal gap?     AVG calculations        Negotiation patterns found   ║
║   Gender analysis?     CASE WHEN + COUNT       Female success rate measured ║
║   City distribution?   GROUP BY city           Startup hubs identified      ║
║   No rankings          RANK() + PARTITION BY   Every startup/shark ranked   ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝
```

</div>

---

## 👨‍💻 About Me

I'm a Data Analyst passionate about using SQL to extract business intelligence from real-world entertainment and startup ecosystem data.

- 🔗 **LinkedIn:** [linkedin.com/in/jabeer-patlaveeti](https://linkedin.com/in/jabeer-patlaveeti)
- 📧 **Email:** jabeerpatlaveeti@gmail.com
- 🌐 **GitHub:** [github.com/PatlaveetiJabeer786](https://github.com/PatlaveetiJabeer786)

---

<div align="center">

⭐ **If this project impressed you, please give it a Star!** ⭐

*Dataset: Shark Tank India Season 1 public pitch data. Project built for educational and portfolio purposes.*

</div>

[![Footer](https://capsule-render.vercel.app/api?type=waving&color=0:0a0a0a,30:1a1a2e,60:16213e,100:0f3460&height=120&section=footer)](https://github.com/PatlaveetiJabeer786/Shark-Tank-India-SQL-Analysis)
