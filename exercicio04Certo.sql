use ensino_tecnico;
/* Os nomes dos alunos e do(s) cursos em que estão matriculados e os seus turnos. */
select aluno.nome , curso.nome ,matricula.turno from aluno inner join matricula 
on aluno.cod_aluno = matricula.matricula_cod_aluno inner join curso 
on curso.cod_curso = matricula.matricula_cod_curso order by aluno.nome asc;

/* Altere na tabela aluno a coluna nome para nome_aluno. */
alter table aluno change nome nome_aluno varchar(30) not null;

/* E-mail de todos os alunos maiores de idade e matriculados no turno da noite. */
select aluno.email , aluno.idade , matricula.turno from aluno inner join matricula on
aluno.cod_aluno = matricula_cod_aluno where aluno.idade > 18 and matricula.turno = "noite";

/*Total matriculado em Dev. de Sistemas e Redes de Computadores.*/
select count(*)from aluno inner join matricula on aluno.cod_aluno=  matricula.matricula_cod_aluno where 
matricula_cod_curso in (1,3);

/*Total matriculado em Eletrotécnica e Mecânica Industrial.*/
select count(*)from aluno inner join matricula on aluno.cod_aluno=  matricula.matricula_cod_aluno where 
matricula_cod_curso in (2,5);

/* Listar os alunos do sexo Feminino e qual curso estão matriculados e qual a carga horária do curso.*/
select aluno.nome , aluno.sexo , curso.nome, curso.carga_horaria from aluno inner join matricula on
aluno.cod_aluno = matricula_cod_aluno inner join curso 
on curso.cod_curso = matricula.matricula_cod_curso  where aluno.sexo = "F";

/* Listar os alunos que estão matriculados no curso de logística do turno da tarde.*/
select aluno.nome , curso.nome, matricula.turno from aluno inner join matricula
on aluno.cod_aluno = matricula.matricula_cod_aluno inner join curso 
on curso.cod_curso = matricula.matricula_cod_curso where matricula.turno = "Tarde" and curso.cod_curso = "8";

/* Altere na tabela curso a coluna valor para valor_curso.*/
alter table curso change valor valor_curso float not null;

/* Listar os alunos do sexo Masculino e qual curso estão matriculados e qual é o eixo do curso.*/
select aluno.nome, aluno.sexo, curso.nome, curso.eixo from aluno inner join matricula 
on aluno.cod_aluno = matricula.matricula_cod_aluno inner join curso on curso.cod_curso = matricula.matricula_cod_curso
where aluno.sexo = "M";

/* E-mails de todos os alunos que fazem o curso de Desenvolvimento de Sistemas.*/
select aluno.email, curso.nome from aluno inner join matricula 
on aluno.cod_aluno = matricula.matricula_cod_aluno inner join curso on curso.cod_curso = matricula.matricula_cod_curso
where curso.cod_curso = 1;

/* Listar o nome do aluno, curso que está matriculado, valor do curso, e a data da matricula.*/
select aluno.nome, curso.nome, curso.valor, matricula.data_matricula from aluno inner join matricula 
on aluno.cod_aluno = matricula.matricula_cod_aluno inner join curso on curso.cod_curso = matricula.matricula_cod_curso;

/* Listar o nome do aluno que está matriculado no curso de panificação, o valor do curso, e a data da matricula.*/
select aluno.nome, curso.nome, curso.valor, matricula.data_matricula from aluno inner join matricula
on aluno.cod_aluno = matricula.matricula_cod_aluno inner join curso on curso.cod_curso = matricula.matricula_cod_curso
where curso.cod_curso = 7;

/* Retorne o nome de todos os alunos maiores de 25 anos e o valor que eles pagam pelo curso matriculado.*/
select aluno.nome, aluno.idade, curso.valor from aluno inner join matricula
on aluno.cod_aluno = matricula.matricula_cod_aluno inner join curso on curso.cod_curso = matricula.matricula_cod_curso
where aluno.idade > 25;

/* Retorne somente o nome de todas as mulheres.*/
select nome,sexo from aluno where aluno.sexo = "F";

/* Retorne o nome de todas as mulheres matriculadas no curso de Segurança do Trabalho.*/
select aluno.nome , aluno.sexo, curso.nome from aluno inner join matricula
on aluno.cod_aluno = matricula.matricula_cod_aluno inner join curso on curso.cod_curso = matricula.matricula_cod_curso
where aluno.sexo = "F" and curso.cod_curso = 4; 

/*Retorne os nomes dos cursos ordenados por ordem alfabética.*/
select nome from curso order by nome asc;

/* Retorne os nomes dos alunos e suas idades em ordem do mais velho para o mais novo.*/
select nome, idade from aluno order by idade desc;

/* Retorne os nomes dos alunos que estão matriculados no turno da manhã.*/
select aluno.nome, matricula.turno from aluno inner join matricula
on aluno.cod_aluno = matricula.matricula_cod_aluno where matricula.turno = "Manhã";

/* Altere a matricula de um aluno para um outro curso, altere também a nova data de matricula e o turno.*/
update matricula set matricula_cod_curso = 2 , data_matricula = "2024-05-24", turno = "Noite"  where matricula_cod_aluno = 105;
/*Matricula antiga*/
update matricula set matricula_cod_curso = 7 , data_matricula = "2024-06-28", turno = "Tarde"  where matricula_cod_aluno = 105;

/* Deletar uma matricula e logo em seguida o aluno que correspondia a essa matricula. */
delete from aluno where cod_aluno = 178;

/* Atualizar as datas das matrículas do curso de mecânica industrial.*/
update matricula set data_matricula = "2024-10-19" where matricula_cod_curso = 5;