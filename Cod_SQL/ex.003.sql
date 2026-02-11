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

insert into permanente (nome, salario, ad_tem_servico) values 
('Paulo', '2364.56', '235.80'),
('Antonio', '2064.59', '135.87'),
('jose', '1964.56', '105.25')

CREATE TABLE temporario
(
	termino_contrato DATE
)INHERITS (colaborador);

insert into temporario (nome, salario,termino_contrato) values
('Almir', '4365.23', '2026-02-05'),
('Marcos','2364.57', '2026-02-10'),
('Anderson', '3297.71', '2026-02-11')

select * from permanente
select * from temporario
select * from colaborador