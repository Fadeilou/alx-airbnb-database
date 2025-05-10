# Entity-Relationship Diagram Specification

## Entities:
- **User** (user_id, first_name, last_name, email, ...)
- **Property** (property_id, host_id, name, ...)
- **Booking** (booking_id, property_id, user_id, ...)
- **Payment** (payment_id, booking_id, ...)
- **Review** (review_id, property_id, user_id, ...)
- **Message** (message_id, sender_id, recipient_id, ...)

## Relationships:
- A User can own multiple Properties.
- A User can make multiple Bookings.
- A Booking is linked to one Property and one User.
- A Booking can have one Payment.
- A User can leave multiple Reviews on Properties.
- A User can send Messages to other Users.
