create procedure sptotalemployeecount1
@EmployeeTotal int Out
AS
BEGIN
	Select @EmployeeTotal = Count(ID) from tbo_person
END

DECLARE @TotalEmployee int
EXECUTE sptotalemployeecount1 @TotalEmployee OUTPUT
PRINT 'Total Employee Count: ' + CAST(@TotalEmployee AS NVARCHAR(10))


--CREATE PRODCEDURE WITHOUT OUTPUT VARIABLE
create procedure sptotalemployeecount2
AS
BEGIN
	return (Select Count(ID) from tbo_person)
END

DECLARE @TotalEmployee int
EXECUTE @TotalEmployee = sptotalemployeecount2
PRINT 'Total Employee Count: ' + CAST(@TotalEmployee AS NVARCHAR(10))

	