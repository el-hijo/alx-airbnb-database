# AirBnB Database Sample Data Seeding Script

DROP TABLE user;
DROP TABLE property;
DROP TABLE booking;
DROP TABLE payment;
DROP TABLE review;
DROP TABLE message;


INSERT INTO user (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES (001, 'Nasir', 'Jones', 'jjames@email.com', 'j1234', 080541627, 'guest', now()),
	   (002, 'Tupac', 'Shakur', 'tshakur@email. com', 't6578', 0805819184, 'host', now()),
       (003, 'Kendrik', 'Lamar', 'klamar@email.com', 'k0380', 080392711, 'admin', now());

INSERT INTO property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES (011, 1001, "Hijo Apartment", "No place like home", "Houston TX", 1500, now(), now()),
	   (022, 2002, "Chio Nest", "Paradise Paradise", "Los Angeles CA", 2000, now(), now()),
       (033, 3003, "Mma Logde", "Restful place", "Atlanta GA", 1250, now(), now());

INSERT INTO booking (booking_id, property_id, user_id, start_date, end_date, total_price, status_booking, created_at)
VALUES ( 1101, 1011, 100111, '2025-05-10', '2025-05-15', 1600,  'confirmed', now()),
	   ( 2202, 2022, 200222, '2025-01-20', '2025-01-30', 2900, 'canceled', now()),
       ( 3303, 3033, 300333, '2025-04-20', '2025-04-28', 2000, 'pending', now());
       
INSERT INTO payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES (001, 001, 2000,now() ,'paypal'),
	   (002, 002, 1300, now(), 'creditcard'),
       (003, 003, 1700, now(), 'stripe');
       
INSERT INTO review ( review_id, property_id, user_id, rating, comment, created_at)
VALUES ( 001, 001, 001, 5,'Exceptional quality', now()),
	   ( 002, 002, 002, 5, 'Excellent hospitality', now()),
       ( 003, 003, 003, 5, 'Top notch place', now());
       
INSERT INTO message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES ( 001, 001, 001, 'Do you have wifi?', now()),
       ( 002, 002, 002, 'Is there pounded yam and egusi soup on your menu?', now()),
       ( 003, 003, 003, 'I enjoyed my stay, will be another time', now());
