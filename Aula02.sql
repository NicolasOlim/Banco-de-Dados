use controle_estoque;
select * from Vendedor;
select * from Produto;
select * from Estoque;
select * from Venda;

insert into vendedor (nome, sexo, email) values 
("Cleberson da Silva", "M", "clebin2015@gmail.com"),
("Fernanda Oliveira", "F", "fernanda.o@gmail.com"),
("Ricardo Santos", "M", "ricardo.santos@gmail.com"),
("Amanda Souza", "F", "amanda.souza@hotmail.com"),
("José da Silva", "M", "jose.silva@gmail.com"),
("Carla Pereira", "F", "carla.pereira@gmail.com"),
("Marcos Oliveira", "M", "marcos.oliveira@gmail.com"),
("Juliana Costa", "F", "juliana.costa@gmail.com");

insert into produto ( Nome, Valor) values 
("Cimento 25 KG", 78.80),
("Tinta Branca 18L", 189.90),
("Argamassa Colante ACIII 20kg", 29.99),
("Telha Esmaltada Portuguesa", 12.50),
("Vaso Sanitário com Caixa Acoplada", 349.90),
("Piso Cerâmico Bege 50x50cm", 19.99),
("Cimento 50kg", 99.90),
("Areia Lavada Fina 1m³", 129.00),
("Tijolo Cerâmico 9x19x19", 0.89),
("Ferro 3/8 (barra de 12m)", 27.50),
("Cal Virgem 20kg", 14.75);

insert into estoque (Quantidade, Vendidos, Id_Produto) values
(12,0,1),
(1150,0,2),
(23,0,3),
(9,0,4),
(1300,0,5),
(10,0,6),
(13,0,7),
(7500,0,8),
(11,0,9),
(19,0,10);

insert into venda (Id_Vendedor,Id_Produto, Data_Venda, qtd_vendido,total_venda ) values
(2,5,'2024-03-10',30,599.70 ),
(4,2,'2024-06-15',4,119.96 ),
(1,8,'2024-01-23',200,178.00 ),
(2,4,'2024-07-08',1,349.90 ),
(6,1,'2024-04-25',3,569.70 ),
(3,5,'2024-06-30',80,1599.20 ),
(4,3,'2024-02-18',2,39.98 );

/* Selecionar  e Agrupar Consultas */
select vendedor.nome, venda.data_venda ,
sum(venda.total_venda * produto.valor) as Total_Vendedor from vendedor inner join venda on vendedor.id_vendedor = venda.id_vendedor
inner join produto on produto.id_produto = venda.id_produto group by vendedor.nome;

select venda avg(total_venda) as Media_Vendas from produto group by venda;

create view vendedor_M as select * from vendedor where sexo = "M";

select * from  vendedor_M;
select * from vendedor_f_vendas;
select * from qtd_estoque_prod_vend;

update vendedor_M set nome = 'Marcos Silva' 
where id_vendedor = 7;

create view teste as
select * from venda;

drop view teste;

call prod_preco_desc;
call total_vda_por_vde;
call exibir_produtos(7);
call exibir_produtos_rand(4);

call contar_produtos(@qtde);
select @qtde as Quantidade;

set @num = 4;
call calc_potencia(@num);
select @num; 

call analise_produtos(@maior , @menor, @qtde);
select @maior as Maior_Valor ,@menor as Menor_Valor, @qtde as Quantidade;

 call analise_produtos_noparam();
 
 /*CRUD do PROCEDURE */
select * from produto;
call inserir_produto("Teste", 99.99);
call atualizar_produto(12, "Produto99", 111.99 );
call deletar_produto(12, @msg);
select @msg as Mensagem;

/* Criar um View que selecione produtos vendidos do inicio do ano, ate abril e quem vendeu */
select * from intervalo_venda;
drop view intervalo_venda;

/* Criar um stored Procedures que verifica a quantidade vendida de um produto - menos que 20 Poucas unidades vendidas -
 entre 20 e 50 vendas moderadas(BETWEEN ) - mais que 50 muitas unidades  Vendidas */
call verificar_produto(5, MSG);
select MSG as Mensagem;
call verificar_produto_correção(4, MSG);

/*Acionar trigger da atualização de estoque de vendidos e quantidade*/
select * from estoque;
insert into venda (Id_Vendedor,Id_Produto, Data_Venda, qtd_vendido,total_venda ) values
(1,10,'2024-07-09',5,73.75 );

 /* Acionar trigger ao deletar um registro de venda */
 select * from estoque;
 delete from venda where id_venda = 9;
 alter table venda  auto_increment = 0;
 
 /* Acionar Trigger ao adicionar uma nova venda, atualizar o estoque e o total da venda do vendedor */
 select * from venda;
 select * from estoque;
 insert into venda (Id_Vendedor,Id_Produto, Data_Venda, qtd_vendido,total_venda ) values
(5,9,'2024-06-29',4,0);

/* Acionar a trigger de estoque insuficiente para uma nova venda */
select * from venda;
select * from estoque;
insert into venda (Id_Vendedor,Id_Produto, Data_Venda, qtd_vendido,total_venda ) values
(8,4,'2024-05-19',10,0);


/* Acionar a trigger quando fro realizado um update na venda */
select * from venda;
select * from estoque;
update venda set qtd_vendido = 7 where id_venda = 8;
/**/