DELIMITER $$
CREATE PROCEDURE idade(IN idCliente int, OUT idade int)
	BEGIN
		DECLARE dt datetime;
        SET dt = (select d_nasc_cliente from cliente WHERE i_cliente_cliente = idCliente);
        SET idade = year(now()) - year(dt);
	END $$
DELIMITER ;

call idade(1, @idadeCliente);
select @idadeCliente;
call idade(2, @idadeCliente);
select @idadeCliente;
call idade(7, @idadeCliente);
select @idadeCliente;
call idade(10, @idadeCliente);
select @idadeCliente;

DELIMITER $$
CREATE PROCEDURE idade2(IN idCliente int, OUT idade int, OUT res varchar(20))
	BEGIN
		DECLARE dt datetime;
        SET dt = (select d_nasc_cliente from cliente WHERE i_cliente_cliente = idCliente);
        SET idade = year(now()) - year(dt);
        IF (idade>=18) THEN 
			SET res = "Maior"; 
			ELSE SET res = "Menor";
		END IF;
	END $$
DELIMITER ;

CALL idade2(1, @idade, @res);
select @idade, @res;
CALL idade2(19, @idade, @res);
select @idade, @res;
CALL idade2(3, @idade, @res);
select @idade, @res;
CALL idade2(22, @idade, @res);
select @idade, @res;

-- Melhorando o cálculo da idade com datediff() e tratando nulls
DELIMITER $$
CREATE PROCEDURE idade3(IN idCliente int, OUT idade int, OUT res varchar(20))
	BEGIN
		DECLARE dt datetime;
        SET dt = (select d_nasc_cliente from cliente WHERE i_cliente_cliente = idCliente);
        SET idade = ifnull(floor(datediff(now(), dt)/365), 0);
        IF (idade>=18) THEN 
			SET res = "Maior"; 
			ELSE SET res = "Menor";
		END IF;
	END $$
DELIMITER ;

call idade3 (1, @idade, @res);
select @idade, @res;
CALL idade3(3, @idade, @res);
select @idade, @res;
CALL idade3(22, @idade, @res);
select @idade, @res;

