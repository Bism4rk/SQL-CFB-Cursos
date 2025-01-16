select * from cliente;
select i_cliente_cliente, s_cpf_cliente from cliente;

create view cpfcliente as select i_cliente_cliente, s_cpf_cliente from cliente;
select * from cpfcliente;

select i_cliente_cliente as 'ID' , s_nome_cliente as 'Nome', day(d_nasc_cliente) as 'Dia de aniversário' from cliente WHERE month(d_nasc_cliente) = month(curdate());
select i_cliente_cliente as 'ID' , s_nome_cliente as 'Nome', day(d_nasc_cliente) as 'Dia de aniversário' from cliente WHERE month(d_nasc_cliente) = 9;
select i_cliente_cliente as 'ID' , s_nome_cliente as 'Nome', day(d_nasc_cliente) as 'Dia de aniversário' from cliente WHERE month(d_nasc_cliente) in (7, 9, 12);

create view NiverMesAtual as 
	select 
		i_cliente_cliente as 'ID', 
		s_nome_cliente as 'Nome', 
		day(d_nasc_cliente) as 'Dia de aniversário' 
    from cliente WHERE month(d_nasc_cliente) = month(curdate());
    
select * from NiverMesAtual;    
    