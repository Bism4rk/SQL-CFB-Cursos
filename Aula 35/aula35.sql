select * from cliente;

/*
ESTRUTURA
case
	when cond1 then res1
	when cond2 then res2
	when cond3 then res3
	else res4
end
*/

select 
	i_cliente_cliente,
    s_nome_cliente,
    s_cpf_cliente,
    d_nasc_cliente,
    i_tipo_cliente
from cliente;

select 
	i_cliente_cliente,
    s_nome_cliente,
    s_cpf_cliente,
    case
		when d_nasc_cliente is null then now()
        else d_nasc_cliente
	end 'd_nasc_cliente',
    i_tipo_cliente
from cliente;

select 
	i_cliente_cliente,
    s_nome_cliente,
    s_cpf_cliente,
    case
		when d_nasc_cliente is null then now()
        when d_nasc_cliente < now() then now()
        else d_nasc_cliente
	end 'd_nasc_cliente',
    i_tipo_cliente
from cliente;

select 
	i_cliente_cliente,
    s_nome_cliente,
    s_cpf_cliente,
    case
		when d_nasc_cliente is null then now()
        else d_nasc_cliente
	end 'd_nasc_cliente',
    i_tipo_cliente,
    case
		when (datediff(now(), d_nasc_cliente)/365) > 18 then 'Maior de idade'
        else 'Menor de idade'
    end 'Situação'
from cliente;

select 
	i_cliente_cliente,
    s_nome_cliente,
    s_cpf_cliente,
    d_nasc_cliente,
    i_tipo_cliente,
    case
		when d_nasc_cliente is not null then floor((datediff(now(), d_nasc_cliente)/365))
        else 'Nulo' 
	end 'Idade'
from cliente;