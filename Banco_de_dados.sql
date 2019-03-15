create schema atividade01_loja default character set utf8 collate utf8_unicode_ci;

use atividade01_loja;
CREATE TABLE `atividade01_loja`.`vendas` (
  `id_nf` INT NOT NULL,
  `id_item` INT NOT NULL,
  `cod_prod` INT NOT NULL,
  `valor_unit` FLOAT NOT NULL,
  `quantidade` INT NOT NULL,
  `desconto` FLOAT NULL,
  INDEX `id_nf` (`id_nf` ASC),
  INDEX `id_item` (`id_item` ASC),
  INDEX `cod_prod` (`cod_prod` ASC));
  
INSERT INTO `atividade01_loja`.`vendas` (  `id_nf`,  `id_item`,  `cod_prod`,  `valor_unit`,  `quantidade`,  `desconto` ) values
(1,1,1,25,10,5),(1,2,2,13.5,3,null),(1,3,3,15,2,null),(1,4,4,10,1,null),(1,5,5,30,1,null),
(2,1,3,15,4,null),(2,2,4,10,5,null),(2,3,5,30,7,null),(3,1,1,25,5,null),(3,2,4,10,4,null),
(3,3,5,30,5,null),(3,4,2,13.5,7,null),(4,1,5,30,10,15),(4,2,4,10,12,5),(4,3,1,25,13,5),
(4,4,2,13.5,15,5),(5,1,3,15,3,null),(5,2,5,30,6,null),(6,1,1,25,22,15),(6,2,3,15,25,20),
(7,1,1,25,10,3),(7,2,2,13.5,10,4),(7,3,3,15,10,4),(7,4,5,30,10,1);

select id_nf, id_item, cod_prod, valor_unit, desconto from vendas;

select id_nf, id_item, cod_prod, valor_unit from vendas where desconto<0;
set sql_safe_updates=0;
update vendas set desconto= 0 where desconto=null;

alter table vendas add total int (10);

insert into atividade01_lojas. venda (total) values
(quantidade*(valor_unit-(desconto*quantidade/100)));

select id_nf, id_item, cod_prod, valor_unit, total from vendas where desconto<0;






