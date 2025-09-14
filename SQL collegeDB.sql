CREATE DATABASE IF NOT EXISTS CollegeDB;
USE CollegeDB;
SELECT DATABASE();

CREATE TABLE Students(
	StudentID INT auto_increment primary key,
    Name varchar(100),
    Age tinyint, 
    Email varchar(100),
    JoinDate date 
);

select * from Students;

INSERT INTO Students (Name, Age, Email, JoinDate)
values 
('Amit Gupta', 22, 'amit@email.com', '2025-02-20'),
('Aditi Sharma', 20, 'aditi@email.com', '2025-01-20');

ALTER TABLE Students ADD COLUMN City VARCHAR(50);
ALTER TABLE Students MODIFY Age SMALLINT;
ALTER TABLE STUDENTS RENAME COLUMN Email TO StudentEmail;

