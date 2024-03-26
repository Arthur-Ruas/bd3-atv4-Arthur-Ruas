/*-2º procedure-*/
delimiter $
	create procedure listagem_aluno(in cod_listagem_aluno int)
    begin
		select 
			tt.sigla, tt.nome as turma,
			ta.nome as aluno, ta.telefone_aluno, ta.telefone_responsavel, ta.email, ta.data_nascimento
		from tbl_alunos as ta
		inner join tbl_turmas as tt on tt.cod_turma = ta.cod_turma
        where ta.cod_aluno = cod_listagem_aluno;
    end
$

call listagem_aluno(2);