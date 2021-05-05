use universidade;

show grants

insert into aluno(matricula, nome, data_nascimento, email)
	values('1201158955', 'Ana Beatriz', '2002/04/08', 'ana@gmail.com')

insert into curso(id, nome, quantidade_alunos)
	values('24', 'CC', '108')

insert into professor(id, nome, data_nascimento, email)
	values('12', 'Carlos', '1976/07/04', 'carlos@gmail.com')

insert into aluno(matricula, nome, data_nascimento, email)
	values('12345678', 'Josy', '1978/07/02', 'josy@josy.com')
select*from aluno
insert into professor(id, nome, data_nascimento, email, curso_id)
	values('23', 'José', '1978/05/15', 'josé@josé.com', '24')

select*from professor