CREATE TABLE theatre (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    city_id BIGINT REFERENCES city(id),
    capacity BIGINT,
    total_seats BIGINT,
    duration VARCHAR(50),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    deleted_at TIMESTAMP
);
