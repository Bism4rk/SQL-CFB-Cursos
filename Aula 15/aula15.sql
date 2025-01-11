select * from cliente;
select i_cliente_cliente from cliente;
select max(c.i_cliente_cliente)+1 from cliente c;

insert into cliente VALUES 
	((select max(c.i_cliente_cliente)+1 from cliente c), 
    'Vespertino', 
    '77766655532', 
    '1999-03-03', 
    1);
    
select * from cliente;

insert into cliente VALUES 
	((select max(c.i_cliente_cliente)+1 from cliente c), 
    'Brastisvardon', 
    '22299987669', 
    '1983-12-02', 
    1);
    
select * from cliente;
