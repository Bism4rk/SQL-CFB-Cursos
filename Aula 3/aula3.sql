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

