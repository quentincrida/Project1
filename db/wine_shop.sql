DROP TABLE wines;
DROP TABLE wineries;


CREATE TABLE wineries (
  id SERIAL PRIMARY KEY,
  name VARCHAR not null,
  address VARCHAR
);

CREATE TABLE wines (
  id SERIAL PRIMARY KEY,
  name VARCHAR not null,
  description VARCHAR,
  stock INT,
  cost INT,
  price INT,
  winery_id INT REFERENCES wineries(id)ON DELETE CASCADE
);
