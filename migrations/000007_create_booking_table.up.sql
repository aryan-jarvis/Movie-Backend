CREATE TABLE booking (
    id SERIAL PRIMARY KEY,
    booking_date TIMESTAMP,
    user_id BIGINT REFERENCES user(id),
    show_id BIGINT REFERENCES show(id),
    booking_status VARCHAR(100),
    theatre_id BIGINT REFERENCES theatre(id),
    transaction_status VARCHAR(100),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    deleted_at TIMESTAMP
);
