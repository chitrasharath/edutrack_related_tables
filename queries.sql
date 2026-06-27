-- Query 1

select students.name, courses.title, enrollments.completion_percentage  from enrollments join students on enrollments.student_id=students.id join courses on enrollments.course_id=courses.id;

-- Query 2

select students.name, students.email, courses.title from enrollments join students on enrollments.student_id=students.id join courses on enrollments.course_id=courses.id where enrollments.passed = true;

-- Query 3

select courses.instructor_name, avg(enrollments.completion_percentage) as average_completion_percentage from enrollments join courses on enrollments.course_id=courses.id  group by courses.instructor_name order by average_completion_percentage desc;

-- Query 4

select name, email from students left join enrollments on students.id=enrollments.student_id where student_id is null;

-- Query 5

select title from courses left join enrollments on courses.id=enrollments.course_id where course_id is null;

-- Query 6

select students.name, count(*) as enrollment_count from students join enrollments on students.id=enrollments.student_id group by students.id having count(*)>1;

-- Query 7a simpler

select category,sum(monthly_fee) as total_revenue from courses join enrollments on courses.id=enrollments.course_id group by category;

-- Query 7b subquery

SELECT course_category, SUM(revenue) as total_revenue from (SELECT courses.category as course_category,courses.monthly_fee*course_months.total_months as Revenue from courses join (SELECT 
  course_id, (EXTRACT(YEAR FROM age(enrollment_date)) * 12) + EXTRACT(MONTH FROM age(enrollment_date)) AS total_months
FROM enrollments) as course_months on courses.id=course_months.course_id ) group by course_category;

-- Query 8

select instructor_name, count(distinct students.id)  from enrollments join students on enrollments.student_id=students.id join courses on enrollments.course_id=courses.id group by courses.instructor_name;

-- Query 9

select name, email from enrollments left join students on enrollments.student_id=students.id where students.id is null;

---- No rows returned

-- Query 10

select title from enrollments left join courses on enrollments.course_id=courses.id where courses.id is null; 

---- No rows returned


