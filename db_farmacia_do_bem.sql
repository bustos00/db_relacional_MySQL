create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria (

	id bigint not null auto_increment,
	nome varchar (255) not null,
	stock boolean,
	responsavel varchar (255),
	primary key (id)
	);

	insert into tb_categoria (nome, stock, responsavel) values ("Cosmetico", true, "Andrwe");
	insert into tb_categoria (nome, stock, responsavel) values ("Infeções", true, "Piam");
	insert into tb_categoria (nome, stock, responsavel) values ("Suplementos", true, "Mia");
	insert into tb_categoria (nome, stock, responsavel) values ("Higiene Bucal", false, "Nor");
	insert into tb_categoria (nome, stock, responsavel) values ("Medicamento", true , "Nina");

	create table tb_produto (
	id bigint auto_increment, 
	nome varchar (255) not null,
	valor double, 
	receita boolean, 
	desconto boolean,
	utilization char,
	fk_produto bigint,
	primary key (id),
	foreign key (fk_produto) references tb_categoria (id)
	); 
	
	insert into tb_produto (nome, valor, receita, desconto, utilization, fk_produto) values("Actine", 88,89 , false, true, 1);

	insert into tb_produto(nome, valor, receita, desconto, utilization, fk_produto) values("Neutrogena Sun", 48,99 , true, true, 1);

	insert into tb_produto (nome, valor, receita, desconto, utilization, fk_produto) values("Uristat", 122,24 , true, true, 2);

	insert into tb_produto (nome, valor, receita, desconto, utilization, fk_produto) values("Monistat", 99,99 , false, false, 2);

	insert into tb_produto (nome, valor, receita, desconto, utilization, fk_produto) values("Barra cereal", 18,99 , false, false, 3);

	insert into tb_produto (nome, valor, receita, desconto, utilization, fk_produto) values("Whey protein", 60,89 , false, false, 3);

	insert into tb_produto (nome, valor, receita, desconto, utilization, fk_produto) values("Colgate", 234,00 , false, false, 4);

	insert into tb_produto (nome, valor, receita, desconto, utilization, fk_produto) values("Doliprane", 22,33 , false, false, 5);

	
	 select * from tb_produto where valor > 50 ;

	 select * from tb_produto where valor between 3 and 60 ; 

	select * from tb_produto where nome like "%B%";

	select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.fk_produto ;

	   select * from tb_categoria where nome = "cosmetico" ;

	
    