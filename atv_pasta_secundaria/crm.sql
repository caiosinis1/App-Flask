create database crm;

use crm;

create table usuarios(
	id_cliente INT AUTO_INCREMENT,
	nome VARCHAR(255),
	sobrenome VARCHAR(255),
	idade INT,
	telefone VARCHAR(255),
	email VARCHAR(255),
    PRIMARY KEY (id_cliente)
);

create table compra(
  id_compra INT NOT NULL,
  id_cliente INT NOT NULL,
  data_compra DATE NOT NULL,
  PRIMARY KEY (id_compra),
  KEY fk_usuarios_compra (id_cliente),
  CONSTRAINT fk_usuarios_compra FOREIGN KEY (id_cliente) REFERENCES usuarios (id_cliente)
  );
  
  create table produto(
  id_produto INT NOT NULL,
  Nome VARCHAR(255) NOT NULL,
  Descricao TEXT NULL,
  Preco DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (id_produto)
  );
  
  create table itemcompra (
  id_item INT NOT NULL,
  id_compra INT NOT NULL,
  id_produto INT NOT NULL,
  quantidade INT NOT NULL,
  preco_unitario DECIMAL(10,2) NOT NULL,
  KEY fk_compra_itemcompra (id_compra),
  CONSTRAINT fk_compra_itemcompra FOREIGN KEY (id_compra) REFERENCES compra (id_compra),
  KEY fk_produto_itemcompra (id_produto),
  CONSTRAINT fk_produto_itemcompra FOREIGN KEY (id_produto) REFERENCES produto (id_produto)
  );
  
	

