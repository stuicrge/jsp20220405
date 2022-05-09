-- JOIN 

USE mydb2;

SELECT * FROM Board; -- 4개열  4개행
SELECT * FROM Reply; -- 4개열  3개행

SELECT * FROM Board, Reply; -- 결합(Cartesian Product) : 8개열 7개행
SELECT * FROM Reply, Board; 
SELECT * FROM Board JOIN Reply; -- 결합
SELECT * FROM Board JOIN Reply ON Board.id = Reply.board_id; -- inner join 교집합
SELECT * FROM Board, Reply WHERE Board.id = Reply.board_id;
SELECT * FROM Board JOIN Reply WHERE Board.id = Reply.board_id;

