select * from Courses;
select * from Students;

-- JOIN/INNER JOIN
select * from Students
INNER JOIN Courses ON 
Students.courseID = Courses.id;


-- Left 
select * from Students Left JOIN Courses ON  Students.courseID = Courses.id;

-- Right
select * from Students
Right JOIN Courses ON 
Students.courseID = Courses.id;

-- You have to implement right join but using left join
select * from Courses
LEFT JOIN Students ON
Students.courseID = Courses.id;


-- Average score of students in each course
-- 1. Find the Unique Courses, 2. Calc the AVG for that Course
-- 2. Find the Name from the Courses table

select Courses.name, AVG(Students.score) from Students
JOIN Courses
ON Students.courseID = Courses.id
GROUP BY Students.courseID;

-- Self JOIN(Self Learning)

