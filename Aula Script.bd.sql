USE aluga_car; /* Comando para usar a base de dados */
select * from usuario; /*Selecionar a tabela do banco*/ 
select * from carro;
select * from aluguel;
select * from contrato;

/* Inserir um registro na tabela usuario */
insert into usuario (cnh, nome, email, idade)values(986566, "Jonas Silva", "jonas@gmail.com", 25);

/* Inserir vários registros na tebela usuario */
insert into usuario (cnh, nome, email, idade)values(435354,"Marta Souza", "marta@gmail.com", 33),(466644, "João Marcos", "joão@gmail.com",19 ),
(424353,"Joana Moura","joana@gmail.com",23);

/* Inserir aluguel vinculado ao usuario*/
insert into aluguel (tipo, valor, data_ret, data_dev, id_usuario)values("particular", 1200.00, "2024-06-19", "2024-06-30", 1);

/* Deletar um resgistro na tabela usuario */
delete from usuario where id_usuario = 1;
delete from aluguel where id_aluguel = 1;
delete from carro where id_carro = 1;
delete from contrato where id_contrato = 1;

/* Reseta o auto-incremento da chave primaria*/
alter table usuario auto_increment = 0;
alter table aluguel auto_increment = 0;
alter table carro auto_increment = 0;
alter table contrato auto_increment = 0;
/* Limpar todos os registros em uma tabela*/
truncate usuario;
truncate aluguel;
truncate carro;
/*Inserir carros na base de dados */
insert into carro (placa, nome, marca, cor, modelo, ano)values("GHR34T6", "Sandero","Renault", "Vermelho", "Sedan", 2023);

/*Inserir contratos na base de dados*/
insert into contrato (id_carro, id_aluguel, data_contrato)values(2, 4,"2024-10-17");

/* Tipos de selects - DQL/DML */
select nome from usuario;
select id_usuario, nome from usuario;
select email from usuario;

/*Selcionar dados especificos de uma tabela */
/*Selecionar os usuarios com idade maiores que 30 anos*/
select nome, idade from usuario where idade > 30;

/*Selecionar todos os carros da marca chevrolet*/
select * from carro where marca = "chevrolet";

/*Selecionar os carros da marca volkswagen e fiat*/
select * from carro where marca in ("volkswagen", "fiat");

/*Selecionar os carros da marca Honda e Jeep da cor cinza*/
select * from carro where marca in ("Honda", "jeep") and cor = "Preto";

/* selecione os carros da ford da cor branco e que sejam do modelo sedan*/
select * from carro where marca in ("ford") and cor = "Prata" and modelo = "Hatch";

/* Selecione todos os usuarios em ordem alfabetica*/
select nome from usuario order by nome asc;

/* Selecione todos os usuarios em ordem inversa*/
select nome from usuario order by nome desc;

/* Selecione o nome e a idade dos usuarios em ordem decresente */
select nome, idade from usuario order by idade desc;

/* Selecionar dados com pesquisa aproximda - clausula LIKE */
/* Selecionar os usuários com o nome iniciam com a letra An*/
select nome from usuario where nome like 'an%';

/* Selecionar os usuários com o nome que tenham a letra h*/
select nome from usuario where nome like '%h%';

/* Selecionar os usuários com o nome terminam com a letra s*/
select nome from usuario where nome like '%s';

/* Selecionar os usuários com o nome terminam com a letra Bruno*/
select nome from usuario where nome like '%Bruno%';

/* Selecionar os usuários que o e-mail deles sejam do gmail*/
select nome, email from usuario where email like '%gmail%';

/* Selecionar os carros que precisam ser pagos o IPVA que o final da placa sejam 6*/
select nome ,placa from carro where placa like '%6';

/* Atualizar o nome do usuario Bruno Lima Para Bruno Ferreira*/
update usuario set nome = "Bruno Ferreira" where id_usuario = 80;

/* Atualizar o nome do usuario Carolina Pereira Para Carolina Diniz*/
update usuario set nome = "Carolina Diniz" where id_usuario = 98;

/* Alterar nomes das colunas da tabela - DDL */
/* Alterar nome da coluna da tabela usuario cnh para carteira */
alter table usuario change cnh carteira int(12) not null unique;

/* Selecionar dados da tabela aluguel e somar valores */
select * from aluguel where tipo = "Empresa" and valor > 2000;
select sum(valor) from aluguel where tipo = "Particular";
select count(*) from aluguel where tipo = "Empresa" and valor > 3000; # Contar Dados

/* Selecionar todos os usuarios que ainda não alugaram  um carro*/
select usuario.nome , aluguel.valor, aluguel.tipo from usuario left join aluguel on usuario.id_usuario = aluguel.id_usuario where valor is null;
select u.id_usuario, u.nome, a.valor, a.tipo from usuario as u left join aluguel as a on u.id_usuario = a.id_aluguel where valor is null;
select * from aluguel where id_usuario = 45;
 
/* Selecione o nome do usuario, a idade, valor do aluguel, somente os que alugaram para empresa com valor abaixo de 4 mil */
select usuario.nome, usuario.idade, aluguel.valor, aluguel.tipo from usuario inner join aluguel on usuario.id_usuario = aluguel.id_usuario where valor < 4000 and tipo = "Empresa"; 

/* Selecionar o usuarios, data do contrato , data de retirada e devolução do aluguel e valor do aluguel*/
select usuario.nome, contrato.data_contrato, aluguel.data_ret, aluguel.data_dev, aluguel.valor from usuario inner join aluguel on usuario.id_usuario = aluguel.id_usuario inner join contrato
on aluguel.id_aluguel = contrato.id_aluguel;

/* Selecionar todos o que não fecharam contrato */
select usuario.nome, contrato.data_contrato, aluguel.data_ret, aluguel.data_dev, aluguel.valor from usuario inner join aluguel on usuario.id_usuario = aluguel.id_usuario left join contrato
on aluguel.id_aluguel = contrato.id_aluguel where data_contrato is null;

/* Selecionar os Usuarios, data do contrato, data de retirada e devolução, valor do aluguel, o tipo de aluguel, placa, nome e marca do carro */
select usuario.nome, contrato.data_contrato, aluguel.data_ret, aluguel.data_dev, aluguel.valor , aluguel.tipo, carro.placa, carro.nome, carro.marca from usuario inner join aluguel on usuario.id_usuario = aluguel.id_usuario
inner join contrato on aluguel.id_aluguel = contrato.id_aluguel inner join carro on contrato.id_carro = carro.id_carro;

/* Selecionaros carros que estão disponiveis para alugar */
select  contrato.data_contrato, carro.placa, carro.nome, carro.marca from usuario inner join aluguel on usuario.id_usuario = aluguel.id_usuario
inner join contrato on aluguel.id_aluguel = contrato.id_aluguel right join carro on contrato.id_carro = carro.id_carro where data_contrato is null ;
