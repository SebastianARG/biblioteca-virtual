-- Crear tabla de usuarios
CREATE TABLE IF NOT EXISTS users (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(20) NOT NULL CHECK (role IN ('USER', 'ADMIN'))
    );

-- Crear tabla de libros
CREATE TABLE IF NOT EXISTS books (
    id BIGSERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    author VARCHAR(100) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    year INT,
    popularity DOUBLE PRECISION DEFAULT 0
    );

-- Crear tabla de lecturas
CREATE TABLE IF NOT EXISTS read_records (
    id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    book_id BIGINT NOT NULL REFERENCES books(id) ON DELETE CASCADE,
    score INT CHECK (score BETWEEN 1 AND 5),
    read_date DATE NOT NULL DEFAULT CURRENT_DATE,
    UNIQUE (user_id, book_id)
    );