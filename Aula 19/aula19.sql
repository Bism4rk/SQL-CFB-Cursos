select * from cliente;
select * from tipocliente; 

select c.i_cliente_cliente, c.s_nomecli_cliente, c.s_cpf_cliente, c.d_nasc_cliente, c.i_tipo_cliente, tc.s_dsctipocliente_tipocliente from cliente c
inner join tipocliente tc on c.i_tipo_cliente = tc.i_tipocliente_tipocliente;

select * from venda;
select 
v.i_venda_venda,
v.i_cliente_cliente, 
c.s_nomecli_cliente,
c.s_cpf_cliente,
tc.s_dsctipocliente_tipocliente,
v.d_data_venda,
v.f_valor_venda
from venda v
inner join cliente c on c.i_cliente_cliente = v.i_cliente_cliente
inner join tipocliente tc on tc.i_tipocliente_tipocliente = c.i_tipo_cliente