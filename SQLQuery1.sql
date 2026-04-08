select * from shark

---1. Total episodes ---

select count( distinct epno) from shark 
select max( distinct epno) from shark 

---2. PITCHES ---

select count(distinct brand) from shark

---3. Piches converted ---

SELECT 
    CAST(SUM(converted) AS FLOAT) / CAST(COUNT(*) AS FLOAT) AS fund_received
FROM (
    SELECT 
        amountinvestedlakhs, 
        CASE WHEN amountinvestedlakhs > 0 THEN 1 ELSE 0 END AS converted 
    FROM shark
) a;

---4. Total number of male ---

select sum(male) from shark
select sum(Female) from shark

select sum(male)/sum(Female) from shark


---5. Toatal_Invested_

select * from shark


select sum(amountinvestedlakhs) from shark

---6. Equity taken ---

select avg(a.[Equity Taken %]) from 
(select * from shark where [Equity Taken %]  > 0) a

---7.Highest deal ---

select max(amountinvestedlakhs) from shark

---8. Highest euity taken by shark---

select max([Equity Taken %]) from shark


---9. AT least one women at pictures ---

select sum(present) girls_present from 
(select female, case when female >0 then 1 else 0 end as present from shark)a


---10. Pitches converted having at least 1 women ---

select * from shark

select sum( female_count) from 
(select case when female>0 then 1 else 0 end as female_count, a.*  from

(select * from shark where deal != 'no deal')a)b


---11.  Avg team members---

select avg([Team members]) from shark

---12. Amount invest per deal ---

select avg([per_deal]) AS avg_amount_invested from 
(select deal, sum(amountinvestedlakhs) per_deal from shark where deal!= 'deal' group by deal ) a


---13.avg age group of contestants ---

select * from shark

select [Avg age], count([AVg age]) from shark group by [Avg age]

---14.  location group of contestants

select location, count(Location) from shark group by Location

---15. sector group of contestants ---

select sector, count(sector) from shark group by Sector order by Sector desc

---16. --partner deals

select partners, count(partners) cnt from shark  where partners != '-' group by partners order by cnt  desc

---17. -- making the matrix ---

select 'Ashneer', count([Ashneer amount invested]) from shark where [Ashneer amount invested] is not null 


select 'Ashneer', count([Ashneer amount invested]) from shark where [Ashneer amount invested] is not null 
and [Ashneer amount invested] !=0

select 'Ashneer', sum([Ashneer amount invested]), avg([Ashneer amount invested]) from (
select * from shark where [Ashneer Equity Taken %] !=0 and [Ashneer Equity Taken %]  is not  null) a


select a.keey,a.total_deals_present, b.total_deals  from (

select 'Ashneer' as keey , count([Ashneer amount invested]) total_deals_present from shark where [Ashneer amount invested] is not null) a 

inner join (
select 'Ashneer' as keey , count([Ashneer amount invested]) total_deals from shark where [Ashneer amount invested] is not null 
and [Ashneer amount invested] !=0) b
on a.keey = b.keey 


---18. -- which is the startup in which the highest amount has been invested in each domain/sector ---

select * from shark


select * from (select brand,amountinvestedlakhs, sector, rank()over(partition by sector order by amountinvestedlakhs desc) rnk from shark ) a
where rnk=1