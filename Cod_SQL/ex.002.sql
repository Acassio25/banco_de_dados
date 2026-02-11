CREATE TABLE autor
(
	id_autor SERIAL PRIMARY KEY,
	nome VARCHAR(100),
	pais_de_origem VARCHAR(100)
);
insert into autor (nome, pais_de_origem) values ('Machado de Assis','Brasil');
insert into autor (nome, pais_de_origem) values ('Willian Shakespeare','Inglaterra');
insert into autor (nome, pais_de_origem) values ('Gabriel G. Marquez','Colômbia');

CREATE TABLE livros
(
	id_livros SERIAL PRIMARY KEY,
	titulo_livro VARCHAR(100),
	ano_publicacao int,
	editora VARCHAR(100),
	autor_idfk int, FOREIGN KEY (autor_idfk) REFERENCES autor(id_autor)
);

insert into livros (titulo_livro, ano_publicacao, editora, autor_idfk) values ('Memórias Póstumas de Brás Cubas','1881', 'Tipografia Nacional',1),
('Hamlet', '2020','Martin Claret', 2), ('Cem Anos de Solidão', '1967', 'Record', 3);
SELECT * FROM livros 
INNER JOIN autor ON livros.autor_idfk = autor.id_autor;

select * from autor;
