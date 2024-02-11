USE Puzzles
GO

/*----------------------------------------------------
DDL for Puzzle #2
Managers and Employees
*/----------------------------------------------------

DROP TABLE IF EXISTS Employees;
GO

CREATE TABLE Employees
(
    EmployeeID INTEGER PRIMARY KEY,
    ManagerID INTEGER NULL,
    JobTitle VARCHAR(100) NOT NULL
);
GO

INSERT INTO Employees
    (EmployeeID, ManagerID, JobTitle)
VALUES
    (1001, NULL, 'President'),
    (2002, 1001, 'Director'),
    (3003, 1001, 'Office Manager'),
    (4004, 2002, 'Engineer'),
    (5005, 2002, 'Engineer'),
    (6006, 2002, 'Engineer');
GO

/*----------------------------------------------------
Answer
*/----------------------------------------------------
USE Puzzles
with
    cte_emps(EmployeeID, ManagerID, JobTitle, Depth)
    AS
    (
        SELECT *, 0 as [Depth]
        FROM Employees
        WHERE ManagerID is NULL
        
        UNION ALL

        SELECT
            e.EmployeeID,
            e.ManagerID,
            e.JobTitle,
            Depth + 1 as [Depth]
        FROM
            dbo.Employees e
        INNER JOIN cte_emps c ON c.EmployeeID = e.ManagerID
    )
SELECT
    EmployeeID AS [Employee ID],
    ManagerID AS [Manager ID],
    JobTitle AS [Job Title],
    Depth
FROM
    cte_emps;
