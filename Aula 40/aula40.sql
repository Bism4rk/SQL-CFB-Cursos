DELIMITER $$
CREATE PROCEDURE somaVendas (OUT soma float)
	BEGIN
		DECLARE vv float DEFAULT 0; 
        DECLARE fimLoop int DEFAULT 0;
        DECLARE meuCursor cursor for select f_valor_venda from venda;
        DECLARE continue handler for not found SET fimLoop = 1;
        SET soma = 0;
        OPEN meuCursor;
        WHILE (fimLoop != 1) DO
			FETCH meuCursor into vv;
            SET soma = soma + vv;
		END WHILE;
        
    END $$
DELIMITER ;

CALL somaVendas(@soma);
SELECT @soma;
select round(@soma, 2);