use nova_motors;

#Create 5 random users
CREATE USER 'user1'@'localhost' IDENTIFIED BY 'password1';
CREATE USER 'user2'@'localhost' IDENTIFIED BY 'password2';
CREATE USER 'user3'@'localhost' IDENTIFIED BY 'password3';
CREATE USER 'user4'@'localhost' IDENTIFIED BY 'password4';
CREATE USER 'user5'@'localhost' IDENTIFIED BY 'password5';

#Allow the 5 users to CREATE on the 
GRANT CREATE ON nova_motors.* TO 'user1'@'localhost';
GRANT CREATE ON nova_motors.* TO 'user2'@'localhost';
GRANT CREATE ON nova_motors.* TO 'user3'@'localhost';
GRANT CREATE ON nova_motors.* TO 'user4'@'localhost';
GRANT CREATE ON nova_motors.* TO 'user5'@'localhost';

#Grant INSERT, SELECT, UPDATE, and EXECUTE for the db
GRANT SELECT, INSERT, EXECUTE ON nova_motors.* TO 'user1'@'localhost';
GRANT SELECT, UPDATE, EXECUTE ON nova_motors.* TO 'user2'@'localhost';
GRANT INSERT, SELECT, UPDATE, EXECUTE ON nova_motors.* TO 'user3'@'localhost';
GRANT INSERT, SELECT, UPDATE, EXECUTE ON nova_motors.* TO 'user4'@'localhost';
GRANT INSERT, SELECT, UPDATE, EXECUTE ON nova_motors.* TO 'user5'@'localhost';

