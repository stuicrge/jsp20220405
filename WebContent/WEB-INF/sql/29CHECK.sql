


CREATE TABLE mytable14 (
	col1 INT,
    col2 INT CHECK (col2>0)
    );
    
    DESC mytable14;
    INSERT INTO mytable14(col1,col2)VALUES(3,3);
     INSERT INTO mytable14(col1,col2)VALUES(-3,3);
      INSERT INTO mytable14(col1,col2)VALUES(3,-3);
SELECT * FROM mytable14;

SHOW CREATE TABLE mytable14;

CREATE TABLE 'mytable15'(
	'col1' int(11) DEFAULT NULL,
    'col2' int(11) DEFAULT NULL CHECK ('col2'>0)
) ENGINE = InnDB DEFAULT CHARSET = utfmb3;

CREATE 
