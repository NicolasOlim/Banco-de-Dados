use banco_do_butuca;
select * from conta_corrente;
/* Efetuar o saque em uma conta corrente */
set sql_safe_updates = 0; 
call Saque(1001,100);

/*Efetuar o depósito em uma conta corrente*/
call Deposito(1001,100);
/* Listar contas com saldo maior que o valor informado */
call Lista(300.00);

/* Setar o saldo de todas as contas (valor informado) */
call Setar_Conta(8);

/*Ao deletar uma conta apague também as movimentações salvas(AFTER)*/
delete from conta_corrente where NUMERO =  1011;

/*Ao criar uma conta salvar um registro em movimentação com saldo antigo e atual igual a 0 (AFTER)*/
alter table movimentacao auto_increment = 0;
INSERT INTO `conta_corrente`(`NUMERO`, `SALDO`, `NOME`) VALUES (1011,100,'Nicolas de Oliveira');

/*Antes de cadastrar uma nova conta verifique se o saldo informado é igual a 0, se não for setar para 0 (BEFORE)*/
select * from conta_corrente;
INSERT INTO `conta_corrente`(`NUMERO`, `SALDO`, `NOME`) VALUES (1011,100,'Nicolas de Oliveira');
delete from conta_corrente where NUMERO =  1011;

/*Antes de deletar uma conta, salvar um registro em movimentação de que a conta está zerada (BEFORE)*/
delete from conta_corrente where NUMERO =  1011;