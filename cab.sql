CREATE TABLE User (
  User_id INT PRIMARY KEY,
  First_name VARCHAR(50),
  Last_name VARCHAR(50),
  Address VARCHAR(100),
  Age INT,
  Contact_no VARCHAR(20),
  Email VARCHAR(100)
);

CREATE TABLE Taxi (
  Taxi_id INT PRIMARY KEY,
  Registration_no VARCHAR(20),
  Model VARCHAR(50),
  Manufactured_year INT,
  Taxi_type VARCHAR(20),
  Status VARCHAR(20),
  Owner_id INT
);

CREATE TABLE Owner (
  Owner_id INT PRIMARY KEY,
  SSN VARCHAR(20),
  Name VARCHAR(50),
  Company_id INT
);

CREATE TABLE Company (
  Company_id INT PRIMARY KEY,
  Tcs_id VARCHAR(20),
  Tsc_name VARCHAR(50)
);

CREATE TABLE Driver (
  Driver_id INT PRIMARY KEY,
  Name VARCHAR(50),
  Gender VARCHAR(10),
  Contact_no VARCHAR(20),
  Rating INT,
  Age INT
);

CREATE TABLE Trip (
  Trip_id INT PRIMARY KEY,
  User_id INT,
  Taxi_id INT,
  Start_time DATETIME,
  End_time DATETIME,
  Amount DECIMAL(10,2),
  Promotional_code VARCHAR(20),
  Feedback VARCHAR(200),
  Driver_id INT
);

CREATE TABLE Bill (
  Bill_no INT PRIMARY KEY,
  User_id INT,
  Driver_id INT,
  Amount DECIMAL(10,2),
  Date DATETIME
);

CREATE TABLE Login (
  User_id INT PRIMARY KEY,
  Login_id VARCHAR(50),
  Password VARCHAR(50),
  Credit_card_no VARCHAR(16),
  Balance DECIMAL(10,2)
);
INSERT INTO User (User_id, First_name, Last_name, Address, Age, Contact_no, Email)
VALUES 
  (1, 'John', 'Doe', '123 Main St', 30, '555-555-5555', 'johndoe@email.com'),
  (2, 'Jane', 'Smith', '456 Elm St', 25, '555-555-1234', 'janesmith@email.com'),
  (3, 'Bob', 'Johnson', '789 Oak St', 40, '555-555-6789', 'bobjohnson@email.com'),
  (4, 'Mary', 'Williams', '321 Maple St', 35, '555-555-4321', 'marywilliams@email.com'),
  (5, 'David', 'Lee', '654 Pine St', 28, '555-555-9876', 'davidlee@email.com'),
  (6, 'Karen', 'Taylor', '987 Oak St', 50, '555-555-1111', 'karentaylor@email.com'),
  (7, 'Mike', 'Brown', '456 Pine St', 45, '555-555-2222', 'mikebrown@email.com'),
  (8, 'Sarah', 'Davis', '789 Maple St', 30, '555-555-3333', 'sarahdavis@email.com'),
  (9, 'Chris', 'Wilson', '123 Elm St', 35, '555-555-4444', 'chriswilson@email.com'),
  (10, 'Jenny', 'Garcia', '321 Oak St', 25, '555-555-5555', 'jennygarcia@email.com');

INSERT INTO Taxi (Taxi_id, Registration_no, Model, Manufactured_year, Taxi_type, Status, Owner_id)
VALUES
  (1, 'ABC123', 'Toyota Corolla', 2018, 'Economy', 'Available', 1),
  (2, 'DEF456', 'Honda Civic', 2019, 'Standard', 'Available', 2),
  (3, 'GHI789', 'Chevrolet Suburban', 2020, 'SUV', 'Unavailable', 3),
  (4, 'JKL012', 'BMW 5 Series', 2017, 'Premium', 'Available', 4),
  (5, 'MNO345', 'Chrysler Pacifica', 2021, 'Minivan', 'Available', 5),
  (6, 'PQR678', 'Ford Mustang', 2016, 'Sports', 'Unavailable', 6),
  (7, 'STU901', 'Nissan Altima', 2022, 'Standard', 'Available', 7),
  (8, 'VWX234', 'Tesla Model S', 2020, 'Premium', 'Unavailable', 8),
  (9, 'YZA567', 'Toyota Sienna', 2019, 'Minivan', 'Available', 9),
  (10, 'BCD890', 'Jeep Wrangler', 2021, 'SUV', 'Available', 10);

INSERT INTO Owner (Owner_id, SSN, Name, Company_id)
VALUES
  (1, '123-45-6789', 'John Smith', 1),
  (2, '234-56-7890', 'Jane Johnson', 1),
  (3, '345-67-8901', 'Bob Williams', 2),
  (4, '456-78-9012', 'Mary Lee', 2),
  (5, '567-89-0123', 'David Brown', 2),
  (6, '678-90-1234', 'Karen Garcia', 3),
  (7, '789-01-2345', 'Mike Davis', 3),
  (8, '890-12-3456', 'Sarah Wilson', 4),
  (9, '901-23-4567', 'Chris Taylor', 4),
  (10, '012-34-5678', 'Jenny Martinez', 5);

INSERT INTO Company (Company_id, Tcs_id, Tsc_name)
VALUES
  (1, 'TCS001', 'Taxi Service Company 1'),
  (2, 'TCS002', 'Taxi Service Company 2'),
  (3, 'TCS003', 'Taxi Service Company 3'),
  (4, 'TCS004', 'Taxi Service Company 4'),
  (5, 'TCS005', 'Taxi Service Company 5'),
  (6, 'TCS006', 'Taxi Service Company 6'),
  (7, 'TCS007', 'Taxi Service Company 7'),
  (8, 'TCS008', 'Taxi Service Company 8'),
  (9, 'TCS009', 'Taxi Service Company 9'),
  (10, 'TCS010', 'Taxi Service Company 10');

INSERT INTO Driver (Driver_id, Name, Gender, Contact_no, Rating, Age)
VALUES
  (1, 'John Doe', 'M', '555-555-5555', 4, 30),
  (2, 'Jane Smith', 'F', '555-555-1234', 5, 25),
  (3, 'Bob Johnson', 'M', '555-555-6789', 3, 40),
  (4, 'Mary Williams', 'F', '555-555-4321', 4, 35),
  (5, 'David Lee', 'M', '555-555-9876', 5, 28),
  (6, 'Karen Taylor', 'F', '555-555-1111', 4, 50),
  (7, 'Mike Brown', 'M', '555-555-2222', 3, 45),
  (8, 'Sarah Davis', 'F', '555-555-3333', 4, 30),
  (9, 'Chris Wilson', 'M', '555-555-4444', 3, 35),
  (10, 'Jenny Garcia', 'F', '555-555-5555', 5, 25);


  -- This code inserts a new trip into the Trip table
INSERT INTO Trip (Trip_id, User_id, Taxi_id, Start_time, End_time, Amount, Promotional_code, Feedback, Driver_id)
VALUES
  (1, 1, 1, '2023-07-16 12:00:00', '2023-07-16 12:30:00', 25.50, 'SUMMER2023', 'Great ride!', 1),
  (2, 2, 2, '2023-07-16 13:00:00', '2023-07-16 13:30:00', 30.00, 'JULY2023', 'Driver was friendly', 2),
  (3, 3, 3, '2023-07-16 14:00:00', '2023-07-16 14:30:00', 40.25, '', '', 3),
  (4, 4, 4, '2023-07-16 15:00:00', '2023-07-16 15:30:00', 55.75, 'LOYALTY2023', 'Driver was on time', 4),
  (5, 5, 5, '2023-07-16 16:00:00', '2023-07-16 16:30:00', 20.00, '', '', 5),
  (6, 6, 6, '2023-07-16 17:00:00', '2023-07-16 17:30:00', 50.00, '', '', 6),
  (7, 7, 7, '2023-07-16 18:00:00', '2023-07-16 18:30:00', 35.50, 'DISCOUNT2023', 'Driver was professional', 7),
  (8, 8, 8, '2023-07-16 19:00:00', '2023-07-16 19:30:00', 75.25, '', '', 8),
  (9, 9, 9, '2023-07-16 20:00:00', '2023-07-16 20:30:00', 22.50, '', '', 9),
  (10, 10, 10, '2023-07-16 21:00:00', '2023-07-16 21:30:00', 60.00, '', '', 10);

INSERT INTO Bill (Bill_no, User_id, Driver_id, Amount, Date)
VALUES
  (1, 1, 1, 25.50, '2023-07-16 12:30:00'),
  (2, 2, 2, 30.00, '2023-07-16 13:30:00'),
  (3, 3, 3, 40.25, '2023-07-16 14:30:00'),
  (4, 4, 4, 55.75, '2023-07-16 15:30:00'),
  (5, 5, 5, 20.00, '2023-07-16 16:30:00'),
  (6, 6, 6, 50.00, '2023-07-16 17:30:00'),
  (7, 7, 7, 35.50, '2023-07-16 18:30:00'),
  (8, 8, 8, 75.25, '2023-07-16 19:30:00'),
  (9, 9, 9, 22.50, '2023-07-16 20:30:00'),
  (10, 10, 10, 60.00, '2023-07-16 21:30:00');
INSERT INTO Login (User_id, Login_id, Password, Credit_card_no, Balance)
VALUES
  (1, 'john@example.com', 'password1', '1234567812345678', 100.00),
  (2, 'jane@example.com', 'password2', '2345678923456789', 200.00),
  (3, 'bob@example.com', 'password3', '3456789034567890', 300.00),
  (4, 'alice@example.com', 'password4', '4567890145678901', 400.00),
  (5, 'david@example.com', 'password5', '5678901256789012', 500.00),
  (6, 'sarah@example.com', 'password6', '6789012367890123', 600.00),
  (7, 'sam@example.com', 'password7', '7890123478901234', 700.00),
  (8, 'emily@example.com', 'password8', '8901234589012345', 800.00),
  (9, 'matt@example.com', 'password9', '9012345690123456', 900.00),
  (10, 'lisa@example.com', 'password10', '1234567812345678', 1000.00);
  
 
  SELECT * FROM User;
  SELECT name, gender FROM Driver WHERE rating >= 3;
  SELECT Bill_no, User_id, Amount FROM Bill WHERE Amount > 50.00;
  
  -- this fun calculates the total amount earned by the company and the driver.
  SELECT
  c.Tsc_name AS Company_Name,
  COUNT(t.Taxi_id) AS Total_Trips,
  SUM(tr.Amount) AS Total_Amount,
  SUM(tr.Amount * 0.8) AS Driver_Fee,
  SUM(tr.Amount * 0.2) AS Company_Fee
FROM
  Company c
  JOIN Owner o ON c.Company_id = o.Company_id
  JOIN Taxi t ON o.Owner_id = t.Owner_id
  JOIN Trip tr ON t.Taxi_id = tr.Taxi_id
GROUP BY
  c.Tsc_name;
  
  -- to retrieve the total number of trips taken by each user, along with their name and contact number
  SELECT
  u.First_name || ' ' || u.Last_name AS User_name,
  u.Contact_no AS Contact_number,
  COUNT(t.Trip_id) AS Total_trips
FROM
  User u
  JOIN Trip t ON u.User_id = t.User_id
GROUP BY
  u.User_id;
  
  -- retrieves the total number of trips taken by each taxi, along with its registration number and model:
  SELECT
  t.Registration_no AS Taxi_registration,
  t.Model AS Taxi_model,
  COUNT(tr.Trip_id) AS Total_trips
FROM
  Taxi t
  JOIN Trip tr ON t.Taxi_id = tr.Taxi_id
GROUP BY
  t.Taxi_id;
  
-- Generate bill for a specific trip
INSERT INTO Bill (User_id, Driver_id, Amount, Date)
SELECT
  t.User_id,
  t.Driver_id,
  t.Amount * 0.8,
  NOW() AS Date
FROM
  Trip t
WHERE
  t.Trip_id = 1234; 


SELECT * FROM Bill WHERE User_id = 5678 AND Driver_id = 9012 AND Date = (SELECT MAX(Date) FROM Bill);

-- total amount spent on each trip by customer
SELECT 
  U.User_id, 
  U.First_name, 
  U.Last_name, 
  SUM(T.Amount) AS Total_Amount_Spent
FROM 
  User U
  INNER JOIN Trip T ON U.User_id = T.User_id
GROUP BY 
  U.User_id, 
  U.First_name, 
  U.Last_name
ORDER BY 
  SUM(T.Amount) DESC
  
