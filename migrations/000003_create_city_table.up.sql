CREATE TABLE city (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255),
    state_id BIGINT REFERENCES state(id),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    deleted_at TIMESTAMP
);
