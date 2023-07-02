use rabisco;

create table cadastro_produtos(
codigo_produto int auto_increment primary key,
nome_produto varchar(39),
valor numeric(9,2),
quantidade int,
descricao varchar(122)
);

create table vendas(
codigo_venda int auto_increment primary key,
nome_cliente varchar(37),
codigo_produto int,
cpf char(11) unique,
constraint fk_vendas_cadastro_produtos foreign key(codigo_produto) references cadastro_produtos(codigo_produto)
);

create table cadastro_clientes(
codigo_cliente int auto_increment primary key,
nome_cliente varchar(39),
cpf char(11) unique,
nascimento date,
cep char(8),
endereco varchar(90)
);

create table cadastro_materia_prima(
codigo_materia int auto_increment primary key,
nome_materia varchar(40),
quantidade_materia int,
valor_compra numeric(9,2),
valor_venda numeric(9,2),
local_compra varchar(52)
);

create table login(
codigo int primary key auto_increment,
nome varchar(20),
senha varchar(15)
);
insert into login(nome, senha)values('123', '123');

create table orcamentos(
codigo_orcamento int auto_increment primary key,
cliente varchar(32),
quantidade int,
materia_prima varchar(60),
produto varchar(40),
valor_total numeric(9,2)
);

create table cadastro_empresa(
codigo_cadastro int auto_increment primary key,
proprietario varchar(39),
cidade varchar(30),
bairro varchar(30),
cep char(8),
cnpj char(14) unique,
endereco varchar(70),
telefone varchar(20),
estado varchar(40),
email varchar(39),
descricao varchar(125)
);

create table admim(
codigo tinyint auto_increment primary key,
nome varchar(30) not null,
senha varchar(10)
);
insert into admim(nome, senha)values('Mykael', '123456');