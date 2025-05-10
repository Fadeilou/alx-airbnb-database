-- ==============================================
-- Seed: User
-- ==============================================
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES 
    ('11111111-1111-1111-1111-111111111111', 'Jean', 'Dupont', 'jean.dupont@mail.com', 'hash123', '+22961000001', 'guest'),
    ('22222222-2222-2222-2222-222222222222', 'Alice', 'Martin', 'alice.martin@mail.com', 'hash456', '+22961000002', 'host'),
    ('33333333-3333-3333-3333-333333333333', 'Mohamed', 'Diallo', 'mohamed.diallo@mail.com', 'hash789', '+22961000003', 'admin');

-- ==============================================
-- Seed: Property
-- ==============================================
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
    ('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '22222222-2222-2222-2222-222222222222', 'Villa Paradis', 'Belle villa au bord de la mer à Cotonou', 'Cotonou', 50000),
    ('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '22222222-2222-2222-2222-222222222222', 'Appartement Cosy', 'Appartement moderne au centre-ville', 'Abidjan', 35000);

-- ==============================================
-- Seed: Booking
-- ==============================================
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
    ('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '11111111-1111-1111-1111-111111111111', '2025-05-15', '2025-05-18', 150000, 'confirmed'),
    ('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '11111111-1111-1111-1111-111111111111', '2025-06-01', '2025-06-05', 140000, 'pending');

-- ==============================================
-- Seed: Payment
-- ==============================================
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
    ('ccccccc1-cccc-cccc-cccc-ccccccccccc1', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 150000, 'credit_card'),
    ('ccccccc2-cccc-cccc-cccc-ccccccccccc2', 'bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', 140000, 'paypal');

-- ==============================================
-- Seed: Review
-- ==============================================
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
    ('ddddddd1-dddd-dddd-dddd-dddddddddddd1', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '11111111-1111-1111-1111-111111111111', 5, 'Superbe expérience, je recommande !'),
    ('ddddddd2-dddd-dddd-dddd-dddddddddddd2', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '11111111-1111-1111-1111-111111111111', 4, 'Bon séjour mais quartier bruyant.');

-- ==============================================
-- Seed: Message
-- ==============================================
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
    ('eeeeeee1-eeee-eeee-eeee-eeeeeeeeeee1', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Bonjour, la villa est-elle disponible en juillet ?'),
    ('eeeeeee2-eeee-eeee-eeee-eeeeeeeeeee2', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Oui, disponible du 1er au 15 juillet.');
