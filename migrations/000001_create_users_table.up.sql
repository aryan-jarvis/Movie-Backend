CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    gender VARCHAR(50),
    email VARCHAR(255),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    deleted_at TIMESTAMP
);

CREATE TABLE movies (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    runtime VARCHAR(50),
    language VARCHAR(100),
    country VARCHAR(100),
    genre VARCHAR(100),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    deleted_at TIMESTAMP
);

CREATE TABLE cities (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255),
    zipcode BIGINT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    deleted_at TIMESTAMP
);

CREATE TABLE theatre (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    city_id BIGINT REFERENCES cities(id),
    capacity BIGINT,
    total_screens BIGINT,
    contact_id BIGINT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    deleted_at TIMESTAMP
);

CREATE TABLE shows (
    id SERIAL PRIMARY KEY,
    start_time VARCHAR(100),
    end_time VARCHAR(100),
    theatre_id BIGINT REFERENCES theatre(id),
    date VARCHAR(100),
    movie_id BIGINT REFERENCES movies(id),
    screen_hall_id BIGINT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    deleted_at TIMESTAMP
);

CREATE TABLE bookings (
    id SERIAL PRIMARY KEY,
    booking_date VARCHAR(100),
    user_id BIGINT REFERENCES users(id),
    show_id BIGINT REFERENCES shows(id),
    booking_status VARCHAR(100),
    theatre_id BIGINT REFERENCES theatre(id),
    no_of_seats BIGINT,
    transaction_status VARCHAR(100),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    deleted_at TIMESTAMP
);

CREATE TABLE show_seats (
    id SERIAL PRIMARY KEY,
    seat_id BIGINT,
    status VARCHAR(50),
    price BIGINT,
    show_id BIGINT REFERENCES shows(id),
    booking_id BIGINT REFERENCES bookings(id),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    deleted_at TIMESTAMP
);

CREATE TABLE transactions (
    id SERIAL PRIMARY KEY,
    transaction_amount FLOAT,
    transaction_status VARCHAR(100),
    booking_id BIGINT REFERENCES bookings(id),
    transaction_time VARCHAR(100),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    deleted_at TIMESTAMP
);

CREATE TABLE payments (
    id SERIAL PRIMARY KEY,
    booking_id BIGINT REFERENCES bookings(id),
    payment_method VARCHAR(100),
    payment_status VARCHAR(100),
    transaction_time VARCHAR(100),
    timestamp VARCHAR(100),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    deleted_at TIMESTAMP
);

CREATE TABLE reviews (
    id SERIAL PRIMARY KEY,
    user_id BIGINT REFERENCES users(id),
    content TEXT,
    stars BIGINT,
    seat_no BIGINT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    deleted_at TIMESTAMP
);
