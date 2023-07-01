--GENERATION OF FUNCTION

CREATE Function tblinlinefunc(@gender nvarchar(20))
RETURNS TABLE
AS
Return (Select * from tbl_employee Where gender =  @gender)

-- TO CALL INLINE FUNCTION

Select *  from tblinlinefunc('Female') Where first_name Like 'C%' AND last_name Like '%H%'