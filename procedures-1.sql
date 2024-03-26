/*-1º procedure-*/
delimiter $
	create procedure listagem_turma_alunos()
    begin
		select 
			tt.sigla, tt.nome as turma,
			ta.nome as aluno, ta.telefone_aluno, ta.telefone_responsavel, ta.email, ta.data_nascimento
		from tbl_alunos as ta
		inner join tbl_turmas as tt on tt.cod_turma = ta.cod_turma;
    end
$

call listagem_turma_alunos();


