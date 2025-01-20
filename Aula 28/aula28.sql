select * from cliente;
select * from cliente WHERE s_nome_cliente = 'Bruno';
select * from cliente WHERE s_nome_cliente LIKE ('b%'); -- Clientes cujo nome começa com a letra b
select * from cliente WHERE s_nome_cliente LIKE ('%o'); -- Clientes cujo nome termina com a letra o
select * from cliente WHERE s_nome_cliente LIKE ('b%o'); -- Os dois de cima juntos (começa c/ a e termina c/ b

select * from cliente WHERE s_nome_cliente LIKE ('b____'); -- Clientes cujo nome começa com a letra b e tem 5 caracteres no total
select * from cliente WHERE s_nome_cliente LIKE ('________'); -- Clientes cujo tem 8 caracteres no total





/*
% = começar ou terminar nesse (ou em qualquer lugar)
_ = número de caracteres
*/
