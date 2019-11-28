DROP TABLE wineries;


CREATE TABLE wineries (
  id SERIAL PRIMARY KEY,
  name VARCHAR not null,
  address VARCHAR
);
