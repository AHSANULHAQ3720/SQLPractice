-- ENCRYPTING FUNCTION
ALTER Function funcsearchbyid(@id int)
Returns nvarchar(30) 
WITH SCHEMABINDING
as
BEGIN
	return(Select Concat_WS(' ',first_name,last_name) from dbo.tbl_employee Where ID = @id)
END

DROP table tbl_employee

Select dbo.funcsearchbyid(1) As full_name

sp_helptext funcsearchbyid