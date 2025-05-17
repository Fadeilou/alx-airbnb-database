-- Nombre total de bookings par user
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;

-- Classement des properties par nombre de bookings
SELECT property_id, COUNT(*) AS booking_count,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS property_rank
FROM bookings
GROUP BY property_id;
