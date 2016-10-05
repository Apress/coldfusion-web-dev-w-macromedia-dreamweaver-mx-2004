CREATE PROCEDURE [dbo].[sp_getEmployees_byDeptID]

@Dept_ID int

AS

SELECT *
FROM Employee
WHERE Employee.Dept_ID = @Dept_ID
ORDER BY Employee.LastName, Employee.FirstName
