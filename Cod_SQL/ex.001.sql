create table curso
(
	Curso_id serial primary key,
	NomeCurso varchar(25),
	CargaHoraria int
);

insert into curso (NomeCurso, CargaHoraria) values ('Eletricista Predial', 800);
insert into curso (NomeCurso, CargaHoraria) values ('Enfermagem', 1200);
insert into curso (NomeCurso, CargaHoraria) values ('Fisioterapia', 3600);
select * from curso

create table Estudante
(
	num_matricula serial primary key,
	nome varchar(50),
	documento varchar(14),
	data_nascimento date,
	Curso_idfk int, foreign key (Curso_idfk) references Curso(Curso_id)
);

insert into Estudante (nome, documento, data_nascimento, Curso_idfk) values ('Dymitri', '321.456.987.01','2009-11-13', 2);
insert into Estudante (nome, documento, data_nascimento, Curso_idfk) values ('Tania', '381.756.687.61','1990-12-21', 3);
insert into Estudante (nome, documento, data_nascimento, Curso_idfk) values ('Acassio', '781.636.947.65','1987-02-19', 1)
select * from Estudante