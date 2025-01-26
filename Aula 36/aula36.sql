/*
MySQL = IFNULL ou COALESCE
SQLServer = IS NULL
Oracle = NVL
Todos tem a mesma sintaxe na função -> IFNULL(coluna, XYZABC)
*/

select * from produtovenda;
select *, (f_precoun_produtovenda * i_qtde_produtovenda) as 'Total' from produtovenda;
select *, round((f_precoun_produtovenda * i_qtde_produtovenda),2) as 'Total' from produtovenda;

update produtovenda set i_qtde_produtovenda = null where i_produtovenda_produtovenda = 1;
select 
	*, 
	round((f_precoun_produtovenda * IFNULL(i_qtde_produtovenda, 0)),2) 
as 'Total' from produtovenda;

-- Alternativa para uma das queries da aula passada usando o IFNULL
select 
	i_cliente_cliente as 'ID Cliente',
    s_nome_cliente as 'Nome',
    s_cpf_cliente 'CPF',
    ifnull(d_nasc_cliente, now()) as 'Data de nascimento',
    /*
    case
		when d_nasc_cliente is null then now()
        else d_nasc_cliente
	end 'd_nasc_cliente',
    */
    i_tipo_cliente as 'Tipo Cliente'
from cliente;

select 
	i_cliente_cliente as 'ID Cliente',
    s_nome_cliente as 'Nome',
    s_cpf_cliente as 'CPF',
    d_nasc_cliente as 'Data de nascimento',
    i_tipo_cliente as 'Tipo Cliente',
    ifnull(floor((datediff(now(), d_nasc_cliente)/365)), 0) as 'Idade'
    /*
    case
		when d_nasc_cliente is not null then floor((datediff(now(), d_nasc_cliente)/365))
        else 'Nulo' 
	end 'Idade'
    */
from cliente;

