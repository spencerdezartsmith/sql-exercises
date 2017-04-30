-- For every student who likes someone 2 or more grades younger than themselves, return that student's name and grade, and the name and grade of the student they like.
SELECT liker.name, liker.grade, likee.name, likee.grade FROM student_like
JOIN student liker
ON liker.id = student_like.liker_id
JOIN student likee
ON likee.id = student_like.likee_id
WHERE likee.grade <= (liker.grade - 2);
