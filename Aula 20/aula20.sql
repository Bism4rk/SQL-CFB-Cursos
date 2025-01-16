-- IMPORTANTE: SÓ FUNCIONA COM O SEGUINTE BRUTE FORCE -> SET sql_mode = (SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY', ''));

select * from cliente;

select * from cliente group by s_nome_cliente;
select * from cliente group by i_tipo_cliente;

select count(i_tipo_cliente) as 'Quantidade', i_tipo_cliente FROM cliente GROUP BY i_tipo_cliente;

select 
	count(c.i_tipo_cliente) as 'Quantidade', 
    -- c.i_tipo_cliente,
    tc.s_dsctipocliente_tipocliente as 'Tipo de cliente'
FROM cliente c 
INNER JOIN tipocliente tc on c.i_tipo_cliente = tc.i_tipocliente_tipocliente
GROUP BY c.i_tipo_cliente;

select 
	count(c.i_tipo_cliente) as 'Quantidade', 
    -- c.i_tipo_cliente,
    tc.s_dsctipocliente_tipocliente as 'Tipo de cliente'
FROM tipocliente tc 
INNER JOIN cliente c on c.i_tipo_cliente = tc.i_tipocliente_tipocliente
GROUP BY tc.i_tipocliente_tipocliente;

select * from venda;

select count(v.i_venda_venda) as 'Qtde. de vendas no dia', d_data_venda from venda v group by d_data_venda;

select 
	count(v.i_venda_venda) as 'Vendas por cliente', 
    -- v.i_cliente_cliente,
    c.s_nome_cliente
from venda v 
INNER JOIN cliente c ON v.i_cliente_cliente = c.i_cliente_cliente
group by c.s_nome_cliente ORDER BY count(v.i_venda_venda) DESC;
