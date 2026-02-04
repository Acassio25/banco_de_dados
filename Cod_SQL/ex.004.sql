CREATE TABLE endereco
( 
	id_endereco SERIAL PRIMARY KEY,
	rua VARCHAR(150),
	numero INT
);

CREATE TABLE paciente
(
	cpf INT PRIMARY KEY,
	nome VARCHAR(150),
	id_enderecofk int, foreign key (id_enderecofk) references endereco(id_endereco)
);

CREATE TABLE contatos
(
	id_telefone SERIAL PRIMARY KEY,
	numero int,
	id_pacientefk int, foreign key (id_pacientefk) references paciente(cpf)
);
