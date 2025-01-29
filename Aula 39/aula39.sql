DELIMITER $$
CREATE PROCEDURE loopwhile(OUT soma int)
	BEGIN
		DECLARE X int DEFAULT 0;
        while(x<10) DO 
			SET X = X+1;
		END WHILE;
        SET SOMA = x;
    END $$
DELIMITER ;

CALL loopwhile(@soma);
select @soma;

DELIMITER $$
CREATE PROCEDURE loopwhilemax(IN max int, OUT soma int)
	BEGIN
		DECLARE X int DEFAULT 0;
        while(x<max) DO 
			SET X = X+1;
		END WHILE;
        SET SOMA = x;
    END $$
DELIMITER ;

CALL loopwhilemax(20, @soma);
select @soma;
CALL loopwhilemax(30, @soma);
select @soma;
CALL loopwhilemax(55, @soma);
select @soma;
CALL loopwhilemax(6382, @soma);
select @soma;

DELIMITER $$
CREATE PROCEDURE looploop(IN max int, OUT soma int)
	BEGIN
		DECLARE X int DEFAULT 0;
        meuloop:LOOP
			IF(X >= max) THEN
				leave meuloop;
			END IF;
            SET X = X+1;
        END LOOP;
        SET soma = X;
    END $$
DELIMITER ;

CALL looploop (35, @soma);
SELECT @soma;