CREATE TABLE colaborador
(
	id_colaborador SERIAL PRIMARY KEY,
	nome VARCHAR(150) not null,
	salario FLOAT
);

CREATE TABLE permanente
(
	ad_tem_servico float
)INHERITS (colaborador);

CREATE TABLE temporario
(
	termino_contrato DATE
)INHERITS (colaborador);

