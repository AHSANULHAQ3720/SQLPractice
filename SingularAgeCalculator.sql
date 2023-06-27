CREATE function factcomputeAge(@dob datetime)
returns nvarchar(50)
as
Begin

DECLARE @tempdate datetime , @years int , @month int , @day int

SELECT @tempdate = @dob
Select @years = DATEDIFF(Year,@tempdate,GetDate()) -
				CASE
					WHEN (MONTH(@dob) >= MONTH(GetDate())) AND DAY(@dob) > DAY(Getdate()) 
					THEN 1 ELSE 0
				END

select @tempdate = DATEADD(Year , @years,  @tempdate)

Select @month = DATEDIFF(MONTH,@tempdate,GetDate()) -
				CASE
					WHEN DAY(@dob) > DAY(Getdate()) 
					THEN 1 ELSE 0
				END

select @tempdate = DATEADD(Month , @month,  @tempdate)

select @day = datediff(DAY , @tempdate, GETDATE())

Declare @age nvarchar(50)
	SET @age =  CAST(@years as nvarchar(2)) + ' years' + CAST(@month as nvarchar(2)) + ' months' + CAST(@day as nvarchar(2)) + ' days' 
	return @age

END

Select dbo.factcomputeAge('10/30/2001')

Select ID,first_name,last_name,email,DOB,dbo.factcomputeAge(DOB) from tbl_employee