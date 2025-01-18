select * from cliente;

select * from cliente
WHERE d_nasc_cliente IS NOT NULL;

select * from cliente
WHERE d_nasc_cliente IS NOT NULL 
AND i_tipo_cliente = 1;

select * from cliente
WHERE d_nasc_cliente IS NULL 
AND i_tipo_cliente = 1;

select * from cliente
WHERE d_nasc_cliente IS NULL 
OR i_tipo_cliente = 1;

select * from cliente
WHERE NOT i_tipo_cliente = 1;

select * from cliente
WHERE NOT i_tipo_cliente = 1 
AND NOT i_tipo_cliente = 2;

select * from cliente
WHERE i_tipo_cliente != 1 
AND i_tipo_cliente != 2;

select * from cliente
WHERE (i_tipo_cliente != 1 AND i_tipo_cliente != 2)
OR d_nasc_cliente IS NOT NULL;