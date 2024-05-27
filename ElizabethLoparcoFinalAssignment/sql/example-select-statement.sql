USE ElizabethLoparcoDB;
SELECT nameFirst, nameLast, dbo.roundSalary(salary) AS RoundedSalary
FROM employees
