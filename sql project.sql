Create Database Employee
use Employee

--Total employees
select count(*) as total_employee
from [dbo].[Employee_1000_Dataset]

-- Total employees by department
select Department, COUNT(*) as Employee_count
from [dbo].[Employee_1000_Dataset]
group by Department

-- Attrition rate by department
SELECT 
    Department,
    COUNT(*) AS Total_Employee,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Total_Left,
    ROUND(
        SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 
        2
    ) AS Attrition_Rate
FROM [dbo].[Employee_1000_Dataset]
GROUP BY Department;

--Rank departments by attrition
select
Department,
Attrition_Rate,
rank() over(
order by Attrition_Rate desc
) as Attrition_Rank
from(
select
Department,
round(
sum(Case when Attrition =1 then 1 else 0 end)*100.0/ count(*),2) as Attrition_Rate
from [dbo].[Employee_1000_Dataset]
Group by Department
) as A;

---Highest-paid employees in each department
select *
from (
select *, ROW_NUMBER() over( Partition by Department
order by Monthly_Income desc)
as rn
from [dbo].[Employee_1000_Dataset]) x
where rn=1;


---SQL CTE
WITH DepartmentStats AS
(
    SELECT
        Department,
        COUNT(*) AS Total_employee,
        SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Employee_Left
    FROM [dbo].[Employee_1000_Dataset]
    GROUP BY Department
)
SELECT
    Department,
    Total_employee,
    Employee_Left,
    ROUND(100.0 * Employee_Left / Total_employee, 2) AS Attrition_rate
FROM DepartmentStats;