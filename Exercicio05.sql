use exposição_de_arte;

/*1. Quais Pintura Pertence os Artistas */
select artista.Nome, obra.Tipo from artista  inner join obra on artista.CPF = obra.Artista_CPF where obra.Tipo = "Pintura";

/*2. Quais os Pesos e Tamanhos das Esculturas*/
select Peso , Tamanho from obra where Tipo = "Escultura";

/*3. Quantas Pinturas e Esculturas contem na Exposição*/
select (select count(*) from obra where Tipo = "Pintura") as Total_Pintura , (select count(*) from obra where Tipo = "Escultura") as Total_Escultura; 

/*4. Quais Artista vão estar em Qual Exposição*/
select artista.Nome ,exposição.Id_Exposição , exposição.Endereço, exposição.Data  from artista inner join encontro on artista.CPF = encontro.Artista_CPF 
inner join exposição on exposição.Id_Exposição = encontro.Exposição_Id_Exposição; 

/*5. Quais Cidades as exposição vão acontecer*/
select cidade.Nome , exposição.Endereço from cidade inner join exposição on exposição.Cidade_Id_Cidade =  cidade.Id_Cidade;

/*6. Quais são os Artistas mais Novos*/
select nome ,idade from artista where Idade < 25; 

/*7. Alterar o endereço da exposição*/
update exposição set Endereço = 'Rua das Flores' where Id_Exposição = 17;

/*8. Quais Cidades tem Mais de 1500000 de Habitantes*/
select Nome , População from cidade where População > 1500000;

/*9. Lista dos Salarios dos Artistas do Maior para o Menor*/
select Nome , Salario from artista order by Salario desc;

/*10. Soma do Valor de Todas As Obras */ 
select(select sum(Valor) from obra where Tipo = "Pintura") as Soma_Pintura , (select sum(Valor) from obra where Tipo = "Escultura") as Soma_Escultura;
