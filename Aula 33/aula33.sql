select * from cliente;
select * from cliente_aux;

select i_cliente_cliente, s_nome_cliente from cliente;
select i_cliente_cliente, s_nomecli_cliente from cliente_aux;

select i_cliente_cliente, s_nome_cliente from cliente
union
select i_cliente_cliente, s_nomecli_cliente from cliente_aux;

select 'Cliente' as Tabela, i_cliente_cliente, s_nome_cliente from cliente
union
select 'Cliente Aux', i_cliente_cliente, s_nomecli_cliente from cliente_aux;

select 'Cliente' as Tabela, i_cliente_cliente, s_nome_cliente from cliente
union
select 'Cliente Aux', i_cliente_cliente, s_nomecli_cliente from cliente_aux
union
select 'Venda', v.i_cliente_cliente, c.s_nome_cliente from venda v inner join cliente c on c.i_cliente_cliente = v.i_cliente_cliente;