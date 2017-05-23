-- For every situation where student A likes student B, but we have no information about whom B likes (that is, B's id does not appear in the liker_id column of the like table), return A and B's names and grades.
SELECT liker.name, liker.grade, likee.name, likee.grade FROM student_like likes
JOIN student liker
ON liker.id = likes.liker_id
JOIN student likee
ON likee.id = likes.likee_id
WHERE likee.id NOT IN
	(SELECT liker_id FROM student_like);
