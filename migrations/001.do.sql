CREATE TABLE pet_store (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    address TEXT NOT NULL,
    phone_number TEXT NOT NULL
);

CREATE TABLE pet (
    id INTEGER PRIMARY KEY,
    pet_store_id INTEGER NOT NULL,
    name TEXT NOT NULL,
    type TEXT NOT NULL,
    age INTEGER NOT NULL,
    FOREIGN KEY (pet_store_id) REFERENCES pet_store(id)
);

CREATE TABLE customer (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    address TEXT NOT NULL,
    phone_number TEXT NOT NULL
);

CREATE TABLE purchase (
    id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    pet_id INTEGER NOT NULL,
    purchase_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(id),
    FOREIGN KEY (pet_id) REFERENCES pet(id)
);