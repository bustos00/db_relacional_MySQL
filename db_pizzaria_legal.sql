create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria (

	id bigint not null auto_increment,
	massa varchar (255) not null,
	sabor char (60),
	borda varchar (20),
	bebida varchar (20), 
	primary key (id)
	);

	insert into tb_categoria (massa, sabor, borda, bebida) values ("fino", "1unico", "Não", "Sim");
	insert into tb_categoria (massa, sabor, borda, bebida) values ("fino", "2sabor", "Não", "Não");
	insert into tb_categoria (massa, sabor, borda, bebida) values ("fino", "2sabor", "sim", "Sim");
	insert into tb_categoria (massa, sabor, borda, bebida) values ("fino", "1unico", "Sim", "Sim");
    insert into tb_categoria (massa, sabor, borda, bebida) values ("fino", "1unico", "Sim", "Sim");
    

	create table tb_pizza (
	id bigint auto_increment, 
	produto varchar (255) not null,
	ingredientes varchar (255), 
	preco double, 
	desconto boolean,
	fk_categoria bigint,
	primary key (id),
	foreign key (fk_categoria) references tb_categoria (id)
	); 
	
	insert into tb_pizza (produto, ingredientes, preco, desconto, fk_categoria) values("Tropicana", " Queijo, frutas, pêssego, goiaba, figo e abacaxi", 120, false, 2);

	insert into tb_pizza (produto, ingredientes, preco, desconto, fk_categoria) values("Abobrinha", "Abobrinha, mussarela, parmesão, tomate, azeitonas verdes sem caroço.", 45.00, true, 1);
	insert into tb_pizza (produto, ingredientes, preco, desconto, fk_categoria) values("Bacon com Mussarela", "Bastante bacon, mussarela, tomate, azeitonas", 45, false, 2);
	insert into tb_pizza (produto, ingredientes, preco, desconto, fk_categoria) values("Mussarela", "Mussarela, tomate, azeitonas", 56, false, 2);
	insert into tb_pizza (produto, ingredientes, preco, desconto, fk_categoria) values("calabreza", "Calabreza, mussarela,", 24, true, 2);
	insert into tb_pizza (produto, ingredientes, preco, desconto, fk_categoria) values("Portuguez", "Ovos, mortadella, mussarela, pimentão, cebola", 39, false, 2);

	insert into tb_pizza (produto, ingredientes, preco, desconto, fk_categoria) values("Marguerita", "Molho, muçarela, tomate e manjericão", 66, false, 2);
	insert into tb_pizza (produto, ingredientes, preco, desconto, fk_categoria) values("Frango com catupiry", "Molho, catupiry, frango, Azeitonas", 70, false, 2);

	
	 select * from tb_pizza where preco > 45 ;

	 select * from tb_pizza where preco between 29 and 60 ; 

	select * from tb_pizza where produto like "%C%";

	select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.fk_categoria;
