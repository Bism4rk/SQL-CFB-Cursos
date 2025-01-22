/*
Tipos de JOINS do SQL
- INNER JOIN = Intersecção entre A e B
- LEFT JOIN = Tudo de A + a intersecção
- RIGHT JOIN = Tudo de B + a intersecção
- FULL OUTER JOIN = Tudo de A e B
*/

select * from cliente;

select c.i_cliente_cliente, c.s_nome_cliente from cliente c;

select 
	c.i_cliente_cliente, 
    c.s_nome_cliente,
    v.i_venda_venda
from cliente c
inner join venda v on v.i_cliente_cliente = c.i_cliente_cliente;

select * from venda;

select 
	c.i_cliente_cliente, 
    c.s_nome_cliente, 
    v.i_venda_venda
from cliente c
left join venda v on v.i_cliente_cliente = c.i_cliente_cliente;

select 
	c.i_cliente_cliente, 
    c.s_nome_cliente, 
    v.i_venda_venda
from cliente c
right join venda v on v.i_cliente_cliente = c.i_cliente_cliente;