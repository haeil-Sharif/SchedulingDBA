
SELECT * FROM `Rooms` 
 WHERE room_no =
(SELECT room_no FROM `Rooms` 
	WHERE room_no = '306');
