alter table cliente add column s_usr_cliente varchar(20);
alter table cliente add column s_senha_cliente varchar(20);

update cliente set s_usr_cliente='brn',s_senha_cliente='123' where i_cliente_cliente=1;
update cliente set s_usr_cliente='astro',s_senha_cliente='123' where i_cliente_cliente=2;
update cliente set s_usr_cliente='bene',s_senha_cliente='123' where i_cliente_cliente=3;
update cliente set s_usr_cliente='clov',s_senha_cliente='123' where i_cliente_cliente=4;
update cliente set s_usr_cliente='maris',s_senha_cliente='123' where i_cliente_cliente=5;
update cliente set s_usr_cliente='ching',s_senha_cliente='123' where i_cliente_cliente=6;
update cliente set s_usr_cliente='tra',s_senha_cliente='123' where i_cliente_cliente=7;
update cliente set s_usr_cliente='arqui',s_senha_cliente='123' where i_cliente_cliente=8;
update cliente set s_usr_cliente='clare',s_senha_cliente='123' where i_cliente_cliente=9;
update cliente set s_usr_cliente='nel',s_senha_cliente='123' where i_cliente_cliente=10;
update cliente set s_usr_cliente='bartol',s_senha_cliente='123' where i_cliente_cliente=11;
update cliente set s_usr_cliente='vesp',s_senha_cliente='123' where i_cliente_cliente=12;
update cliente set s_usr_cliente='brastis',s_senha_cliente='123' where i_cliente_cliente=13;
update cliente set s_usr_cliente='joanel',s_senha_cliente='123' where i_cliente_cliente=14;
update cliente set s_usr_cliente='pclovis',s_senha_cliente='123' where i_cliente_cliente=15;
update cliente set s_usr_cliente='wandy',s_senha_cliente='123' where i_cliente_cliente=16;
update cliente set s_usr_cliente='paulos',s_senha_cliente='123' where i_cliente_cliente=17;
update cliente set s_usr_cliente='dostresq',s_senha_cliente='123' where i_cliente_cliente=18;
update cliente set s_usr_cliente='nuanel',s_senha_cliente='123' where i_cliente_cliente=19;
update cliente set s_usr_cliente='joanjr',s_senha_cliente='123' where i_cliente_cliente=20;
update cliente set s_usr_cliente='david',s_senha_cliente='123' where i_cliente_cliente=21;
update cliente set s_usr_cliente='010001',s_senha_cliente='123' where i_cliente_cliente=22;
update cliente set s_usr_cliente='khalla',s_senha_cliente='123' where i_cliente_cliente=23;
update cliente set s_usr_cliente='crisb',s_senha_cliente='123' where i_cliente_cliente=24;
update cliente set s_usr_cliente='malga',s_senha_cliente='123' where i_cliente_cliente=25;
update cliente set s_usr_cliente='silmas',s_senha_cliente='123' where i_cliente_cliente=26;
update cliente set s_usr_cliente='floras',s_senha_cliente='123' where i_cliente_cliente=27;

select * from cliente;

-- SQL Injection: comando direto sql inserido em campo onde não é esperado que busca abusar de fraquezas no código
-- exemplos:

select * from cliente WHERE s_usr_cliente = '' or '''' = '''' and s_senha_cliente = '' or '''' = '''';
# NÃO RODE ESSA QUERY ABAIXO ELA DELETA TABELA
-- select * from cliente WHERE s_usr_cliente = 'aaa' and s_senha_cliente = '000'; drop table cliente_aux;

-- solução: usar parâmetros
SET @nome = '' or ''''='''';
SELECT * from cliente WHERE s_nome_cliente = @nome;
