UPDATE nova_motors.clients
SET zipCode = 98178
WHERE city IN ("Salem", "Portland", "Yakima", "Tukwila");

UPDATE nova_motors.employees
SET salary = 80000
WHERE salary between 65000 AND 75000;

UPDATE nova_motors.billings
set dueDate = DATE_ADD(dueDate, INTERVAL 1 - DAY(dueDate) DAY)
WHERE DAY(dueDate) <> 1;

UPDATE nova_motors.appointments
set apptTime = DATE_ADD(apptTime, INTERVAL 12 - MONTH(apptTime) MONTH)
WHERE MONTH(apptTime) = 11;
