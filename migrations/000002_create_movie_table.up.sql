CREATE TABLE movie (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    director_name VARCHAR(255),
    release_date TIMESTAMP,
    duration VARCHAR(50),
    language VARCHAR(100),
    genre VARCHAR(100),
    certificate VARCHAR(100),
    poster_url TEXT,
    rating VARCHAR(255),
    description TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    deleted_at TIMESTAMP
);