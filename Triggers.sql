Select * from tblsales
Select * from salesinserttrigger

ALTER Trigger tr_tblsalesinsert 
ON tblsales
FOR INSERT 
AS
Begin
	
	Declare @ID int
	Select @ID = ProductID from inserted

	insert into salesinserttrigger VALUES(Cast(@ID as nvarchar(5)),'A value is added' + CAST(GetDate() as datetime))

End


INSERT INTO tblsales VALUES('3','95')

Select *  from tr_tblsalesinsert