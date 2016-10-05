CREATE PROCEDURE [dbo].[sp_insertEmployee]

@FirstName nvarchar(50),
@LastName nvarchar(50),
@Salary smallmoney,
@StartDate smalldatetime,
@Dept_ID int,
@Contract nvarchar(3)

AS

INSERT INTO
	Employee (
		FirstName,
		LastName,
		Salary,
		StartDate,
		Dept_ID,
		Contract
	)
VALUES
	(
		@FirstName,
		@LastName,
		@Salary,
		@StartDate,
		@Dept_ID,
		@Contract
	)


SELECT
	Employee.Emp_ID
FROM
	Employee
WHERE
	Employee.Emp_ID = @@Identity

GO
