select 
	tbc.i_cliente_cliente as IDCliente, 
    upper(tbc.s_nomecli_cliente) as NomeCliente, 
    tbc.i_tipo_cliente as TipoCliente,
    tbc.i_cliente_cliente * 2 as valorCliente
from cliente tbc;

CREATE TABLE `cfbcursos`.`venda` (
  `i_venda_venda` INT NOT NULL AUTO_INCREMENT,
  `i_cliente_cliente` INT NOT NULL,
  `d_data_venda` DATE NULL,
  `f_valor_venda` FLOAT NULL,
  PRIMARY KEY (`i_venda_venda`),
  INDEX `fk_i_cliente_cliente_idx` (`i_cliente_cliente` ASC) VISIBLE,
  CONSTRAINT `fk_i_cliente_cliente`
    FOREIGN KEY (`i_cliente_cliente`)
    REFERENCES `cfbcursos`.`cliente` (`i_cliente_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
insert into venda VALUES (1, 1, '2020-12-12', 123.50); 
insert into venda values(2,2,'2020-12-01',535.2);
insert into venda values(3,3,'2021-11-10',50.49);
insert into venda values(4,2,'2023-10-15',1584.25);
insert into venda values(5,1,'2022-11-20',327.80);
insert into venda values(6,3,'2024-09-08',15);
insert into venda values(7,3,'2023-09-07',12.99);
insert into venda values(8,3,'2022-11-22',59.90);
insert into venda values(9,1,'2021-10-10',235.50);
insert into venda values(10,2,'2020-01-23',7.99);
insert into venda values(11,4,'2022-02-15',123.5);
insert into venda values(12,5,'2024-03-07',535.2);
insert into venda values(13,6,'2023-04-01',50.49);
insert into venda values(14,5,'2023-04-01',1584.25);
insert into venda values(15,5,'2022-05-20',327.80);
insert into venda values(16,7,'2022-03-18',15);
insert into venda values(17,4,'2021-09-07',12.99);
insert into venda values(18,3,'2024-12-24',59.90);
insert into venda values(19,8,'2021-06-25',235.50);
insert into venda values(20,2,'2023-06-26',7.99);

select * from venda;
select * from venda where i_cliente_cliente = 1;
select i_cliente_cliente from venda;
select distinct i_cliente_cliente from venda;

