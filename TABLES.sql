CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    address VARCHAR(100) NOT NULL
);

CREATE TABLE movies (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    director VARCHAR(50) NOT NULL,
    release_date DATE NOT NULL
);

CREATE TABLE concessions (
    concession_combo SERIAL PRIMARY KEY,
    name VARCHAR(50),
    price DECIMAL(5, 2) NOT NULL
);

CREATE TABLE tickets (
    ticket_id SERIAL PRIMARY KEY,
    movie_id INT NOT NULL,
    seat_number VARCHAR(10) NOT NULL,
    concession_combo INT NOT NULL,
    customer_id INT NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES movies (movie_id),
    FOREIGN KEY (concession_combo) REFERENCES concessions (concession_combo),
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);

select * from tickets
