select * from cliente;

select * from cliente c1, cliente c2;
select * from cliente c1, cliente c2 where c1.i_tipo_cliente = c2.i_tipo_cliente order by c1.i_tipo_cliente;
select * from cliente c1, cliente c2 where c1.i_tipo_cliente = c2.i_tipo_cliente and c1.s_nome_cliente = 'Bruno' order by c1.i_tipo_cliente;