/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [ID]
      ,[Name] as 'Athlete Name'
	  ,case when sex= 'M' then 'Male' else 'Female' end as Sex
      ,[Age]
	  , case when age < 18 then 'Under 18'
			 when age between 18 and 25 then '18-25'
			 when age between 25 and 30 then '25-30'
			 when age > 30 then 'Over 30'
		end as 'Age Grouping'
      ,[Height]
      ,[Weight]
      ,ath.[NOC] as 'National Code'
	  --, 
	  ,left(games,CHARINDEX(' ',games) -1) as 'Year'
	  ,right(games,CHARINDEX(' ',REVERSE(games)) -1) as 'Season'
      ,[Sport]
      ,[Event]
      ,case when Medal = 'NA' then 'Not Registered' else Medal end as Medal
	  
  FROM [OlympicGames].[dbo].[athletes_event_results] ath
  where right(games,CHARINDEX(' ',REVERSE(games)) -1)= 'Summer'
  

-- counting the numbers of athletes 
select count(distinct(name))
from athletes_event_results


--count numbers of medals
select count(medal) 
from athletes_event_results

-- # of competitors by gender
select sex 
	   ,count(case when sex='M' then 1 when sex='F' then 1 end) as countGenders
	   ,count(case when sex='M' then 1 end)/count(sex)
from athletes_event_results
group by sex

select *
from athletes_event_results
