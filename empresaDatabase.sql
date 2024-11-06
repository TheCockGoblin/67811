create table tarefa
(
	id int primary key auto_increment,
    idUsuario int unique,
    setor varchar(25) not null,
    prioridade varchar(10) not null,
    dataCadastro date not null,
    descricao varchar(100) not null,
    statusTarefa varchar(8)
);
create table usuario
(
	idUsuario int primary key auto_increment,
    nome varchar(50) not null,
    email varchar(50) not null
);

alter table usuario
add foreign key(idUsuario) references tarefa(idUsuario)
