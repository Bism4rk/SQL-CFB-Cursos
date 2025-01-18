/*
Em outros bancos de dados:

SQL Server
select TOP 5 * from cliente;

Oracle
select * from cliente where ROWNUMBER < 5
*/

-- MySQL
select * from cliente LIMIT 5;

select * from venda;

select * from venda 
order by f_valor_venda DESC;

select * from venda 
order by f_valor_venda DESC LIMIT 3;


select 
	c.s_nome_cliente,
	v.i_venda_venda,
    v.d_data_venda,
    v.f_valor_venda
from venda v
inner join cliente c on c.i_cliente_cliente = v.i_cliente_cliente
order by f_valor_venda DESC LIMIT 3;

select 
	c.s_nome_cliente,
	v.i_venda_venda,
    v.d_data_venda,
    v.f_valor_venda
from venda v
inner join cliente c on c.i_cliente_cliente = v.i_cliente_cliente
order by f_valor_venda LIMIT 3;






