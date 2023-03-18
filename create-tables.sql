CREATE TABLE clients (
  clientId INT NOT NULL PRIMARY KEY,
  firstName VARCHAR(25),
  lastName VARCHAR(50),
  streetAddress VARCHAR(50),
  city VARCHAR(25),
  state VARCHAR(2),
  zipCode INT,
  email VARCHAR(50),
  phone INT,
  carPurchased BOOLEAN
);


CREATE TABLE employees (
  empId INT NOT NULL PRIMARY KEY,
  firstName VARCHAR(25),
  lastName VARCHAR(50),
  manager VARCHAR(75),
  department VARCHAR(25),
  address VARCHAR(50),
  phone INT,
  email VARCHAR(50),
  startDate DATETIME,
  termDate DATETIME,
  salary DECIMAL(10,2)
);

CREATE TABLE billings (
  invoiceNo INT NOT NULL PRIMARY KEY,
  clientId INT NOT NULL,
  monthlyPayment DECIMAL(10,2),
  dueDate DATETIME,
  remainingAmount DECIMAL(10,2),
  FOREIGN KEY (clientId) REFERENCES clients(clientId)
);

CREATE TABLE appointments (
  apptNo INT NOT NULL PRIMARY KEY,
  clientId INT NOT NULL,
  empId INT NOT NULL,
  apptTime DATETIME,
  reason VARCHAR(100),
  FOREIGN KEY (clientId) REFERENCES clients(clientId),
  FOREIGN KEY (empId) REFERENCES employees(empId)
);
