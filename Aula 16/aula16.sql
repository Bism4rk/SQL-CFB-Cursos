select * from cliente;

select 
	* 
    from 
    (select * from cliente) c;
    
 select 
	* 
    from 
    (select i_cliente_cliente, s_nome_cliente from cliente) c;
   
 select 
	c.s_nome_cliente
    from 
    (select i_cliente_cliente, s_nome_cliente from cliente) c;
    
  select 
	c.s_nome_cliente,
    c.d_nasc_cliente
    from 
    (select i_cliente_cliente, s_nome_cliente, d_nasc_cliente from cliente) c;   
    
create view nomescli as select i_cliente_cliente, s_nome_cliente from cliente;
 
select * from nomescli; 
 
  ALTER TABLE cliente MODIFY COLUMN d_nasc_cliente DATE;