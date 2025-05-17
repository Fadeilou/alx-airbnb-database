-- Création d'indexes
CREATE INDEX idx_user_email ON users(email);
CREATE INDEX idx_booking_user ON bookings(user_id);
CREATE INDEX idx_booking_property ON bookings(property_id);
CREATE INDEX idx_property_location ON properties(location);
