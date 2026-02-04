create table curso
(
	Curso_id serial primary key,
	NomeCurso varchar(25),
	CargaHoraria int
);

create table Estudante
(
	num_matricula serial primary key,
	nome varchar(50),
	documento varchar(14),
	data_nascimento date,
	Curso_idfk int, foreign key (Curso_idfk) references Curso(Curso_id)
);

