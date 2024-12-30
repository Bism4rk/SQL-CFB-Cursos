-- Criação de banco no mysql (no sqlite n gera comando)
CREATE SCHEMA `cfbcursos2` DEFAULT CHARACTER SET utf8 ;


-- Criação de tabela no sqlite
CREATE TABLE CLIENTES (
    N_CLIENTE_CLIENTE INTEGER PRIMARY KEY
                            UNIQUE
                            NOT NULL
);

-- Criação de tabela no mysql
CREATE TABLE `cfbcursos`.`cliente` (
  `N_CLIENTE_CLIENTE` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`N_CLIENTE_CLIENTE`),
  UNIQUE INDEX `N_CLIENTE_CLIENTE_UNIQUE` (`N_CLIENTE_CLIENTE` ASC) VISIBLE);

