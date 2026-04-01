Create Table dimensao
(
	id_dimensao Serial Primary key,
	nome Varchar (120)
);
drop table dimensao;
Create Table registro_de_vida(
	id_registro Serial Primary Key,
	nome Varchar (120),
	Omega Numeric,
	dimensao_idfk int, FOREIGN KEY (dimensao_idfk) REFERENCES dimensao(id_dimensao)
);
drop table registro_de_vida;
Insert Into dimensao (nome) Values
('C774'),
('C875'),
('A123'),
('B456');

Insert Into registro_de_vida (nome, omega, dimensao_idfk) Values
('Ana Cristina Prime', 0.12345,1),
('Ana Cristina Clone', 0.11111,2),
('Darlana-X', 0.54321,2),
('Fernanda Alpha', 0.33333,1),
('Acassio Beta', 0.22222,2),
('Ariel_01', 0.44444,1),
('Saymon Omega', 0.55555,2),
('Joao Prime', 0.88888,2),
('Maria Beta', 0.99999,1),
('Ana Cristina Z', 0.13579,3),
('Fernanda X', 0.24680,4),
('Anacristina Mist', 0.10101,1),
('Darlana Prime', 0.20202,2),
('Fernanda Alpha', 0.30303,1),
('Acacio Beta', 0.40404,2),
('Ariell Clone', 0.50505,1),
('Saymon Omega', 0.60606,2);

Select * From dimensao;
Select rg.nome, round(rg.omega*1.618,3) As fator_N From dimensao as dm
 
 Inner Join registro_de_vida as rg ON dm.id_dimensao = rg.dimensao_idfk
 Where rg.nome Like 'Ana Cristina%'
 OR rg.nome Like 'Darlana%'
 OR rg.nome Like 'Fernanda%'
 OR rg.nome Like 'Acassio%'
 OR rg.nome Like 'Ariel%'
 OR rg.nome Like 'Saymon%'
 and dm.nome in ('C875','C774')
 Order By fator_N asc;
