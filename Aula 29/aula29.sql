select * from cliente;

select * from cliente where right(s_cpf_cliente, 1) = 0;
select * from cliente where right(s_cpf_cliente, 1) = 0 or right(s_cpf_cliente, 1) = 1;

select * from cliente where right (s_cpf_cliente, 1) in (0, 1, 2);
select * from cliente where right (s_cpf_cliente, 1) in (0, 1);
select * from cliente where right (s_cpf_cliente, 1) in (0, 1, 2, 3);
select * from cliente where right (s_cpf_cliente, 3) in (000, 111);

select 
	d_nasc_cliente
from cliente
WHERE d_nasc_cliente > '2000-01-01'
AND d_nasc_cliente < '2005-01-01';

select * from cliente
WHERE d_nasc_cliente in
(select 
	d_nasc_cliente
from cliente
WHERE d_nasc_cliente > '2000-01-01'
AND d_nasc_cliente < '2005-01-01');