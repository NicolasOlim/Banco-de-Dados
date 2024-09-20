use loja_eletronicos;

select * from vendedor;
select * from produto;
select * from venda;
select * from itens_de_venda;

/* 1.Acrescentar na tabela vendedor uma coluna denominada loja varchar(50). */
Alter Table vendedor add column loja varchar(50) not null;

/* 2.Atribuir uma loja para cada funcionário. */
update vendedor set loja = "Loja Centro" where Id_Vendedor = 101;
update vendedor set loja = "Loja Santo Antônio" where Id_Vendedor = 102;
update vendedor set loja = "Loja Floresta" where Id_Vendedor = 103;

/* 3.Incluir um novo produto com nome “Mouse sem fio Logitech MX Master 3” e valor do produto = 439.90 */
insert into produto( Cod_Produto, Nome_Produto, Qtd , Valor) values (14 ,"Mouse sem fio Logitech MX Master 3" , 27 , 439.90);

/* 4.Criar na tabela vendedor um atributo chamado email e faça o povoamento */
Alter table vendedor add column Email varchar(40) not null;
update vendedor set Email = "aldebaran@praticabd.com.br" where Id_Vendedor = 101;
update vendedor set Email = "carina@praticabd.com.br" where Id_Vendedor = 102;
update vendedor set Email = "nicolle@praticabd.com.br" where Id_Vendedor = 103;

/* 5.Insira mais seis (6) vendedores na tabela vendedor */
INSERT INTO vendedor (id_vendedor, nome, sexo, email)
VALUES
(104, 'Gustavo Souza', 'M',"gustavo@praticabd.com.br"),
(105, 'Fernanda Santos', 'F',"fernanda@praticabd.com.br"),
(106, 'Ricardo Oliveira', 'M',"ricardo@praticabd.com.br"),
(107, 'Juliana Costa', 'F',"juliana@praticabd.com.br"),
(108, 'Pedro Lima', 'M', "pedro@praticabd.com.br"),
(109, 'Vanessa Almeida', 'F',"vanessa@praticabd.com.br");

/* 6. Associe esses seis (6) novos vendedores para suas lojas */
update vendedor set loja = "Loja Santo Antônio" where Id_Vendedor = 104;
update vendedor set loja = "Loja Floresta" where Id_Vendedor = 105;
update vendedor set loja = "Loja Floresta" where Id_Vendedor = 106;
update vendedor set loja = "Loja Centro" where Id_Vendedor = 107;
update vendedor set loja = "Loja Santo Antônio" where Id_Vendedor = 108;
update vendedor set loja = "Loja Centro" where Id_Vendedor = 109;

/* 7.Atualizar o nome do produto de código 11, para Microsoft Office Pro 2022 e seu
valor para 1279.00. */
update produto set Nome_Produto = "Microsoft Office Pro 2022", Qtd = 10, Valor = 1279.00 where Cod_Produto = 11;

/* 8.Crie Triggers na tabela itens de vendas para controlar o estoque de produtos
conforme for a adição, atualização ou exclusão da quantidade de produtos
vendidos na tabela itens de vendas. */
/* Feito*/

/* 9.Inserir uma nova venda na tabela venda e atribua 0 (zero) no campo valor_venda e associe ao vendedor 101 no dia 28/06/2022. */
insert into venda (Cod_Venda, Data_Venda, Valor_Venda, Id_Vendedor) values (1004, '2022-06-28', 0.00, 101);

/* 10.Adicione mais um comando na trigger criada na tabela itens de vendas para
atualizar o campo valor_venda (que atualmente está com zero) da tabela
venda, o valor total da venda deve aparecer logo depois de executar o
comando SQL da questão seguinte. */
/* Feito*/

/* 11. Insira a venda feita pelo vendedor 101 de 1 Teclado Mecânico Gamer HyperX e 1 Mouse Gamer Corsair Harpoon PRO na tabela Itens de vendas. */
insert into itens_de_venda (Cod_Produto,Cod_Venda, Qtd_Item, Valor_Item) values (13 ,1004,  1 , 735.90);
insert into itens_de_venda ( Cod_Produto,Cod_Venda, Qtd_Item, Valor_Item) values (10 ,1004,  1 , 210.00);

/* 12.Faça um comando SQL para mostrar a última venda realizada junto com seu
valor total (valor_venda) e o vendedor responsável. */
select Min(Data_Venda) as "Data" , Valor_Venda as "Valor" , Id_Vendedor as "Vendedor" from venda;

/* 13.Faça um script SQL para conferir se o cálculo do valor da venda da última
venda realizada está correta. */

/* 14.Insira 4 (quatro) novas vendas da sua escolha. Invente todos os dados
(diversifique os produtos), logo em seguida insira as vendas na tabela itens das
vendas. Realize os mesmos procedimentos das questões anteriores. */
INSERT INTO venda (Cod_Venda, Data_Venda, Valor_Venda, Id_Vendedor) VALUES 
(1007, '2022-07-11', 0.00, 106),
(1008, '2022-11-02', 0.00, 107),
(1009, '2022-01-13', 0.00, 104),
(1010, '2022-04-20', 0.00, 105);

INSERT INTO itens_de_venda(`Cod_Produto`, `Cod_Venda`, `Qtd_Item`, `Valor_Item`) VALUES 
(10,1007,1,210.00),
(11, 1008, 2, 1279.00),
(12, 1009, 1, 525.99),
(13, 1010, 3, 735.90);

/* 15.Insira seus dados como sendo um vendedor da loja Centro. */
insert into vendedor (Id_Vendedor, Nome, Sexo, loja, Email) values
(110, "Nicolas de Oliveira" ,"M", "loja Centro", "nicolas@praticabd.com.br");

/* 16.Insira os dados de um amigo como sendo da loja Floresta.*/
insert into vendedor (Id_Vendedor, Nome, Sexo, loja, Email) values
(111, "Erick Silva" ,"M", "loja Floresta", "erick@praticabd.com.br");

/* 17. Listar o nome e o id de todos os vendedores que trabalham na loja Centro. */
select nome, Id_Vendedor, loja from vendedor where loja like ("%Centro");

/* 18.Crie uma View para questão anterior, com a diferença de mostrar os dados embaralhados. */
select * from most_nome_id_vend;

/* 19.Crie uma Stored Procedures para questão anterior utilizando parâmetros, além
de escolher qual loja exibir, escolher também a quantidade de registros a
serem exibidos na consulta. */
call most_limit(2);

/* 20.Listar o nome e o id de todos os vendedores ordenados alfabeticamente. */
select Nome , Id_Vendedor from vendedor order by Nome Asc;

/* 21.Listar o código, nome e quantidade de todos os produtos ordenados alfabeticamente.*/
select Nome_Produto ,Cod_Produto, Qtd from produto order by Nome_Produto asc;

/* 22.Listar todas as vendas junto com o nome e email do seu respectivo vendedor
ordenados pelo valor da venda de forma decrescente.*/
select venda.Cod_Venda, venda.Data_Venda , venda.Valor_Venda, vendedor.nome, vendedor.email from venda
inner join vendedor on venda.Id_Vendedor = vendedor.Id_Vendedor order by venda.Valor_Venda desc;

/* 23.Altere o nome do seu último vendedor para Moe Szyslak, sexo masculino
, email moebar_duff@outlook.com e loja Santo Antônio. */
update vendedor set nome = " Moe Szyslak", Email = "moebar_duff@outlook.com" , loja = "Loja Santo Antônio"
where Id_Vendedor = 111; 

/* 24.Insira 10 novos produtos da sua escolha */
INSERT INTO `produto`(`Cod_Produto`, `Nome_Produto`, `Qtd`, `Valor`) VALUES 
(15,'Mouse DELL',20,49.99),
(16, 'Teclado Logitech', 15, 79.99),
(17, 'Monitor Samsung 24"', 8, 599.00),
(18, 'HD Externo 1TB', 12, 149.90),
(19, 'Notebook Lenovo', 5, 1899.99),
(20, 'Smartphone Samsung Galaxy S20', 10, 999.00),
(21, 'Impressora HP Deskjet', 6, 129.99),
(22, 'Fone de Ouvido Bluetooth', 25, 39.90),
(23, 'Câmera Canon EOS', 3, 1299.00),
(24, 'Tablet Apple iPad', 7, 699.00);

/* 25.Insira 5 (cinco) novas vendas da sua escolha.Insira as vendas na tabela itens de
venda. Realize os mesmos procedimentos para adição de novas vendas
utilizando as triggers criadas anteriormente.*/
INSERT INTO `venda`(`Cod_Venda`, `Data_Venda`, `Valor_Venda`, `Id_Vendedor`) VALUES 
(1011,'2022-04-23',  00,109),
(1012, '2022-05-15', 00, 110),
(1013, '2022-06-02', 00, 111),
(1014, '2022-06-20', 00, 109),
(1015, '2022-07-10', 00, 111);

INSERT INTO `itens_de_venda`(`Cod_Produto`, `Cod_Venda`, `Qtd_Item`, `Valor_Item`) VALUES 
(15,1011,3,49.99),/* R = 149,97*/
(16,1012,2,79.99),/* R = 159,98*/
(17,1013,1,599.00),/* R = 599.00  */
(18,1014,5, 149.90 ),/* R= 749,50 */
(19,1015,1,1899.99); /* R = 1899.99*/

/* 26.Confira como está seu estoque de produtos exibindo o nome e a quantidade
na consulta, crie um Stored Procedures para sempre conferir essas informações.*/
call verificar_estoque(18);

/* 27.Aumentar em 10% o valor de todos os produtos da sua empresa.*/
UPDATE produto SET Valor = Valor + (Valor * 0.1);
set sql_safe_updates = 0; 

/* 28.Acrescente o campo nascimento na tabela vendedor para receber a data de nascimento dos vendedores. */
alter table vendedor add column Data_De_Nascimento DATE;

/* 29.Insira na tabela vendedor as datas de nascimento de todos os vendedores.*/
UPDATE vendedor SET Data_De_Nascimento ='2001-03-15' where Id_Vendedor = 101;
UPDATE vendedor SET Data_De_Nascimento ='2002-05-25' where Id_Vendedor = 102;
UPDATE vendedor SET Data_De_Nascimento ='2003-07-10' where Id_Vendedor = 103;
UPDATE vendedor SET Data_De_Nascimento ='2004-09-20' where Id_Vendedor = 104;
UPDATE vendedor SET Data_De_Nascimento ='1995-11-30' where Id_Vendedor = 105;
UPDATE vendedor SET Data_De_Nascimento ='1996-01-08' where Id_Vendedor = 106;
UPDATE vendedor SET Data_De_Nascimento ='1997-02-18' where Id_Vendedor = 107;
UPDATE vendedor SET Data_De_Nascimento ='1998-04-28' where Id_Vendedor = 108;
UPDATE vendedor SET Data_De_Nascimento ='1999-06-15' where Id_Vendedor = 109;
UPDATE vendedor SET Data_De_Nascimento ='2007-01-27' where Id_Vendedor = 110;
UPDATE vendedor SET Data_De_Nascimento ='2000-10-05' where Id_Vendedor = 111;

/* 30.Exclua a última venda cadastrada, antes verifique e exclua os itens de vendas
associados a ela, execute o Stored Procedures da questão 26, verifique se o
estoque desses produtos foi restaurado. */
call verificar_estoque(19);
select * from venda;
select * from itens_de_venda;
delete from venda where Cod_Venda = 1015;
call verificar_estoque(19);

/* 31.Faça um script que exclua produto do código 14 cadastrado (se este produto
estiver associado a uma venda, mantenha o script e produto cadastrado).*/
delete from produto where Cod_Produto = 14;

/* 32.Qual a quantidade de produtos que temos cadastrados? – Total de registros na
tabela de produtos, faça um Stored Procedures para armazenar esta
informação e logo em seguida faça o comando SQL para buscar a mesma lá
dentro.  */
call cont_prod(@QTD);
select @QTD as Quantidade;

/* 33.Exiba os produtos vendidos no mês de junho e qual vendedor realizou essas vendas. */
select produto.Nome_Produto , vendedor.Nome , venda.Data_Venda from produto 
inner join itens_de_venda on produto.Cod_Produto = itens_de_venda.Cod_Produto
inner join venda on venda.Cod_Venda = itens_de_venda.Cod_Venda 
inner join vendedor on vendedor.Id_Vendedor = venda.Id_Vendedor
where venda.Data_Venda BETWEEN '2022-06-01' AND '2022-06-31';

/* 34.Listar o nome do produto mais caro.*/
select Nome_Produto , Valor from produto where Valor= (select MAX(Valor) from produto);

/* 35.Listar o nome do produto mais barato.*/
select Nome_Produto , Valor from produto where Valor = (select MIN(Valor) from produto);

/* 36. Crie Stored Procedures que mostre as duas informações anteriores em simultâneo.*/
call prod_ma_me_val();

/* 37. Listar o nome de todos os produtos que iniciam com a letra M.*/
select Nome_Produto from produto where Nome_Produto like ("M%");

/* 38. Exibir o total de venda da empresa.*/
select sum(Valor_Venda) as "Lucro Total" from venda;

/* 39.Crie um View para questão acima.*/
select * from lucro_venda;

/* 40.Exibir o total de vendas da empresa para o vendedor de id 102.*/
select sum(Valor_Venda) as "Lucro Vendedor 102" from venda where Id_Vendedor = 102;

/* 41. Busque o nome de todos os vendedores que comecem com a letra do seu nome. */
select Nome from vendedor where Nome like ("N%");

/* 42. Exiba na tela o nome de todos os vendedores que terminem com a primeira letra do seu nome. */
select Nome from vendedor where Nome like ("%N");

/* 43.Listar todos os produtos utilizando um Stored Procedures.*/
call listar_prod();

/* 44.Conte quantos vendedores do sexo masculino existem na base de dados. */
select count(Sexo) as "Quantidade de Homens" from vendedor where Sexo = "M";

/* 45.Conte quantos vendedores do sexo feminino existem na base de dados.*/
select count(Sexo) as "Quantidade de Mulheres" from vendedor where Sexo = "F";

/* 46.Crie Stored Procedures que mostre as duas informações anteriores em simultâneo.*/
call vend_M_F();

/* 47.Busque a data de nascimento do vendedor Aldebaran.*/
select Nome , Data_De_Nascimento from vendedor where Nome like ("%Aldebaran%");

/* 48.Retorne a loja em que o vendedor Moe Szyslak trabalha.*/
select Nome , loja from vendedor where Nome = "Moe Szyslak";

/* 49.Listar o nome de todos os vendedores do sexo masculino que tenha a palavra Silva em seu nome.*/
select Nome , Sexo From vendedor where Sexo = "M" and Nome like ("%Silva%");

/* 50.Listar o nome de todos os vendedores que nunca realizaram uma venda.*/
select vendedor.Id_Vendedor , vendedor.Nome, venda.Cod_Venda from vendedor 
left join venda on vendedor.Id_Vendedor = venda.Id_Vendedor where Cod_Venda is null;

/* 51.Listar o nome de todos os produtos que já foram vendidos.*/
select produto.Cod_Produto, produto.Nome_Produto ,venda.Cod_Venda from produto 
inner join itens_de_venda on produto.Cod_Produto = itens_de_venda.Cod_Produto 
inner join venda on venda.Cod_Venda = itens_de_venda.Cod_Venda;

/* 52.Listar o nome de todos os vendedores que realizaram alguma venda.*/
select vendedor.Id_Vendedor , vendedor.Nome, venda.Cod_Venda from vendedor 
inner join venda on vendedor.Id_Vendedor = venda.Id_Vendedor where Cod_Venda;

/* 53.Exiba a quantidade de vendedores que tem na loja Santo Antônio.*/
select count(Id_Vendedor) as "Vendedores Loja Santo Antônio" from vendedor where loja = "loja Santo Antônio";

/* 54.Qual é o produto mais caro que a empresa comercializa? E quanto tem no estoque?*/
select Nome_Produto , Valor , Qtd  from produto where Valor= (select min(Valor) from produto);

/* 55.Qual é o produto mais barato que a empresa comercializa? E quanto tem no estoque? */
select Nome_Produto , Valor , Qtd  from produto where Valor= (select min(Valor) from produto);

/* 56.Qual a média de preços dos produtos? */
select avg(Valor) as "Media do Preço" from produto;

/* 57.Qual a quantidade de vendedores que temos cadastrados? – Total de registros
na tabela de vendedor, faça um Stored Procedures para armazenar esta
informação e logo em seguida faça o comando SQL para buscar a mesma lá
dentro.*/
call cont_vend();

/* 58. Quais os produtos possuem seu preço superior à média de preços de nossa base.*/
select Nome_Produto , Valor from produto where Valor > (select avg(Valor) from produto);

/* 59.Exibir o total de vendas da empresa para o vendedor de id 105.*/
select Id_Vendedor, sum(Valor_Venda) as "Total Venda" from venda where Id_Vendedor = 105;

/* 60.Listar o nome, id e sexo do vendedor responsável pela venda de número 1001 e qual foi o valor da venda.*/
select vendedor.Id_Vendedor ,vendedor.Nome , vendedor.Sexo, venda.Cod_Venda , venda.Valor_Venda from vendedor
inner join venda on vendedor.Id_Vendedor = venda.Id_Vendedor where venda.Cod_Venda = 1001; 

/* 61.Aumente em 50% o valor do produto cadastrado onde o código for 19.*/
UPDATE produto SET Valor = Valor + (Valor * 0.5) where Cod_Produto = 19;
set sql_safe_updates = 0; 

/* 62.Diminua em 15% o valor do produto cadastrado onde o código for 22.*/
UPDATE produto SET Valor = Valor - (Valor * 0.15) where Cod_Produto = 22;

/* 63.Crie uma Stored Procedures para as duas questões anteriores utilizando parâmetros e entrada e saída.*/
call aumt_desc_prod(19,@valor_ant,@valor_nov,@MSG);
call aumt_desc_prod(22,@valor_ant,@valor_nov,@MSG);

/* 64.Listar o nome de todos os vendedores que realizaram mais de uma venda.*/
select vendedor.Id_Vendedor , vendedor.Nome from vendedor 
inner join venda on vendedor.Id_Vendedor = venda.Id_Vendedor group by Id_Vendedor having count(*) > 1;

/* 65.Listar o nome de todos os vendedores e o código de sua venda, assim como o valor da venda.*/
select vendedor.Nome , venda.Cod_Venda ,venda.Valor_Venda from vendedor left join venda 
on vendedor.Id_Vendedor = venda.Id_Vendedor;

/* 66.Qual foi a maior venda feita pela empresa até agora? E quem foi o responsável por esta venda. */
select vendedor.nome , venda.Cod_Venda ,venda.Valor_Venda from venda inner join vendedor on venda.Id_Vendedor
= vendedor.Id_Vendedor where venda.Valor_Venda = (select max(Valor_Venda) from venda);

/* 67.Altere a quantidade de itens da tabela itens de venda onde o código do 
produto for 16 e 18 ou outro de sua livre escolha. */
update itens_de_venda set Qtd_Item = 7 where Cod_Produto = 16 or Cod_Produto = 18 or Cod_Produto = 15;

/* 68.Faça um script SQL para conferir se os valores das vendas da tabela venda
tiveram alguma alteração depois que foi realizado o script da questão anterior.*/
select * from venda where Cod_Venda = 1011 or Cod_Venda = 1012 or Cod_Venda = 1014;

/* 69.Crie uma função para buscar vendedor por código, caso a função encontre o
vendedor, exiba o nome dele, senão exiba a mensagem que o vendedor não
existe ou não foi encontrado.*/
call busc_vend(102);

/*70. Atualize todos os e-mails dos vendedores para o endereço @gghardware.com.br.*/
update vendedor set Email = REPLACE (Email, '@praticabd.com.br', '@gghardware.com.br');

/* 71.Listar os nomes e os e-mails dos vendedores agrupados por sexo.*/
select Nome, Sexo , Email from Vendedor group by Nome, Sexo , Email order by sexo;

/* 72.Faça um script SQL que exiba as vendas entre 1000 a 2000 reais, junto com a
data e o vendedor responsável.*/
select vendedor.Nome , venda.Data_Venda , venda.Valor_Venda from vendedor inner join venda on vendedor.Id_Vendedor=
venda.Id_Vendedor where venda.Valor_Venda between 1000 and 2000;

/* 73.Faça um script SQL utilizando o SQL CASE para retornar sobre status do seu
estoque, caso seu estoque esteja em um nível com até 10 itens, retorne que o
estoque deste produto está adequado, caso esteja abaixo de 5 itens, retorne
que o estoque já está em alerta para nova reposição, caso esteja abaixo de 2,
retorne que o estoque precisa ser reabastecido com urgência, acima de 10
retorne estoque OK. */
call cont_Qtd(10);

/* 74.Crie uma função para buscar produto por código, caso a função encontre o
produto, exiba o nome dele e o valor, senão exiba a mensagem que o produto
não existe ou não foi encontrado.*/
call busc_prod(10);

/* 75.Faça um script SQL utilizando o SQL CASE para retornar a comissão dos
vendedores, caso eles tenham vendido acima de 3 mil reais, retorne o valor de
sua comissão de 15% sobre o valor total de suas vendas, caso seja abaixo de 3
mil até 2 mil, retorne sua comissão de 10%, caso seja abaixo de 2 mil retorne 5%,
se for abaixo de 1 mil retorne que não terá comissão. */
call coms_vend();

/* 76.Mostre o nome de todos os produtos, e a seus valores convertidos em dólar e euro.*/
SELECT Nome_Produto,Valor ,Valor * 1.12 AS preco_dolar, 
Valor * 0.92 AS preco_euro FROM produto;


/* 77.Mostre o Top 3 produtos mais vendidos da sua loja.*/
select produto.Nome_Produto from produto inner join itens_de_venda on
produto.Cod_Produto = itens_de_venda.Cod_Produto
GROUP BY produto.Cod_Produto
HAVING count(*) > 1 limit 3;

/* 78.Liste os vendedores que nasceram nos anos 90 e que trabalham na loja Centro. */
select Nome , Data_De_Nascimento , Loja from vendedor where loja = "Loja Centro" 
and Data_De_Nascimento between '1990-01-01' and '1999-12-31'; 

/* 79.Liste os vendedores que nasceram nos anos 2000 e que trabalham na loja
Floresta e do Sexo Feminino. */
select Nome , Data_De_Nascimento, Sexo , Loja from vendedor where loja = "Loja Floresta" 
and Sexo = "F" and Data_De_Nascimento between '2000-01-01' and '2024-12-31'; 

/*  80.Delete o vendedor que não conseguiu vender produtos, delete o produto que
foi menos vendido ou que nunca foi vendido.*/
delete from vendedor where Id_Vendedor = 108 or Id_Vendedor = 112;
delete from produto where Cod_Produto between 19 and 24;