create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria (
	id bigint not null auto_increment,
	familia varchar (255) not null,
	tipo varchar (255),
	loja varchar (255),
	primary key (id)
	);

	insert into tb_categoria (familia, tipo, loja) values ("fruta", "seco", "Bk Natural"); -- feijão, castanham 
	insert into tb_categoria (familia, tipo, loja) values ("fruta", "carnoso", "Bk Natural"); --  tomate e cereja.
	insert into tb_categoria (familia, tipo, loja) values ("fruta", "Durpa", "Bk Natural");     --  azeitona, abacate e ameixa.
	insert into tb_categoria (familia, tipo, loja) values ("fruta", "Infrutescência", "Bk Natural"); -- Figo, abacaxi e amora
	
	create table tb_produtos (
	id bigint auto_increment, 
	nome varchar (255) not null,
	estado varchar (255), 
   	peso varchar (255),	
	valor double,
	fk_produtos bigint,
	primary key (id),
	foreign key (fk_produtos) references tb_categoria (id)
	); 
	
	insert into tb_produtos (nome, estado, peso, valor, fk_produtos) values ("Feijao", "Bom", "um killo", 22.3 , 1) ; 

	insert into tb_produto (nome, estado, peso, valor, fk_produto) values ("tomate", "Madura" , "2 killo" , 62.3 , 2);

	insert into tb_produto (nome, estado, peso, valor, fk_produto) values ("cereja", "Imadura" , " oitocentos grama" , 12.23 , 2);

	insert into tb_produto (nome, estado, peso, valor, fk_produto) values ("ameixa", "Verde" , "trezentos grama" , 24.23 , 3);

	insert into tb_produto (nome, estado, peso, valor, fk_produto) values ("castanha", "Delicia" , "oitenta grama" , 42.23 , 1);

	insert into tb_produto (nome, estado, peso, valor, fk_produto) values ("Abacaxi", "Mel" , " um killo" , 11.23 , 4);

	insert into tb_produto (nome, estado, peso, valor, fk_produto) values("Amora", "Madura" , " um killo"  , 22.23 , 4);

	insert into tb_produto (nome, estado, peso, valor, fk_produto) values("azeitona", " um killo" , 1 , 44.23 , 3);

	
	 select * from tb_produto where valor > 50 ;

	 select * from tb_produto where valor between 3 and 60 ; 

	select * from tb_produto where nome like "%C%";

	     select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.fk_produto ;

 select * from tb_categoria where familia = "fruta" ;
	 