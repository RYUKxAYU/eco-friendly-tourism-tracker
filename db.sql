-- Create the database
CREATE DATABASE eco_friendly;

-- Use the database
USE eco_friendly;

-- Create the Users table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100),
    points INT DEFAULT 0
);

-- Create the Actions table
CREATE TABLE actions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    action_type VARCHAR(100),
    points_awarded INT,
    action_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO users (username, email, points) VALUES
('Alice', 'alice@example.com', 10),
('Bob', 'bob@example.com', 20),
('Charlie', 'charlie@example.com', 0);

INSERT INTO actions (user_id, action_type, points_awarded) VALUES
(1, 'Recycling', 5),
(2, 'Planting Trees', 10),
(1, 'Bike Ride', 3);

-- Get all users
SELECT * FROM users;

-- Get all actions
SELECT * FROM actions;

-- Join to see user actions with details
SELECT u.username, a.action_type, a.points_awarded, a.action_date
FROM users u
JOIN actions a ON u.id = a.user_id;
