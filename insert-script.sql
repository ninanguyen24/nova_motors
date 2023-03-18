INSERT INTO clients (clientId, firstName, lastName, streetAddress, city, state, zipCode, email, phone, carPurchased)
VALUES (1, 'Avery', 'Johnson', '123 Abc St', 'Seattle', 'WA', 98122, 'AveryJohnson@gmail.com', 2065551234, 1),
(2, 'Mya', 'Connor', '4536 Random Ave', 'Bremeton', 'WA', 98104, 'MyaConnor@gmail.com', 2065551234, 0),
(3, 'John', 'Newton', '48720 Bastle NW', 'Auburn', 'WA', 98345, 'JohnNewton@gmail.com', 2065551234, 1),
(4, 'Jon', 'Myers', '954 Night Rd', 'Bellingham', 'WA', 98105, 'JonMyers@gmail.com', 2065551234, 0),
(5, 'Bob', 'Markey', '647 Jackson SW', 'Portland', 'OR', 98178, 'BobMarkey@gmail.com', 2065551234, 0),
(6, 'Britney', 'Spears', '987 Def Ave S', 'Vancouver', 'WA', 98168, 'BritneySpears@gmail.com', 2065551234, 0),
(7, 'Jessica', 'Simpson', '945 Ghi Rd N', 'Salem', 'WA', 98144, 'JessicaSimpson@gmail.com', 2065551234, 1),
(8, 'Geno', 'Smith', '3456 Jkl Ave S', 'Spokane', 'WA', 98365, 'GenoSmith@gmail.com', 2065551234, 1),
(9, 'Ken', 'Walker', '9542 Mno Ave S', 'Yakima', 'WA', 98422, 'KenWalker@gmail.com', 2065551234, 1),
(10, 'Tyler', 'Lockett', '7456 Pqr Rd', 'Tukwila', 'WA', 98245, 'TylerLockett@gmail.com', 2065551234, 1),
(11, 'Sue', 'Bird', '654 Tuv SW', 'Kent', 'WA', 98635, 'SueBird@gmail.com', 2065551234, 1),
(12, 'Lindsay', 'Lohan', '9863 Wxy Ln', 'Portland', 'WA', 98144, 'LindsayLohan@gmail.com', 2065551234, 1),
(13, 'Amanda', 'Bynes', '1600 Penn St', 'Seattle', 'WA', 98122, 'AmandaBynes@gmail.com', 2065551234, 1),
(14, 'Camilla', 'Cabello', '2424 Graham St S', 'Seattle', 'WA', 98366, 'CamillaCabello@gmail.com', 2065551234, 0),
(15, 'Missy', 'Elliotte', '657 Rainier Ave S', 'Seattle', 'WA', 98125, 'MissyElliotte@gmail.com', 2065551234, 0);

INSERT INTO employees (empId, firstName, lastName, manager, department, address, phone, email, startDate, termDate, salary, totalSales) VALUES
(101, 'Angelina', 'Jolie', 'John Smith', 'Sales', '123 Main St, Seattle, WA 98101', 2065551234, 'angelina.jolie@example.com', '2022-01-01', NULL, 75000.00),
(102, 'Brad', 'Pitt', 'John Smith', 'Sales', '456 1st Ave, Seattle, WA 98104', 2065551234, 'brad.pitt@example.com', '2022-01-01', NULL, 75000.00),
(103, 'Tom', 'Cruise', 'Jane Doe', 'Marketing', '789 Pike St, Seattle, WA 98101', 2065551234, 'tom.cruise@example.com', '2022-01-01', NULL, 85000.00),
(104, 'Jennifer', 'Aniston', 'Jane Doe', 'Marketing', '1012 2nd Ave, Seattle, WA 98104', 2065551234, 'jennifer.aniston@example.com', '2022-01-01', NULL, 85000.00),
(105, 'Stephen', 'Curry', 'John Smith', 'Sales', '201 1st Ave N, Seattle, WA 98109', 2065552010, 'steph.curry@gmail.com', '2021-10-01', NULL, 60000.00),
(106, 'Tina', 'Fey', 'Lorne Michaels', 'HR', '1700 7th Ave, Seattle, WA 98101', 2065551700, 'tina.fey@gmail.com', '2022-06-01', NULL, 70000.00),
(107, 'Beyonce', 'Knowles', 'Kelly Rowland', 'Accounting', '307 Westlake Ave N, Seattle, WA 98109', 2065553070, 'beyonce@gmail.com', '2023-01-01', NULL, 90000.00),
(108, 'Jimmy', 'Fallon', 'Lorne Michaels', 'HR', '1801 5th Ave, Seattle, WA 98101', 2065551801, 'jimmy.fallon@gmail.com', '2022-09-01', NULL, 65000.00),
(109, 'Jennifer', 'Aniston', 'Kelly Rowland', 'Accounting', '1301 2nd Ave, Seattle, WA 98101', 2065551301, 'jennifer.aniston@gmail.com', '2022-03-01', NULL, 75000.00),
(110, 'Brad', 'Pitt', 'John Smith', 'Sales', '1900 5th Ave, Seattle, WA 98101', 2065551900, 'brad.pitt@gmail.com', '2023-01-01', NULL, 80000.00),
(111, 'Mindy', 'Kaling', 'Greg Daniels', 'IT', '809 Olive Way, Seattle, WA 98101', 2065559999, 'mindy@gmail.com', '2022-05-12', NULL, 90000.00),
(112, 'Pamela', 'Beesley', 'John Smith', 'Sales', '123 4th Ave NW, Seattle, WA 98122', 2065559874, 'pamela@gmail.com', '2022-01-02', NULL, 65000.00),
(113, 'Dwayne', 'Johnson', 'John Smith', 'Sales', '101 Main St, Seattle, WA 98101', 2065551234, 'dwayne.johnson@example.com', '2021-11-01', NULL, 10000.00),
(114, 'Brad', 'Pitt', 'Jane Doe', 'Marketing', '456 1st Ave, Seattle, WA 98104', 2065551234, 'brad.pitt@example.com', '2021-05-01', NULL, 90000.00),
(115, 'Jane', 'Doe', 'Nina Nguyen', 'Marketing', '987 99th St, Seattle, WA 98122', 2064567893, 'jane.doe@gmail.com', '2022-01-01', NULL, 120000.00);

INSERT INTO billings (invoiceNo, clientId, monthlyPayment, dueDate, remainingAmount)
VALUES
(1, 5, 2000.00, '2023-04-01', 40000.00),
(2, 7, 1500.00, '2023-04-05', 30000.00),
(3, 9, 1000.00, '2023-04-10', 20000.00),
(4, 2, 2500.00, '2023-04-15', 50000.00),
(5, 10, 3000.00, '2023-04-20', 60000.00),
(6, 3, 500.00, '2023-04-25', 10000.00),
(7, 8, 1800.00, '2023-04-30', 36000.00),
(8, 4, 2200.00, '2023-05-01', 44000.00),
(9, 1, 2800.00, '2023-05-05', 56000.00),
(10, 11, 1200.00, '2023-05-10', 24000.00),
(11, 6, 800.00, '2023-05-15', 16000.00),
(12, 13, 1500.00, '2023-05-20', 30000.00),
(13, 14, 2000.00, '2023-05-25', 40000.00),
(14, 12, 1000.00, '2023-05-30', 20000.00),
(15, 15, 500.00, '2023-06-01', 10000.00);

INSERT INTO appointments (apptNo, clientId, empId, apptTime, reason)
VALUES 
(1000001, 1, 101, '2022-11-15 12:29:00', 'Interested in the Nova 24'),
(1000002, 2, 102, '2023-04-15 10:29:00', 'Looking to Trade in current gas car'),
(1000003, 3, 103, '2022-11-15 12:29:00', 'Wants to look at all options'),
(1000004, 4, 104, '2022-11-15 12:29:00', 'Wants to upgrade to bigger car'),
(1000005, 5, 105, '2022-11-15 12:29:00', 'Wants to looks at financing option'),
(1000006, 6, 106, '2022-03-24 11:50:00', 'Interested in the Nova 24'),
(1000007, 7, 107, '2022-11-15 12:29:00', 'Looking to Trade in current gas car'),
(1000008, 8, 108, '2022-11-24 12:24:00', 'Wants to look at all options'),
(1000009, 9, 109, '2022-11-15 12:29:00', 'Wants to upgrade to bigger car'),
(1000010, 10, 110, '2023-03-31 14:29:00', 'Wants to looks at financing option'),
(1000011, 11, 111, '2022-11-15 12:29:00', 'Interested in the Nova 24'),
(1000012, 12, 112, '2022-11-15 12:29:00', 'Looking to Trade in current gas car'),
(1000013, 13, 113, '2023-02-15 09:09:00', 'Wants to look at all options'),
(1000014, 14, 114, '2022-11-15 12:29:00', 'Wants to upgrade to bigger car'),
(1000015, 15, 115, '2022-11-15 12:29:00', 'Wants to get a smaller car');
