delete from cliente where i_cliente_cliente > 0;
select * from cliente;

insert into cliente select * from cliente_aux;
select * from cliente;

delete from cliente where i_cliente_cliente = 10;
select * from cliente;

insert into cliente select * from cliente_aux where i_cliente_cliente = 10;
select * from cliente;

delete from cliente where i_cliente_cliente > 5;
select * from cliente;

insert into cliente select * from cliente_aux where i_cliente_cliente > 5 ;
select * from cliente;
