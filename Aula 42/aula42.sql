-- Funções do SQL
-- LOCATE: localiza um conteúdo X em uma string e retorna sua posição
select s_nome_cliente from cliente WHERE i_cliente_cliente = 1;
select LOCATE('u', s_nome_cliente), s_nome_cliente from cliente WHERE i_cliente_cliente = 1;

-- UPPER: converte uma string para MAIÚSCULO
select UPPER(s_nome_cliente), s_nome_cliente from cliente WHERE i_cliente_cliente = 1;

-- LOWER: a mesma coisa mas para minúsculo
select lower(s_nome_cliente), s_nome_cliente from cliente WHERE i_cliente_cliente = 1;

-- SUBSTR: extrai parte de uma string (string, posInicial, qtde)
select SUBSTR(s_nome_cliente, 2, 3), s_nome_cliente from cliente WHERE i_cliente_cliente = 1;

-- CONCAT: concatena duas strings
select CONCAT('Nome: ', s_nome_cliente) from cliente WHERE i_cliente_cliente = 1;

-- FORMAT: formata uma string no formato 1,234,567.89 (com o número de casas decimais pedido)
select *, format(f_valor_venda, 2) from venda;

-- ASCII: retorna o valor ASCII do 1º caractere da string
select ASCII(s_nome_cliente), s_nome_cliente from cliente WHERE i_cliente_cliente = 1;

-- CHAR_LENGTH: retorna o tamanho da string
select CHAR_LENGTH(s_nome_cliente), s_nome_cliente from cliente WHERE i_cliente_cliente = 1;
