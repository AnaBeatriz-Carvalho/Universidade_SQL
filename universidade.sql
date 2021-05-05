create database universidade;
use universidade;
create table universidade.aluno(
	matricula bigint primary key,
    nome varchar(100),
    data_nascimento date,
    email varchar (1000)
)engine=InnoDB;

create table universidade.curso(
	id bigint primary key,
    nome varchar(100),
    quantidade_alunos int
)engine=InnoDB;

create table universidade.professor(
	id bigint primary key,
    nome varchar(100),
    data_nascimento date,
    email varchar (1000)
)engine=InnoDB;

alter table universidade.professor
	add column curso_id bigint,
    add constraint fk_curso_id
		foreign key (curso_id)
			references curso(id)
create table universidade.auxiliar(
	aluno_matricula bigint,
    curso_id bigint,
    primary key(aluno_matricula, curso_id),
	foreign key(aluno_matricula)
		references aluno(matricula),
	foreign key(curso_id)
		references curso(id)
)engine=InnoDB;
grant select, insert on universidade.* to 'Beatriz'@'localhost'
flush privileges
