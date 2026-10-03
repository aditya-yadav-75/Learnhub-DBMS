-- LearnHub: Required and Supporting Queries

-- 1. Display all students
SELECT * FROM Student;

-- 2. Display all courses with instructor details
SELECT
    c.CourseID,
    c.CourseName,
    i.InstructorName,
    i.Department
FROM Course c
JOIN Instructor i
    ON c.InstructorID = i.InstructorID;

-- 3. Students not enrolled in any course offered by instructor 101
SELECT
    s.StudentID,
    s.StudentName,
    s.Email
FROM Student s
WHERE s.StudentID NOT IN (
    SELECT e.StudentID
    FROM Enrollment e
    JOIN Course c
        ON e.CourseID = c.CourseID
    WHERE c.InstructorID = 101
);

-- 4. Average assessment score per course
SELECT
    c.CourseID,
    c.CourseName,
    ROUND(AVG(a.Score), 2) AS AverageScore
FROM Course c
JOIN Enrollment e
    ON c.CourseID = e.CourseID
JOIN Assessment a
    ON e.EnrollmentID = a.EnrollmentID
GROUP BY c.CourseID, c.CourseName
ORDER BY c.CourseID;

-- 5. Enrollment count per course
SELECT
    c.CourseID,
    c.CourseName,
    COUNT(e.EnrollmentID) AS EnrollmentCount
FROM Course c
LEFT JOIN Enrollment e
    ON c.CourseID = e.CourseID
GROUP BY c.CourseID, c.CourseName
ORDER BY c.CourseID;

-- 6. Completed enrollments
SELECT
    s.StudentName,
    c.CourseName,
    e.EnrollDate
FROM Enrollment e
JOIN Student s
    ON e.StudentID = s.StudentID
JOIN Course c
    ON e.CourseID = c.CourseID
WHERE e.CompletionStatus = 'Completed';

-- 7. Students with their enrolled courses
SELECT
    s.StudentName,
    c.CourseName,
    e.CompletionStatus
FROM Student s
JOIN Enrollment e
    ON s.StudentID = e.StudentID
JOIN Course c
    ON e.CourseID = c.CourseID
ORDER BY s.StudentName;
