CREATE TABLE Employee(
	EmpID int,
	Ename varchar(100),
	Department varchar(100),
	ManagerID int
)


INSERT INTO Employee VALUES
	(1, 'Alice', 'HR', NULL),
	(2, 'Bob', 'Finance', 1),
	(3, 'Charlie', 'IT', 1),
	(4, 'David', 'Finance', 2),
	(5, 'Eve', 'IT', 3),
	(6, 'Frank', 'HR', 1)

SELECT E1.Ename AS [Employee Name], E2.Ename AS [Manager Name],
		E1.Department AS [Employee Department], E2.Department AS [Manager Department]
FROM Employee AS E1
LEFT OUTER JOIN
Employee AS E2
ON
E1.ManagerID = E2.EmpID