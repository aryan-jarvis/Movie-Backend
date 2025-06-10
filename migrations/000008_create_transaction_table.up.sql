CREATE TABLE transaction (
    id SERIAL PRIMARY KEY,
    transaction_amount FLOAT,
    transaction_status VARCHAR(100),
    booking_id BIGINT REFERENCES booking(id),
    transaction_time TIMESTAMP,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    deleted_at TIMESTAMP
);
