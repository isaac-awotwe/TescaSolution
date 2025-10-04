
create procedure EDW.TimeGenerator
AS
BEGIN
set nocount on

declare @startTime int = 0

if object_id('EDW.DimTime') is not null
	truncate table EDW.DimTime

while @startTime <=23
Begin
insert into EDW.DimTime(TimeHour,TimeInterval,BusinessHour,PeriodofDay,LoadDate)
select @startTime,
		case
			when @startTime < 10 then CONCAT(CONCAT('0',cast(@startTime as nvarchar)),':00-',CONCAT('0',cast(@startTime as nvarchar)),':59')
			else CONCAT(CAST(@startTime as nvarchar),':00-',CAST(@startTime as nvarchar),':59')
		End,

		case
			when @startTime <= 7 then 'Closed'
			when @startTime > 7 and @startTime <= 17 then 'Opened'
			when @startTime > 17 and @startTime <= 23 then 'Closed'
		End,

		case
			when @startTime = 0 then 'Midnight'
			when @startTime >= 1 and @startTime <=4 then 'Early Morning'
			when @startTime >=5 and @startTime <= 11 then 'Morning'
			when @startTime = 12 then 'Noon'
			when @startTime >= 13 and @startTime <= 17 then 'Afternoon'
			when @startTime >= 18 and @startTime <= 21 then 'Evening'
			when @startTime in (22, 23) then 'Night'
		End,
		getdate()

select @startTime = @startTime +1

End

END