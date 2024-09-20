use ensino;
/* Busca da escola Tancredo Neves*/
select * from escola where id_Escola = 5;
select * from escola where Nome = "EE PRESIDENTE TANCREDO NEVES";

/* Busca da escola Dutra. */
select * from escola where id_Escola = 9;
select * from escola where Nome = "EE PRESIDENTE DUTRA";

/* Busca das escolas Barão e Clóvis Salgado */
select * from escola where id_Escola in (1 , 6);
select * from escola where Nome in ("EE BARÃO DE MACAÚBAS", "EE PROFESSOR CLÓVIS SALGADO");

/* Professores de Matematica */
select * from professor where Disciplina = "matemática";

/* Professores de Química e Biologia*/
select * from professor where Disciplina in ("química", "biologia");

/* Professores com CPF com final 2*/
select * from professor where CPF like "%2";

/*Professores com inicial do nome B */
select * from professor where Nome like "b%";

/*Alterar coluna email*/
alter table professor change Email Email_Prof varchar(40);

/* Alterar Materia Benedito Anthony da Rocha */
update professor set Disciplina = "Matemática" where masp = 10547895;

/* Alterar Telefone da Débora Melissa Daniela Teixeira*/
update professor set Telefone ="(31)9741-5210" where masp = 10742368;

/* Deletar a Escola EE PROFESSOR NEIDSON RODRIGUES */
delete from escola where id_Escola = 8;

/* Deletar o Professor Mácio Diogo Cavalcanti */
delete from professor where masp = 12794265;

/* Busca Nome da Escola, Nome do professor, Disciplina Aplicada */
select escola.Nome, professor.Nome, professor.Disciplina from  escola left join professor on escola.id_Escola  = professor.id_Escola_Prof;

/* Busca Nome da Escola, Nome Professores de Português e Telefone */
select escola.Nome, professor.Nome, professor.Disciplina , professor.Telefone from escola left join professor on escola.id_Escola = professor.id_Escola_Prof where Disciplina = "Português";