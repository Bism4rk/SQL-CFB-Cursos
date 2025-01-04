-- tipos de dados mais comuns no sql

/*
TEXTO

tinytext - até 255 bytes
text - até 65.535 bytes
mediumtext - até 16.777.215 bytes
longtext - até 4.294.967.295 bytes

char (caracteres) - 2  55 bytes fixo
varchar (caracteres) - até 65.535 bytes, tamanho variável
*/


/*
NÚMERO
tinyint
smallint
mediumint
int
bigint

float (precisão, escala)
double (precisão, escala)
decimal (precisão, escala)

*/


/*
TEMPORAIS

date - AAAA-MM-DD
datetime - AAAA-MM-DD HH:MI:SS
timestamp - AAAA-MM-DD HH:MI:SS mas 
year - 1901 a 2155
time - HH:MI:SS

*/

alter table cliente add i_idade_cliente int;
alter table cliente modify i_idade_cliente tinyint;