CREATE   PROCEDURE EDW.DateGenerator(@endDate date = '2090-12-31')
AS

BEGIN
SET NOCOUNT ON
---declare @endDate date ='2090-12-31'
declare @startDate date = (select min(convert(date, mindate)) from
	(
	select min(TransDate) minDate from TescaOLTP.dbo.SalesTransaction
	union all
	select min(TransDate) from TescaOLTP.dbo.PurchaseTransaction
	) a
	)	

declare @nofDays int = datediff(day, @startDate, @endDate)
declare @Currentday int = 0
declare @CurrentDate date

IF (select OBJECT_ID('EDW.DimDate')) is not null
	TRUNCATE TABLE EDW.DimDate

while @Currentday <= @nofDays
begin
	---print(dateadd(day,@Currentday,@startDate))
	select @CurrentDate = (Dateadd(day,@Currentday,@StartDate))
	insert into EDW.DimDate(dateSK,BusinessDate,BusinessYear,BusinessMonth,BusinessQuarter,EnglishMonth,EnglishDayofWeek,SpanishMonth,
				SpanishDayofWeek,FrenchMonth,FrenchDayofWeek,LoadDate)
		select convert(int,convert(nvarchar,@CurrentDate,112)),@CurrentDate,Year(@CurrentDate),Month(@CurrentDate),
		'Q' + cast(datepart(Q,@CurrentDate) as nvarchar),datename(month,@CurrentDate),datename(DW,@CurrentDate),
		case datepart(Month,@CurrentDate)
			when 1 then 'Enero' when 2 then 'Febrero' when 3 then 'Marzo' when 4 then 'Abril' when 5 then 'Mayo' when 6 then 'Junio'
			when 7 then 'Julio' when 8 then 'Agosto' when 9 then 'Septiembre' when 10 then 'Octubre' when 11 then 'Noviembre'
			when 12 then 'Diciembre'
		End,
		 
		case datepart(weekday, @CurrentDate)
			when 1 then 'Domingo' when 2 then 'Lunes' when 3 then 'Martes' when 4 then 'Miercoles' when 5 then 'Jueves'
			when 6 then 'Viernes' when 7 then 'Sabado'
		End,

		case datepart(Month,@CurrentDate)
			when 1 then 'Janvier' when 2 then 'F�vrier' when 3 then 'Mars' when 4 then 'Avril' when 5 then 'Mai' when 6 then 'Juin'
			when 7 then 'Juillet' when 8 then 'Ao�t' when 9 then 'Septembre' when 10 then 'Octobre' when 11 then 'Novembre'
			when 12 then 'D�cembre'
		End,
		 
		case datepart(weekday, @CurrentDate)
			when 1 then 'Dimanche' when 2 then 'Lundi' when 3 then 'Mardi' when 4 then 'Mercredi' when 5 then 'Jeudi'
			when 6 then 'Vendredi' when 7 then 'Samedi'
		End,
		getdate()
	select @Currentday=@Currentday+1
end
END




---use TescaOLTP
---select ISNULL(p.Quantity, 34) from PurchaseTransaction p

---select coalesce(p.Employee,p.LineAmount,p.Quantity, 3444) from PurchaseTransaction p

--select * from INFORMATION_SCHEMA.columns
--select * from INFORMATION_SCHEMA.tables
--select * from sys.all_columns




