SELECT cohorts.name AS cohort, COUNT(assignment_submissions.*) as total_submissions
FROM cohorts
JOIN students ON students.cohort_id = cohorts.id
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;