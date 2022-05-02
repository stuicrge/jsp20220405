USE mydb1;

-- CHAR : 고정길이 문자열
CREATE TABLE MyTable4 (
	col CHAR,
col2 CHAR(1),
col3 CHAR(2),
col4 CHAR(5)
);
DESC MyTable4;

SELECT * FROM MyTable4;

INSERT INTO MyTable4 (col1)
VALUES ('a');
INSERT INTO MyTable4 (col1)
VALUES ('ab'); -- error
INSERT INTO MyTable4 (col3)
VALUES ('ab');
INSERT INTO MyTable4 (col3)
VALUES ('b');
INSERT INTO MyTable4 (col4)
VALUES ('abcde');
INSERT INTO MyTable4 (col4)
VALUES ('abcdef');
INSERT INTO MyTable4 (col4)
VALUES ('abc'); -- 실행은 되는데 3글자가 다섯 공간을 먹음 매우 손해
INSERT INTO MyTable4 (col4)
VALUES ('가나다라마');

-- 트림(trim) disable
SET sql_mode = 'PAD_CHAR_TO_FULL_LENGTH';

SELECT * FROM MyTable4;

CREATE TABLE MyTable5(
		col1 CHAR(10),
        col2 CHAR(10)
);

DROP TABLE MyTable5;
DROP TABLE MyTable6;
SELECT * FROM MyTable5;

INSERT INTO MyTable5 (col1, col2)
VALUES ('a', 'a');
INSERT INTO MyTable5 (col2)
VALUES ('0123456789');
INSERT INTO MyTable5 (col2)
VALUES ('01234567890'); -- 되는데 짤림 또는 안됨 (주의해서 사용하세요)
INSERT INTO MyTable5 (col2)
VALUES ('abcdefghijklmn'); -- 되는데 짤림 또는 안됨 (주의해서 사용하세요)

