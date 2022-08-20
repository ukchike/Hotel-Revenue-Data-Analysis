with hotelrevenue as (
	Select * from yr2018
	union
	select * from yr2019
	union
	Select * from yr2020)

select * from hotelrevenue

Select arrival_date_year, arrival_date_month, arrival_date_day_of_month, reservation_status_date
from dbo.hotelrevenue
order by 1, 2


Create view hotelrevenue as
(select * from yr2018
union
select * from yr2019
union
Select * from yr2020)

select * from hotelrevenue


Select arrival_date_month
,	Case When arrival_date_month = 'January' then '01'
		 When arrival_date_month = 'February' then '02'
		 When arrival_date_month = 'March' then '03'
		 When arrival_date_month = 'April' then '04'
		 When arrival_date_month = 'May' then '05'
		 When arrival_date_month = 'June' then '06'
		 When arrival_date_month = 'July' then '07'
		 When arrival_date_month = 'August' then '08'
		 When arrival_date_month = 'September' then '09'
		 When arrival_date_month = 'October' then '10'
		 When arrival_date_month = 'November' then '11'
		 When arrival_date_month = 'December' then '12'
		 Else arrival_date_month
		 End
as arrivalmonth
from dbo.hotelrevenue 

select *
--Select arrival_date_month
,	Case When arrival_date_month = 'January' then '01'
		 When arrival_date_month = 'February' then '02'
		 When arrival_date_month = 'March' then '03'
		 When arrival_date_month = 'April' then '04'
		 When arrival_date_month = 'May' then '05'
		 When arrival_date_month = 'June' then '06'
		 When arrival_date_month = 'July' then '07'
		 When arrival_date_month = 'August' then '08'
		 When arrival_date_month = 'September' then '09'
		 When arrival_date_month = 'October' then '10'
		 When arrival_date_month = 'November' then '11'
		 When arrival_date_month = 'December' then '12'
		 Else arrival_date_month
		 End
as arrivalmonth
from dbo.hotelrevenue

create table rev as
	(select *
	--Select arrival_date_month
	,	Case When arrival_date_month = 'January' then '01'
			 When arrival_date_month = 'February' then '02'
			 When arrival_date_month = 'March' then '03'
			 When arrival_date_month = 'April' then '04'
			 When arrival_date_month = 'May' then '05'
			 When arrival_date_month = 'June' then '06'
			 When arrival_date_month = 'July' then '07'
			 When arrival_date_month = 'August' then '08'
			 When arrival_date_month = 'September' then '09'
			 When arrival_date_month = 'October' then '10'
			 When arrival_date_month = 'November' then '11'
			 When arrival_date_month = 'December' then '12'
			 Else arrival_date_month
			 End
	as arrivalmonth
	from hotelrevenue
)
select * from rev
