create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id_classe int not null auto_increment,
nivel varchar (20) not null,
primary key (id_classe)
);

create table tb_personagem (
	id_personagem int auto_increment,
	nome varchar (29) not null,
	arqueiro boolean not null,
	guerreiro boolean not null,
	bruxa boolean not null,
	defesa int,
	ataque int,
	fk_classe int not null,
	primary key (id_personagem),
	foreign key (fk_classe) references tb_classe (id_classe)
);

	insert into tb_classe(nivel) values ("Easy");
	insert into tb_classe(nivel) values ("Medium");
	insert into tb_classe(nivel) values ("Hard");
	
	
	insert into tb_personagem (nome, arqueiro, guerreiro, bruxa, ataque, defesa, fk_classe)
	values ("Henry Mega", true, true, false, 3800, 2200, 1);
 
	insert into tb_personagem (nome, arqueiro, guerreiro, bruxa, ataque, defesa, fk_classe)
	values ("Flore Doce", true, false, true, 4000, 5800, 1);

	insert into tb_personagem (nome, arqueiro, guerreiro, bruxa, ataque, defesa, fk_classe)
	values ("Line Debior", false, false, true, 2000, 1800, 2);

	insert into tb_personagem (nome, arqueiro, guerreiro, bruxa, ataque, defesa, fk_classe)
	values ("Ange Faro", true, false, true, 1600, 6800, 2);

	insert into tb_personagem (nome, arqueiro, guerreiro, bruxa, ataque, defesa, fk_classe)
	values ("Nana Benz", true, false, true, 3000, 20020, 3);
	
	insert into tb_personagem (nome, arqueiro, guerreiro, bruxa, ataque, defesa, fk_classe)
	values ("Ive Sant", false, false, false, 1600, 800, 3);
	
    select nome, ataque from tb_personagem where ataque > 2000 ; 
    select nome, defesa from tb_personagem where defesa between 1000 and 2000 ; 
    
    select * from tb_personagem where nome like "%C%";
    
     select * from tb_personagem inner join tb_classe on tb_classe.id_classe = tb_personagem.fk_classe ;
     
    select * from tb_personagem where arqueiro = true;
    
   
    

    