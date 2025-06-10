CREATE TABLE show (
    id SERIAL PRIMARY KEY,
    duration VARCHAR(50),
    theatre_id BIGINT REFERENCES theatre(id),
    date TIMESTAMP,
    movie_id BIGINT REFERENCES movie(id),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    deleted_at TIMESTAMP
);
