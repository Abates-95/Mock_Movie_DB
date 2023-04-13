INSERT INTO customers(
	name,
	email,
	phone_number,
	address
)VALUES(
	'John Doe',
	'john.doe@example.com',
	'555-1234',
	'123 Main St'
),(
	'Austin Bates',
	'exam@example.com',
	'123-1234',
	'120 Main St'
);

INSERT INTO movies(
	title,
	genre,
	director, 
	release_date
)VALUES(
	'The Shawshank Redemption',
	'Drama',
	'Frank Darabont', 
	'1994-09-23'
),(
	'Pineapple Express',
	'Comedy',
	'David Green', 
	'2008-08-06'
);

INSERT INTO concessions(
	concession_combo,
	name,
	price
)VALUES(
	1,
	'Popcorn and a drink',
	2.99
),(
	2,
	'Candy and a drink',
	3.99
),(
	3,
	'Popcorn, candy and a drink',
	8.99
);

INSERT INTO tickets(
	movie_id, 
	seat_number,
	concession_combo,
	customer_id
)VALUES(
	1, 
	'A1', 
	1,
	1
),(
	1,
	'A3',
	3,
	2
);