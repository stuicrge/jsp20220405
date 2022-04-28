

CREATE TABLE mytable12 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) NOT NULL UNIQUE
);
DESC mytable12;

-- primary key : not null, unique 조합
CREATE TABLE mytable13(
	col1 VARCHAR(10),
    col2 VARCHAR(10) PRIMARY KEY
);
DESC mytable13;


