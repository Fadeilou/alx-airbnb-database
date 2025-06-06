-- Partitionnement de bookings sur start_date
ALTER TABLE bookings
PARTITION BY RANGE (YEAR(start_date)) (
  PARTITION p_before_2023 VALUES LESS THAN (2023),
  PARTITION p_2023 VALUES LESS THAN (2024),
  PARTITION p_2024 VALUES LESS THAN (2025),
  PARTITION p_future VALUES LESS THAN MAXVALUE
);
