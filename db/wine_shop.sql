--DROP TABLE wines;
DROP TABLE wineries;


CREATE TABLE wineries (
  id SERIAL PRIMARY KEY,
  name VARCHAR not null,
  address VARCHAR
);

-- CREATE TABLE wines (
--   ID SERIAL PRIMARY KEY,
--   name VARCHAR not null,
--   description VARCHAR,
--   stock INT,
--   cost INT,
--   price INT
-- winery_id REFERENCES wineries(id)ON DELETE CASCADE
-- );
