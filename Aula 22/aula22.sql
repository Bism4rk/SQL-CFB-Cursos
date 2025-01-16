select * from cliente; -- Ordernado pela chave primária

select * from cliente order by s_nome_cliente; -- Ordena pelo nome
select * from cliente order by i_tipo_cliente; -- Ordena pelo tipo
select * from cliente order by i_tipo_cliente, s_nome_cliente; -- Ordena dentro do tipo pelo nome do cliente

select * from cliente order by 5; -- Ordena pela coluna 5 (i_tipo_cliente)
select * from cliente order by 2; -- Ordena pela coluna 2 (s_nome_cliente)
 
select * from cliente order by 2 DESC; -- Ordena pela coluna 2 (s_nome_cliente) com ordem descendente (Z -> A)
select * from cliente order by 2 ASC; -- Ordena pela coluna 2 (s_nome_cliente) com ordem crescente (A -> Z, padrão)
select * from cliente order by 5, 2 DESC; -- Ordena dentro do tipo pelo nome do cliente com ordem descendente
select * from cliente order by 5 DESC, 2 ASC; -- Ordena dentro do tipo (que é com ordem descendente) pelo nome do cliente com ordem crescente

select * from cliente order by right(s_cpf_cliente, 3); -- Ordena pelos 3 últimos dígitos do CPF
select * from cliente order by left(s_cpf_cliente, 3); -- Ordena pelos 3 primeiros dígitos do CPF





