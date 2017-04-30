-- For every pair of students who both like each other, return the name and grade of both students. Include each pair only once, with the two names in alphabetical order.
SELECT liker.name, liker.grade, likee.name, likee.grade
FROM (
		SELECT a.liker_id, a.likee_id
		FROM student_like a
		JOIN student_like b
		ON a.liker_id = b.likee_id AND b.liker_id = a.likee_id
	) true_friends
JOIN student liker ON liker.id = true_friends.liker_id
JOIN student likee ON likee.id = true_friends.likee_id
WHERE liker.name < likee.name
ORDER BY liker.name ASC;
