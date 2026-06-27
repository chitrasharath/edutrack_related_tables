# EduTrack v2 — Normalized Schema Audit Report

## Query 1 — All enrollments with student name, course title, and completion

Result: 16 enrollments

| name | title | completion_percentage |
|---|---|---|
| Emily Watson | Intro to Python | 85 |
| Emily Watson | Web Design Basics | 60 |
| Klaus Weber | Intro to Python | 92 |
| Klaus Weber | Data Analysis with SQL | 78 |
| Lucia Fernandes | Web Design Basics | 5 |
| Lucia Fernandes | Digital Marketing 101 | 3 |
| Marco Rossi | Advanced Python | 95 |
| Marco Rossi | Intro to Python | 88 |
| Yuki Nakamura | Data Analysis with SQL | 45 |
| Yuki Nakamura | UI/UX Fundamentals | 0 |
| Pierre Dubois | UI/UX Fundamentals | 0 |
| Priya Sharma | Digital Marketing 101 | 70 |
| Priya Sharma | Intro to Python | 55 |
| Pierre Dubois | Data Analysis with SQL | 20 |
| Emily Watson | Advanced Python | 40 |
| Lucia Fernandes | Advanced Python | 0 |

## Query 2 — Students who passed at least one course

Result: 6 students

| name | email | title |
|---|---|---|
| Emily Watson | emily.watson@student.edutrack.com | Intro to Python |
| Klaus Weber | klaus.weber@student.edutrack.com | Intro to Python |
| Klaus Weber | klaus.weber@student.edutrack.com | Data Analysis with SQL |
| Marco Rossi | marco.rossi@student.edutrack.com | Advanced Python |
| Marco Rossi | marco.rossi@student.edutrack.com | Intro to Python |
| Priya Sharma | priya.sharma@student.edutrack.com | Digital Marketing 101 |

## Query 3 — Average completion percentage per instructor

Result: Marta Lopez had highest completion percentage

| instructor_name | average_completion_percentage |
|---|---|
| Marta López | 66.14 |
| Carlos Vega | 40.00 |
| Lucia Prades | 36.50 |
| Pending assignment | 0.00 |

## Query 4 — Students with no enrollments

Result: 1 student

| name | email |
|---|---|
| Giulia Romano | giulia.romano@student.edutrack.com |

## Query 5 — Courses with no enrollments

Result: 1 course

| title |
|---|
| Email Campaigns |

## Query 6 — Students enrolled in more than one course

Result: 7 students

| name | enrollment_count |
|---|---|
| Lucia Fernandes | 3 |
| Yuki Nakamura | 2 |
| Marco Rossi | 2 |
| Pierre Dubois | 2 |
| Klaus Weber | 2 |
| Priya Sharma | 2 |
| Emily Watson | 3 |

## Query 7a — Total revenue per category (using monthly_fee x months since enrollment)

Result: Programming had highest revenue

| course_category | total_revenue |
|---|---|
| Marketing | 1229.59 |
| Programming | 8638.50 |
| Design | 3754.11 |
| Data | 3719.38 |

## Query 7b — Total revenue per category (using course price per enrollment)

Result: Programming had highest revenue

| category | total_revenue |
|---|---|
| Marketing | 59.98 |
| Programming | 409.93 |
| Design | 169.96 |
| Data | 179.97 |

## Query 8 — Instructor student count

Result: Marta Lopez has highest number of students

| instructor_name | count |
|---|---|
| Carlos Vega | 3 |
| Lucia Prades | 2 |
| Marta López | 6 |
| Pending assignment | 2 |

## Query 9 — Orphaned student records

No rows returned

## Query 10 — Orphaned course records

No rows returned
