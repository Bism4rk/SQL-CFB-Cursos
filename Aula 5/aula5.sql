CREATE TABLE tipocliente(
	i_tipocliente_tipocliente INT primary key not null,
    s_dsctipocliente_tipocliente VARCHAR(100) not null
);

-- alter table NOMETABELA add constraint NOMECONSTRAINT foreign key (campo da tabela origem) references TABELADESTINO (campo da tabela destino)

 alter table cliente add constraint fk_tipocliente foreign key (i_tipo_cliente) references tipocliente (i_tipocliente_tipocliente);