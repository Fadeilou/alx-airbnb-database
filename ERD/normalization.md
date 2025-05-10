# Database Normalization to 3NF

## 1NF (First Normal Form)
- All tables have atomic values.
- Each field contains only one value per record.

## 2NF (Second Normal Form)
- No partial dependency on part of a composite key.
- Since we use UUIDs as primary keys, all non-key attributes depend on the full primary key.

## 3NF (Third Normal Form)
- No transitive dependencies.
- All attributes are only dependent on the primary key.

## Conclusion:
The current schema respects the 3NF:
- Each entity has a primary key.
- Attributes describe the entity directly.
- Foreign keys properly relate tables without redundancy.
