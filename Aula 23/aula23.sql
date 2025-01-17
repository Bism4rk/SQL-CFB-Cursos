select * from cliente;

insert into cliente VALUES (14, 'Joanélison', '33322211177', null, 01);
insert into cliente VALUES (15, 'Paulo Clóvis', '34578909876', null, 03);
insert into cliente VALUES (16, 'Wandynha', '77799988800', null, 02);
insert into cliente VALUES (17, 'Paulostrétivon', '12332145699', null, 02);
insert into cliente VALUES (18, 'Dostresquatreylian', '00099955533', null, 01);
insert into cliente VALUES (19, 'Nuanelina', '22244477701', null, 03);
insert into cliente VALUES (20, 'Joanélison Júnior', '12393102933', null, 02);
insert into cliente VALUES (21, 'DavidDavidson da SilvaSilveira', '32198765444', null, 01);
insert into cliente VALUES (22, '01000100 01100001 01101110', '00011101000', null, 01);
insert into cliente VALUES (23, 'Khallabhrezyu', '12345678188', null, 02);

select * from cliente order by 1 desc;

select * from cliente WHERE d_nasc_cliente IS NULL;
select * from cliente WHERE d_nasc_cliente IS NOT NULL;

