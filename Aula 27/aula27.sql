/*
SUM = Soma
AVG = Média
COUNT = Contagem
ROUND = Arredondamento
*/

select * from venda;
select sum(f_valor_venda) from venda;
select round(sum(f_valor_venda),2) from venda;
select round(sum(f_valor_venda),2) from venda 
WHERE d_data_venda > '2022-12-31';

select round(avg(f_valor_venda),2) from venda;
select round(avg(f_valor_venda),2) from venda
WHERE f_valor_venda > (select min(f_valor_venda) from venda)
and f_valor_venda < (select max(f_valor_venda) from venda);

select 
	round(avg(f_valor_venda),2) as 'Valor médio das vendas',
    count(f_valor_venda) as 'Qtde. de vendas'
from venda
WHERE f_valor_venda > (select min(f_valor_venda) from venda)
and f_valor_venda < (select max(f_valor_venda) from venda);

select 
	round(avg(f_valor_venda),2) as 'Valor médio das vendas',
    count(f_valor_venda) as 'Qtde. de vendas'
from venda;
