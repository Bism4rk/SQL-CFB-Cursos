select * from venda;
select max(f_valor_venda) from venda;
select min(f_valor_venda) from venda;

select * from venda where f_valor_venda = (select max(f_valor_venda) from venda); 

select
c.s_nome_cliente,
v.i_venda_venda,
v.f_valor_venda,
v.d_data_venda
from venda v
inner join cliente c on c.i_cliente_cliente = v.i_cliente_cliente
where f_valor_venda = (select max(f_valor_venda) from venda); 