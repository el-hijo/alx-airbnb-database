CREATE TABLE user
(user_id INT PRIMARY KEY UNIQUE,
first_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL, 
email VARCHAR(200) UNIQUE NOT NULL, 
password_hash VARCHAR(200) NOT NULL,
phone_number VARCHAR(20) NULL,
role ENUM('guest', 'host', 'admin') NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

CREATE TABLE property
(property_id INT PRIMARY KEY UNIQUE,
host_id INT NOT NULL UNIQUE, FOREIGN KEY (host_id) REFERENCES user_id,
description TEXT NOT NULL,
location VARCHAR(250) NOT NULL,
pricepernight DECIMAL NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
update_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP);

CREATE TABLE booking
(booking_id INT PRIMARY KEY UNIQUE,
property_id INT, FOREIGN KEY (property_id) REFERENCES property_id,
user_id INT UNIQUE, FOREIGN KEY (user_id) REFERENCES user_id, 
start_date DATE NOT NULL,
end_date DATE NOT NULL,
total_price DECIMAL NOT NULL,
status_booking ENUM('pending', 'confirmed','canceled') NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

CREATE TABLE payment
(payment_id INT PRIMARY KEY UNIQUE,
booking_id INT, FOREIGN KEY (booking_id) REFERENCES booking(booking_id),
amount DECIMAL NOT NULL,
payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
payment_method ENUM('Creditcard','paypal','stripe') NOT NULL);

CREATE TABLE review
(review_id INT PRIMARY KEY UNIQUE,
property_id INT, FOREIGN KEY (property_id) REFERENCES property(property_id),
user_id INT, FOREIGN KEY(user_id) REFERENCES user(user_id),
rating INT NOT NULL, CHECK (rating >=1 AND rating <=5),
comment TEXT NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

CREATE TABLE message
(message_id INT PRIMARY KEY UNIQUE,
sender_id INT, FOREIGN KEY (sender_id) REFERENCES user(user_id),
recipient_id INT, FOREIGN KEY (recipient_id) REFERENCES user(user_id),
message_body TEXT NOT NULL,
sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);



















