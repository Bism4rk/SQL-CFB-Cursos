select * from cliente;

select * from cliente WHERE s_cpf_cliente = '12345678910'; 
select * from cliente WHERE s_cpf_cliente = '12345678910' or s_cpf_cliente = '11111111111';

select * from cliente WHERE i_tipo_cliente = 1;
select * from cliente WHERE i_tipo_cliente = 1 and month(d_nasc_cliente) > 5;
select * from cliente WHERE i_tipo_cliente = 2 and month(d_nasc_cliente) > 5;

select * from cliente WHERE i_tipo_cliente in (2,3) and (month(d_nasc_cliente) >= 4 or month(d_nasc_cliente) <= 9);
select * from cliente WHERE i_tipo_cliente in (2,3) and (month(d_nasc_cliente) >= 4 and month(d_nasc_cliente) <= 9);