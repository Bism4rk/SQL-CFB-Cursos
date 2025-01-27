DELIMITER $$
CREATE PROCEDURE basico()
	BEGIN
		select * from cliente;
	END $$
DELIMITER ;
CALL basico();

DELIMITER $$
CREATE PROCEDURE basicovariavel()
	BEGIN
		DECLARE X int;
        SET X = 10;
        select X;
	END $$
DELIMITER ;
CALL basicovariavel();

DELIMITER $$
CREATE PROCEDURE canal()
	BEGIN
		DECLARE X varchar(40);
        SET X = "youtube.com/@cfbcursos";
        select X;
	END $$
DELIMITER ;
CALL canal();

DELIMITER $$
CREATE PROCEDURE canalparam(IN curso varchar(50))
	BEGIN
		DECLARE X varchar(50);
        SET X = "youtube.com/@cfbcursos";
        select X, curso;
	END $$
DELIMITER ;
CALL canalparam('SQL');