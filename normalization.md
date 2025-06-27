# First Normal Form (1NF).

Each column must contain atomic values, and each record must be unique.
All entities in the current schema satisfy 1NF requirements:

 All attributes contain single, indivisible values.

 Each table has a primary key (UUID) ensuring uniqueness.

User table: All attributes (first_name, last_name, email, etc.) are atomic.

Property, Booking, Payment, Review, Message tables : All attributes are single-valued.

# Second Normal Form (2NF).

 Must satisfy 1NF and all non-key attributes must be fully functionally dependent on the entire primary key.
 
All entities satisfy 2NF requirements:

All tables use single-column primary keys (UUIDs).
There are no composite primary keys, partial dependencies don't exist.
All non-key attributes depend entirely on their respective primary keys.

No composite primary keys exist in any table.

All foreign keys reference single-column primary keys.

Each attribute is fully dependent on its table's primary key.

# Third Normal Form (3NF).
 Must be in 2NF and all non-key attributes must be directly dependent on the primary key (no transitive dependencies).

User Table: No transitive dependencies.

Property Table: All attributes relate directly to the property.

Booking Table: All attributes are specific to booking.

Payment Table: All attributes relate directly to payment.

Review Table: All attributes are specific to review.

Message Table: All attributes relate directly to message.






