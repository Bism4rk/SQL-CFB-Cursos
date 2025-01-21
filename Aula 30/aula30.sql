select * from cliente;
select * from cliente where i_cliente_cliente in (1,2,3,4,5,6,7,8,9,10);
select * from cliente where i_cliente_cliente between 1 and 10;

select * from cliente where d_nasc_cliente between '1990-01-01' and '2000-01-01';

select * from venda;
select * from venda where d_data_venda between '2020-01-01' and '2020-10-01';

select 
	* 
from venda 
where d_data_venda between '2020-01-01' and '2022-01-01'
and i_cliente_cliente not in (3, 10)
and f_valor_venda > 20;


