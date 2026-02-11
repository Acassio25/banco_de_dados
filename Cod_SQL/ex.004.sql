
CREATE TABLE endereco
( 
	id_endereco SERIAL PRIMARY KEY,
	rua VARCHAR(150),
	numero INT
);

insert into endereco (rua, numero) values ('Alfedeiros', '28'), ('Albatroz', '97'), ('Mundurucu', '73')

CREATE TABLE paciente
(
	id_paciente serial Primary key,
	cpf varchar(14),
	nome VARCHAR(150),
	id_enderecofk int, foreign key (id_enderecofk) references endereco(id_endereco)
);

insert into paciente (cpf, nome, id_enderecofk) values ('123.456.789-00', 'Eleonor', 1), ('789.456.321-00', 'Ana', 2),
('321.654.789-11', 'Daniel', 3)

CREATE TABLE contatos
(
	id_telefone SERIAL PRIMARY KEY,
	numero varchar(15),
	paciente_idfk int, foreign key (paciente_idfk) references paciente(id_paciente)
);

insert into contatos (numero, paciente_idfk) values ('99684527', 2),('99586231', 3),('99697832', 1)

 select * from endereco
 select * from paciente
 select * from contatos
 
