create schema cfbcursos;
create database cfbcursos;
-- Os dois são iguais
-- CTRL+Espaço mostra opções


create table cliente(
	-- nomenclatura: tipo_coluna_tabela
	i_cliente_cliente int primary key auto_increment,
    s_nome_cliente varchar(50) not null,
    s_cpf_cliente varchar(50) not null,
    d_nasc_cliente datetime
);


DROP TABLE cliente; -- deleta a tabela
DROP SCHEMA cfbcursos; -- deleta o banco de dados

ALTER TABLE cliente MODIFY COLUMN s_nome_cliente VARCHAR(30);

ALTER TABLE cliente add i_tipo_cliente INT default 1;
ALTER TABLE cliente drop column i_tipo_cliente;
ALTER TABLE cliente add i_tipo_cliente INT NOT NULL;
