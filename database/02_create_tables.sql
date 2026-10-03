-- LearnHub: Table Creation

DROP TABLE IF EXISTS Assessment CASCADE;
DROP TABLE IF EXISTS Enrollment CASCADE;
DROP TABLE IF EXISTS Course CASCADE;
DROP TABLE IF EXISTS Instructor CASCADE;
DROP TABLE IF EXISTS Student CASCADE;

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Phone VARCHAR(15) NOT NULL
);

CREATE TABLE Instructor (
    InstructorID INT PRIMARY KEY,
    InstructorName VARCHAR(100) NOT NULL,
    Department VARCHAR(100) NOT NULL
);

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    InstructorID INT NOT NULL,
    Credits INT NOT NULL CHECK (Credits > 0),
    FOREIGN KEY (InstructorID)
        REFERENCES Instructor(InstructorID)
);

CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    EnrollDate DATE NOT NULL,
    CompletionStatus VARCHAR(20) NOT NULL
        CHECK (CompletionStatus IN ('Enrolled', 'Completed', 'Dropped')),
    FOREIGN KEY (StudentID)
        REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID)
        REFERENCES Course(CourseID),
    UNIQUE (StudentID, CourseID)
);

CREATE TABLE Assessment (
    AssessmentID INT PRIMARY KEY,
    EnrollmentID INT NOT NULL,
    AssessmentName VARCHAR(100) NOT NULL,
    Score DECIMAL(5,2) NOT NULL
        CHECK (Score >= 0 AND Score <= 100),
    AssessmentDate DATE NOT NULL,
    FOREIGN KEY (EnrollmentID)
        REFERENCES Enrollment(EnrollmentID)
);
