DROP DATABASE IF EXISTS hw_sem6;
CREATE DATABASE IF NOT EXISTS hw_sem6;
USE hw_sem6;
#TASK1
DELIMITER //
CREATE PROCEDURE convert_time(num INT)
	BEGIN
	SELECT CONCAT(num DIV (60*60*24), ' days ', num DIV (60*60) % 24, ' hours ', (num DIV 60) % 60, ' minutes ', num % 60, ' seconds') AS 'ТАБЛО';
END //
DELIMITER ;

CALL convert_time(123456);

#TASK2
DELIMITER //
CREATE FUNCTION even_search(num INT, num_finish INT)
RETURNS VARCHAR(45)
DETERMINISTIC
BEGIN
	DECLARE result VARCHAR(45) DEFAULT '';
	WHILE num < num_finish
	DO
		IF num % 2 <> 0 THEN
			SET num = num + 1;
		END IF;
        SET result = CONCAT(result, num, '   ');
		SET num = num + 2;
	END WHILE;
	RETURN result;
END //
DELIMITER ;
    
SELECT even_search(1, 10) AS 'ЧЕТНЫЕ ЧИСЛА';