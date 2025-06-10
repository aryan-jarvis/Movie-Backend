CREATE TABLE ticket (
    id SERIAL PRIMARY KEY,
    amount FLOAT,
    movie_id BIGINT REFERENCES movie(id),
    theatre_id BIGINT REFERENCES theatre(id),
    transaction_id BIGINT REFERENCES transaction(id),
    show_id BIGINT REFERENCES show(id),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    deleted_at TIMESTAMP
);
