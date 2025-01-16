select 
	count(v.i_venda_venda) as 'Qtde. de vendas no dia', 
    d_data_venda 
from venda v 
group by d_data_venda;

select 
	count(v.i_venda_venda) as 'Qtde. de vendas no dia', 
    d_data_venda 
from venda v 
group by d_data_venda
having count(v.i_venda_venda) > 1;





