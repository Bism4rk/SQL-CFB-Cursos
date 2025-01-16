update cliente set s_nome_cliente = 'Bruno B. Reichert', s_cpf_cliente = '86133802049 ' where i_cliente_cliente = 1;
select * from cliente;

update cliente set s_nome_cliente = 'Bruno', s_cpf_cliente = '12345678901' where i_cliente_cliente = 1;
select * from cliente;

update cliente set i_tipo_cliente = 1 WHERE i_cliente_cliente > 0;
select * from cliente;

delete from cliente where i_cliente_cliente > 0;
select * from cliente;

insert into cliente select * from cliente_aux;
select * from cliente;

