/*-3º procedure-*/
delimiter $
	create procedure contagem_alunos(out total_alunos int)
    begin
		select count(cod_aluno) into total_alunos from tbl_alunos;
    end
$ 

call contagem_alunos(@total_alunos);

select @total_alunos;
