/* DML - Data Manipulation Language - INSERT */
/* INSERT INTO tabela (colunas) VALUES (valores) 
parte de (colunas) não é obrigatória se valores forem inseridos em todas as colunas
*/


insert into tipocliente VALUES (01, 'Pessoa Física');
insert into tipocliente VALUES (02, 'Pessoa Jurídica');
insert into tipocliente VALUES (03, 'Cliente Especial');


insert into cliente VALUES (01, 'Bruno', '12345678910', '2002-11-18', 01);
insert into cliente VALUES (02, 'Astrogirson', '09876543210', '2000-10-02', 03);
insert into cliente VALUES (03, 'Benegilda', '11111111111', '1990-12-12', 02);
insert into cliente VALUES (04, 'Clóvis Marçon', '12312312312', '1970-07-07', 02);
insert into cliente VALUES (05, 'Marisbelena', '32132132132', '2001-09-11', 01);
insert into cliente VALUES (06, 'Chingustrildo', '22233344455', '2005-02-03', 03);
insert into cliente VALUES (07, 'Tramonstila', '00000000100', '1980-01-01', 02);
insert into cliente VALUES (08, 'Arguinelson', '23423478911', '1993-03-20', 01);
insert into cliente VALUES (09, 'Claresberna', '67832177799', '1985-09-27', 01);
insert into cliente VALUES (10, 'Nelgrismar', '12378945654', '1969-04-20', 02);

/* DQL - Data Query Language - Select */
select * from tipocliente;
select * from cliente;

INSERT INTO cliente (i_cliente_cliente, s_nomecli_cliente, s_cpf_cliente, i_tipo_cliente) VALUES (11, 'Bartoldo', '33344455566', 02);
