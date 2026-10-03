-- LearnHub: Instructor Dashboard View

CREATE OR REPLACE VIEW InstructorDashboard AS
SELECT
    i.InstructorID,
    i.InstructorName,
    c.CourseID,
    c.CourseName,
    COUNT(DISTINCT e.EnrollmentID) AS EnrollmentCount,
    ROUND(AVG(a.Score), 2) AS AverageScore
FROM Instructor i
JOIN Course c
    ON i.InstructorID = c.InstructorID
LEFT JOIN Enrollment e
    ON c.CourseID = e.CourseID
LEFT JOIN Assessment a
    ON e.EnrollmentID = a.EnrollmentID
GROUP BY
    i.InstructorID,
    i.InstructorName,
    c.CourseID,
    c.CourseName;

SELECT *
FROM InstructorDashboard
ORDER BY InstructorID, CourseID;
SELECT
    current_database() AS database_name,
    table_name
FROM information_schema.tables
WHERE table_schema = 'public'
  AND table_type = 'BASE TABLE'
ORDER BY table_name;