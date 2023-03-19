DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getSalesEmployees`()
BEGIN
	SELECT COUNT(*) FROM nova_motors.employees
	WHERE department = "Sales";
END$$
DELIMITER ;

DELIMITER $$
USE `nova_motors`$$
CREATE PROCEDURE `getMinMonthlyPayment` ()
BEGIN
SELECT clientId, MIN(monthlyPayment) AS minMonthlyPayment
FROM nova_motors.billings;
END$$
DELIMITER ;

DELIMITER $$
USE `nova_motors`$$
CREATE PROCEDURE `getAvgSalary` ()
BEGIN
SELECT ROUND(AVG(salary),2) AS avgSalary FROM nova_motors.employees;
END$$
DELIMITER ;

DELIMITER $$
USE `nova_motors`$$
CREATE PROCEDURE `getTotalDue` ()
BEGIN
SELECT SUM(remainingAmount) as totalAmountDue
FROM nova_motors.billings;
END$$
DELIMITER ;

DELIMITER $$
USE `nova_motors`$$
CREATE PROCEDURE `groupByDepartment` ()
BEGIN
	SELECT department, ROUND(AVG(salary),2) AS avg_salary
	FROM employees
	GROUP BY department;
END$$
DELIMITER ;

DELIMITER $$
USE `nova_motors`$$
CREATE PROCEDURE `simpleManipulation`()
BEGIN
	INSERT INTO nova_motors.clients (clientId, firstName, lastName, streetAddress, city, state, zipCode, email, phone, carPurchased)
	VALUES
	(16, 'Joel', 'McHale', '574 Graham Ave S', 'Seattle', 'WA', 98124, 'JoelMcHale@gmail.com', 2065555578, 5);

	UPDATE nova_motors.clients
	SET carPurchased = 2
	where clientId = 1;

	UPDATE nova_motors.clients
	SET lastName = "May"
	WHERE clientId = 15;

	DELETE from nova_motors.clients
	WHERE clientId = 16;
END$$
DELIMITER ;

DELIMITER $$
USE `nova_motors`$$
CREATE PROCEDURE `havingAppts` ()
BEGIN
	SELECT empId, COUNT(*) as numAppointments
	FROM appointments
	WHERE DATE(apptTime) = '2022-12-15'
	GROUP BY empId
	HAVING COUNT(*) >= 1;
END$$
DELIMITER ;

#This query joins the Clients table with the Billings table using the clientID
# to get Clients and Billings information for the invoice.
DELIMITER $$
USE `nova_motors`$$
CREATE PROCEDURE `clientsJoinBillings` ()
BEGIN
	SELECT t1.invoiceNo, t1.monthlyPayment, t1.dueDate,
	t2.firstName, t2.lastName, t2.streetAddress, t2.city, t2.state, t2.zipCode
	FROM nova_motors.billings t1
	JOIN nova_motors.clients t2
	ON t1.clientId = t2.clientId;
END$$
DELIMITER ;

#This get the appointment information for clientId = 1
# along with client information
DELIMITER $$
USE `nova_motors`$$
CREATE PROCEDURE `clientsJoinAppts` ()
BEGIN
	SELECT a.apptNo, a.apptTime, a.reason, c.firstName, c.lastName, c.email, c.phone
	FROM appointments a
	JOIN clients c ON a.clientId = c.clientId
	WHERE c.clientId = 1;
END$$
DELIMITER ;

#This joins the Billings and Clients tables on clientId
# for clients that have purchased cars previously
DELIMITER $$
USE `nova_motors`$$
CREATE PROCEDURE `clientsJoinBillingsPurchased` ()
BEGIN
	SELECT c.firstName, c.lastName, c.email, c.phone, b.invoiceNo, b.monthlyPayment, b.dueDate, b.remainingAmount
	FROM clients c
	JOIN billings b ON c.clientId = b.clientId
	WHERE c.carPurchased = TRUE;
END$$
DELIMITER ;

#This joins Clients, Appts, and Employees tables to get clients and employees
# information for Appointments.
DELIMITER $$
USE `nova_motors`$$
CREATE PROCEDURE `clientsApptsEmployees` ()
BEGIN
	SELECT c.clientId, c.firstName AS clientFirst, c.lastName AS clientLast, e.empId, e.firstName AS empFirstName, e.lastName AS empLastName, a.apptNo, a.apptTime, a.reason
	FROM clients c
	JOIN appointments a ON c.clientId = a.clientId
	JOIN employees e ON a.empId = e.empId;
END$$
DELIMITER ;
