#Insert into clients table, rollback if there's failure with an attributes
DELIMITER $$
CREATE PROCEDURE insert_client (
    IN client_id INT,
    IN first_name VARCHAR(25),
    IN last_name VARCHAR(50),
    IN street_address VARCHAR(50),
    IN city VARCHAR(25),
    IN state VARCHAR(2),
    IN zip_code INT,
    IN email VARCHAR(50),
    IN phone INT,
    IN car_purchased BOOLEAN
)

BEGIN
	START TRANSACTION;
  
  BEGIN
	  DECLARE EXIT HANDLER FOR SQLEXCEPTION
    
    BEGIN
       ROLLBACK;
		  RESIGNAL;
    END;
    
    INSERT INTO clients (client_id, first_name, last_name, street_address, city, state, zip_code, email, phone, car_purchased) 
    VALUES (client_id, first_name, last_name, street_address, city, state, zip_code, email, phone, car_purchased);
	COMMIT;
END;

END$$
DELIMITER ;

#updating the appointment time and rolling back if the update statement fails
DELIMITER $$
CREATE PROCEDURE update_appointment_time (
    IN appointment_id INT,
    IN new_appointment_time DATETIME
)
BEGIN
    START TRANSACTION;
    BEGIN
		DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
		ROLLBACK;
		RESIGNAL;
	END;
    UPDATE appointments SET appt_time = new_appointment_time WHERE appointment_id = appointment_id;
    COMMIT;
END;

END$$
DELIMITER ;

#delete from a billing table using invoiceNo
DELIMITER $$
CREATE PROCEDURE delete_billing (
    IN invoiceNo INT
)
BEGIN
    START TRANSACTION;
    BEGIN
		DECLARE EXIT HANDLER FOR SQLEXCEPTION
        BEGIN
			ROLLBACK;
            RESIGNAL;
		END;
        
    DELETE FROM billings WHERE invoiceNo = invoiceNo;
    COMMIT;
END;

END$$
DELIMITER ;
