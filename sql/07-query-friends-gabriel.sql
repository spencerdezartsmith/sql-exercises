-- Find the names of all students who are friends with someone named Gabriel.
SELECT friends.name FROM friend
JOIN student ON student.id = friend.id1
JOIN student friends ON friends.id = friend.id2
WHERE student.name = 'Gabriel';
