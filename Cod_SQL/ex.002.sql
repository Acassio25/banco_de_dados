CREATE TABLE livros
(
	id_livros SERIAL PRIMARY KEY,
	titulo_livro VARCHAR(100),
	ano_publicacao DATE,
	editora VARCHAR(100)
);

CREATE TABLE autor
(
	id_identificacao SERIAL PRIMARY KEY,
	nome VARCHAR(100),
	pais_de_origem VARCHAR(100)
);

