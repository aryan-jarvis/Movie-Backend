CREATE TABLE review (
    id SERIAL PRIMARY KEY,
    user_id BIGINT REFERENCES user(id),
    comments TEXT,
    stars INT CHECK (stars >= 1 AND stars <= 5),
    show_id BIGINT REFERENCES show(id),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    deleted_at TIMESTAMP
);
