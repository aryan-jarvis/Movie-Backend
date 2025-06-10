CREATE TABLE refund (
    id SERIAL PRIMARY KEY,
    user_id BIGINT REFERENCES user(id),
    theatre_id BIGINT REFERENCES theatre(id),
    movie_id BIGINT REFERENCES movie(id),
    transaction_id BIGINT REFERENCES transaction(id),
    payment_method VARCHAR(100),
    payment_status VARCHAR(100),
    total_amount FLOAT,
    transaction_time TIMESTAMP,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    deleted_at TIMESTAMP
);
