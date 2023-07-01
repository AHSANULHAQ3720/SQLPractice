-- MULTI LINE FUNCTION

Select * from tbl_employee

--CREATION OF MULTI LINE FUNCTION

Create Function tblmultifunc()
RETURNS @Table Table(ID int, full_name nvarchar(50) , email nvarchar(50) , gender nvarchar(20)  , DOB date) 
AS
BEGIN
	INSERT INTO @Table 
	SELECT ID , CONCAT_WS(' ',first_name , last_name) , email,gender,DOB from tbl_employee
	
	RETURN

END

-- CALLING OF MULTI LINE FUNCTION

SELECT * from tblmultifunc()

-- UPDATE the dataset MULTI VALUE CANNOT BE MODIFIED DUE TO MANY INTERMEDIATE PROCESS PART OF IT
UPDATE tblmultifunc() SET gender = 'Male' Where ID = 1