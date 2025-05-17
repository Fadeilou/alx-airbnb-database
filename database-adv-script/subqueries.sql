-- Non-correlated subquery: propriétés avec moyenne de rating > 4.0
SELECT p.id, p.name
FROM properties p
WHERE (
  SELECT AVG(r.rating)
  FROM reviews r
  WHERE r.property_id = p.id
) > 4.0;

-- Correlated subquery: users avec plus de 3 bookings
SELECT u.id, u.name
FROM users u
WHERE (
  SELECT COUNT(*)
  FROM bookings b
  WHERE b.user_id = u.id
) > 3;
