CREATE TABLE users (id SERIAL PRIMARY KEY, name VARCHAR(100), email VARCHAR(255), role VARCHAR(50));
CREATE TABLE rehearsals (id SERIAL PRIMARY KEY, title VARCHAR(100), datetime TIMESTAMP, location_id INT, created_by INT, status VARCHAR(20));
CREATE TABLE attendance (id SERIAL PRIMARY KEY, rehearsal_id INT, user_id INT, confirmed BOOLEAN, responded_at TIMESTAMP);
CREATE TABLE equipment (id SERIAL PRIMARY KEY, name VARCHAR(100), available BOOLEAN, maintenance_due DATE);
CREATE TABLE locations (id SERIAL PRIMARY KEY, name VARCHAR(100), address VARCHAR(255), capacity INT);
CREATE TABLE notifications (id SERIAL PRIMARY KEY, user_id INT, rehearsal_id INT, type VARCHAR(50), sent_at TIMESTAMP);
