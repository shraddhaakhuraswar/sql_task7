
CREATE SCHEMA my_custom_schema;


CREATE TABLE my_custom_schema.employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    position VARCHAR(100),
    salary NUMERIC
);


INSERT INTO my_custom_schema.employees (first_name, last_name, position, salary)
VALUES ('John', 'Doe', 'Software Engineer', 70000);


SELECT * FROM my_custom_schema.employees;

)
SET search_path TO my_custom_schema, public;


SELECT * FROM employees;
CREATE ROLE student WITH LOGIN PASSWORD 'admin';
GRANT CREATE ON DATABASE student TO student;




GRANT USAGE ON SCHEMA my_custom_schema TO student;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA my_custom_schema TO student;


\dn
\dt my_custom_schema.*

CREATE SCHEMA schema1;
CREATE SCHEMA schema2;

CREATE TABLE schema1.table1 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE schema1.table2 (
    id SERIAL PRIMARY KEY,
    description TEXT,
    active BOOLEAN DEFAULT TRUE
);


CREATE TABLE schema2.table1 (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100)
);

CREATE TABLE schema2.table2 (
    id SERIAL PRIMARY KEY,
    email VARCHAR(100) UNIQUE NOT NULL,
    registered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE schema2.table3 (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price NUMERIC(10, 2) NOT NULL,
    in_stock BOOLEAN DEFAULT TRUE
);


