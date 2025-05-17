-- INNER JOIN: Bookings avec Users
SELECT b.id AS booking_id, u.id AS user_id, u.name, b.start_date, b.end_date
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;

-- LEFT JOIN: Properties avec Reviews
SELECT p.id AS property_id, p.name, r.id AS review_id, r.comment
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id;

-- FULL OUTER JOIN: Users avec Bookings (pour MySQL, utiliser UNION de LEFT et RIGHT JOIN)
SELECT u.id AS user_id, b.id AS booking_id, u.name, b.start_date
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id
UNION
SELECT u.id, b.id, u.name, b.start_date
FROM users u
RIGHT JOIN bookings b ON u.id = b.user_id;
