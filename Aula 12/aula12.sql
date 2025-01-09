select * from cliente;

/*
cláusulas que podem ser utilizadas em um SELECT
- WHERE: filtros da consulta
- GROUP BY: agrupa linhas por valores de colunas
- HAVING: filtra grupos indesejados 
- ORDER BY: ordena
*/

select s_nomecli_cliente, s_cpf_cliente from cliente;
select *, s_nomecli_cliente, s_cpf_cliente from cliente;
select s_nomecli_cliente, i_tipo_cliente from cliente;
select s_nomecli_cliente, i_tipo_cliente * 2 from cliente;
select i_cliente_cliente, upper(s_nomecli_cliente), i_tipo_cliente from cliente;