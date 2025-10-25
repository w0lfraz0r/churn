-- 1. Total customers
select count (*) from customers c ;


-- 2. Churn rate
select round(avg(c.exited), 3) as churn_rate from customers c;

-- 3. Churn rate by country
select c.geography, round(avg(c.exited), 3) as churn_rate
from customers c 
group by c.geography
order by churn_rate desc;

-- 4. Churn by gender
select c.gender, round(AVG(c.exited ), 3) as churn_rate
from customers c 
group by c.gender ;

-- 5. Average balance by churn
select c.exited , round(AVG(c.balance::numeric), 3) as avg_balance
from customers c
group by c.exited ;


