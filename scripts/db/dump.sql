CREATE TABLE IF NOT EXISTS categories (
  "id" SERIAL PRIMARY KEY,
  "title" text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS users (
  "id" SERIAL PRIMARY KEY,
  "email" text DEFAULT NULL,
  "role" text DEFAULT NULL,
  "name" text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS books (
  "id" SERIAL PRIMARY KEY,
  "category_id" int references categories(id),
  "taken_by" int references users(id),
  "title" text DEFAULT NULL,
  "year" int DEFAULT NULL
);

INSERT INTO categories (title) VALUES
('Sci-fi'),
('Romance'),
('Fantasy'),
('Detective');

INSERT INTO users (email, role, name) VALUES
('adam@gmail.com', 'user', 'Adam'),
('john@gmail.com', 'user', 'John'),
('chris@gmail.com', 'user', 'Chris'),
('conor@gmail.com', 'admin', 'Conor'),
('stefan@gmail.com', 'admin', 'Stefan'),
('andrew@gmail.com', 'user', 'Andrew');

INSERT INTO books (category_id, taken_by, title, year) VALUES
(1, 1, 'Yet another book', 2020),
(1, 2, 'Borman Cooling', 2019),
(2, 1, 'Book about book', 2019),
(3, 4, 'Silly stealy', 2020),
(4, 3, 'Apple. Story.', 2021),
(3, 4, 'Post', 2020);
