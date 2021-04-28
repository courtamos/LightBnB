INSERT INTO users (name, email, password)
VALUES 
('Chandler Bing', 'cbing@email.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Monica Geller', 'mgeller@email.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Rachel Green', 'rgreen@email.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Phoebe Buffay', 'pbuffay@email.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Ross Geller', 'rgeller@email.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Joey Tribbiani', 'jtribbiani@email.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');


INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES 
(1, 'Transponsder Retreat', 'description', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350', 400, 0, 1, 2, 'USA', '#1-90 Bedford St', 'New York City', 'New York', '10014', TRUE),
(2, 'Chef Getaway Bungalow', 'description', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350', 500, 2, 1, 2, 'USA', '#2-90 Bedford St', 'New York City', 'New York', '10014', TRUE),
(3, 'Fashion Island', 'description', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350', 800, 1, 2, 3, 'USA', '#3-90 Bedford St', 'New York City', 'New York', '10014', TRUE),
(4, 'Smelly Cat', 'description', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350', 200, 0, 1, 1.5, 'USA', '#4-90 Bedford St', 'New York City', 'New York', '10014', TRUE),
(5, 'Doctors Oasis', 'description', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350', 900, 2, 2, 2, 'USA', '#5-90 Bedford St', 'New York City', 'New York', '10014', TRUE),
(6, 'How You Doin?', 'description', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350', 500, 2, 1, 2, 'USA', '#6-90 Bedford St', 'New York City', 'New York', '10014', TRUE);


INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES 
('2021-01-15', '2021-01-20', (SELECT id FROM properties WHERE id = 2), (SELECT id FROM users WHERE id = 1)), 
('2021-02-15', '2021-02-20', (SELECT id FROM properties WHERE id = 3), (SELECT id FROM users WHERE id = 2)),
('2021-03-15', '2021-03-20', (SELECT id FROM properties WHERE id = 4), (SELECT id FROM users WHERE id = 3)), 
('2021-04-15', '2021-04-20', (SELECT id FROM properties WHERE id = 5), (SELECT id from users WHERE id = 4)), 
('2021-05-15', '2021-05-20', (SELECT id FROM properties WHERE id = 6), (SELECT id FROM users WHERE id = 5)), 
('2021-06-15', '2021-06-20', (SELECT id FROM properties WHERE id = 1), (SELECT id FROM users WHERE id = 6));


INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES 
((SELECT id FROM users WHERE id = 1), (SELECT id FROM properties WHERE id = 2), (SELECT id FROM reservations WHERE id = 1), 5, 'message'),
((SELECT id FROM users WHERE id = 2), (SELECT id FROM properties WHERE id = 3), (SELECT id FROM reservations WHERE id = 2), 5, 'message'),
((SELECT id FROM users WHERE id = 3), (SELECT id FROM properties WHERE id = 4), (SELECT id FROM reservations WHERE id = 3), 5, 'message'),
((SELECT id FROM users WHERE id = 4), (SELECT id FROM properties WHERE id = 5), (SELECT id FROM reservations WHERE id = 4), 5, 'message'),
((SELECT id FROM users WHERE id = 5), (SELECT id FROM properties WHERE id = 6), (SELECT id FROM reservations WHERE id = 5), 5, 'message'),
((SELECT id FROM users WHERE id = 6), (SELECT id FROM properties WHERE id = 1), (SELECT id FROM reservations WHERE id = 6), 5, 'message');