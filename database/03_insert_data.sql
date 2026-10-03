-- LearnHub: Sample Data

INSERT INTO Student (StudentID, StudentName, Email, Phone)
VALUES
(1, 'Aditya Yadav', 'aditya@example.com', '9876543210'),
(2, 'Aarav Sharma', 'aarav@example.com', '9876543211'),
(3, 'Riya Patel', 'riya@example.com', '9876543212'),
(4, 'Kabir Mehta', 'kabir@example.com', '9876543213'),
(5, 'Ananya Joshi', 'ananya@example.com', '9876543214'),
(6, 'Vihaan Shah', 'vihaan@example.com', '9876543215'),
(7, 'Ishita Rao', 'ishita@example.com', '9876543216'),
(8, 'Arjun Nair', 'arjun@example.com', '9876543217');

INSERT INTO Instructor (InstructorID, InstructorName, Department)
VALUES
(101, 'Dr. Neha Sharma', 'Computer Science'),
(102, 'Prof. Rahul Patil', 'Information Technology'),
(103, 'Dr. Sneha Kulkarni', 'Artificial Intelligence');

INSERT INTO Course (CourseID, CourseName, InstructorID, Credits)
VALUES
(201, 'Database Management Systems', 101, 4),
(202, 'Computer Networks', 102, 4),
(203, 'Java Programming', 101, 3),
(204, 'Artificial Intelligence', 103, 4),
(205, 'Web Development', 102, 3),
(206, 'Data Structures', 103, 4);

INSERT INTO Enrollment
(EnrollmentID, StudentID, CourseID, EnrollDate, CompletionStatus)
VALUES
(301, 1, 201, '2026-07-01', 'Completed'),
(302, 2, 201, '2026-07-02', 'Completed'),
(303, 3, 201, '2026-07-03', 'Enrolled'),
(304, 4, 202, '2026-07-04', 'Completed'),
(305, 5, 202, '2026-07-05', 'Enrolled'),
(306, 1, 203, '2026-07-06', 'Completed'),
(307, 6, 203, '2026-07-07', 'Enrolled'),
(308, 7, 204, '2026-07-08', 'Completed'),
(309, 2, 204, '2026-07-09', 'Enrolled'),
(310, 8, 205, '2026-07-10', 'Completed'),
(311, 3, 205, '2026-07-11', 'Enrolled'),
(312, 5, 206, '2026-07-12', 'Completed'),
(313, 6, 206, '2026-07-13', 'Enrolled');

INSERT INTO Assessment
(AssessmentID, EnrollmentID, AssessmentName, Score, AssessmentDate)
VALUES
(401, 301, 'Midterm Exam', 88, '2026-08-01'),
(402, 301, 'Final Exam', 92, '2026-09-01'),
(403, 302, 'Midterm Exam', 76, '2026-08-01'),
(404, 302, 'Final Exam', 84, '2026-09-01'),
(405, 303, 'Midterm Exam', 81, '2026-08-02'),
(406, 304, 'Midterm Exam', 90, '2026-08-03'),
(407, 304, 'Final Exam', 94, '2026-09-03'),
(408, 305, 'Midterm Exam', 72, '2026-08-03'),
(409, 306, 'Programming Test', 95, '2026-08-04'),
(410, 306, 'Final Exam', 91, '2026-09-04'),
(411, 307, 'Programming Test', 79, '2026-08-04'),
(412, 308, 'AI Assignment', 87, '2026-08-05'),
(413, 308, 'Final Exam', 93, '2026-09-05'),
(414, 309, 'AI Assignment', 74, '2026-08-05'),
(415, 310, 'Web Project', 89, '2026-08-06'),
(416, 310, 'Final Exam', 91, '2026-09-06'),
(417, 311, 'Web Project', 78, '2026-08-06'),
(418, 312, 'DSA Test', 86, '2026-08-07'),
(419, 312, 'Final Exam', 90, '2026-09-07'),
(420, 313, 'DSA Test', 73, '2026-08-07');

}