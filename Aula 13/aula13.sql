select i_cliente_cliente, upper(s_nome_cliente), i_tipo_cliente from cliente;

select 
	i_cliente_cliente as IDCliente, 
    upper(s_nome_cliente) as NomeCliente, 
    i_tipo_cliente as TipoCliente,
    i_cliente_cliente * 2 as valorCliente
from cliente;

select 
	tbc.i_cliente_cliente as IDCliente, 
    upper(tbc.s_nome_cliente) as NomeCliente, 
    tbc.i_tipo_cliente as TipoCliente,
    tbc.i_cliente_cliente * 2 as valorCliente
from cliente tbc;