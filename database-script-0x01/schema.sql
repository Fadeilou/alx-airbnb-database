CREATE TABLE User (
    user_id UUID PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20),
    role ENUM('guest', 'host', 'admin') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Refaire pareil pour Property, Booking, Payment, Review et Message

-- Ajout des clés étrangères, contraintes et index
ALTER TABLE Property ADD CONSTRAINT fk_host FOREIGN KEY (host_id) REFERENCES User(user_id);
-- Etc.
