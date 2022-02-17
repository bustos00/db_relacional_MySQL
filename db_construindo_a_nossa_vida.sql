create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;


create table tb_categoria (

	id bigint not null auto_increment,
	estrutura varchar (255) not null,
	acabamento varchar (255),
	cobertura varchar (255),
	primary key (id)
	);

	insert into tb_categoria (estrutura, acabamento, cobertura) values ("cimento", " pisos", " telhas"); 
	insert into tb_categoria (estrutura, acabamento, cobertura) values ("areia", " janelas", " caibros"); 
	insert into tb_categoria (estrutura, acabamento, cobertura) values ("brita", " azulejos", " calhas"); 
	insert into tb_categoria (estrutura, acabamento, cobertura) values ("pregos", "portas", " caixa d’água"); 
	insert into tb_categoria (estrutura, acabamento, cobertura) values ("escoras", "louças sanitárias", "madeiras");
	
	create table tb_produto (
	id bigint auto_increment, 
	nome varchar (255) not null,
	quantidade int, 
   	valor double,	
	desconto boolean,
	fk_produto bigint,
	primary key (id),
	foreign key (fk_produto) references tb_categoria (id)
	); 
	
	insert into tb_produto (nome, quantidade, valor, desconto , fk_produto) values("Cimento", 3 , 160.44 , false , 1);

	insert into tb_produto (nome, quantidade, valor, desconto , fk_produto) values("madeira", 7 , 235.24 , false , 3);

	insert into tb_produto (nome, quantidade, valor, desconto , fk_produto) values("azulejos", 12 , 349.34 , false , 2);

	insert into tb_produto (nome, quantidade, valor, desconto , fk_produto) values("portas", 8, 22.76 , false , 2);

	insert into tb_produto (nome, quantidade, valor, desconto , fk_produto) values("Areia", 1, 10.34 , false , 1);

	insert into tb_produto (nome, quantidade, valor, desconto , fk_produto) values("escoras", 5 , 34.98 , false , 1);

	insert into tb_produto (nome, quantidade, valor, desconto , fk_produto) values("louças sanitárias", 4 , 89.34 , false , 2);

	insert into tb_produto (nome, quantidade, valor, desconto , fk_produto) values("Caixa d´água", 1 , 55.23 , false , 3);

	
	 select * from tb_produto where valor > 50 ;

	 select * from tb_produto where valor between 3 and 60 ; 

	select * from tb_produto where nome like "%C%";

	     select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.fk_produto ;

	  
	 select * from tb_categoria where estrutura = "cimento" ;
    